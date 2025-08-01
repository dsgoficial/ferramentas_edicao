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

import os
import processing
import concurrent.futures

from collections import defaultdict
from typing import Literal, Set
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
    QgsFeatureSink,
    QgsProcessingParameterEnum,
    QgsFields,
    QgsSpatialIndex,
    QgsProcessingParameterNumber,
    QgsProcessingParameterFeatureSink,
    QgsProcessingParameterMultipleLayers,
    NULL,
    QgsWkbTypes,
    QgsRectangle,
)
from DsgTools.core.DSGToolsProcessingAlgs.algRunner import AlgRunner
from qgis.PyQt.QtCore import QCoreApplication, QVariant

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help


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
        fields.append(QgsField("texto", QVariant.String))
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
        nSteps = 5 + 2 * nRegions
        multiStepFeedback = QgsProcessingMultiStepFeedback(nSteps, feedback)
        currentStep = 0
        label_calculator = get_label_size_calculator(scale, dpi=300)
        selectedLabelLyrList = []
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
            if selectedLabelsLyr.featureCount() == 0:
                continue
            selectedLabelLyrList.append(selectedLabelsLyr)

        if selectedLabelLyrList == [] or multiStepFeedback.isCanceled():
            return {self.OUTPUT: sink_id}

        mergedLyr = algRunner.runMergeVectorLayers(
            selectedLabelLyrList, context, feedback=multiStepFeedback
        )
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        mergedWithFieldId = algRunner.runCreateFieldWithExpression(
            inputLyr=mergedLyr,
            expression="$id",
            fieldType=1,
            fieldName="featid",
            feedback=multiStepFeedback,
            context=context,
            is_child_algorithm=False,
        )
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        if mergedWithFieldId.featureCount() == 0:
            return {self.OUTPUT: sink_id}
        multiStepFeedback.setProgressText(self.tr("Criando polígonos de labels com dimensões precisas"))
        labelPolygonsLayer = label_calculator.get_improved_label_polygons_layer(mergedWithFieldId)
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
        multiStepFeedback.setProgressText(self.tr("Calculando overlaps"))
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        intersectedLyr = algRunner.runIntersection(
            labelPolygonsLayer,
            context,
            inputFields=["featid"],
            overlayFields=["featid"],
            overlayLyr=labelPolygonsLayer,
            feedback=multiStepFeedback,
        )
        nProblems = intersectedLyr.featureCount()
        if nProblems == 0:
            return {self.OUTPUT: sink_id}
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        dissolvedLyr = algRunner.runDissolve(
            inputLyr=intersectedLyr,
            context=context,
            feedback=multiStepFeedback,
        )
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        algRunner.runDeaggregate(
            inputLyr=dissolvedLyr,
            context=context,
            feedback=multiStepFeedback,
        )
        dissolvedLyr = processing.run(
            "native:joinattributesbylocation",
            {
                "INPUT": dissolvedLyr,
                "PREDICATE": [2],  # equal
                "JOIN": labelPolygonsLayer,
                "JOIN_FIELDS": [],
                "METHOD": 0,
                "DISCARD_NONMATCHING": False,
                "PREFIX": "",
                "NON_MATCHING": "memory:",
            },
            context=context,
            feedback=multiStepFeedback,
            is_child_algorithm=False,
        )["NON_MATCHING"]
        nProblems = dissolvedLyr.featureCount()
        if nProblems == 0:
            multiStepFeedback.pushInfo(self.tr("Não há rótulos sobrepostos"))
            return {self.OUTPUT: sink_id}
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        stepSize = 100 / nProblems
        flagId = 0
        for current, feat in enumerate(dissolvedLyr.getFeatures()):
            if multiStepFeedback.isCanceled():
                break
            flagFeat = QgsFeature(fields)
            flagFeat["id"] = flagId
            flagFeat["texto"] = "Rótulos sobrepostos"
            flagFeat.setGeometry(feat.geometry())
            sink.addFeature(flagFeat)
            multiStepFeedback.setProgress(current * stepSize)
            flagId += 1

        return {self.OUTPUT: sink_id}

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
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return help().helpUrl(self.name())
