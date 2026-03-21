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
        fields.append(QgsField("id", QMetaType.Type.QString))
        fields.append(QgsField("texto", QMetaType.Type.QString))
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
        nRegions = geographicBoundaryLyr.featureCount()
        nSteps = 7 + nRegions
        multiStepFeedback = QgsProcessingMultiStepFeedback(nSteps, feedback)
        currentStep = 0
        polygonLayerList = []

        # Process regular layers via precise render-based approach
        if regularLayers:
            project = context.project()
            visible_layers = _get_visible_layers(project)
            labeled_layers, font_cache = build_font_info_cache(
                visible_layers, lyrNameSet, scale, 300
            )
            seen = set()
            for feat in geographicBoundaryLyr.getFeatures():
                if multiStepFeedback.isCanceled():
                    return {self.OUTPUT: sink_id}
                extent = feat.geometry().boundingBox()
                multiStepFeedback.setCurrentStep(currentStep)
                multiStepFeedback.setProgressText(
                    self.tr(f"Renderizando e extraindo rótulos precisos para o extent {extent}")
                )
                precisePolygons = render_and_create_precise_label_polygons(
                    extent=extent,
                    scale=scale,
                    project=project,
                    layer_name_filter=lyrNameSet,
                    dpi=300,
                    seen=seen,
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
            labelPolygonsLayer.addExpressionField(
                "$id", QgsField("featid", QMetaType.Type.Int)
            )
        else:
            labelPolygonsLayer = polygonLayerList[0]
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
