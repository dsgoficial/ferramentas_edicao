# -*- coding: utf-8 -*-

import os
import processing
import concurrent.futures

from collections import defaultdict

from qgis.core import (
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingMultiStepFeedback,
    QgsProcessingParameterVectorLayer,
    QgsProcessingParameterEnum,
    QgsProcessingParameterMultipleLayers,
)
from qgis.PyQt.QtCore import QCoreApplication


class FixLabelPostionOnLayers(QgsProcessingAlgorithm):

    INPUT_LAYERS = "INPUT_LAYERS"
    GEOGRAPHIC_BOUNDARY = "GEOGRAPHIC_BOUNDARY"
    SCALE = "SCALE"

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

    def processAlgorithm(self, parameters, context, feedback):
        layerList = self.parameterAsLayerList(parameters, self.INPUT_LAYERS, context)
        geographicBoundaryLyr = self.parameterAsLayer(
            parameters, self.GEOGRAPHIC_BOUNDARY, context
        )
        scaleIdx = self.parameterAsEnum(parameters, self.SCALE, context)
        scale = self.scaleDict[self.scales[scaleIdx]]
        lyrDict = {lyr.name():lyr for lyr in layerList}
        nRegions = geographicBoundaryLyr.featureCount()
        nSteps = 2 + 2*nRegions
        multiStepFeedback = QgsProcessingMultiStepFeedback(nSteps, feedback)
        currentStep = 0
        labelDict = defaultdict(lambda :defaultdict(dict))
        for feat in geographicBoundaryLyr.getFeatures():
            if multiStepFeedback.isCanceled():
                return {}
            geom = feat.geometry()
            extent = geom.boundingBox()
            multiStepFeedback.setCurrentStep(currentStep)
            multiStepFeedback.setProgressText(self.tr(f"Calculando posição dos textos para o extent {extent}"))
            outputLabelLyr = processing.run(
                "native:extractlabels",
                {
                    "EXTENT": extent,
                    "SCALE": scale,
                    "MAP_THEME":None,
                    "INCLUDE_UNPLACED":True,
                    "DPI":400,
                    "OUTPUT":"memory:"
                },
                context=context,
                feedback=multiStepFeedback,
            )["OUTPUT"]
            currentStep += 1
            multiStepFeedback.setCurrentStep(currentStep)
            multiStepFeedback.setProgressText(self.tr(f"Adicionando dados calculados do extent {extent} às estruturas auxiliares"))
            nFeats = outputLabelLyr.featureCount()
            if nFeats == 0:
                continue
            stepSize = 100/nFeats
            for current, feat in enumerate(outputLabelLyr.getFeatures()):
                if multiStepFeedback.isCanceled():
                    return {}
                geom = feat.geometry()
                labelDict[feat["Layer"]][feat["FeatureID"]] = geom.asPoint()
                multiStepFeedback.setProgress(current * stepSize)
            currentStep += 1
        
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.setProgressText(self.tr("Submetendo para a thread"))
        currentFeat = 0
        futures = set()
        pool = concurrent.futures.ThreadPoolExecutor(max_workers=os.cpu_count() - 1)
        def compute(lyr, x_field_idx, y_field_idx, featid, point):
            if multiStepFeedback.isCanceled():
                return
            return lyr, {featid: {
                    x_field_idx: point.x(),
                    y_field_idx: point.y(),
                }
            }
        for lyrName, lyr in lyrDict.items():
            if lyrName not in labelDict:
                continue
            lyr.startEditing()
            lyr.beginEditCommand(f"Fixando labels da camada {lyrName}")
        
        for lyrName, idDict in labelDict.items():
            if multiStepFeedback.isCanceled():
                break
            if lyrName not in lyrDict:
                currentFeat += len(idDict)
                multiStepFeedback.setProgress(currentFeat * stepSize)
                continue
            lyr = lyrDict[lyrName]
            fieldIdxDict = {field.name(): idx for idx, field in enumerate(lyr.fields())}
            if "label_x" not in fieldIdxDict or "label_y" not in fieldIdxDict:
                continue
            for featid, point in idDict.items():
                if multiStepFeedback.isCanceled():
                    break
                futures.add(pool.submit(compute, lyr, fieldIdxDict["label_x"], fieldIdxDict["label_y"], featid, point))
                currentFeat += 1
                multiStepFeedback.setProgress(currentFeat * stepSize)
        currentStep += 1
        if len(futures) == 0:
            return {}
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.setProgressText(self.tr("Atualizando camadas com resultados"))
        stepSize = 100 / len(futures)
        for current, future in enumerate(concurrent.futures.as_completed(futures)):
            if multiStepFeedback.isCanceled():
                break
            result = future.result()
            if result is None:
                continue
            lyr, attrDict = result
            for featid, attrMap in attrDict.items():
                lyr.changeAttributeValues(featid, attrMap)
        
        for lyrName in labelDict.keys():
            if lyrName not in lyrDict:
                continue
            lyr.endEditCommand()
        
        return {}

        

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return FixLabelPostionOnLayers()

    def name(self):
        return "fixlabelpostiononlayers"

    def displayName(self):
        return self.tr("Fixa posição dos labels")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return self.tr("Fixa posição dos labels de acordo com o calculado pelo QGIS.")
