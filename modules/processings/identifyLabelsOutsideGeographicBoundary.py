# -*- coding: utf-8 -*-

import processing


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
                self.OUTPUT, self.tr("Flags fora da moldura")
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
        fields.append(QgsField("flag", QVariant.String))
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
                    "DPI": 400,
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
            labelPolygonsLayer = self.getLabelPolygons(
                selectedLabelsLyr, multiStepFeedback
            )
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

    def getLabelPolygons(self, lyr, feedback):
        fields = lyr.fields()
        temp = QgsVectorLayer(
            f"Polygon?crs={lyr.crs().authid()}",
            "temp_label_lyr",
            "memory",
        )

        temp.startEditing()

        temp_data = temp.dataProvider()
        temp_data.addAttributes(fields.toList())
        temp.updateFields()

        temp.beginEditCommand("Populating temp lyr")

        # tol = 25000 * 1.5
        nSteps = lyr.featureCount()
        if nSteps == 0:
            return temp
        stepSize = 100 / nSteps
        for current, feat in enumerate(lyr.getFeatures()):
            if feedback.isCanceled():
                break
            pointGeom = feat.geometry()
            pointXY = pointGeom.asPoint()
            # labelSize = feat["Size"]
            height = feat["LabelHeight"]
            width = feat["LabelWidth"] * 1.22
            #    width = (feat["LabelWidth"] / max([len(i) for i in feat["LabelText"].split('\n')])) * tol
            geom = QgsGeometry.fromRect(
                QgsRectangle.fromCenterAndSize(
                    QgsPointXY(pointXY.x() + width / 2, pointXY.y() + height / 2),
                    width,
                    height,
                )
            )
            newFeat = QgsFeature(fields)
            for attr, value in feat.attributeMap().items():
                newFeat[attr] = value
            newFeat["LabelHeight"] = height
            newFeat["LabelWidth"] = width
            newFeat.setGeometry(geom)
            temp.addFeature(newFeat)
            feedback.setProgress(current * stepSize)

        temp.endEditCommand()
        temp.addExpressionField("$id", QgsField("featid", QVariant.Int))
        return temp

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
        return self.tr("Identifica rótulos fora da moldura.")
