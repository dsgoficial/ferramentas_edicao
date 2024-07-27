# -*- coding: utf-8 -*-

from qgis.PyQt.QtCore import QCoreApplication
from qgis.core import (
    QgsProcessing,
    QgsFeatureSink,
    QgsProcessingAlgorithm,
    QgsProcessingParameterFeatureSink,
    QgsCoordinateReferenceSystem,
    QgsProcessingParameterMultipleLayers,
    QgsFeature,
    QgsProcessingParameterVectorLayer,
    QgsFields,
    QgsFeatureRequest,
    QgsProcessingParameterNumber,
    QgsGeometry,
    QgsPointXY,
    QgsProcessingParameterCrs,
    QgsCoordinateTransform,
    QgsProject,
    QgsProcessingMultiStepFeedback,
    NULL,
)
from qgis import processing
from qgis import core, gui
from qgis.utils import iface

import math


class FixLabelPositionCRS(QgsProcessingAlgorithm):

    INPUT_LAYERS = "INPUT_LAYERS"
    CRS = "CRS"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterMultipleLayers(
                self.INPUT_LAYERS,
                self.tr("Input Layers"),
                QgsProcessing.TypeVectorAnyGeometry,
            )
        )
        self.addParameter(QgsProcessingParameterCrs(self.CRS, self.tr("CRS Antigo")))

    def processAlgorithm(self, parameters, context, feedback):
        inputLyrList = self.parameterAsLayerList(parameters, self.INPUT_LAYERS, context)
        crs = self.parameterAsCrs(parameters, self.CRS, context)

        multiStepFeedback = QgsProcessingMultiStepFeedback(len(inputLyrList), feedback)
        for current, lyr in enumerate(inputLyrList):
            if multiStepFeedback.isCanceled():
                break
            multiStepFeedback.setCurrentStep(current)
            fieldNameList = [field.name() for field in lyr.fields()]
            if "label_x" not in fieldNameList or "label_y" not in fieldNameList:
                continue
            coordinateTransformer = QgsCoordinateTransform(
                crs, lyr.crs(), QgsProject.instance()
            )
            fixLambda = lambda x: self.fixAndReprojectGeom(x, coordinateTransformer)
            updateLambda = lambda x: lyr.updateFeature(x)
            lyr.startEditing()
            lyr.beginEditCommand(f"Editando X,Y da camada {lyr.name()}")
            featList = list(
                filter(lambda x: x is not None, map(fixLambda, lyr.getFeatures()))
            )
            list(map(updateLambda, featList))
            lyr.endEditCommand()

        return {}

    @staticmethod
    def fixAndReprojectGeom(feat, coordinateTransformer):
        if feat["label_x"] == NULL or feat["label_y"] == NULL:
            return None
        oldPoint = QgsGeometry.fromPointXY(QgsPointXY(feat["label_x"], feat["label_y"]))
        try:
            oldPoint.transform(coordinateTransformer)
        except:
            return None
        p = oldPoint.asPoint()
        feat["label_x"] = p.x()
        feat["label_y"] = p.y()
        return feat

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return FixLabelPositionCRS()

    def name(self):
        return "fixlabelpositioncrs"

    def displayName(self):
        return self.tr("Corrigir CRS do campo ")

    def group(self):
        return self.tr("Auxiliar")

    def groupId(self):
        return "auxiliar"

    def shortHelpString(self):
        return self.tr("O algoritmo ...")
