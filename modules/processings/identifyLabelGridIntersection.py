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


class IdentifyLabelsIntersectingGrid(QgsProcessingAlgorithm):

    INPUT_LAYERS = "INPUT_LAYERS"
    INPUT_GENERIC_TEXT = "INPUT_GENERIC_TEXT"
    GEOGRAPHIC_BOUNDARY = "GEOGRAPHIC_BOUNDARY"
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
        genericTextLyr = self.parameterAsVectorLayer(
            parameters, self.INPUT_GENERIC_TEXT, context
        )
        geographicBoundaryLyr = self.parameterAsVectorLayer(
            parameters, self.GEOGRAPHIC_BOUNDARY, context
        )
        gridLyr = self.parameterAsVectorLayer(
            parameters, self.GRID_LAYER, context
        )
        scaleIdx = self.parameterAsEnum(parameters, self.SCALE, context)
        scale = self.scaleDict[self.scales[scaleIdx]]

        fields = QgsFields()
        fields.append(QgsField("id", QMetaType.Type.QString))
        fields.append(QgsField("texto", QMetaType.Type.QString))
        fields.append(QgsField("camada", QMetaType.Type.QString))

        (sink, sink_id) = self.parameterAsSink(
            parameters,
            self.OUTPUT,
            context,
            fields,
            Qgis.WkbType.Polygon,
            gridLyr.crs(),
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

        # Build spatial index on grid for efficient intersection tests
        gridIndex = QgsSpatialIndex()
        gridGeomDict = {}
        for gridFeat in gridLyr.getFeatures():
            g = gridFeat.geometry()
            if not g.isEmpty():
                gridGeomDict[gridFeat.id()] = g
                gridIndex.addFeature(gridFeat)

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

        # For each frame: render labels, then check intersection with grid
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

            # Check intersection with grid
            multiStepFeedback.setCurrentStep(currentStep)
            multiStepFeedback.setProgressText(
                self.tr("Identificando rótulos que intersectam o grid")
            )

            # Collect all label polygons for this frame (precise + generic)
            labelFeats = list(labelPolygonsLayer.getFeatures()) if labelPolygonsLayer is not None else []
            if genericPolygonsLayer is not None:
                request = QgsFeatureRequest().setFilterRect(frameBbox)
                labelFeats.extend(genericPolygonsLayer.getFeatures(request))

            for labelFeat in labelFeats:
                if multiStepFeedback.isCanceled():
                    break
                labelGeom = labelFeat.geometry()
                if labelGeom.isEmpty():
                    continue
                hasLayerField = labelFeat.fields().lookupField("Layer") != -1
                candidates = gridIndex.intersects(labelGeom.boundingBox())
                if not candidates:
                    continue
                labelEngine = QgsGeometry.createGeometryEngine(labelGeom.constGet())
                labelEngine.prepareGeometry()
                for gridId in candidates:
                    if labelEngine.intersects(gridGeomDict[gridId].constGet()):
                        flagFeat = QgsFeature(fields)
                        flagFeat["id"] = str(flagId)
                        flagFeat["texto"] = "Rótulo intersecta grid"
                        flagFeat["camada"] = labelFeat["Layer"] if hasLayerField else ""
                        flagFeat.setGeometry(labelGeom)
                        sink.addFeature(flagFeat)
                        flagId += 1
                        break
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
