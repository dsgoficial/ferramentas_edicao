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

from ..labelTools.label_size_calculator import (
    is_generic_text_line_layer,
    get_generic_text_polygons,
)
from ..labelTools.precise_label_polygons import (
    render_and_create_precise_label_polygons,
)

from qgis.core import (
    QgsField,
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingMultiStepFeedback,
    QgsProcessingParameterVectorLayer,
    QgsFeature,
    QgsProcessingParameterEnum,
    QgsFields,
    QgsProcessingParameterFeatureSink,
    QgsProcessingParameterMultipleLayers,
    QgsWkbTypes,
)
from DsgTools.core.DSGToolsProcessingAlgs.algRunner import AlgRunner
from qgis.PyQt.QtCore import QCoreApplication, QMetaType

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
        fields.append(QgsField("id", QMetaType.Type.QString))
        fields.append(QgsField("texto", QMetaType.Type.QString))
        fields.append(QgsField("camada", QMetaType.Type.QString))
        
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

        genericTextLayers = []
        regularLayers = []
        for l in layerList:
            (genericTextLayers if is_generic_text_line_layer(l) else regularLayers).append(l)
        lyrNameSet = set(i.name() for i in regularLayers)
        algRunner = AlgRunner()

        # Obter extent do grid para extrair labels
        gridExtent = gridLyr.extent()

        nSteps = 8
        multiStepFeedback = QgsProcessingMultiStepFeedback(nSteps, feedback)
        currentStep = 0
        polygonLayerList = []

        # Process regular layers via precise render-based approach
        if regularLayers:
            multiStepFeedback.setCurrentStep(currentStep)
            multiStepFeedback.setProgressText(
                self.tr("Renderizando e extraindo rótulos precisos")
            )
            precisePolygons = render_and_create_precise_label_polygons(
                extent=gridExtent,
                scale=scale,
                project=context.project(),
                layer_name_filter=lyrNameSet,
                dpi=300,
            )
            if precisePolygons is not None:
                polygonLayerList.append(precisePolygons)
            currentStep += 1

        # Process generic text line layers via flat-cap buffer
        if genericTextLayers:
            multiStepFeedback.setCurrentStep(currentStep)
            multiStepFeedback.setProgressText(
                self.tr("Criando polígonos para texto genérico de edição")
            )
            genericPolygons = get_generic_text_polygons(
                genericTextLayers, scale, algRunner, context, multiStepFeedback
            )
            if genericPolygons is not None:
                polygonLayerList.append(genericPolygons)
            currentStep += 1

        if not polygonLayerList:
            multiStepFeedback.pushInfo(self.tr("Nenhum rótulo encontrado"))
            return {self.OUTPUT: sink_id}

        # Merge all polygon layers
        if len(polygonLayerList) > 1:
            labelPolygonsLayer = algRunner.runMergeVectorLayers(
                polygonLayerList, context, feedback=multiStepFeedback
            )
        else:
            labelPolygonsLayer = polygonLayerList[0]
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
        hasLayerField = intersectedLyr.fields().lookupField("Layer") != -1

        for current, feat in enumerate(intersectedLyr.getFeatures()):
            if multiStepFeedback.isCanceled():
                break

            flagFeat = QgsFeature(fields)
            flagFeat["id"] = str(flagId)
            flagFeat["texto"] = "Rótulo intersecta grid"
            flagFeat["camada"] = feat["Layer"] if hasLayerField else ""
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