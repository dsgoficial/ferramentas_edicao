# -*- coding: utf-8 -*-
"""
/***************************************************************************
 ferramentas_edicao
                                 A QGIS plugin
 Brazilian Army Cartographic Finishing Tools
                              -------------------
 ***************************************************************************/
/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/
"""
from collections import defaultdict
import math
import os
from uuid import uuid4
import processing
from pathlib import Path
from itertools import chain
from typing import List, Tuple

from qgis.PyQt.QtGui import QColor
from qgis.core import (
    QgsCoordinateReferenceSystem,
    QgsCoordinateTransform,
    QgsDistanceArea,
    QgsFeatureRequest,
    QgsGeometry,
    QgsLayerTreeGroup,
    QgsLayoutItemLabel,
    QgsLineString,
    QgsPalLayerSettings,
    QgsProject,
    QgsRectangle,
    QgsRuleBasedLabeling,
    QgsTextBufferSettings,
    QgsTextFormat,
    QgsPrintLayout,
    QgsFeature,
    QgsVectorLayerSimpleLabeling,
    QgsVectorLayer,
)

from .buildContext import BuildContext
from .componentUtils import ComponentUtils
from ....interfaces.iComponent import IComponent


class ImageArticulation(ComponentUtils, IComponent):
    def __init__(self, *args, **kwargs):
        self.stylesFolder = (
            Path(__file__).parent.parent / "resources" / "styles" / "imageArticulation"
        )
        self.n_maxlines = 6

    def build(self, context: BuildContext):
        composition = context.composition
        data = context.data
        mapAreaFeature = context.mapAreaFeature
        layers = context.layers
        showLayers = context.showLayers
        if data.get("scale") == 250:
            self.n_maxlines = 4
        mapExtents = mapAreaFeature.geometry().convexHull().boundingBox()
        if not isinstance(layers, list):
            layers = [layers]
        imageArticulationLayerIdx, imageArticulationLayer = next(
            filter(
                lambda x: x[1].name() == "edicao_articulacao_imagem_a",
                enumerate(layers),
            ),
            (None, None),
        )
        geographicBoundsLyr = self.createVectorLayerFromIter(
            "geographicBounds", [mapAreaFeature]
        )
        totalArea = mapAreaFeature.geometry().area()
        if imageArticulationLayer is None:
            return []
        singleParts = processing.run(
            "native:multiparttosingleparts",
            {"INPUT": imageArticulationLayer, "OUTPUT": "memory:"},
        )["OUTPUT"]
        singleParts = processing.run(
            "native:reprojectlayer",
            {
                "INPUT": singleParts,
                "TARGET_CRS": QgsCoordinateReferenceSystem(4674),
                "OUTPUT": "memory:",
            },
        )["OUTPUT"]
        outputLyr = processing.run(
            "qgis:advancedpythonfieldcalculator",
            {
                "INPUT": singleParts,
                "FIELD_NAME": "featid",
                "FIELD_TYPE": 0,
                "FIELD_LENGTH": 1000,
                "FIELD_PRECISION": 3,
                "GLOBAL": "",
                "FORMULA": "value = $id",
                "OUTPUT": "memory:",
            },
        )["OUTPUT"]
        clipped = processing.run(
            "native:clip",
            {
                "INPUT": outputLyr,
                "OVERLAY": geographicBoundsLyr,
                "OUTPUT": "memory:",
            },
        )["OUTPUT"]
        clipped = processing.run(
            "native:multiparttosingleparts", {"INPUT": clipped, "OUTPUT": "memory:"}
        )["OUTPUT"]
        selectedIds = [
            feat["featid"]
            for feat in clipped.getFeatures()
            if self.checkRadiusPoleForLabel(feat, mapAreaFeature.geometry(), data) > 400
        ]
        selectedIdsString = f"{tuple(selectedIds)}".replace(",)", ")")
        imageArticulationLayer = (
            processing.run(
                "native:extractbyexpression",
                {
                    "INPUT": clipped,
                    "EXPRESSION": f"featid in {selectedIdsString}",
                    "OUTPUT": "memory:",
                },
            )["OUTPUT"]
            if selectedIdsString != "()"
            else clipped
        )

        QgsProject.instance().addMapLayer(imageArticulationLayer, False)
        layers[imageArticulationLayerIdx] = imageArticulationLayer

        orderedFeaturesByDateAndSensor = self.getOrderedFeatures(
            data, imageArticulationLayer, mapAreaFeature, geographicBoundsLyr
        )
        self.setStyle(imageArticulationLayer, orderedFeaturesByDateAndSensor)

        self.setImageArticulationTableContents(composition, orderedFeaturesByDateAndSensor)

        if showLayers:
            imageArticulationGroupNode = QgsLayerTreeGroup("imageArticulation")
            imageArticulationGroupNode.setItemVisibilityChecked(False)
            root = QgsProject.instance().layerTreeRoot()
            for layer in layers:
                imageArticulationGroupNode.addLayer(layer)
            root.addChildNode(imageArticulationGroupNode)

        self.updateComposition(composition, mapExtents, layers)
        mapIDsToBeDisplayed = [imageArticulationLayer.id()]
        return mapIDsToBeDisplayed

    def checkRadiusPoleForLabel(self, feat, outerExtentsGeometry, data):
        epsg = data.get("epsg")
        outerExtentsArea = math.sqrt(outerExtentsGeometry.area())
        intersectionGeometry = feat.geometry().intersection(outerExtentsGeometry)
        crsSrc = QgsCoordinateReferenceSystem("EPSG:4326")  # WGS 84
        crsExtents = QgsCoordinateReferenceSystem(f"EPSG:{epsg}")
        transform = QgsCoordinateTransform(crsSrc, crsExtents, QgsProject.instance())
        intersectionGeometry.transform(transform)
        _, radius = intersectionGeometry.poleOfInaccessibility(10)
        radiusPerMapArea = radius / (outerExtentsArea + 1e-8)
        return radiusPerMapArea

    def getOrderedFeatures(
        self,
        data,
        imageArticulationLayer: QgsVectorLayer,
        mapAreaFeature: QgsFeature,
        geographicBoundsLyr: QgsVectorLayer,
    ):
        featureList = self.getAreasWithoutImageCoverage(
            data, imageArticulationLayer, mapAreaFeature, geographicBoundsLyr
        )
        imageArticulationLayer.startEditing()
        imageArticulationLayer.beginEditCommand("")
        imageArticulationLayer.addFeatures(featureList)
        imageArticulationLayer.endEditCommand()
        imageArticulationLayer.commitChanges()
        featList = list(imageArticulationLayer.getFeatures())
        featList = self.aggregateFeats(featList)
        return list(
            chain(
                sorted(
                    filter(lambda x: x["data"] is not None, featList),
                    reverse=False,
                    key=lambda feat: tuple(
                        chain(reversed(feat["data"].split("/")), [feat["nome_sensor"]])
                    ),
                ),
                filter(lambda x: x["data"] is None, featList),
            )
        )

    def aggregateFeats(self, featureList):
        featDict = defaultdict(list)
        outputFeaturesList = []
        for feat in featureList:
            featDict[f"{feat['nome_sensor']},{feat['data']}"].append(
                feat
            )  # para agregar por nome_sensor e data
        for featList in featDict.values():
            feat1, *otherFeats = featList
            geom = feat1.geometry()
            for feat in otherFeats:
                otherGeom = feat.geometry()
                geom = geom.combine(otherGeom)
            feat1.setGeometry(geom)
            outputFeaturesList.append(feat1)
        return outputFeaturesList

    def getAreasWithoutImageCoverage(
        self,
        data,
        imageArticulationLayer: QgsVectorLayer,
        mapAreaFeature: QgsFeature,
        geographicBoundsLyr: QgsVectorLayer,
    ):
        symDiffOutputLyr = processing.run(
            "native:symmetricaldifference",
            {
                "INPUT": geographicBoundsLyr,
                "OVERLAY": imageArticulationLayer,
                "OVERLAY_FIELDS_PREFIX": "",
                "OUTPUT": "memory:",
            },
        )["OUTPUT"]
        outputPolygonLyr = processing.run(
            "native:multiparttosingleparts",
            {"INPUT": symDiffOutputLyr, "OUTPUT": "memory:"},
        )["OUTPUT"]
        boundsGeom = mapAreaFeature.geometry()
        boundsArea = boundsGeom.area()
        outputFeaturesList = []
        for feat in outputPolygonLyr.getFeatures():
            poleGeom, _ = feat.geometry().poleOfInaccessibility(10)
            if not poleGeom.intersects(boundsGeom):
                continue
            if self.checkRadiusPoleForLabel(feat, boundsGeom, data) < 400:
                continue
            feat["id"] = str(uuid4())
            outputFeaturesList.append(feat)
        return outputFeaturesList

    def getNumberOfColumns(self, n_total: int):
        n_columns = 1
        n_extra = n_total - 18
        n_mod = n_extra % 3
        n_div = math.floor(n_extra / 3)
        initial_n_column1 = 0
        initial_n_column2 = 0
        initial_n_column3 = 0
        add_column1 = 0
        add_column2 = 0
        add_column3 = 0
        if 0 < n_total <= 6:
            initial_n_column1 = n_total
        elif 6 < n_total <= 12:
            n_columns = 2
            initial_n_column1 = 6
            initial_n_column2 = n_total - 6
        elif 12 < n_total <= 18:
            n_columns = 3
            initial_n_column1 = 6
            initial_n_column2 = 6
            initial_n_column3 = n_total - 12
        else:
            n_columns = 3
            initial_n_column1 = 6
            initial_n_column2 = 6
            initial_n_column3 = 6
            add_column1 = n_div + (1 if n_mod == 1 or n_mod == 2 else 0)
            add_column2 = n_div + (1 if n_mod == 2 else 0)
            add_column3 = n_div

        n_column1 = initial_n_column1 + add_column1
        n_column2 = initial_n_column2 + add_column2
        n_column3 = initial_n_column3 + add_column3

        return n_columns, n_column1, n_column2, n_column3

    def goToNextColumn(
        self, image_index: int, n_column1: int, n_column2: int, n_column3: int
    ):
        n_municipio = image_index + 1
        if (
            n_municipio == n_column1
            or n_municipio == n_column1 + n_column2
            or n_municipio == n_column1 + n_column2 + n_column3
        ):
            return True
        else:
            return False

    def setImageArticulationTableContents(
        self, composition: QgsPrintLayout, sortedFeatures: List[QgsFeature]
    ):
        compositionItem = composition.itemById("tabela_articulacao_imagens")
        if compositionItem is None:
            return

        none_feats = [
            f for f in sortedFeatures if f["nome_sensor"] is None and f["data"] is None
        ]
        valid_feats = [
            f
            for f in sortedFeatures
            if f["nome_sensor"] is not None and f["data"] is not None
        ]

        if none_feats and not valid_feats:
            text = "1 - Data e hora da coleta das imagens indisponíveis."
        else:
            if none_feats:
                valid_feats = valid_feats + [none_feats[0]]
            lines = []
            for i, feat in enumerate(valid_feats):
                if feat["nome_sensor"] is not None and feat["data"] is not None:
                    lines.append(f"{i + 1} - {feat['nome_sensor']} ({feat['data']})")
                else:
                    lines.append(f"{i + 1} - Área sem imagem")
            text = "\n".join(lines)

        compositionItem.setText(text)
        compositionItem.refresh()

    def createRule(self, label: str, expression: str):
        """
        Returns a QgsRuleBasedLabeling based on label and expression
        """
        settings = QgsPalLayerSettings()
        settings.fieldName = label
        settings.Placement = QgsPalLayerSettings.OverPoint
        settings.labelPerPart = True
        settings.centroidInside = True
        settings.isExpression = True
        # settings.fitInPolygonOnly = True
        textFormat = QgsTextFormat()
        textFormat.setColor(QColor(0, 0, 0, 255))
        textFormat.setSize(6)

        textBuffer = QgsTextBufferSettings()
        textBuffer.setColor(QColor(255, 255, 255, 255))
        textBuffer.setSize(0.4)
        textBuffer.setEnabled(True)
        textFormat.setBuffer(textBuffer)
        settings.setFormat(textFormat)

        rule = QgsRuleBasedLabeling.Rule(settings)
        rule.setFilterExpression(expression)
        rule.setActive(True)
        return rule

    def setStyle(
        self,
        imageArticulationLayer: QgsVectorLayer,
        orderedFeaturesByDateAndSensor: List[QgsFeature],
    ):
        imageArticulationLayer.loadNamedStyle(
            str(self.stylesFolder / "edicao_articulacao_imagem_a.qml"), True
        )
        imageArticulationLayer.triggerRepaint()
        rulesRoot = QgsRuleBasedLabeling.Rule(QgsPalLayerSettings())
        if len(orderedFeaturesByDateAndSensor) == 0:
            rule = self.createRule(
                f"'{n+1}'", f""" "nome_sensor" is NULL AND "data" is NULL """
            )
            rulesRoot.appendChild(rule)
        for n, feat in enumerate(orderedFeaturesByDateAndSensor):
            if feat["nome_sensor"] is None and feat["data"] is None:
                rule = self.createRule(
                    f"'{n+1}'", f""" "nome_sensor" is NULL AND "data" is NULL """
                )
                rulesRoot.appendChild(rule)
                break
            rule = self.createRule(
                f"'{n+1}'",
                f""" "nome_sensor" = '{feat["nome_sensor"]}' AND "data" = '{feat["data"]}' """,
            )
            rulesRoot.appendChild(rule)
        rules = QgsRuleBasedLabeling(rulesRoot)
        imageArticulationLayer.setLabeling(rules)
        imageArticulationLayer.setLabelsEnabled(True)
        imageArticulationLayer.triggerRepaint()

    def updateComposition(
        self,
        composition: QgsPrintLayout,
        mapExtent: QgsRectangle,
        layersToShow: Tuple[QgsVectorLayer],
    ):
        mapItem = composition.itemById("imageArticulation")
        if mapItem is None:
            return
        mapItem.setExtent(mapExtent)
        mapItem.setLayers(layersToShow)
        mapItem.setCrs(QgsCoordinateReferenceSystem("EPSG:4674"))
        mapItem.refresh()
