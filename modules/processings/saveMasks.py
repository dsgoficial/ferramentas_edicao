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
import json

from qgis.core import (
    QgsMapLayer,
    QgsProcessingAlgorithm,
    QgsProcessingParameterFileDestination,
    QgsProject,
    QgsRuleBasedLabeling,
    QgsVectorLayerSimpleLabeling,
)
from qgis.PyQt.QtCore import QCoreApplication

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help


class SaveMasks(QgsProcessingAlgorithm):

    FOLDER_OUTPUT = "FOLDER_OUTPUT"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterFileDestination(
                self.FOLDER_OUTPUT,
                self.tr("Selecionar o arquivo para salvar"),
                fileFilter=".json",
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        fileOutput = self.parameterAsFileOutput(parameters, self.FOLDER_OUTPUT, context)
        layers = QgsProject.instance().mapLayers().values()
        mask_dict = {}
        for layer in layers:
            layerName = layer.dataProvider().uri().table()
            if not layer.type() == QgsMapLayer.VectorLayer:
                continue
            labels = layer.labeling()
            if not labels:
                continue
            providers = []
            if isinstance(labels, QgsVectorLayerSimpleLabeling):
                providers.append("--SINGLE--RULE--")
                providerMap = {"--SINGLE--RULE--": "--SINGLE--RULE--"}
            if isinstance(labels, QgsRuleBasedLabeling):
                providers = [x.ruleKey() for x in labels.rootRule().children()]
                providerMap = {
                    x.ruleKey(): x.description() for x in labels.rootRule().children()
                }

            for provider in providers:
                if provider == "--SINGLE--RULE--":
                    label_settings = labels.settings()
                else:
                    label_settings = labels.settings(provider)
                label_format = label_settings.format()
                masks = label_format.mask()
                if masks.enabled():
                    symbols = masks.maskedSymbolLayers()
                    for symbol in symbols:
                        if not layerName in mask_dict:
                            mask_dict[layerName] = {}
                        if not providerMap[provider] in mask_dict[layerName]:
                            mask_dict[layerName][providerMap[provider]] = []
                        mask_dict[layerName][providerMap[provider]].append(
                            [
                                symbol.layerId()[:-37],
                                symbol.symbolLayerId().symbolKey(),
                                symbol.symbolLayerId().symbolLayerIndexPath(),
                            ]
                        )
        with open("{0}".format(fileOutput), "w") as f:
            json.dump(mask_dict, f)
        return {}

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return SaveMasks()

    def name(self):
        return "savemasks"

    def displayName(self):
        return self.tr("Salvar máscaras")

    def group(self):
        return self.tr("Auxiliar")

    def groupId(self):
        return "auxiliar"

    def shortHelpString(self):
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return help().helpUrl(self.name())
