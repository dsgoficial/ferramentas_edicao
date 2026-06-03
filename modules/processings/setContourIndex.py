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

from qgis.core import (
    NULL,
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingMultiStepFeedback,
    QgsProcessingParameterFeatureSource,
    QgsProcessingParameterNumber,
)
from qgis.PyQt.QtCore import QCoreApplication

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help


class SetContourIndex(QgsProcessingAlgorithm):

    INPUT = "INPUT"
    EQUIDISTANCIA = "EQUIDISTANCIA"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterFeatureSource(
                self.INPUT,
                self.tr("Selecionar camada de curva de nível"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="elemnat_curva_nivel_l",
            )
        )
        self.addParameter(
            QgsProcessingParameterNumber(
                self.EQUIDISTANCIA,
                self.tr("Equidistância (metros)"),
                type=QgsProcessingParameterNumber.Double,
                minValue=0.0,
                defaultValue=10.0,
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        inputLyr = self.parameterAsVectorLayer(parameters, self.INPUT, context)
        equidistancia = self.parameterAsDouble(parameters, self.EQUIDISTANCIA, context)

        multiStepFeedback = QgsProcessingMultiStepFeedback(1, feedback)
        multiStepFeedback.setCurrentStep(0)

        nFeats = inputLyr.featureCount()
        if nFeats == 0:
            return {}

        stepSize = 100 / nFeats
        intervalo_mestra = 5 * equidistancia

        inputLyr.startEditing()
        inputLyr.beginEditCommand("Ajustando índice de curvas de nível")

        for current, feature in enumerate(inputLyr.getFeatures()):
            if multiStepFeedback.isCanceled():
                break

            cota = feature["cota"]
            if cota == NULL or cota is None:
                multiStepFeedback.setProgress(current * stepSize)
                continue

            try:
                cota_val = float(cota)
            except (TypeError, ValueError):
                multiStepFeedback.setProgress(current * stepSize)
                continue

            if intervalo_mestra > 0 and cota_val % intervalo_mestra == 0:
                feature["indice"] = 1
            else:
                feature["indice"] = 2

            inputLyr.updateFeature(feature)
            multiStepFeedback.setProgress(current * stepSize)

        inputLyr.endEditCommand()
        return {}

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return SetContourIndex()

    def name(self):
        return "setcontourindex"

    def displayName(self):
        return self.tr("Ajustar índice de curvas de nível")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return help().helpUrl(self.name())
