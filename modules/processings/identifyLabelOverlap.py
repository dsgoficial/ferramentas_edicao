# -*- coding: utf-8 -*-

import os
import processing
import concurrent.futures

from collections import defaultdict
from typing import Literal, Set
from ..labelTools.labelHandler import (
    createLabelFromLayerAToLayerB,
    getLayerByName,
    getToleranceForLyr,
)

from qgis.core import (
    QgsField,
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingMultiStepFeedback,
    QgsProcessingParameterVectorLayer,
    QgsGeometry,
    QgsFeature,
    QgsPointXY,
    QgsVectorLayer,
    QgsFeatureSink,
    QgsProcessingParameterEnum,
    QgsFields,
    QgsSpatialIndex,
    QgsProcessingParameterNumber,
    QgsProcessingParameterFeatureSink,
    QgsProcessingParameterMultipleLayers,
    NULL,
    QgsWkbTypes,
)
from DsgTools.core.DSGToolsProcessingAlgs.algRunner import AlgRunner
from qgis.PyQt.QtCore import QCoreApplication, QVariant


class IdentifyLabelOverlap(QgsProcessingAlgorithm):

    INPUT_LAYERS = "INPUT_LAYERS"
    GEOGRAPHIC_BOUNDARY = "GEOGRAPHIC_BOUNDARY"
    SCALE = "SCALE"
    OUTPUT = "OUTPUT"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterMultipleLayers(
                self.INPUT_LAYERS,
                self.tr("Selecionar camadas:"),
                QgsProcessing.TypeVectorAnyGeometry,
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.GEOGRAPHIC_BOUNDARY,
                self.tr("Limite geográfico"),
                [QgsProcessing.TypeVectorPolygon],
                optional=True,
            )
        )
        self.scales = [
            "1:25.000",
            "1:50.000",
            "1:100.000",
            "1:250.000",
        ]
        self.addParameter(
            QgsProcessingParameterEnum(
                self.SCALE,
                self.tr("Escala"),
                options=self.scales,
                defaultValue=0,
            )
        )
        self.scaleDict = {
            "1:25.000": 25000,
            "1:50.000": 50000,
            "1:100.000": 100000,
            "1:250.000": 250000,
        }
        self.addParameter(
            QgsProcessingParameterFeatureSink(
                self.OUTPUT, self.tr("Flags Sobreposição de Rótulos")
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        layerList = self.parameterAsLayerList(parameters, self.INPUT_LAYERS, context)
        geographicBoundaryLyr = self.parameterAsLayer(
            parameters, self.GEOGRAPHIC_BOUNDARY, context
        )
        scaleIdx = self.parameterAsEnum(parameters, self.SCALE, context)
        scale = self.scaleDict[self.scales[scaleIdx]]
        fields = QgsFields()
        fields.append(QgsField("id", QVariant.String))
        fields.append(QgsField("texto_1", QVariant.String))
        fields.append(QgsField("texto_2", QVariant.String))
        (sink, sink_id) = self.parameterAsSink(
            parameters,
            self.OUTPUT,
            context,
            fields,
            QgsWkbTypes.Polygon,
            geographicBoundaryLyr.crs(),
        )


        lyrNameSet = set(i.name() for i in layerList)
        algRunner = AlgRunner()
        nRegions = geographicBoundaryLyr.featureCount()
        nSteps = 2 + 2*nRegions
        multiStepFeedback = QgsProcessingMultiStepFeedback(nSteps, feedback)
        currentStep = 0
        labelDict = defaultdict(lambda :defaultdict(dict))
        selectedLabelLyrList = []
        for feat in geographicBoundaryLyr.getFeatures():
            if multiStepFeedback.isCanceled():
                return {self.OUTPUT: ""}
            geom = feat.geometry()
            extent = geom.boundingBox()
            multiStepFeedback.setCurrentStep(currentStep)
            multiStepFeedback.setProgressText(self.tr(f"Calculando posição dos textos para o extent {extent}"))
            outputLabelLyr = processing.run(
                "native:extractlabels",
                {
                    "EXTENT": extent,
                    "SCALE": scale,
                    "MAP_THEME":None,
                    "INCLUDE_UNPLACED":False,
                    "DPI":400,
                    "OUTPUT":"memory:"
                },
                context=context,
                feedback=multiStepFeedback,
            )["OUTPUT"]
            currentStep += 1
            multiStepFeedback.setCurrentStep(currentStep)
            multiStepFeedback.setProgressText(self.tr(f"Adicionando dados calculados do extent {extent} às estruturas auxiliares"))
            nFeats = outputLabelLyr.featureCount()
            if nFeats == 0:
                continue
            selectedLabelsLyr = algRunner.runFilterExpression(
                inputLyr=outputLabelLyr,
                context=context,
                expression=f"Layer in {tuple(lyrNameSet)}".replace(",)",")"),
                feedback=multiStepFeedback,
            )
            currentStep += 1
            if selectedLabelsLyr.featureCount() == 0:
                continue
            selectedLabelLyrList.append(selectedLabelsLyr)
        
        if selectedLabelLyrList == [] or multiStepFeedback.isCanceled():
            return {self.OUTPUT: ""}
        
        mergedLyr = algRunner.runMergeVectorLayers(layerList, context, feedback=multiStepFeedback)
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.setProgressText(self.tr("Calculando overlaps"))
        
        
        return {self.OUTPUT: ""}

        

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return IdentifyLabelOverlap()

    def name(self):
        return "identifylabeloverlap"

    def displayName(self):
        return self.tr("Identifica sobreposição dos rótulos")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return self.tr("Identifica sobreposição dos rótulos.")
