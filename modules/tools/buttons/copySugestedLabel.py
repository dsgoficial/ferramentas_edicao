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
from qgis.core import (
    QgsProject,
    QgsFeature,
    QgsFeatureIterator,
    QgsFeatureRequest,
    QgsGeometry,
    QgsDistanceArea,
    QgsPoint,
    QgsPointXY,
    QgsExpression,
    QgsExpressionContext,
    QgsExpressionContextScope,
    QgsPalLayerSettings,
    QgsVectorLayerSimpleLabeling,
    QgsFields,
    QgsField,
    QgsCoordinateReferenceSystem,
    QgsCoordinateTransformContext,
    QgsSpatialIndex,
    QgsDistanceArea,
    QgsUnitTypes,
    NULL,
)
from qgis.gui import QgsMapToolEmitPoint

from .baseTools import BaseTools
from .utils.comboBox import ComboBox


class CopySugestedLabel(QgsMapToolEmitPoint, BaseTools):
    def __init__(self, iface, toolBar, productTypeSelector, scaleSelector) -> None:
        super().__init__(iface.mapCanvas())
        self.toolBar = toolBar
        self.iface = iface
        self.scaleSelector = scaleSelector
        self.productTypeSelector = productTypeSelector
        self.mapCanvas = iface.mapCanvas()
        self.box = ComboBox(self.iface.mainWindow())
        self.canvasClicked.connect(self.mouseClick)

    def setupUi(self):
        buttonImg = Path(__file__).parent / "icons" / "copiar_texto_sugerido.png"
        self._action = self.createAction(
            "Copiar Texto Sugerido",
            buttonImg,
            lambda _: None,
            self.tr(
                'Copia rótulos sugeridos pelo QGIS na camada ativa para "edicao_texto_generico_l"'
            ),
            self.tr(
                'Copia rótulos sugeridos pelo QGIS na camada ativa para "edicao_texto_generico_l"'
            ),
            self.iface,
        )
        self._action.setCheckable(True)
        self.setAction(self._action)
        self.toolBar.addAction(self._action)
        self.iface.registerMainWindowAction(self._action, "")

    def mid(self, pt1, pt2):
        x = (pt1.x() + pt2.x()) / 2
        y = (pt1.y() + pt2.y()) / 2
        return QgsPointXY(x, y)

    def getConfigFromLabelSettings(self, labelSettings, context):
        if labelSettings is None:
            return
        config = {}
        config["found"] = True
        textFormat = labelSettings.format()
        textFont = textFormat.font()

        # Obtendo os parâmetros
        scope = context.scopes()[0]
        feat = scope.feature()
        config["justificativa_txt"] = 1
        if "justificativa_txt" in feat.fields().names():
            config["justificativa_txt"] = (
                1
                if feat["justificativa_txt"] in (None, 9999)
                else feat["justificativa_txt"]
            )
        config["placement"] = labelSettings.placement
        config["estilo_fonte"] = textFormat.namedStyle()
        config["tamanho_txt"] = textFormat.size()
        config["cor"] = textFormat.color().name()
        config["cor_buffer"] = textFormat.buffer().color().name()
        config["tamanho_buffer"] = textFormat.buffer().size()
        config["letterSpacing"] = textFont.letterSpacing()
        config["wordSpacing"] = textFont.wordSpacing()

        # Get custom values
        checkExpressionProperties = {"tamanho_txt": QgsPalLayerSettings.Size}
        for attr, prop in checkExpressionProperties.items():
            if prop not in labelSettings.dataDefinedProperties().propertyKeys():
                continue
            if not labelSettings.dataDefinedProperties().property(prop).isActive():
                continue
            prop_expression = QgsExpression(
                labelSettings.dataDefinedProperties().property(prop).asExpression()
            )
            prop_value = prop_expression.evaluate(context)
            if prop_value is None:
                continue
            config[attr] = prop_expression.evaluate(context)
        return config

    def getAcceptedRule(self, baseLabeling, context, configs):
        if isinstance(baseLabeling, QgsVectorLayerSimpleLabeling):
            config = self.getConfigFromLabelSettings(baseLabeling.settings(), context)
            configs.append(config)
            return

        if isinstance(baseLabeling, list):
            for childLabelRule in baseLabeling:
                rule_expresion = QgsExpression(childLabelRule.filterExpression())
                if not rule_expresion.evaluate(context):
                    continue
                self.getAcceptedRule(childLabelRule, context, configs)
        else:
            n_children = len(baseLabeling.children())
            if n_children != 0:
                for childLabelRule in baseLabeling.children():
                    rule_expresion = QgsExpression(childLabelRule.filterExpression())
                    if not (
                        rule_expresion.evaluate(context)
                        or rule_expresion.expression() == ""
                    ):
                        continue
                    self.getAcceptedRule(childLabelRule, context, configs)
                return
            rule_expresion = QgsExpression(baseLabeling.filterExpression())
            if not (
                rule_expresion.evaluate(context) or rule_expresion.expression() == ""
            ):
                return
            ruleLabelSettings = baseLabeling.settings()
            if ruleLabelSettings is None:
                return
            config = self.getConfigFromLabelSettings(ruleLabelSettings, context)
            configs.append(config)

    def getSugestedLabelConfig(self, feat):
        context = QgsExpressionContext()
        scope = QgsExpressionContextScope()
        context.appendScope(scope)
        scope.setFeature(feat)
        config = {"found": False}
        labeling = self.srcLyr.labeling()
        baseLabeling = (
            labeling
            if isinstance(labeling, QgsVectorLayerSimpleLabeling)
            else labeling.rootRule()
        )
        configs = []
        self.getAcceptedRule(baseLabeling, context, configs)
        return {"found": False} if len(configs) != 1 else configs[0]

    def getSugestedLabelGeometry(self, letters_data, custom=None):
        words_points = []
        centroidGeom = None
        if custom == "elemnat_curva_nivel_l":
            pass
        if len(letters_data) == 1:
            letter_data = letters_data[0]
            letter_geometry = letter_data[0]
            centroidGeom = letter_geometry.centroid()
            letter_points = letter_geometry.asPolygon()[0]
            first_point = self.mid(letter_points[3], letter_points[4])
            words_points.append(first_point)
            last_point = self.mid(letter_points[1], letter_points[2])
            words_points.append(last_point)
            middle_point = letter_geometry.centroid().asPoint()
            words_points.append(middle_point)
        else:
            for idx, letter_data in enumerate(letters_data):
                letter_geometry = letter_data[0]
                words_points.append(letter_geometry.centroid())

        word_geometry = QgsGeometry.fromPolylineXY(
            [p.asPoint() if not isinstance(p, QgsPointXY) else p for p in words_points]
        )
        oldLen = word_geometry.length()
        word_text = letters_data[0][1]
        nLetters = len(word_text)
        lenPerLetter = oldLen / nLetters
        increaseFactor = 1.05
        word_geometry = word_geometry.extendLine(
            increaseFactor * lenPerLetter, increaseFactor * lenPerLetter
        )
        return word_geometry, word_text, centroidGeom

    def mouseClick(self, pos, btn):
        self.srcLyr = self.iface.activeLayer()
        if not self.srcLyr:
            self.displayErrorMessage(self.tr("Não há camada selecionada"))
            return
        if self.srcLyr.sourceName() == "edicao_texto_generico_l":
            self.displayErrorMessage(
                self.tr("Camada selecionada edicao_texto_generico_l, selecione outra.")
            )
            return
        fieldIdx = self.srcLyr.dataProvider().fieldNameIndex("texto_edicao")
        if fieldIdx == -1:
            self.displayErrorMessage(
                self.tr('O atributo "texto_edicao" não existe na camada selecionada')
            )
            return

        if self.srcLyr.dataProvider().crs().isGeographic():
            d = QgsDistanceArea()
            d.setSourceCrs(
                QgsCoordinateReferenceSystem("EPSG:3857"),
                QgsCoordinateTransformContext(),
            )
            self.tolerance = d.convertLengthMeasurement(
                self.getScale() * 0.01, QgsUnitTypes.DistanceDegrees
            )
        else:
            self.tolerance = self.getScale() * 0.01
        # Get letter features
        self.letter_label_features = []
        for label in self.iface.mapCanvas().labelingResults().allLabels():
            if label.layerID != self.srcLyr.id():
                continue
            feat = QgsFeature()
            featFields = QgsFields()
            featFields.append(QgsField("labelText", QVariant.String))
            feat.setFields(featFields)
            feat.setGeometry(label.labelGeometry)
            feat["labelText"] = label.labelText
            feat.setId(label.featureId)
            self.letter_label_features.append(feat)

        # Make label index
        self.labelSpatialIndex = QgsSpatialIndex(
            flags=QgsSpatialIndex.FlagStoreFeatureGeometries
        )
        feat_iterator = QgsFeatureIterator()
        for letter_label_feat in self.letter_label_features:
            self.labelSpatialIndex.addFeature(letter_label_feat)

        # Get closest label
        if not (self.isActive() and self.dstLyrP and self.dstLyrL):
            return
        labelClosestSpatialID = self.labelSpatialIndex.nearestNeighbor(
            pos, maxDistance=2 * self.tolerance
        )
        label_request = QgsFeatureRequest().setFilterFids(labelClosestSpatialID)
        closestSpatialID = (
            False if len(labelClosestSpatialID) == 0 else labelClosestSpatialID[0]
        )
        closestFeat = self.srcLyr.getFeatures(label_request)

        # Copying label geometry to generic label layer
        if not closestSpatialID:
            self.displayErrorMessage("Não foram encontradas feições na camada ativa")
            return
        feat = next(closestFeat)
        if not self.checkFeature(feat):
            self.displayErrorMessage(
                self.tr("Feição inválida. Verifique os atributos na camada ativa.")
            )
            return
        nome = feat.attribute("texto_edicao")
        sugestedLabelGeometry, word_text, centroidGeom = self.getSugestedLabelGeometry(
            [
                (label_feature.geometry(), label_feature["labelText"])
                for label_feature in self.letter_label_features
                if label_feature.id() == closestSpatialID
            ]
        )
        sugestedLabelConfig = self.getSugestedLabelConfig(feat)
        if sugestedLabelConfig["found"]:
            self.createSugestedLabelFeature(
                feat,
                word_text,
                sugestedLabelGeometry,
                centroidGeom,
                sugestedLabelConfig,
            )
        else:
            self.displayErrorMessage(
                self.tr("Feição inválida. Verifique as configurações do rótulo.")
            )

    @staticmethod
    def checkFeature(feat):
        return not not feat.attribute("texto_edicao")

    def createSugestedLabelFeature(
        self,
        originFeat,
        word_text,
        sugestedLabelGeometry,
        centroidGeom,
        sugestedLabelConfig,
    ):
        destLayer = self.dstLyrL
        if sugestedLabelConfig["placement"] in (
            QgsPalLayerSettings.Horizontal,
            QgsPalLayerSettings.OverPoint,
            QgsPalLayerSettings.AroundPoint,
            QgsPalLayerSettings.OrderedPositionsAroundPoint,
        ):
            destLayer = self.dstLyrP
            sugestedLabelGeometry = centroidGeom

        toInsert = QgsFeature(destLayer.fields())
        toInsert.setAttribute("texto_edicao", word_text)

        for attrToAdd in [
            "justificativa_txt",
            "estilo_fonte",
            "tamanho_txt",
            "cor",
            "cor_buffer",
            "tamanho_buffer",
        ]:
            if attrToAdd in destLayer.fields().names() and attrToAdd in list(
                sugestedLabelConfig.keys()
            ):
                toInsert.setAttribute(attrToAdd, sugestedLabelConfig[attrToAdd])
        toInsert.setGeometry(sugestedLabelGeometry)
        destLayer.startEditing()
        destLayer.addFeature(toInsert)
        destLayer.triggerRepaint()
        # toInsert.setAttribute('cor_buffer',sugestedLabelConfig['cor_buffer'])
        # toInsert.setAttribute('tamanho_buffer',sugestedLabelConfig['tamanho_buffer'])
        # toInsert.setAttribute('carta_simbolizacao', 1 if self.mapTypeSelector.currentText() == 'Carta' else 2)
        # toInsert.setAttribute('overrun',1)
        # toInsert.setAttribute('camada_associado',self.srcLyr.name())
        # toInsert.setAttribute('feature_associada',originFeat.id())

    def unsetTool(self):
        self.mapCanvas.setScaleLocked(False)

    def getLayers(self):
        instance = QgsProject.instance()
        # geomType = lyr.geometryType()
        destLayerNameL = "edicao_texto_generico_l"
        destLayerL = instance.mapLayersByName(destLayerNameL)
        destLayerNameP = "edicao_texto_generico_p"
        destLayerP = instance.mapLayersByName(destLayerNameP)

        if len(destLayerL) != 1:
            self.displayErrorMessage(self.tr(f'A camada "{destLayerNameL}" não existe'))
            return
        if len(destLayerP) != 1:
            self.displayErrorMessage(self.tr(f'A camada "{destLayerNameP}" não existe'))
            return
        self.dstLyrL = destLayerL[0]
        self.dstLyrP = destLayerP[0]
        lastExtent = self.mapCanvas.extent()
        self.mapCanvas.zoomScale(self.getScale())
        self.mapCanvas.setScaleLocked(True)
        self.mapCanvas.setExtent(lastExtent, True)
        # self.mapCanvas.setMagnificationFactor(1.0)
        return True
