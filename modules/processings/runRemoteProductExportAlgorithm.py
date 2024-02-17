# -*- coding: utf-8 -*-
"""
/***************************************************************************
 DsgTools
                                 A QGIS plugin
 Brazilian Army Cartographic Production Tools
                              -------------------
        begin                : 2024-02-16
        git sha              : $Format:%H$
        copyright            : (C) 2024 by Philipe Borba - Cartographic Engineer @ Brazilian Army
        email                : borba.philipe@eb.mil.br
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

import os
import requests
import json
import processing
from time import sleep

from qgis.core import (
    QgsProcessingAlgorithm,
    QgsProcessingParameterFile,
    QgsProcessingParameterString,
    QgsProcessingOutputFile,
    QgsProcessingMultiStepFeedback,
    QgsProcessingException,
)
from qgis.PyQt.QtCore import QCoreApplication


class RunRemoteProductExportAlgorithm(QgsProcessingAlgorithm):
    FILE = "FILE"
    TEXT = "TEXT"
    OUTPUT_PDF = "OUTPUT_PDF"
    OUTPUT_GEOTIFF = "OUTPUT_GEOTIFF"

    def initAlgorithm(self, config):
        """
        Parameter setting.
        """
        self.addParameter(
            QgsProcessingParameterFile(
                self.FILE, self.tr("Input json file"), defaultValue=".json"
            )
        )

        self.addParameter(
            QgsProcessingParameterString(
                self.TEXT,
                description=self.tr("Input json text"),
                multiLine=True,
                defaultValue="[]",
            )
        )

        self.addOutput(QgsProcessingOutputFile(self.OUTPUT_PDF, self.tr("Saída PDF")))

        self.addOutput(
            QgsProcessingOutputFile(
                self.OUTPUT_GEOTIFF, self.tr("Saída GEOTIFF")
            )
        )
        self.statusIdDict = {
            1: "Em execução",
            2: "Executado",
            3: "Erro",
        }

    def processAlgorithm(self, parameters, context, feedback):
        """
        Here is where the processing itself takes place.

        """
        inputJSONFile = self.parameterAsFile(parameters, self.FILE, context)
        inputJSONData = json.loads(
            self.parameterAsString(parameters, self.TEXT, context)
        )
        self.outputPdfPath = self.parameterAsFileOutput(
            parameters, self.OUTPUT_PDF, context
        )
        self.outputGeotiffPath = self.parameterAsFileOutput(
            parameters, self.OUTPUT_GEOTIFF, context
        )
        if os.path.exists(inputJSONFile):
            return self.runFromJSONFile(inputJSONFile, feedback)
        elif len(inputJSONData) > 0:
            return self.runFromJSONData(inputJSONData, feedback)
        return {self.OUTPUT: ""}

    def runFromJSONFile(self, inputJSONFile, feedback):
        inputJSONData = json.load(inputJSONFile)
        return self.runFromJSONData(inputJSONData, feedback)

    def runFromJSONData(self, inputJSONData, feedback):

        header = {"content-type": "application/json"}
        session = requests.Session()
        session.trust_env = False
        server = inputJSONData["server"]
        url = f"{server}/execucoes"
        response = session.post(
            url, data=json.dumps(inputJSONData), headers=header
        )

        if not response:
            raise QgsProcessingException("Erro ao iniciar rotina.")
        uuid = response.json().get("data", {}).get("job_uuid", None)
        if uuid is None:
            raise QgsProcessingException(
                "Erro no servidor! A requisição não retornou o uuid da execução."
            )
        url_to_status = f"{server}/execucoes/{uuid}"
        multiStepFeedback = QgsProcessingMultiStepFeedback(2, feedback)
        multiStepFeedback.setCurrentStep(0)
        while True:
            if multiStepFeedback.isCanceled():
                multiStepFeedback.pushInfo(self.tr("Cancelado pelo usuário.\n"))
                break
            sleep(10)
            try:
                session = requests.Session()
                session.trust_env = False
                response = session.get(url_to_status)
                session.close()
                responseData = response.json()["data"]
            except Exception as e:
                responseData = {"status": "erro", "log": f"Erro no plugin!\n{e}"}
            if responseData["status"] in [2, 3, "erro"]:
                break
        multiStepFeedback.setCurrentStep(1)
        return self.handleOutputs(responseData, multiStepFeedback)

    def handleOutputs(self, responseData, feedback):
        status = responseData.get("status_id")
        feedback.pushInfo(
            f"O processo finalizou com status={self.statusIdDict.get(status)}"
        )
        if status == 3:
            raise QgsProcessingException(
                "O processo finalizou com erro! Verifique o servidor e tente novamente"
            )
        pdfUrl = responseData.get('sumario', {}).get("pdf", None)
        geotiffUrl = responseData.get('sumario', {}).get("geotiff", None)
        multiStepFeedback = QgsProcessingMultiStepFeedback(
            1 if geotiffUrl is None or geotiffUrl == "" else 2, feedback
        )
        multiStepFeedback.setCurrentStep(0)
        responseDict = dict()
        responseDict["OUTPUT_PDF"] = self.downloadOutput(
            url=pdfUrl, output=self.outputPdfPath, feedback=multiStepFeedback
        )
        if geotiffUrl is None or geotiffUrl == "":
            return responseDict
        multiStepFeedback.setCurrentStep(1)
        responseDict["OUTPUT_GEOTIFF"] = self.downloadOutput(
            url=geotiffUrl, output=self.outputGeotiffPath, feedback=multiStepFeedback
        )
        return responseDict

    def downloadOutput(self, url, output, feedback):
        response = processing.run(
            "native:filedownloader",
            {
                "URL": url,
                "OUTPUT": output,
            },
            feedback=feedback,
        )
        return response["OUTPUT"]

    def name(self):
        """
        Returns the algorithm name, used for identifying the algorithm. This
        string should be fixed for the algorithm, and must not be localised.
        The name should be unique within each provider. Names should contain
        lowercase alphanumeric characters only and no spaces or other
        formatting characters.
        """
        return "runremoteproductexportalgorithm"

    def displayName(self):
        """
        Returns the translated algorithm name, which should be used for any
        user-visible display of the algorithm name.
        """
        return self.tr("Exportar produto utilizando o serviço de edição")

    def group(self):
        """
        Returns the name of the group this algorithm belongs to. This string
        should be localised.
        """
        return self.tr("Auxiliar")

    def groupId(self):
        """
        Returns the unique ID of the group this algorithm belongs to. This
        string should be fixed for the algorithm, and must not be localised.
        The group id should be unique within each provider. Group id should
        contain lowercase alphanumeric characters only and no spaces or other
        formatting characters.
        """
        return "auxiliar"

    def tr(self, string):
        return QCoreApplication.translate("RunRemoteProductExportAlgorithm", string)

    def createInstance(self):
        return RunRemoteProductExportAlgorithm()
