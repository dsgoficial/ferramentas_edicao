# -*- coding: utf-8 -*-

import processing

from qgis import core
from qgis.core import (
    QgsFeatureRequest,
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingMultiStepFeedback,
    QgsProcessingParameterVectorLayer,
    QgsProcessingParameterBoolean,
    QgsProcessingParameterEnum,
    QgsDistanceArea,
    QgsCoordinateReferenceSystem,
    QgsProcessingFeatureSourceDefinition,
    QgsVectorLayerUtils,
)
from qgis.PyQt.QtCore import QCoreApplication

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help


class PlacePointSymbolInsideArea(QgsProcessingAlgorithm):

    INPUT = "INPUT"
    ONLY_SELECTED = "ONLY_SELECTED"
    INPUT_VISIBLE_FIELD = "INPUT_VISIBLE_FIELD"
    HIDE_FEATS = "HIDE_FEATS"
    SCALE = "SCALE"
    INPUT_SYMBOL_LAYER = "INPUT_SYMBOL_LAYER"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT,
                self.tr("Selecionar camada de ocupação do solo"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="constr_ocupacao_solo_a",
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.ONLY_SELECTED, self.tr("Executar somente nas feições selecionadas")
            )
        )
        self.addParameter(
            core.QgsProcessingParameterField(
                self.INPUT_VISIBLE_FIELD,
                self.tr(
                    'Selecionar o atributo de "visibilidade" da camada ocupação do solo'
                ),
                type=core.QgsProcessingParameterField.Any,
                parentLayerParameterName=self.INPUT,
                allowMultiple=False,
                defaultValue="visivel",
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.HIDE_FEATS,
                self.tr("Ocultar feições que não tem tamanho suficiente"),
                defaultValue=False,
            )
        )

        self.addParameter(
            QgsProcessingParameterEnum(
                self.SCALE,
                self.tr("Selecione a escala de edição:"),
                options=[
                    self.tr("1:25.000"),
                    self.tr("1:50.000"),
                    self.tr("1:100.000"),
                    self.tr("1:250.000"),
                ],
            )
        )
        self.sizesDict = {
            0: 25000,
            1: 50000,
            2: 100000,
            3: 250000,
        }
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_SYMBOL_LAYER,
                self.tr("Selecionar camada de camada de edição"),
                [QgsProcessing.TypeVectorPoint],
                defaultValue="edicao_simb_area_p",
            )
        )
        self.mappingDict = {
            101: 6,
            102: 6,
            103: 6,
            104: 6,
            105: 6,
            201: 18,
            202: 18,
            203: 18,
            204: 18,
            205: 18,
            206: 18,
            207: 18,
            298: 18,
            901: 10,
        }

    def processAlgorithm(self, parameters, context, feedback):
        inputLyr = self.parameterAsVectorLayer(parameters, self.INPUT, context)
        onlySelected = self.parameterAsBool(parameters, self.ONLY_SELECTED, context)
        hideFeats = self.parameterAsBool(parameters, self.HIDE_FEATS, context)
        inputLyrVisibleField = self.parameterAsFields(
            parameters, self.INPUT_VISIBLE_FIELD, context
        )[0]
        simbAreaLayer = self.parameterAsVectorLayer(
            parameters, self.INPUT_SYMBOL_LAYER, context
        )
        scaleIdx = self.parameterAsInt(parameters, self.SCALE, context)
        d = QgsDistanceArea()
        d.setSourceCrs(
            QgsCoordinateReferenceSystem("EPSG:3857"), context.transformContext()
        )
        bufferSize = d.convertLengthMeasurement(
            1.5e-3 * self.sizesDict[scaleIdx], inputLyr.crs().mapUnits()
        )
        iterator = (
            inputLyr.getFeatures() if not onlySelected else inputLyr.selectedFeatures()
        )
        nFeats = (
            inputLyr.featureCount()
            if not onlySelected
            else inputLyr.selectedFeatureCount()
        )
        if nFeats == 0:
            return {}
        stepSize = 100 / nFeats
        inputLyr.startEditing()
        simbAreaLayer.startEditing()
        if hideFeats:
            inputLyr.beginEditCommand(
                "Ocultando feições da entrada que não tem tamanho suficiente para o símbolo"
            )
        simbAreaLayer.beginEditCommand("Posicionando símbolos")
        newFeatList = []
        for current, feat in enumerate(iterator):
            if feedback.isCanceled():
                break
            if feat["tipo"] not in self.mappingDict:
                continue
            geom = feat.geometry()
            innerPoint = geom.centroid()
            if not innerPoint.within(geom):
                innerPoint = geom.pointOnSurface()
            buffer = innerPoint.buffer(bufferSize, -1)
            if buffer.within(geom):
                newFeat = QgsVectorLayerUtils.createFeature(simbAreaLayer, innerPoint)
                newFeat["tipo"] = self.mappingDict[feat["tipo"]]
                newFeatList.append(newFeat)
            elif hideFeats:
                feat[inputLyrVisibleField] = 2
                inputLyr.updateFeature(feat)
            feedback.setProgress(current * stepSize)
        simbAreaLayer.addFeatures(newFeatList)
        if hideFeats:
            inputLyr.endEditCommand()
        simbAreaLayer.endEditCommand()
        return {}

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return PlacePointSymbolInsideArea()

    def name(self):
        return "placepointsymbolinsidearea"

    def displayName(self):
        return self.tr("Insere símbolo de ocupação do solo")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return  help().helpUrl(self.name())
