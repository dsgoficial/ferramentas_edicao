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
    build_font_info_cache,
    _get_visible_layers,
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
        fields.append(QgsField("flag", QMetaType.Type.QString))
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

        genericTextLayers = []
        regularLayers = []
        for l in layerList:
            (genericTextLayers if is_generic_text_line_layer(l) else regularLayers).append(l)
        lyrNameSet = set(i.name() for i in regularLayers)
        algRunner = AlgRunner()
        nSteps = 6
        multiStepFeedback = QgsProcessingMultiStepFeedback(nSteps, feedback)
        currentStep = 0
        polygonLayerList = []

        # Process regular layers — single render over full boundary extent
        if regularLayers:
            project = context.project()
            visible_layers = _get_visible_layers(project)
            labeled_layers, font_cache = build_font_info_cache(
                visible_layers, lyrNameSet, scale, 300
            )
            multiStepFeedback.setCurrentStep(currentStep)
            multiStepFeedback.setProgressText(
                self.tr("Renderizando e extraindo rótulos precisos")
            )
            precisePolygons = render_and_create_precise_label_polygons(
                extent=geographicBoundaryLyr.extent(),
                scale=scale,
                project=project,
                layer_name_filter=lyrNameSet,
                dpi=300,
                visible_layers=visible_layers,
                labeled_layers=labeled_layers,
                font_info_cache=font_cache,
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

        if not polygonLayerList or multiStepFeedback.isCanceled():
            return {self.OUTPUT: sink_id}

        # Merge all polygon layers
        if len(polygonLayerList) > 1:
            labelPolygonsLayer = algRunner.runMergeVectorLayers(
                polygonLayerList, context, feedback=multiStepFeedback
            )
        else:
            labelPolygonsLayer = polygonLayerList[0]
        currentStep += 1

        # Check which polygons are outside the boundary (against full boundary)
        multiStepFeedback.setCurrentStep(currentStep)
        algRunner.runCreateSpatialIndex(
            labelPolygonsLayer,
            context,
            feedback=multiStepFeedback,
            is_child_algorithm=True,
        )
        currentStep += 1

        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.setProgressText(
            self.tr("Identificando rótulos fora da moldura")
        )
        featsOutside = algRunner.runExtractByLocation(
            inputLyr=labelPolygonsLayer,
            intersectLyr=geographicBoundaryLyr,
            context=context,
            predicate=[AlgRunner.Within],
            feedback=multiStepFeedback,
        )
        # Invert: get features NOT within the boundary
        withinIds = set()
        for f in featsOutside.getFeatures():
            withinIds.add(f.id())
        for f in labelPolygonsLayer.getFeatures():
            if f.id() not in withinIds:
                newFlag = QgsFeature(fields)
                newFlag["flag"] = "Rótulo fora da moldura"
                newFlag.setGeometry(f.geometry())
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