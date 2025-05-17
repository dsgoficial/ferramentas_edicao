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

from itertools import islice
from collections import deque
import os

import numpy as np
import processing
import concurrent.futures

from qgis.core import (
    QgsGeometry,
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingMultiStepFeedback,
    QgsProcessingParameterEnum,
    QgsProcessingParameterFeatureSource,
)
from qgis.PyQt.QtCore import QCoreApplication

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help


class SetCurveOrientation(QgsProcessingAlgorithm):

    INPUT = "INPUT"
    ORIENTATION = "ORIENTATION"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterFeatureSource(
                self.INPUT,
                self.tr("Selecionar camada de curva de nível"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="elemnat_curva_nivel_l",
            )
        )

        self.modes = [
            self.tr("Sentido horário"),
            self.tr("Sentido anti-horário"),
        ]

        self.addParameter(
            QgsProcessingParameterEnum(
                self.ORIENTATION,
                self.tr("Orientação"),
                options=self.modes,
                defaultValue=0,
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        inputLyr = self.parameterAsVectorLayer(parameters, self.INPUT, context)
        inputSource = self.parameterAsSource(parameters, self.INPUT, context)
        orientation = self.parameterAsEnum(parameters, self.ORIENTATION, context)
        ccw = orientation == 1
        multiStepFeedback = QgsProcessingMultiStepFeedback(6, feedback)
        currentStep = 0
        multiStepFeedback.setCurrentStep(currentStep)
        nFeats = inputSource.featureCount()
        if nFeats == 0:
            return {}
        stepSize = 100 / nFeats
        featDict = dict()
        futures = set()
        pool = concurrent.futures.ThreadPoolExecutor(max_workers=os.cpu_count() - 1)

        def compute(feat):
            if not should_flip(feat.geometry(), ccw=ccw):
                return None
            return feat

        for current, feat in enumerate(inputSource.getFeatures()):
            if multiStepFeedback.isCanceled():
                return {}
            futures.add(pool.submit(compute, feat))
            multiStepFeedback.setProgress(current * stepSize)

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        for current, future in enumerate(concurrent.futures.as_completed(futures)):
            if multiStepFeedback.isCanceled():
                return {}
            feat = future.result()
            if feat is None:
                continue
            featDict[feat.id()] = feat
            multiStepFeedback.setProgress(current * stepSize)
        if featDict == dict():
            return {}
        currentStep += 1

        multiStepFeedback.setCurrentStep(currentStep)
        cacheLyr = processing.run(
            "qgis:advancedpythonfieldcalculator",
            {
                "INPUT": parameters[self.INPUT],
                "FIELD_NAME": "featid",
                "FIELD_TYPE": 0,
                "FIELD_LENGTH": 1000,
                "FIELD_PRECISION": 3,
                "GLOBAL": "",
                "FORMULA": "value = $id",
                "OUTPUT": "TEMPORARY_OUTPUT",
            },
            context=context,
            feedback=multiStepFeedback,
            is_child_algorithm=True,
        )["OUTPUT"]
        currentStep += 1

        multiStepFeedback.setCurrentStep(currentStep)
        expression = f"{tuple(featDict.keys())}".replace(",)", ")")
        selectedFeatures = processing.run(
            "native:extractbyexpression",
            {
                "INPUT": cacheLyr,
                "EXPRESSION": f"featid in {expression}",
                "OUTPUT": "TEMPORARY_OUTPUT",
            },
            context=context,
            feedback=multiStepFeedback,
            is_child_algorithm=True,
        )["OUTPUT"]
        currentStep += 1

        multiStepFeedback.setCurrentStep(currentStep)
        flippedFeatures = processing.run(
            "native:reverselinedirection",
            {"INPUT": selectedFeatures, "OUTPUT": "memory:"},
            context=context,
            feedback=multiStepFeedback,
        )["OUTPUT"]
        currentStep += 1

        multiStepFeedback.setCurrentStep(currentStep)
        nFeats = len(featDict)
        stepSize = 100 / nFeats
        inputLyr.startEditing()
        inputLyr.beginEditCommand("Ajustando curvas")
        for current, feat in enumerate(flippedFeatures.getFeatures()):
            if multiStepFeedback.isCanceled():
                break
            newGeom = feat.geometry()
            oldFeat = featDict[feat["featid"]]
            oldFeat.setGeometry(newGeom)
            inputLyr.updateFeature(oldFeat)
            multiStepFeedback.setProgress(current * stepSize)

        inputLyr.endEditCommand()

        return {}

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return SetCurveOrientation()

    def name(self):
        return "setcurveorientation"

    def displayName(self):
        return self.tr("Ajustar orientação de curvas")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return help().helpUrl(self.name())


def should_flip(geom: QgsGeometry, ccw=True) -> bool:
    vertexList = list(geom.vertices())
    if vertexList[0] == vertexList[-1]:
        vertexList.pop(-1)
    if len(vertexList) == 2:
        p0, p1 = vertexList
        a = [p0.x(), p0.y(), 0]
        b = [p1.x(), p1.y(), 0]
        prod = np.cross(a, b)
        return prod[-1] > 0 if ccw else prod[-1] < 0
    z = 0
    for p0, p1, p2 in sliding_window_iter(vertexList, 3):
        a = [p1.x() - p0.x(), p1.y() - p0.y(), 0]
        b = [p2.x() - p1.x(), p2.y() - p1.y(), 0]
        z += np.sign(np.cross(a, b)[-1])
    return z > 0 if not ccw else z < 0


def sliding_window_iter(iterable, size):
    """..."""
    iterable = iter(iterable)
    window = deque(islice(iterable, size), maxlen=size)
    for item in iterable:
        yield tuple(window)
        window.append(item)
    if window:
        # needed because if iterable was already empty before the `for`,
        # then the window would be yielded twice.
        yield tuple(window)
