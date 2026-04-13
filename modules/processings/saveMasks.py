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


def _iterAllRules(rule):
    """Yields all descendants of `rule` (excluding the root), depth-first."""
    for child in rule.children():
        yield child
        yield from _iterAllRules(child)


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
        project = QgsProject.instance()
        layers = project.mapLayers().values()
        mask_dict = {}
        totalSaved = 0
        totalSkipped = 0
        for layer in layers:
            if not layer.type() == QgsMapLayer.LayerType.VectorLayer:
                continue
            layerName = layer.dataProvider().uri().table()
            labels = layer.labeling()
            if not labels:
                continue
            providers = []
            if isinstance(labels, QgsVectorLayerSimpleLabeling):
                providers.append("--SINGLE--RULE--")
                providerMap = {"--SINGLE--RULE--": "--SINGLE--RULE--"}
            if isinstance(labels, QgsRuleBasedLabeling):
                allRules = list(_iterAllRules(labels.rootRule()))
                providers = [x.ruleKey() for x in allRules]
                providerMap = {x.ruleKey(): x.description() for x in allRules}

            for provider in providers:
                if provider == "--SINGLE--RULE--":
                    label_settings = labels.settings()
                else:
                    label_settings = labels.settings(provider)
                label_format = label_settings.format()
                masks = label_format.mask()
                if not masks.enabled():
                    continue
                for symbol in masks.maskedSymbolLayers():
                    maskedTable = self._resolveLayerTable(project, symbol.layerId())
                    if maskedTable is None:
                        feedback.pushWarning(
                            f"[máscaras] {layerName}: layer mascarado {symbol.layerId()} não encontrado no projeto."
                        )
                        totalSkipped += 1
                        continue
                    try:
                        slId = symbol.symbolLayerId()
                        entry = [
                            maskedTable,
                            slId.symbolKey(),
                            slId.symbolLayerIndexPath(),
                        ]
                    except AttributeError:
                        feedback.pushWarning(
                            f"[máscaras] {layerName}: referência sem QgsSymbolLayerId (API nova não suportada ainda)."
                        )
                        totalSkipped += 1
                        continue
                    mask_dict.setdefault(layerName, {}).setdefault(
                        providerMap[provider], []
                    ).append(entry)
                    totalSaved += 1
        with open(fileOutput, "w") as f:
            json.dump(mask_dict, f)
        feedback.pushInfo(
            f"[máscaras] Total salvas: {totalSaved}, ignoradas: {totalSkipped}"
        )
        return {}

    @staticmethod
    def _resolveLayerTable(project, mapLayerId):
        layer = project.mapLayer(mapLayerId)
        if layer is None:
            # Fallback: hack histórico — QGIS anexa "_{uuid}" (37 chars) a IDs de layer.
            return mapLayerId[:-37] if len(mapLayerId) > 37 else None
        try:
            return layer.dataProvider().uri().table()
        except AttributeError:
            return None

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
