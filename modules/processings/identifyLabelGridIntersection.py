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
from qgis.PyQt.QtCore import QCoreApplication, QVariant

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help


class IdentifyLabelsIntersectingGrid(QgsProcessingAlgorithm):

    INPUT_LAYERS = "INPUT_LAYERS"
    GRID_LAYER = "GRID_LAYER"
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
                self.GRID_LAYER,
                self.tr("Selecionar a Camada do Grid"),
                [QgsProcessing.TypeVectorLine],
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
                self.OUTPUT, self.tr("Flags Rótulos Intersectando Grid")
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        layerList = self.parameterAsLayerList(parameters, self.INPUT_LAYERS, context)
        gridLyr = self.parameterAsVectorLayer(
            parameters, self.GRID_LAYER, context
        )
        scaleIdx = self.parameterAsEnum(parameters, self.SCALE, context)
        scale = self.scaleDict[self.scales[scaleIdx]]
        
        fields = QgsFields()
        fields.append(QgsField("id", QVariant.String))
        fields.append(QgsField("texto", QVariant.String))
        fields.append(QgsField("camada", QVariant.String))
        
        if layerList == []:
            return {}
            
        (sink, sink_id) = self.parameterAsSink(
            parameters,
            self.OUTPUT,
            context,
            fields,
            QgsWkbTypes.Polygon,
            gridLyr.crs(),
        )

        lyrNameSet = set(i.name() for i in layerList)
        algRunner = AlgRunner()
        
        # Obter extent do grid para extrair labels
        gridExtent = gridLyr.extent()
        
        nSteps = 8
        multiStepFeedback = QgsProcessingMultiStepFeedback(nSteps, feedback)
        currentStep = 0
        label_calculator = get_label_size_calculator(scale, dpi=300)
        
        # Extrair labels do extent do grid
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.setProgressText(
            self.tr(f"Calculando posição dos textos para o extent {gridExtent}")
        )
        outputLabelLyr = processing.run(
            "native:extractlabels",
            {
                "EXTENT": gridExtent,
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
            self.tr("Filtrando labels das camadas selecionadas")
        )
        nFeats = outputLabelLyr.featureCount()
        if nFeats == 0:
            multiStepFeedback.pushInfo(self.tr("Nenhum rótulo encontrado"))
            return {self.OUTPUT: sink_id}
            
        selectedLabelsLyr = algRunner.runFilterExpression(
            inputLyr=outputLabelLyr,
            context=context,
            expression=f"Layer in {tuple(lyrNameSet)}".replace(",)", ")"),
            feedback=multiStepFeedback,
        )
        currentStep += 1
        
        multiStepFeedback.setCurrentStep(currentStep)
        if selectedLabelsLyr.featureCount() == 0:
            multiStepFeedback.pushInfo(self.tr("Nenhum rótulo das camadas selecionadas encontrado"))
            return {self.OUTPUT: sink_id}
            
        # Converter labels em polígonos
        multiStepFeedback.setProgressText(self.tr("Convertendo rótulos em polígonos com dimensões precisas"))
        labelPolygonsLayer = label_calculator.get_improved_label_polygons_layer(selectedLabelsLyr)
        currentStep += 1
        
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.setProgressText(self.tr("Criando índice espacial"))
        algRunner.runCreateSpatialIndex(
            labelPolygonsLayer,
            context,
            feedback=multiStepFeedback,
            is_child_algorithm=True,
        )
        currentStep += 1
        
        multiStepFeedback.setCurrentStep(currentStep)
        algRunner.runCreateSpatialIndex(
            gridLyr,
            context,
            feedback=multiStepFeedback,
            is_child_algorithm=True,
        )
        currentStep += 1
        
        # Encontrar intersecções entre labels e grid
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.setProgressText(self.tr("Identificando rótulos que intersectam o grid"))
        intersectedLyr = algRunner.runExtractByLocation(
            inputLyr=labelPolygonsLayer,
            intersectLyr=gridLyr,
            context=context,
            predicate=[AlgRunner.Intersects],
            feedback=multiStepFeedback,
        )
        currentStep += 1
        
        multiStepFeedback.setCurrentStep(currentStep)
        nProblems = intersectedLyr.featureCount()
        if nProblems == 0:
            multiStepFeedback.pushInfo(self.tr("Não há rótulos intersectando o grid"))
            return {self.OUTPUT: sink_id}
            
        # Criar flags para os rótulos que intersectam o grid
        multiStepFeedback.setProgressText(self.tr("Criando flags dos rótulos problemáticos"))
        stepSize = 100 / nProblems
        flagId = 0
        
        for current, feat in enumerate(intersectedLyr.getFeatures()):
            if multiStepFeedback.isCanceled():
                break
                
            flagFeat = QgsFeature(fields)
            flagFeat["id"] = str(flagId)
            flagFeat["texto"] = "Rótulo intersecta grid"
            flagFeat["camada"] = feat["Layer"] if "Layer" in feat.fields().names() else ""
            flagFeat.setGeometry(feat.geometry())
            sink.addFeature(flagFeat)
            
            multiStepFeedback.setProgress(current * stepSize)
            flagId += 1
        currentStep += 1

        return {self.OUTPUT: sink_id}

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return IdentifyLabelsIntersectingGrid()

    def name(self):
        return "identifylabelsintersectinggrid"

    def displayName(self):
        return self.tr("Identifica rótulos intersectando grid")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return help().helpUrl(self.name())