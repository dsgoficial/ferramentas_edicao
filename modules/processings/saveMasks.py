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
    QgsSymbolLayerReference,
    QgsVectorLayerSimpleLabeling,
)
from qgis.PyQt.QtCore import QCoreApplication

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help

# Reusa a MESMA enumeração de símbolos do loadmasks, para que a (symbolKey,
# indexPath) gravada aqui seja exatamente a que o loadmasks resolve na carga.
from .loadMasks import _allSymbols, _unwrapRenderer


def _iterAllRules(rule):
    """Yields all descendants of `rule` (excluding the root), depth-first."""
    for child in rule.children():
        yield child
        yield from _iterAllRules(child)


def _walkSymbolLayers(symbol, prefix=None):
    """Yields (indexPath, symbolLayer) para TODA camada de símbolo, descendo em
    subsímbolos (mesmo caminho que loadMasks._walkIndexPath percorre na volta)."""
    prefix = prefix or []
    out = []
    if symbol is None:
        return out
    try:
        count = symbol.symbolLayerCount()
    except AttributeError:
        return out
    for i in range(count):
        sl = symbol.symbolLayer(i)
        if sl is None:
            continue
        path = prefix + [i]
        out.append((path, sl))
        sub = sl.subSymbol() if hasattr(sl, "subSymbol") else None
        if sub is not None:
            out.extend(_walkSymbolLayers(sub, path))
    return out


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
        # cache por camada-alvo: lista de (symbolKey, indexPath, QgsSymbolLayerReference)
        refIndexCache = {}
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
                    maskedLayerId = symbol.layerId()
                    maskedTable = self._resolveLayerTable(project, maskedLayerId)
                    if maskedTable is None:
                        feedback.pushWarning(
                            f"[máscaras] {layerName}: layer mascarado {maskedLayerId} não encontrado no projeto."
                        )
                        totalSkipped += 1
                        continue
                    entry = self._buildEntry(
                        project,
                        refIndexCache,
                        maskedLayerId,
                        maskedTable,
                        symbol,
                        feedback,
                        layerName,
                    )
                    if entry is None:
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

    def _buildEntry(
        self, project, cache, maskedLayerId, maskedTable, ref, feedback, srcName
    ):
        """Retorna [maskedTable, symbolKey, indexPath] para a referência `ref`.

        1) Caminho legado (QGIS 3 / categorizado): se symbolLayerId() trouxer
           symbolKey/indexPath preenchidos, usa direto.
        2) QGIS 4 (id estável/uuid): symbolLayerId() volta vazio, então mapeia a
           camada de símbolo mascarada -> (symbolKey, indexPath) percorrendo o
           renderer da camada-alvo e casando por IGUALDADE de QgsSymbolLayerReference.
        """
        # 1) legado
        try:
            slId = ref.symbolLayerId()
            key = slId.symbolKey()
            path = list(slId.symbolLayerIndexPath())
            if key != "" or path:
                return [maskedTable, key, path]
        except AttributeError:
            pass

        # 2) QGIS 4: casa por referência contra o renderer da camada-alvo
        candidates = cache.get(maskedLayerId)
        if candidates is None:
            target = project.mapLayer(maskedLayerId)
            candidates = (
                self._enumRefs(target.renderer(), maskedLayerId)
                if target is not None
                else []
            )
            cache[maskedLayerId] = candidates
        for key, path, candRef in candidates:
            if candRef == ref:
                return [maskedTable, key, list(path)]

        feedback.pushWarning(
            f"[máscaras] {srcName}: não consegui mapear símbolo mascarado em "
            f"{maskedTable} para (symbolKey, indexPath); ignorado."
        )
        return None

    @staticmethod
    def _enumRefs(renderer, layerId):
        """Lista (symbolKey, indexPath, QgsSymbolLayerReference) de TODA camada de
        símbolo do renderer da camada-alvo. A QgsSymbolLayerReference é construída
        igual ao loadmasks (layerId + sl.id() estável), permitindo casar por '=='."""
        renderer = _unwrapRenderer(renderer)
        if renderer is None:
            return []
        try:
            items, _keepers = _allSymbols(renderer)
        except Exception:
            return []
        out = []
        for key, sym in items:
            for path, sl in _walkSymbolLayers(sym):
                try:
                    candRef = QgsSymbolLayerReference(layerId, sl.id())
                except Exception:
                    continue
                out.append((key, path, candRef))
        return out

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
