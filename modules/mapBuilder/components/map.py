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
from pathlib import Path

from PyQt5.QtCore import QVariant
from PyQt5.QtGui import *
from qgis.core import (
    QgsCoordinateReferenceSystem,
    QgsCoordinateTransform,
    QgsFeature,
    QgsField,
    QgsLayerTreeGroup,
    QgsLayoutItem,
    QgsLayoutSize,
    QgsMapLayer,
    QgsPrintLayout,
    QgsProject,
    QgsRectangle,
    QgsUnitTypes,
    QgsVectorLayer,
)

from ....config.configDefaults import ConfigDefaults
from ....interfaces.iComponent import IComponent
from ....modules.gridGenerator.gridAndLabelCreator import GridAndLabelCreator
from .componentUtils import ComponentUtils


class Map(ComponentUtils, IComponent):
    def __init__(self, *args, **kwargs):
        self.productType = args[0]
        self.stylesFolder = (
            Path(__file__).parent.parent / "resources" / "styles" / "map"
        )
        self.gridStylesFolder = (
            Path(__file__).parent.parent / "resources" / "styles" / "grid"
        )
        self.defaultMapSize = [(588, 588), (720, 490)]

    def build(
        self,
        composition: QgsPrintLayout,
        data: dict,
        defaults: ConfigDefaults,
        mapAreaFeature: QgsFeature,
        mapAreaLayer: QgsVectorLayer,
        layers: list[QgsMapLayer],
        gridGenerator: GridAndLabelCreator,
        showLayers: bool = False,
    ):
        """Builds the Map component Topo and Ortho maps. The building process follows the sequence:
        1) Build the gridLayer (self.createLayerForGrid) in a layer called 'auxiliar_moldura'
        2) Builds the 'mascara_rotulo' layer, a donut (which the hole is mapAreaFeature) that blocks rendering of labels outside the map area
        3) Build the 'aux_moldura', an inverted polygon to hide external features
        4) Build the 'aux_label' layer to ???
        The aforementioned sequence is the layer insertion sequence (not the building one).
        Args:
            composition (QgsPrintLayout): composition to be updated
            data (dict): dictionary holding map info
            defaults (ConfigDefaults): dataclass holding global plugin configurations
            mapAreaFeature (QgsFeature): feature holding the map area
            mapAreaLayer (QgsVectorLayer): layer holding a unique feature representing the map area
            layers (list[QgsMapLayer]): ordered layers to be inserted in the map component
            gridGenerator (GridAndLabelCreator): instance of the GridAndLabelCreator class
            showLayers (bool): whether the plugin is running on debug mode or not
        """

        instance = QgsProject.instance()
        mapIDsToBeDisplayed = []

        # Setting up grid layer
        defaults = getattr(defaults, self.productType).get("grid")
        mapAreaExtents = mapAreaFeature.geometry().boundingBox()
        gridLayer, mapExtentsTransformed = self.createLayerForGrid(
            mapAreaLayer, mapAreaFeature, data
        )
        self.applyStyleGridLayer(gridLayer, gridGenerator, defaults, data)
        instance.addMapLayer(gridLayer, False)

        # Setting up aux_label, which is reprojected to mapLayers
        crs = next(iter(layers)).crs()
        copyLabel = self.cloneVectorLayerReproject(gridLayer, "aux_label", crs)
        copyLabelStyle = self.gridStylesFolder / "aux_label.qml"
        copyLabel.loadNamedStyle(str(copyLabelStyle))
        instance.addMapLayer(copyLabel, False)

        # Setting up aux_moldura
        copy = self.cloneVectorLayer(gridLayer, "aux_moldura")
        copyStyle = self.gridStylesFolder / "style.qml"
        copy.loadNamedStyle(str(copyStyle))
        instance.addMapLayer(copy, False)

        # Setting up mask layer
        maskLayer = self.createMaskLayer(mapAreaFeature)
        instance.addMapLayer(maskLayer, False)

        mapIDsToBeDisplayed.extend(
            (
                copy.id(),
                copyLabel.id(),
                gridLayer.id(),
                maskLayer.id(),
                *[x.id() for x in layers],
            )
        )
        layersToComposition = [gridLayer, maskLayer, copy, copyLabel, *layers]
        self.updateComposition(
            composition,
            mapAreaExtents,
            mapExtentsTransformed,
            gridLayer,
            layersToComposition,
            data,
        )

        if showLayers:
            mapGroupNode = QgsLayerTreeGroup("map")
            mapGroupNode.setItemVisibilityChecked(False)
            for lyr in layersToComposition:
                mapGroupNode.addLayer(lyr)
            root = QgsProject.instance().layerTreeRoot()
            root.addChildNode(mapGroupNode)

        return mapIDsToBeDisplayed

    def createLayerForGrid(
        self, baseLayer: QgsVectorLayer, mapExtents: QgsFeature, data: dict
    ) -> tuple[QgsVectorLayer, QgsRectangle]:
        """Creates a vector layer that will be the base for the grid.
        Args:
            baseLayer (QgsVectorLayer): base vector used to grid
            mapExtents (QgsFeature): feature holding the map area extents
            data (dict): dictionary holding map info
        Returns:
            gridLayer (QgsVectorLayer): The grid layer
            mapExtentsBoundingBox (QgsRectangle): Bbox of the map extents in UTM
        """
        uri = f'Polygon?crs=EPSG:{data.get("epsg")}'
        gridLayer = QgsVectorLayer(uri, "auxiliar_moldura", "memory")
        gridLayerDataProvider = gridLayer.dataProvider()
        gridLayer.startEditing()
        gridLayerFields = (field.name() for field in baseLayer.fields())
        gridLayerDataProvider.addAttributes(baseLayer.fields())

        if "id" not in gridLayerFields:
            gridLayerDataProvider.addAttributes([QgsField("id", QVariant.String)])
        gridLayer.updateFields()

        mapExtentsGeom = mapExtents.geometry()
        # mapExtentsGeom = mapExtentsGeom.densifyByDistance(0.001)
        crsSrc = QgsCoordinateReferenceSystem("EPSG:4674")
        crcDest = QgsCoordinateReferenceSystem(f'EPSG:{data.get("epsg")}')
        transform = QgsCoordinateTransform(crsSrc, crcDest, QgsProject.instance())
        mapExtentsGeom.transform(transform)

        feat = QgsFeature(gridLayer.fields())
        feat.setGeometry(mapExtentsGeom)
        feat["id"] = "1"
        gridLayerDataProvider.addFeature(feat)
        gridLayer.commitChanges()

        return gridLayer, mapExtentsGeom.boundingBox()

    def applyStyleGridLayer(
        self,
        gridLayer: QgsVectorLayer,
        gridGenerator: GridAndLabelCreator,
        gridOpts: dict,
        data: dict,
    ) -> None:
        """Applies the grid styling on grid layer
        Args:
            gridLayer(QgsVectorLayer): The layer where the style will be applied
            gridGenerator(GridAndLabelCreator): the instance of GridAndLabelCreator
            gridOpts (dict): holds the GridAndLabelCreator parameters
            data (dict): map info
        """
        gridCrs = gridLayer.crs().authid()
        srid = gridCrs.replace("EPSG:", "")
        gridGeometry = next(gridLayer.getFeatures()).geometry()
        gridGenerator.styleCreator(
            feature_geometry=gridGeometry,
            layer_bound=gridLayer,
            utmSRID=srid,
            id_attr="id",
            id_value=1,
            scale=data.get("scale"),
            spacing=data.get("scale") * 40,
            **gridOpts,
        )
        gridLayer.triggerRepaint()

    def createMaskLayer(self, mapExtents: QgsFeature) -> QgsVectorLayer:
        """Creates a mask ("donut-like") layer to hide map contents.
        Args:
            mapExtents (QgsFeature): feature holding the map area extents
        Returns:
            QgsVectorLayer: mask layer
        """
        bound = mapExtents.geometry()
        bufferedBound = bound.buffer(0.3, 2)
        diffBound = bufferedBound.difference(bound)
        maskLayer = self.createVectorLayerFromIter("mascara_rotulo", [diffBound])
        maskLayer.loadNamedStyle(str(self.stylesFolder / "mascara_rotulos.qml"))
        maskLayer.triggerRepaint()
        return maskLayer

    # TODO: check mapExtents / mapExtentsTransformed duplication
    def updateComposition(
        self,
        composition: QgsPrintLayout,
        mapExtents: QgsRectangle,
        mapExtentsTransformed: QgsRectangle,
        frameLayer: QgsVectorLayer,
        layersToComposition: list[QgsMapLayer],
        data: dict,
    ):
        """Updates the composer"""
        scale = data.get("scale") * 1000
        epsg = data.get("epsg")
        if mapItem := composition.itemById("map"):
            mapItem.setExtent(mapExtents)
            mapItem.setScale(scale)
            layersToSet = (
                [frameLayer]
                if not layersToComposition
                else [frameLayer, *layersToComposition]
            )
            mapItem.setLayers(layersToSet)
            mapItem.refresh()
            mapItem.setCrs(QgsCoordinateReferenceSystem(f"EPSG:{epsg}"))
            mapItem.setExtent(mapExtentsTransformed)
            mapItem.setScale(scale)
            if scale == 250000:
                mapWidth, mapHeight = self.defaultMapSize[1]
            else:
                mapWidth, mapHeight = self.defaultMapSize[0]
            mapItem.attemptResize(
                QgsLayoutSize(mapWidth, mapHeight, QgsUnitTypes.LayoutMillimeters)
            )
            mapItem.setScale(scale)
            mapItem.refresh()
            self.centerMap(composition)

    def centerMap(self, composition: QgsPrintLayout):
        """Sets reference point for map (centralizes the map)
        Args:
            composition (QgsPrintLayout): composition to be updated
        """
        if mapReservedArea := composition.itemById("area_reservada_carta"):
            mapReservedArea.setReferencePoint(QgsLayoutItem.Middle)
            mapReservedArea.refresh()
            positionMapReservedArea = mapReservedArea.positionWithUnits()
        if mapItem := composition.itemById("map"):
            mapItem.setReferencePoint(QgsLayoutItem.Middle)
            mapItem.attemptMove(positionMapReservedArea)
