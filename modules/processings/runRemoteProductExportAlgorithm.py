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
from typing import Dict
import requests
import json
import processing
from time import sleep
from pathlib import Path

from qgis.core import (
    QgsProcessingAlgorithm,
    QgsProcessingParameterFile,
    QgsProcessingParameterString,
    QgsProcessingParameterFolderDestination,
    QgsProcessingMultiStepFeedback,
    QgsProcessingException,
    QgsProcessingParameterEnum,
    QgsProcessingParameterBool,
    QgsProcessingFeedback,
)
from qgis.PyQt.QtCore import QCoreApplication

from qgis.PyQt.QtWidgets import (
    QLineEdit
)

from processing.gui.wrappers import WidgetWrapper


class PasswordWrapper(WidgetWrapper):

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.placeholder = args[0]

    def createWidget(self):
        self._lineedit = QLineEdit()
        self._lineedit.setEchoMode(QLineEdit.Password)
        return self._lineedit

    def value(self):
        return self._lineedit.text()


class RunRemoteProductExportAlgorithm(QgsProcessingAlgorithm):
    SERVICE_ADDRESS = "SERVICE_ADDRESS"
    FILE = "FILE"
    TEXT = "TEXT"
    PRODUCT_TYPE = "PRODUCT_TYPE"
    DB_USER = "DB_USER"
    DB_PASSWORD = "DB_PASSWORD"
    PROXY_HOST = "PROXY_HOST"
    PROXY_PORT = "PROXY_PORT"
    PROXY_USER = "PROXY_PASSWORD"
    PROXY_PASSWORD = "PROXY_PASSWORD"
    EXPORT_TIFF = "EXPORT_TIFF"
    OUTPUT_FOLDER = "OUTPUT_FOLDER"

    def initAlgorithm(self, config):
        """
        Parameter setting.
        """
        self.addParameter(
            QgsProcessingParameterString(self.SERVICE_ADDRESS, self.tr("Endereço do serviço de exportação"))
        )
        self.addParameter(
            QgsProcessingParameterFile(
                self.FILE, self.tr("JSON de exportação"), defaultValue=".json"
            )
        )

        self.addParameter(
            QgsProcessingParameterString(
                self.TEXT,
                description=self.tr("Texto do json de exportação"),
                multiLine=True,
                defaultValue="[]",
            )
        )

        self.product_type_value_list = [
            self.tr("Carta Topográfica 1.3"),
            self.tr("Carta Topográfica 1.4"),
            self.tr("Carta Ortoimagem 2.4"),
            self.tr("Carta Ortoimagem 2.5"),
            self.tr("Carta Ortoimagem OM 1.0"),
            self.tr("Carta Ortoimagem Militar 2.5"),
            self.tr("Carta Topográfica Militar 1.3"),
            self.tr("Carta Topográfica Militar 1.4"),
        ]

        self.addParameter(
            QgsProcessingParameterEnum(
                self.PRODUCT_TYPE,
                self.tr("Tipo da carta"),
                options=self.product_type_value_list,
            )
        )
        self.addParameter(QgsProcessingParameterString(self.DB_USER, self.tr("Usuário do banco de dados")))
        passwordParameter = QgsProcessingParameterString(self.DB_PASSWORD, self.tr("Senha do usuário do banco de dados"))
        passwordParameter.setMetadata({
            'widget_wrapper': 'PasswordWrapper',
        })
        self.addParameter(passwordParameter)
        self.addParameter(QgsProcessingParameterString(self.PROXY_HOST, self.tr("Proxy Host"), optional=True))

        self.addParameter(
            QgsProcessingParameterString(self.PROXY_HOST, self.tr("Endereço do Proxy"), optional=True)
        )
        self.addParameter(
            QgsProcessingParameterString(self.PROXY_PORT, self.tr("Porta do Proxy"), optional=True)
        )
        self.addParameter(
            QgsProcessingParameterString(self.PROXY_USER, self.tr("Usuário do Proxy"), optional=True)
        )
        proxyPasswordParameter = QgsProcessingParameterString(self.PROXY_PASSWORD, self.tr("Usuário do Proxy"), optional=True)
        proxyPasswordParameter.setMetadata({
            'widget_wrapper': 'PasswordWrapper',
        })
        self.addParameter(proxyPasswordParameter)

        self.addParameter(QgsProcessingParameterBool(
            self.EXPORT_TIFF, self.tr("Exportar TIFF")
        ))

        self.addParameter(
            QgsProcessingParameterFolderDestination(
                self.OUTPUT_FOLDER, self.tr("Pasta para salvar os arquivos exportados")
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
        server = self.parameterAsString(parameters, self.SERVICE_ADDRESS, context)
        inputJSONFile = self.parameterAsFile(parameters, self.FILE, context)
        inputJSONDataFromText = json.loads(
            self.parameterAsString(parameters, self.TEXT, context)
        )
        productType = self.parameterAsEnum(parameters, self.PRODUCT_TYPE, context)
        dbUser = self.parameterAsString(parameters, self.DB_USER, context)
        dbPassword = self.parameterAsString(parameters, self.DB_PASSWORD, context)
        proxyHost = self.parameterAsString(parameters, self.PROXY_HOST, context)
        proxyPort = self.parameterAsString(parameters, self.PROXY_PORT, context)
        proxyUser = self.parameterAsString(parameters, self.PROXY_USER, context)
        proxyPassword = self.parameterAsString(parameters, self.PROXY_PASSWORD, context)
        exportTiff = self.parameterAsBool(parameters, self.EXPORT_TIFF, context)
        self.outputFolder = self.parameterAsString(
            parameters, self.OUTPUT_FOLDER, context
        )
        if os.path.exists(inputJSONFile):
            productJsonData = json.load(inputJSONFile)
        elif len(inputJSONDataFromText) > 0:
            productJsonData = inputJSONDataFromText
        else:
            raise QgsProcessingException("Invalid Product JSON Parameters! Check the inputs and try again.")
        
        inputJSONData = {
            "json": productJsonData,
            "tipo": self.product_type_value_list.index(productType),
            "login": dbUser,
            "senha": dbPassword,
            "exportTiff": exportTiff,
        }
        if proxyHost is not None:
            inputJSONData["proxyHost"] = proxyHost
        if proxyPort is not None:
            inputJSONData["proxyPort"] = proxyPort
        if proxyUser is not None:
            inputJSONData["proxyUser"] = proxyUser
        if proxyPassword is not None:
            inputJSONData["proxyPassword"] = proxyPassword

        return self.runFromJSONData(server, inputJSONData, feedback)

    def runFromJSONData(self, server: str, inputJSONData: Dict[str, str], feedback: QgsProcessingFeedback):

        header = {"content-type": "application/json"}
        session = requests.Session()
        session.trust_env = False
        url = f"{server}/execucoes"
        response = session.post(url, data=json.dumps(inputJSONData), headers=header)

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
        pdfUrl = responseData.get("sumario", {}).get("pdf", None)
        geotiffUrl = responseData.get("sumario", {}).get("geotiff", None)
        multiStepFeedback = QgsProcessingMultiStepFeedback(
            1 if geotiffUrl is None or geotiffUrl == "" else 2, feedback
        )
        multiStepFeedback.setCurrentStep(0)
        self.downloadOutput(
            url=pdfUrl,
            output=Path(self.outputFolder) / Path(pdfUrl).name,
            feedback=multiStepFeedback,
        )
        if geotiffUrl is None or geotiffUrl == "":
            return {self.OUTPUT_FOLDER: self.outputFolder}
        multiStepFeedback.setCurrentStep(1)
        self.downloadOutput(
            url=geotiffUrl,
            output=Path(self.outputFolder) / Path(geotiffUrl).name,
            feedback=multiStepFeedback,
        )
        return {self.OUTPUT_FOLDER: self.outputFolder}

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
