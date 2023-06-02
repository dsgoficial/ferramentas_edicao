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


class PlaceVegetationSymbol(QgsProcessingAlgorithm):

    INPUT = "INPUT"
    ONLY_SELECTED = "ONLY_SELECTED"
    HIDE_FEATS = "HIDE_FEATS"
    SCALE = "SCALE"
    INPUT_SYMBOL_LAYER = "INPUT_SYMBOL_LAYER"
    OUTPUT = "OUTPUT"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT,
                self.tr("Selecionar camada de extração mineral"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="cobter_vegetacao_a",
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.ONLY_SELECTED, self.tr("Executar somente nas feições selecionadas")
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
                self.tr(
                    "Selecionar camada de camada de edição de símbolo de vegetação"
                ),
                [QgsProcessing.TypeVectorPoint],
                defaultValue="edicao_simb_vegetacao_p",
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        inputLyr = self.parameterAsVectorLayer(parameters, self.INPUT, context)
        onlySelected = self.parameterAsBool(parameters, self.ONLY_SELECTED, context)
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
            return {self.OUTPUT: ""}
        stepSize = 100 / nFeats
        inputLyr.startEditing()
        simbAreaLayer.startEditing()
        simbAreaLayer.beginEditCommand("Posicionando símbolos")
        newFeatList = []
        for current, feat in enumerate(iterator):
            if feedback.isCanceled():
                break
            geom = feat.geometry()
            innerPoint = geom.centroid()
            if not innerPoint.within(geom):
                innerPoint = geom.pointOnSurface()
            buffer = innerPoint.buffer(bufferSize, -1)
            if not buffer.within(geom):
                continue
            vegName = self.getVegetationMapping(feat)
            if vegName is None:
                continue
            newFeat = QgsVectorLayerUtils.createFeature(simbAreaLayer, innerPoint)
            newFeat["texto_edicao"] = vegName
            newFeatList.append(newFeat)
            feedback.setProgress(current * stepSize)
        simbAreaLayer.addFeatures(newFeatList)
        simbAreaLayer.endEditCommand()
        return {self.OUTPUT: ""}

    @staticmethod
    def getVegetationMapping(feat):
        mapping = {
            1296: "Ref",
            801: "Caat",
            501: "Campnr",
            701: "Cerr",
            401: "Rest",
            1003: "Rochoso",
        }
        return mapping.get(int(feat.attribute("tipo")), None)

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return PlaceVegetationSymbol()

    def name(self):
        return "placevegetationsymbol"

    def displayName(self):
        return self.tr("Insere símbolo de vegetação")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return self.tr("O algoritmo ...")
