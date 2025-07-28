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

import processing

from ..labelTools.label_size_calculator import get_label_size_calculator

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
    QgsProcessingParameterEnum,
    QgsFields,
    QgsProcessingParameterFeatureSink,
    QgsProcessingParameterMultipleLayers,
    QgsWkbTypes,
    QgsRectangle,
)
from DsgTools.core.DSGToolsProcessingAlgs.algRunner import AlgRunner
from DsgTools.core.GeometricTools.layerHandler import LayerHandler
from qgis.PyQt.QtCore import QCoreApplication, QVariant

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help


class IdentifyLabelsOutsideGeographicBoundary(QgsProcessingAlgorithm):

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
                self.tr("Selecionar a Camada de Moldura"),
                [QgsProcessing.TypeVectorPolygon],
            )
        )
        self.scales = [
            "1:5.000",
            "1:10.000",
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
                defaultValue=2,
            )
        )
        self.scaleDict = {
            "1:5.000": 5000,
            "1:10.000": 10000,
            "1:25.000": 25000,
            "1:50.000": 50000,
            "1:100.000": 100000,
            "1:250.000": 250000,
        }
        self.addParameter(
            QgsProcessingParameterFeatureSink(
                self.OUTPUT, self.tr("Flags fora da moldura")
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        layerList = self.parameterAsLayerList(parameters, self.INPUT_LAYERS, context)
        geographicBoundaryLyr = self.parameterAsVectorLayer(
            parameters, self.GEOGRAPHIC_BOUNDARY, context
        )
        scaleIdx = self.parameterAsEnum(parameters, self.SCALE, context)
        scale = self.scaleDict[self.scales[scaleIdx]]
        fields = QgsFields()
        fields.append(QgsField("flag", QVariant.String))
        if layerList == []:
            return {}
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
        layerHandler = LayerHandler()
        nRegions = geographicBoundaryLyr.featureCount()
        nSteps = 7 * nRegions
        multiStepFeedback = QgsProcessingMultiStepFeedback(nSteps, feedback)
        currentStep = 0
        label_calculator = get_label_size_calculator(scale, dpi=300)
        
        for feat in geographicBoundaryLyr.getFeatures():
            if multiStepFeedback.isCanceled():
                return {self.OUTPUT: sink_id}
            geom = feat.geometry()
            extent = geom.boundingBox()
            multiStepFeedback.setCurrentStep(currentStep)
            multiStepFeedback.setProgressText(
                self.tr(f"Calculando posição dos textos para o extent {extent}")
            )
            outputLabelLyr = processing.run(
                "native:extractlabels",
                {
                    "EXTENT": extent,
                    "SCALE": scale,
                    "MAP_THEME": None,
                    "INCLUDE_UNPLACED": False,
                    "DPI": 300,
                    "OUTPUT": "memory:",
                },
                context=context,
                feedback=multiStepFeedback,
            )["OUTPUT"]
            currentStep += 1
            multiStepFeedback.setCurrentStep(currentStep)
            multiStepFeedback.setProgressText(
                self.tr(
                    f"Adicionando dados calculados do extent {extent} às estruturas auxiliares"
                )
            )
            nFeats = outputLabelLyr.featureCount()
            if nFeats == 0:
                continue
            selectedLabelsLyr = algRunner.runFilterExpression(
                inputLyr=outputLabelLyr,
                context=context,
                expression=f"Layer in {tuple(lyrNameSet)}".replace(",)", ")"),
                feedback=multiStepFeedback,
            )
            currentStep += 1
            multiStepFeedback.setCurrentStep(currentStep)
            if selectedLabelsLyr.featureCount() == 0:
                continue
            multiStepFeedback.setProgressText(self.tr("Criando polígonos de labels com dimensões precisas"))
            labelPolygonsLayer = label_calculator.get_improved_label_polygons_layer(selectedLabelsLyr)
            currentStep += 1
            multiStepFeedback.setCurrentStep(currentStep)
            algRunner.runCreateSpatialIndex(
                labelPolygonsLayer,
                context,
                feedback=multiStepFeedback,
                is_child_algorithm=True,
            )
            currentStep += 1
            multiStepFeedback.setCurrentStep(currentStep)
            boundsLyr = layerHandler.createMemoryLayerWithFeature(
                layer=geographicBoundaryLyr,
                feat=feat,
                context=context,
            )
            featsWithin = algRunner.runExtractByLocation(
                inputLyr=labelPolygonsLayer,
                intersectLyr=boundsLyr,
                context=context,
                predicate=[AlgRunner.Within],
                feedback=multiStepFeedback,
            )
            currentStep += 1
            multiStepFeedback.setCurrentStep(currentStep)
            if featsWithin.featureCount() == 0:
                continue
            featsWithinIdList = [feat["featid"] for feat in featsWithin.getFeatures()]
            candidateFlagsLyr = algRunner.runFilterExpression(
                inputLyr=labelPolygonsLayer,
                context=context,
                expression=f"featid not in {tuple(featsWithinIdList)}".replace(
                    ",)", ")"
                ),
                feedback=multiStepFeedback,
            )
            currentStep += 1
            multiStepFeedback.setCurrentStep(currentStep)
            if candidateFlagsLyr.featureCount() == 0:
                continue
            for flagFeat in candidateFlagsLyr.getFeatures():
                newFlag = QgsFeature(fields)
                newFlag["flag"] = "Rótulo fora da moldura"
                newFlag.setGeometry(flagFeat.geometry())
                sink.addFeature(newFlag)

        return {self.OUTPUT: sink_id}

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return IdentifyLabelsOutsideGeographicBoundary()

    def name(self):
        return "identifylabelsoutsidegeographicboundary"

    def displayName(self):
        return self.tr("Identifica rótulos fora da moldura")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return help().helpUrl(self.name())