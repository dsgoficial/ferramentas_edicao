# -*- coding: utf-8 -*-

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
    QgsExpression,
    QgsExpressionContext,
    QgsExpressionContextScope,
    QgsPalLayerSettings,
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
    def __init__(self, iface, toolBar, mapTypeSelector, scaleSelector) -> None:
        super().__init__(iface.mapCanvas())
        self.toolBar = toolBar
        self.iface = iface
        self.scaleSelector = scaleSelector
        self.mapTypeSelector = mapTypeSelector
        self.mapCanvas = iface.mapCanvas()
        self.box = ComboBox(self.iface.mainWindow())
        self.canvasClicked.connect(self.mouseClick)

    def setupUi(self):
        buttonImg = Path(__file__).parent / "icons" / "genericSymbolA.png"
        self._action = self.createAction(
            "Copia Texto Sugerido",
            None,
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
        return QgsPoint(x, y)

    def getAcceptedRule(self, baseLabelRule, context, configs):
        if isinstance(baseLabelRule, list):
            for childLabelRule in baseLabelRule:
                rule_expresion = QgsExpression(childLabelRule.filterExpression())
                if not rule_expresion.evaluate(context):
                    continue
                self.getAcceptedRule(childLabelRule, context, configs)
        else:
            n_children = len(baseLabelRule.children())
            if n_children != 0:
                for childLabelRule in baseLabelRule.children():
                    rule_expresion = QgsExpression(childLabelRule.filterExpression())
                    if not (
                        rule_expresion.evaluate(context)
                        or rule_expresion.expression() == ""
                    ):
                        continue
                    self.getAcceptedRule(childLabelRule, context, configs)
                return
            rule_expresion = QgsExpression(baseLabelRule.filterExpression())
            if not (
                rule_expresion.evaluate(context) or rule_expresion.expression() == ""
            ):
                return
            rule_settings = baseLabelRule.settings()
            if rule_settings is None:
                return
            config = {}
            config["found"] = True
            textFormat = rule_settings.format()
            textFont = textFormat.font()

            # Obtendo os parâmetros
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
                if prop not in rule_settings.dataDefinedProperties().propertyKeys():
                    continue
                if not rule_settings.dataDefinedProperties().property(prop).isActive():
                    continue
                prop_expression = QgsExpression(
                    rule_settings.dataDefinedProperties().property(prop).asExpression()
                )
                prop_value = prop_expression.evaluate(context)
                if prop_value is None:
                    continue
                config[attr] = prop_expression.evaluate(context)
            configs.append(config)

    def getSugestedLabelConfig(self, feat):
        context = QgsExpressionContext()
        scope = QgsExpressionContextScope()
        context.appendScope(scope)
        scope.setFeature(feat)
        config = {"found": False}
        labeling = self.srcLyr.labeling()
        configs = []
        self.getAcceptedRule(labeling.rootRule(), context, configs)
        return {"found": False} if len(configs) != 1 else configs[0]

    def getSugestedLabelGeometry(self, letters_data, custom=None):
        words_points = []
        if custom == "elemnat_curva_nivel_l":
            pass
        if len(letters_data) == 1:
            letter_data = letters_data[0]
            letter_geometry = letter_data[0]
            letter_points = letter_geometry.asPolygon()[0]
            first_point = self.mid(letter_points[3], letter_points[4])
            words_points.append(first_point)
            last_point = self.mid(letter_points[1], letter_points[2])
            words_points.append(last_point)
            middle_point = QgsPoint(letter_geometry.centroid().asPoint())
            words_points.append(middle_point)
        else:
            for idx, letter_data in enumerate(letters_data):
                letter_geometry = letter_data[0]
                words_points.append(letter_geometry.centroid())

        word_geometry = QgsGeometry.fromPolylineXY([p.asPoint() for p in words_points])
        oldLen = word_geometry.length()
        word_text = letters_data[0][1]
        nLetters = len(word_text)
        lenPerLetter = oldLen / nLetters
        word_geometry = word_geometry.extendLine(lenPerLetter, lenPerLetter)        
        return word_geometry, word_text

    def mouseClick(self, pos, btn):
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
        if not (self.isActive() and self.dstLyr):
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
        sugestedLabelGeometry, word_text = self.getSugestedLabelGeometry(
            [
                (label_feature.geometry(), label_feature["labelText"])
                for label_feature in self.letter_label_features
                if label_feature.id() == closestSpatialID
            ]
        )
        sugestedLabelConfig = self.getSugestedLabelConfig(feat)
        if sugestedLabelConfig["found"]:
            self.createSugestedLabelFeature(
                feat, word_text, sugestedLabelGeometry, sugestedLabelConfig
            )
        else:
            self.displayErrorMessage(
                self.tr("Feição inválida. Verifique as configurações do rótulo.")
            )

    @staticmethod
    def checkFeature(feat):
        return not not feat.attribute("texto_edicao")

    def createSugestedLabelFeature(
        self, originFeat, word_text, sugestedLabelGeometry, sugestedLabelConfig
    ):
        toInsert = QgsFeature(self.dstLyr.fields())
        toInsert.setAttribute("texto_edicao", word_text)
        toInsert.setAttribute("estilo_fonte", sugestedLabelConfig["estilo_fonte"])
        toInsert.setAttribute("tamanho_txt", sugestedLabelConfig["tamanho_txt"])
        toInsert.setAttribute("cor", sugestedLabelConfig["cor"])
        toInsert.setGeometry(sugestedLabelGeometry)
        self.dstLyr.startEditing()
        self.dstLyr.addFeature(toInsert)
        self.dstLyr.triggerRepaint()
        # toInsert.setAttribute('cor_buffer',sugestedLabelConfig['cor_buffer'])
        # toInsert.setAttribute('tamanho_buffer',sugestedLabelConfig['tamanho_buffer'])
        # toInsert.setAttribute('carta_simbolizacao', 1 if self.mapTypeSelector.currentText() == 'Carta' else 2)
        # toInsert.setAttribute('overrun',1)
        # toInsert.setAttribute('camada_associado',self.srcLyr.name())
        # toInsert.setAttribute('feature_associada',originFeat.id())

    def unsetTool(self):
        self.mapCanvas.setScaleLocked(False)

    def getLayers(self):
        lyr = self.iface.activeLayer()
        if not lyr:
            self.displayErrorMessage(self.tr("Não há camada selecionada"))
            return
        fieldIdx = lyr.dataProvider().fieldNameIndex("texto_edicao")
        if fieldIdx == -1:
            self.displayErrorMessage(
                self.tr('O atributo "texto_edicao" não existe na camada selecionada')
            )
            return
        instance = QgsProject.instance()
        self.srcLyr = lyr
        # geomType = lyr.geometryType()
        destLayerName = "edicao_texto_generico_l"
        destLayer = instance.mapLayersByName(destLayerName)

        if len(destLayer) != 1:
            self.displayErrorMessage(self.tr(f'A camada "{destLayerName}" não existe'))
            return
        self.dstLyr = destLayer[0]
        self.mapCanvas.zoomScale(self.getScale())
        self.mapCanvas.setMagnificationFactor(1.0)
        self.mapCanvas.setScaleLocked(True)
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
        return True
