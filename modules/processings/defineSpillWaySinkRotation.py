# -*- coding: utf-8 -*-

import itertools
import os
from qgis.PyQt.QtCore import QCoreApplication
from qgis.core import (
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingParameterMultipleLayers,
    QgsProcessingParameterVectorLayer,
    QgsFeatureRequest,
    QgsProcessingParameterNumber,
    QgsProcessingParameterBoolean,
    QgsProcessingMultiStepFeedback,
    QgsProcessingParameterFeatureSource,
)
from qgis import core
import math
import concurrent.futures


class DefineSpillWaySinkRotation(QgsProcessingAlgorithm):

    INPUT = "INPUT"
    ONLY_SELECTED = "ONLY_SELECTED"
    INPUT_FIELD = "INPUT_FIELD"
    INPUT_DRAINAGES = "INPUT_DRAINAGES"
    OUTPUT = "OUTPUT"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT,
                self.tr("Sumidouros e Vertedouros"),
                [QgsProcessing.TypeVectorPoint],
                defaultValue="elemnat_sumidouro_vertedouro_p",
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.ONLY_SELECTED, self.tr("Executar somente nas feições selecionadas")
            )
        )

        self.addParameter(
            core.QgsProcessingParameterField(
                self.INPUT_FIELD,
                self.tr("Selecionar o atributo de rotação da camada"),
                type=core.QgsProcessingParameterField.Any,
                parentLayerParameterName=self.INPUT,
                allowMultiple=False,
                defaultValue="simb_rot",
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_DRAINAGES,
                self.tr("Drenagens"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="elemnat_trecho_drenagem_l",
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        inputLyr = self.parameterAsVectorLayer(parameters, self.INPUT, context)
        onlySelected = self.parameterAsBool(parameters, self.ONLY_SELECTED, context)
        rotationField = self.parameterAsFields(parameters, self.INPUT_FIELD, context)[0]
        drainagesLyr = self.parameterAsVectorLayer(
            parameters, self.INPUT_DRAINAGES, context
        )
        iterator = (
            inputLyr.getFeatures()
            if not onlySelected
            else inputLyr.getSelectedFeatures()
        )
        nFeats = (
            inputLyr.featureCount()
            if not onlySelected
            else inputLyr.selectedFeatureCount()
        )
        if nFeats == 0:
            return {self.OUTPUT: ""}
        stepSize = 100 / nFeats
        inputLyr.startEditing()
        inputLyr.beginEditCommand("Rotacionando simbolos")
        for current, feat in enumerate(iterator):
            if feedback.isCanceled():
                break
            geom = feat.geometry()
            buffer = geom.buffer(1e-4, -1)
            bbox = buffer.boundingBox()
            candidateFeats = [
                f for f in drainagesLyr.getFeatures(bbox) if f.geometry().touches(geom)
            ]
            if candidateFeats == []:
                continue
            drainageFeat = candidateFeats[0]
            vertexList = list(drainageFeat.geometry().vertices())
            angle = vertexList[-1].azimuth(vertexList[-2])
            if feat is None or feat[rotationField] == angle:
                continue
            feat[rotationField] = angle - 90
            inputLyr.updateFeature(feat)
            feedback.setProgress(current * stepSize)

        inputLyr.endEditCommand()

        return {self.OUTPUT: ""}

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return DefineSpillWaySinkRotation()

    def name(self):
        return "definespillwaysinkrotation"

    def displayName(self):
        return self.tr("Definir rotação de sumidouro")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return self.tr(
            "O algoritmo define a rotação dos sumidouros em relação às drenagens."
        )