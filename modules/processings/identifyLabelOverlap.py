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
    QgsFeatureRequest,
    QgsProcessingParameterEnum,
    QgsFields,
    QgsProcessingParameterFeatureSink,
    QgsProcessingParameterMultipleLayers,
    QgsGeometry,
    QgsSpatialIndex,
    Qgis,
)
from DsgTools.core.DSGToolsProcessingAlgs.algRunner import AlgRunner
from qgis.PyQt.QtCore import QCoreApplication, QMetaType

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help


class IdentifyLabelOverlap(QgsProcessingAlgorithm):

    INPUT_LAYERS = "INPUT_LAYERS"
    INPUT_GENERIC_TEXT = "INPUT_GENERIC_TEXT"
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
                self.INPUT_GENERIC_TEXT,
                self.tr("Selecionar camada de texto genérico de edição"),
                [QgsProcessing.TypeVectorLine],
                optional=True,
                defaultValue="edicao_texto_generico_l",
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
                self.OUTPUT, self.tr("Flags Sobreposição de Rótulos")
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        layerList = self.parameterAsLayerList(parameters, self.INPUT_LAYERS, context)
        genericTextLyr = self.parameterAsVectorLayer(
            parameters, self.INPUT_GENERIC_TEXT, context
        )
        geographicBoundaryLyr = self.parameterAsVectorLayer(
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
            Qgis.WkbType.Polygon,
            geographicBoundaryLyr.crs(),
        )
        if not layerList and genericTextLyr is None:
            return {self.OUTPUT: sink_id}

        algRunner = AlgRunner()
        nFrames = geographicBoundaryLyr.featureCount()
        nSteps = 2 + nFrames * 2
        multiStepFeedback = QgsProcessingMultiStepFeedback(nSteps, feedback)
        currentStep = 0

        lyrNameSet = set(i.name() for i in layerList)

        # Build font cache once
        project = context.project()
        visible_layers = None
        labeled_layers = None
        font_cache = None
        if layerList:
            visible_layers = _get_visible_layers(project)
            labeled_layers, font_cache = build_font_info_cache(
                visible_layers, lyrNameSet, scale, 300
            )

        # Process generic text line layer via flat-cap buffer (once)
        genericPolygonsLayer = None
        if genericTextLyr is not None and genericTextLyr.featureCount() > 0:
            multiStepFeedback.setCurrentStep(currentStep)
            multiStepFeedback.setProgressText(
                self.tr("Criando polígonos para texto genérico de edição")
            )
            genericPolygonsLayer = get_generic_text_polygons(
                [genericTextLyr], scale, algRunner, context, multiStepFeedback
            )
            if genericPolygonsLayer is not None:
                algRunner.runCreateSpatialIndex(
                    genericPolygonsLayer, context,
                    feedback=multiStepFeedback, is_child_algorithm=True,
                )
        currentStep += 1

        # For each frame: render labels, then check overlaps
        flagId = 0
        for frameFeat in geographicBoundaryLyr.getFeatures():
            if multiStepFeedback.isCanceled():
                break

            frameBbox = frameFeat.geometry().boundingBox()

            # Render labels for this frame
            multiStepFeedback.setCurrentStep(currentStep)
            multiStepFeedback.setProgressText(
                self.tr("Renderizando rótulos da moldura")
            )
            labelPolygonsLayer = None
            if layerList:
                labelPolygonsLayer = render_and_create_precise_label_polygons(
                    extent=frameBbox,
                    scale=scale,
                    project=project,
                    layer_name_filter=lyrNameSet,
                    dpi=300,
                    visible_layers=visible_layers,
                    labeled_layers=labeled_layers,
                    font_info_cache=font_cache,
                )
            currentStep += 1

            # Collect all label features for this frame
            multiStepFeedback.setCurrentStep(currentStep)
            multiStepFeedback.setProgressText(
                self.tr("Calculando sobreposições")
            )
            allLabelFeats = list(labelPolygonsLayer.getFeatures()) if labelPolygonsLayer is not None else []
            if genericPolygonsLayer is not None:
                request = QgsFeatureRequest().setFilterRect(frameBbox)
                allLabelFeats.extend(genericPolygonsLayer.getFeatures(request))

            if len(allLabelFeats) < 2:
                currentStep += 1
                continue

            # Build spatial index for overlap detection
            spatialIndex = QgsSpatialIndex()
            geomDict = {}
            for idx, feat in enumerate(allLabelFeats):
                geom = feat.geometry()
                if geom.isEmpty():
                    continue
                indexFeat = QgsFeature()
                indexFeat.setId(idx)
                indexFeat.setGeometry(geom)
                spatialIndex.addFeature(indexFeat)
                geomDict[idx] = geom

            # Find pairwise overlaps
            checkedPairs = set()
            for idx, geom in geomDict.items():
                if multiStepFeedback.isCanceled():
                    break
                candidates = spatialIndex.intersects(geom.boundingBox())
                engine = QgsGeometry.createGeometryEngine(geom.constGet())
                engine.prepareGeometry()
                for candidateIdx in candidates:
                    if candidateIdx == idx:
                        continue
                    pair = (min(idx, candidateIdx), max(idx, candidateIdx))
                    if pair in checkedPairs:
                        continue
                    checkedPairs.add(pair)
                    candidateGeom = geomDict[candidateIdx]
                    if engine.intersects(candidateGeom.constGet()):
                        intersection = geom.intersection(candidateGeom)
                        if not intersection.isEmpty() and intersection.area() > 0:
                            flagFeat = QgsFeature(fields)
                            flagFeat["id"] = str(flagId)
                            flagFeat["texto"] = "Rótulos sobrepostos"
                            flagFeat.setGeometry(intersection)
                            sink.addFeature(flagFeat)
                            flagId += 1
            currentStep += 1

        if flagId == 0:
            multiStepFeedback.pushInfo(self.tr("Não há rótulos sobrepostos"))

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
