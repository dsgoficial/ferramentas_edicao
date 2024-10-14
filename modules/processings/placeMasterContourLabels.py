# -*- coding: utf-8 -*-

import os
import processing
import concurrent.futures

from collections import defaultdict
from typing import Literal, Set, Union
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
    QgsUnitTypes,
    QgsProcessingParameterMultipleLayers,
    NULL,
    QgsDistanceArea,
    QgsRectangle,
    QgsProcessingParameterFeatureSource,
    QgsProcessingContext,
    QgsProcessingFeedback,
    QgsProcessingParameterField,
    QgsFeatureRequest,
    QgsProperty,
)
from DsgTools.core.DSGToolsProcessingAlgs.algRunner import AlgRunner
from qgis.PyQt.QtCore import QCoreApplication, QVariant

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help

class PlaceMasterContourLabels(QgsProcessingAlgorithm):

    INPUT = "INPUT"
    HEIGHT_FIELD = "HEIGHT_FIELD"
    CONTOUR_SYMBOL_LAYER = "CONTOUR_SYMBOL_LAYER"
    MAP_LAYERS = "MAP_LAYERS"
    GEOGRAPHIC_BOUNDARY = "GEOGRAPHIC_BOUNDARY"
    SCALE = "SCALE"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterFeatureSource(
                self.INPUT,
                self.tr("Camada de curva de nível"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="elemnat_curva_nivel_l",
            )
        )
        self.addParameter(
            QgsProcessingParameterField(
                self.HEIGHT_FIELD,
                self.tr("Selecionar o atributo cota"),
                type=QgsProcessingParameterField.Any,
                parentLayerParameterName=self.INPUT,
                allowMultiple=False,
                defaultValue="cota",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.CONTOUR_SYMBOL_LAYER,
                self.tr("Camada de simbologia de curva mestra"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="edicao_simb_cota_mestra_l",
            )
        )
        self.addParameter(
            QgsProcessingParameterMultipleLayers(
                self.MAP_LAYERS,
                self.tr("Camadas da carta"),
                QgsProcessing.TypeVectorAnyGeometry,
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.GEOGRAPHIC_BOUNDARY,
                self.tr("Limite geográfico"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="aux_moldura_a",
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
        self.masterIndexDict = {
            25_000: 50,
            50_000: 100,
            100_000: 200,
            250_000: 500,
        }
        self.masterLengthDictInDegrees = {
            25_000: 0.015625,
            50_000: 0.03125,
            100_000: 0.0625,
            250_000: 0.125,
        }
        self.avgLetterSizeInDegrees = 0.0006

    def processAlgorithm(self, parameters, context, feedback):
        inputLyr = self.parameterAsVectorLayer(parameters, self.INPUT, context)
        inputSource = self.parameterAsSource(parameters, self.INPUT, context)
        heightField = self.parameterAsFields(parameters, self.HEIGHT_FIELD, context)[0]
        layerList = self.parameterAsLayerList(parameters, self.MAP_LAYERS, context)
        geographicBoundaryLyr = self.parameterAsLayer(
            parameters, self.GEOGRAPHIC_BOUNDARY, context
        )
        contourLineSymbolLyr = self.parameterAsVectorLayer(
            parameters, self.CONTOUR_SYMBOL_LAYER, context
        )
        scaleIdx = self.parameterAsEnum(parameters, self.SCALE, context)
        scale = self.scaleDict[self.scales[scaleIdx]]
        lyrNameSet = set(
            i.name()
            for i in layerList
            if i.name() not in (inputLyr.name(), geographicBoundaryLyr.name())
            and i.featureCount() > 0
        )
        self.algRunner = AlgRunner()
        multiStepFeedback = QgsProcessingMultiStepFeedback(5, feedback)
        currentStep = 0
        multiStepFeedback.setCurrentStep(currentStep)
        cacheContourLyr = self.algRunner.runCreateFieldWithExpression(
            inputLyr=parameters[self.INPUT],
            expression="$id",
            fieldType=1,
            fieldName="c_featid",
            feedback=multiStepFeedback,
            context=context,
            is_child_algorithm=False,
        )
        if cacheContourLyr.featureCount() == 0:
            return {}
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        labelPolygonsLayer = self.extractLabels(
            lyrNameSet, geographicBoundaryLyr, scale, context, multiStepFeedback
        )
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        candidateContourSymbolLineLayer = self.createCandidateContourLineSymbolLayer(
            inputContourLayer=cacheContourLyr,
            labelPolygonsLayer=labelPolygonsLayer,
            heightField=heightField,
            scale=scale,
            context=context,
            feedback=multiStepFeedback,
        )
        if candidateContourSymbolLineLayer is None:
            return {}
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        self.populateLineSymbolLayer(
            candidateContourSymbolLineLayer,
            contourLineSymbolLyr,
            heightField,
            feedback=multiStepFeedback,
        )
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo(
            self.tr("Removendo atributo texto_edicao das curvas mestras")
        )

        def updateFeat(feat):
            feat["texto_edicao"] = NULL
            inputLyr.updateFeature(feat)

        request = QgsFeatureRequest()
        request.setFilterExpression(
            f""" "{heightField}" % {self.masterIndexDict[scale]} = 0 """
        )
        inputLyr.startEditing()
        inputLyr.beginEditCommand("Atualizando curvas")
        list(map(updateFeat, inputSource.getFeatures(request)))
        inputLyr.endEditCommand()
        return {}

    def extractLabels(
        self,
        lyrNameSet: Set[str],
        geographicBoundaryLyr: QgsVectorLayer,
        scale: int,
        context: QgsProcessingContext,
        feedback: QgsProcessingFeedback,
    ) -> Union[QgsVectorLayer, None]:
        nRegions = geographicBoundaryLyr.featureCount()
        nSteps = 5 + 2 * nRegions
        multiStepFeedback = QgsProcessingMultiStepFeedback(nSteps, feedback)
        currentStep = 0
        selectedLabelLyrList = []
        for feat in geographicBoundaryLyr.getFeatures():
            if multiStepFeedback.isCanceled():
                return None
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
            selectedLabelsLyr = self.algRunner.runFilterExpression(
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
            return None
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        mergedLyr = self.algRunner.runMergeVectorLayers(
            selectedLabelLyrList, context, feedback=multiStepFeedback
        )
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        mergedWithFieldId = self.algRunner.runCreateFieldWithExpression(
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
            return None
        labelPolygonsLayer = self.getLabelPolygons(mergedWithFieldId, multiStepFeedback)
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        dissolvedLyr = self.algRunner.runDissolve(
            inputLyr=labelPolygonsLayer,
            context=context,
            feedback=multiStepFeedback,
        )
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        self.algRunner.runCreateSpatialIndex(
            dissolvedLyr,
            context,
            feedback=multiStepFeedback,
            is_child_algorithm=True,
        )
        return labelPolygonsLayer

    def getLabelPolygons(self, lyr, feedback):
        fields = lyr.fields()
        temp = QgsVectorLayer(
            f"Polygon?crs={lyr.crs().authid()}",
            "temp_label_lyr",
            "memory",
        )
        isGeographic = lyr.crs().isGeographic()
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
            width = feat["LabelWidth"] * 1.15
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
        return temp

    def createCandidateContourLineSymbolLayer(
        self,
        inputContourLayer: QgsVectorLayer,
        labelPolygonsLayer: QgsVectorLayer,
        heightField: str,
        scale: int,
        context: QgsProcessingContext,
        feedback: QgsProcessingFeedback,
    ) -> QgsVectorLayer:
        multiStepFeedback = QgsProcessingMultiStepFeedback(16, feedback)
        currentStep = 0
        multiStepFeedback.setCurrentStep(currentStep)
        masterContours = self.algRunner.runFilterExpression(
            inputLyr=inputContourLayer,
            expression=f""" "{heightField}" % {self.masterIndexDict[scale]} = 0 """,
            context=context,
            feedback=multiStepFeedback,
        )
        if masterContours.featureCount() == 0:
            return None
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        self.algRunner.runCreateSpatialIndex(
            masterContours,
            context,
            feedback=multiStepFeedback,
            is_child_algorithm=True,
        )
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        clippedMasterContours = (
            self.algRunner.runDifference(
                inputLyr=masterContours,
                overlayLyr=labelPolygonsLayer,
                context=context,
                feedback=multiStepFeedback,
            )
            if labelPolygonsLayer is not None
            else masterContours
        )

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        self.algRunner.runDSGToolsMergeLines(
            inputLayer=clippedMasterContours,
            context=context,
            onlySelected=False,
            attributeBlackList=[
                f.name()
                for f in masterContours.fields()
                if f not in ("cota", "indice", "depressao")
            ],
            ignoreVirtualFields=True,
            ignorePkFields=True,
            allowClosed=True,
            feedback=multiStepFeedback,
        )
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        maxLengthInDegrees = self.masterIndexDict[scale]
        splitLinesLyr = self.algRunner.runSplitLinesByLength(
            inputLayer=clippedMasterContours,
            length=maxLengthInDegrees
            if clippedMasterContours.crs().isGeographic()
            else self.convertLengthToMeters(maxLengthInDegrees),
            context=context,
            feedback=multiStepFeedback,
        )

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        interpolatedPointLyr = self.algRunner.runInterpolatePoint(
            inputLayer=clippedMasterContours,
            distance=QgsProperty.fromExpression("length(@geometry)/2"),
            context=context,
            feedback=multiStepFeedback,
        )

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        self.algRunner.runCreateSpatialIndex(
            interpolatedPointLyr,
            context,
            feedback=multiStepFeedback,
            is_child_algorithm=True,
        )

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        bufferToUseOnClip = self.algRunner.runBuffer(
            inputLayer=interpolatedPointLyr,
            distance=QgsProperty.fromExpression(
                f"""length( to_string("{heightField}") ) * {self.avgLetterSizeInDegrees if interpolatedPointLyr.crs().isGeographic() else self.convertLengthToMeters(self.avgLetterSizeInDegrees)}"""
            ),
            context=context,
            feedback=multiStepFeedback,
            is_child_algorithm=False,
        )

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        self.algRunner.runCreateSpatialIndex(
            bufferToUseOnClip,
            context,
            feedback=multiStepFeedback,
            is_child_algorithm=True,
        )

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        clippedContours = self.algRunner.runClip(
            inputLayer=splitLinesLyr,
            overlayLayer=bufferToUseOnClip,
            context=context,
            feedback=multiStepFeedback,
        )

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        singlePartClippedContours = self.algRunner.runMultipartToSingleParts(
            inputLayer=clippedContours,
            context=context,
            feedback=multiStepFeedback,
        )

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        self.algRunner.runCreateSpatialIndex(
            singlePartClippedContours,
            context,
            feedback=multiStepFeedback,
            is_child_algorithm=True,
        )

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        miniBuffer = self.algRunner.runBuffer(
            inputLayer=interpolatedPointLyr,
            distance=1e-5 if interpolatedPointLyr.crs().isGeographic() else 1e-3,
            context=context,
            feedback=multiStepFeedback,
            is_child_algorithm=True,
        )
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        self.algRunner.runCreateSpatialIndex(
            miniBuffer,
            context,
            feedback=multiStepFeedback,
            is_child_algorithm=True,
        )

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        extractedContours = self.algRunner.runExtractByLocation(
            inputLyr=singlePartClippedContours,
            intersectLyr=miniBuffer,
            predicate=[AlgRunner.Intersect],
            context=context,
            feedback=multiStepFeedback,
        )

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        self.algRunner.runDSGToolsMergeLines(
            inputLayer=extractedContours,
            context=context,
            onlySelected=False,
            attributeBlackList=[
                f.name()
                for f in masterContours.fields()
                if f not in ("cota", "indice", "depressao")
            ],
            ignoreVirtualFields=True,
            ignorePkFields=True,
            allowClosed=True,
            feedback=multiStepFeedback,
        )
        return extractedContours

    def convertLengthToMeters(self, measure):
        convertLength = QgsDistanceArea()
        # convertLength.setEllipsoid(self.lyrCrs.ellipsoidAcronym())
        return convertLength.convertLengthMeasurement(
            measure, QgsUnitTypes.DistanceMeters
        )

    def populateLineSymbolLayer(
        self,
        candidateContourSymbolLineLayer: QgsVectorLayer,
        contourLineSymbolLyr: QgsVectorLayer,
        heightFieldName: str,
        feedback: QgsProcessingFeedback,
    ) -> None:
        nFeatures = candidateContourSymbolLineLayer.featureCount()
        if nFeatures == 0:
            return
        stepSize = 100 / nFeatures
        contourLineSymbolLyr.startEditing()
        contourLineSymbolLyr.beginEditCommand("Populando a camada de simbologia")
        newFeatSet = set()
        for current, feat in enumerate(candidateContourSymbolLineLayer.getFeatures()):
            if feedback.isCanceled():
                break
            newFeat = QgsFeature(contourLineSymbolLyr.fields())
            newFeat["texto_edicao"] = feat[heightFieldName]
            geom = feat.geometry()
            newFeat.setGeometry(geom)
            newFeatSet.add(newFeat)
            feedback.setProgress(current * stepSize)
        addFeaturesLambda = lambda x: contourLineSymbolLyr.addFeature(x)
        list(map(addFeaturesLambda, list(newFeatSet)))
        contourLineSymbolLyr.endEditCommand()

    def tr(self, string):
        return QCoreApplication.translate("PlaceMasterContourLabels", string)

    def createInstance(self):
        return PlaceMasterContourLabels()

    def name(self):
        return "placemastercontourlabels"

    def displayName(self):
        return self.tr("Posiciona rótulos de curvas de nível mestras")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return self.tr("Posiciona os rótulos de curva de nível mestra.")
