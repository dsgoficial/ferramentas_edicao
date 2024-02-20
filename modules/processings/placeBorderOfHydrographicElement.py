# -*- coding: utf-8 -*-

from collections import defaultdict
import processing

from qgis.core import (
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingMultiStepFeedback,
    QgsProcessingParameterVectorLayer,
    QgsProcessingParameterBoolean,
    QgsProcessingFeatureSourceDefinition,
    QgsVectorLayerUtils,
    QgsGeometry,
)
from qgis.PyQt.QtCore import QCoreApplication
from DsgTools.core.DSGToolsProcessingAlgs.algRunner import AlgRunner


class PlaceBorderOfHydrographicElement(QgsProcessingAlgorithm):

    INPUT = "INPUT"
    ONLY_SELECTED = "ONLY_SELECTED"
    INPUT_WATER_BODIES = "INPUT_WATER_BODIES"
    INPUT_SYMBOL_LAYER = "INPUT_SYMBOL_LAYER"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT,
                self.tr("Selecionar camada de elemento hidrografico"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="elemnat_elemento_hidrografico_a",
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.ONLY_SELECTED, self.tr("Executar somente nas feições selecionadas")
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_WATER_BODIES,
                self.tr("Selecionar camada de massa d'água"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="cobter_massa_dagua_a",
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_SYMBOL_LAYER,
                self.tr(
                    "Selecionar camada de camada de edição de borda de elemento hidrográfico"
                ),
                [QgsProcessing.TypeVectorLine],
                defaultValue="edicao_borda_elemento_hidrografico_l",
            )
        )
        self.mappingDict = {8: 1}  # rocha em agua

    def processAlgorithm(self, parameters, context, feedback):
        inputLyr = self.parameterAsVectorLayer(parameters, self.INPUT, context)
        onlySelected = self.parameterAsBool(parameters, self.ONLY_SELECTED, context)
        waterBodiesLyr = self.parameterAsVectorLayer(
            parameters, self.INPUT_WATER_BODIES, context
        )
        simbLineLayer = self.parameterAsVectorLayer(
            parameters, self.INPUT_SYMBOL_LAYER, context
        )
        if inputLyr.featureCount() == 0 or inputLyr.selectedFeatureCount() == 0:
            selectedText = 'selecionadas ' if onlySelected else ''
            feedback.pushInfo(f"Não há feições {selectedText}na camada de entrada")
            return {}
        algRunner = AlgRunner()
        multiStepFeedback = QgsProcessingMultiStepFeedback(10, feedback)
        currentStep = 0
        multiStepFeedback.setCurrentStep(currentStep)
        waterBodiesBounds = algRunner.runPolygonsToLines(
            inputLyr=waterBodiesLyr,
            context=context,
            feedback=multiStepFeedback,
            is_child_algorithm=True,
        )
        currentStep += 1

        multiStepFeedback.setCurrentStep(currentStep)
        waterBodiesBoundarySegments = algRunner.runExplodeLines(
            inputLyr=waterBodiesBounds,
            context=context,
            feedback=multiStepFeedback,
        )
        currentStep += 1

        multiStepFeedback.setCurrentStep(currentStep)
        algRunner.runCreateSpatialIndex(
            waterBodiesBoundarySegments,
            context=context,
            feedback=multiStepFeedback,
            is_child_algorithm=True,
        )
        currentStep += 1

        multiStepFeedback.setCurrentStep(currentStep)
        cacheLyr = algRunner.runCreateFieldWithExpression(
            inputLyr=inputLyr
            if not onlySelected
            else QgsProcessingFeatureSourceDefinition(inputLyr.id(), True),
            expression="$id",
            fieldType=1,
            fieldName="featid",
            feedback=multiStepFeedback,
            context=context,
        )
        currentStep += 1

        multiStepFeedback.setCurrentStep(currentStep)
        elementsBounds = algRunner.runPolygonsToLines(
            inputLyr=cacheLyr,
            context=context,
            feedback=multiStepFeedback,
            is_child_algorithm=True,
        )
        currentStep += 1

        multiStepFeedback.setCurrentStep(currentStep)
        segmentsLyr = algRunner.runExplodeLines(
            inputLyr=elementsBounds,
            context=context,
            feedback=multiStepFeedback,
        )
        currentStep += 1

        multiStepFeedback.setCurrentStep(currentStep)
        algRunner.runCreateSpatialIndex(
            segmentsLyr,
            context=context,
            feedback=multiStepFeedback,
            is_child_algorithm=True,
        )
        currentStep += 1

        multiStepFeedback.setCurrentStep(currentStep)
        selectedElements = processing.run(
            "native:joinattributesbylocation",
            {
                "INPUT": segmentsLyr,
                "PREDICATE": [2, 5],
                "JOIN": waterBodiesBoundarySegments,
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
        currentStep += 1

        multiStepFeedback.setCurrentStep(currentStep)
        nFeats = selectedElements.featureCount()
        if nFeats == 0:
            return
        featDict = defaultdict(list)
        stepSize = 100 / nFeats
        for current, feat in enumerate(selectedElements.getFeatures()):
            if multiStepFeedback.isCanceled():
                break
            if feat["tipo"] not in self.mappingDict:
                continue
            featDict[feat["featid"]].append(feat)
            multiStepFeedback.setProgress(current * stepSize)
        currentStep += 1

        multiStepFeedback.setCurrentStep(currentStep)

        stepSize = 100 / len(featDict)
        inputLyr.startEditing()
        simbLineLayer.startEditing()
        simbLineLayer.beginEditCommand("Posicionando símbolos")
        newFeatList = []
        for current, (featid, featList) in enumerate(featDict.items()):
            if multiStepFeedback.isCanceled():
                break
            if len(featList) == 0:
                continue
            feat, *otherFeatList = featList
            geom = feat.geometry()
            if len(otherFeatList) > 0:
                for f in otherFeatList:
                    geom = geom.combine(f.geometry()).mergeLines()
            vertices = list(geom.vertices())
            newGeomList = (
                [geom]
                if vertices[0] != vertices[-1]
                else [
                    QgsGeometry.fromPolyline(vertices[0:-1]),
                    QgsGeometry.fromPolyline(vertices[-2::]),
                ]
            )
            for newGeom in newGeomList:
                newFeat = QgsVectorLayerUtils.createFeature(simbLineLayer, newGeom)
                newFeat["tipo"] = self.mappingDict[feat["tipo"]]
                newFeatList.append(newFeat)
            feedback.setProgress(current * stepSize)
        simbLineLayer.addFeatures(newFeatList)
        simbLineLayer.endEditCommand()
        return {}

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return PlaceBorderOfHydrographicElement()

    def name(self):
        return "placeborderofhydrographicelement"

    def displayName(self):
        return self.tr("Insere borda de elemento hidrográfico")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return self.tr("O algoritmo ...")
