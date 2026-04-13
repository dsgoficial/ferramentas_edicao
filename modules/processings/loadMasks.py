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
    QgsCategorizedSymbolRenderer,
    QgsGraduatedSymbolRenderer,
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingParameterFile,
    QgsProcessingParameterMultipleLayers,
    QgsProject,
    QgsRuleBasedRenderer,
    QgsSingleSymbolRenderer,
    QgsSymbolLayerId,
    QgsSymbolLayerReference,
)
from qgis.PyQt import sip
from qgis.PyQt.QtCore import QCoreApplication

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help

try:
    from qgis.core import QgsMergedFeatureRenderer
except ImportError:
    QgsMergedFeatureRenderer = None
try:
    from qgis.core import QgsInvertedPolygonRenderer
except ImportError:
    QgsInvertedPolygonRenderer = None


_RENDERER_CLASS_BY_TYPE = {
    "singleSymbol": QgsSingleSymbolRenderer,
    "categorizedSymbol": QgsCategorizedSymbolRenderer,
    "graduatedSymbol": QgsGraduatedSymbolRenderer,
    "RuleRenderer": QgsRuleBasedRenderer,
}
if QgsMergedFeatureRenderer is not None:
    _RENDERER_CLASS_BY_TYPE["mergedFeatureRenderer"] = QgsMergedFeatureRenderer
if QgsInvertedPolygonRenderer is not None:
    _RENDERER_CLASS_BY_TYPE["invertedPolygonRenderer"] = QgsInvertedPolygonRenderer

_EMBEDDING_RENDERER_TYPES = {"mergedFeatureRenderer", "invertedPolygonRenderer"}


def _iterAllRules(rule):
    """Yields all descendants of `rule` (excluding the root), depth-first."""
    for child in rule.children():
        yield child
        yield from _iterAllRules(child)


def _downcastRenderer(renderer):
    if renderer is None:
        return None
    t = renderer.type() if hasattr(renderer, "type") else None
    cls = _RENDERER_CLASS_BY_TYPE.get(t)
    if cls is not None and not isinstance(renderer, cls):
        try:
            return sip.cast(renderer, cls)
        except Exception:
            return renderer
    return renderer


def _unwrapRenderer(renderer, max_depth=4):
    """Descasca wrappers (merged/inverted) retornando o renderer concreto."""
    for _ in range(max_depth):
        renderer = _downcastRenderer(renderer)
        if renderer is None:
            return None
        t = renderer.type() if hasattr(renderer, "type") else None
        if t not in _EMBEDDING_RENDERER_TYPES:
            return renderer
        inner = renderer.embeddedRenderer() if hasattr(renderer, "embeddedRenderer") else None
        if inner is None or inner is renderer:
            return renderer
        renderer = inner
    return renderer


def _allSymbols(renderer):
    """Retorna (items, keepers) onde items é lista de (key, symbol) e keepers
    mantém vivos os parents (categorias/rules) para impedir que C++ libere os
    símbolos borrowed enquanto os usamos (crash em PyQt6 SIP)."""
    items = []
    keepers = []
    if isinstance(renderer, QgsSingleSymbolRenderer):
        items.append(("", renderer.symbol()))
    elif isinstance(renderer, QgsCategorizedSymbolRenderer):
        cats = list(renderer.categories())
        keepers.extend(cats)
        for c in cats:
            items.append((str(c.value()), c.symbol()))
    elif isinstance(renderer, QgsGraduatedSymbolRenderer):
        ranges = list(renderer.ranges())
        keepers.extend(ranges)
        for r in ranges:
            items.append((r.label(), r.symbol()))
    elif isinstance(renderer, QgsRuleBasedRenderer):
        rules_flat = []
        def walk(rule):
            for child in rule.children():
                rules_flat.append(child)
                walk(child)
        walk(renderer.rootRule())
        keepers.extend(rules_flat)
        for rule in rules_flat:
            sym = rule.symbol()
            if sym is not None:
                items.append((rule.ruleKey(), sym))
    return items, keepers


def _walkIndexPath(symbol, index_path):
    if symbol is None or not index_path:
        return None
    current = symbol
    for i, idx in enumerate(index_path):
        if not hasattr(current, "symbolLayer"):
            return None
        try:
            sl = current.symbolLayer(idx)
        except Exception:
            return None
        if sl is None:
            return None
        if i == len(index_path) - 1:
            return sl
        sub = sl.subSymbol() if hasattr(sl, "subSymbol") else None
        if sub is None:
            return None
        current = sub
    return None


def _resolveInSymbols(all_syms, symbol_key, index_path):
    """Casa (symbol_key, index_path) contra lista pré-computada de (key, symbol).
    Fallback: se a key não casa, tenta o index_path em qualquer symbol."""
    if not all_syms:
        return None
    for k, sym in all_syms:
        if k == symbol_key:
            sl = _walkIndexPath(sym, index_path)
            if sl is not None:
                return sl
    for _, sym in all_syms:
        sl = _walkIndexPath(sym, index_path)
        if sl is not None:
            return sl
    return None


def _resolveSymbolLayer(renderer, symbol_key, index_path):
    """Retorna o QgsSymbolLayer casando (symbol_key, index_path) no renderer atual."""
    renderer = _unwrapRenderer(renderer)
    if renderer is None:
        return None
    try:
        all_syms, _keepers = _allSymbols(renderer)
    except Exception:
        return None
    return _resolveInSymbols(all_syms, symbol_key, index_path)


class LoadMasks(QgsProcessingAlgorithm):

    JSON_FILE = "JSON_FILE"
    INPUT_LAYERS = "INPUT_LAYERS"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterFile(
                self.JSON_FILE,
                self.tr("Selecionar o arquivo .json de máscaras"),
                extension="json",
            )
        )

        self.addParameter(
            QgsProcessingParameterMultipleLayers(
                self.INPUT_LAYERS,
                self.tr("Camadas que terão máscaras aplicadas"),
                QgsProcessing.TypeVectorAnyGeometry,
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        jsonFilePath = self.parameterAsFile(parameters, self.JSON_FILE, context)
        layers = self.parameterAsLayerList(parameters, self.INPUT_LAYERS, context)
        with open(jsonFilePath, "r") as f:
            mask_dict = json.load(f)

        mapId = {
            layer.dataProvider().uri().table(): layer.id() for layer in layers if layer
        }
        # Cache (all_syms, keepers) por target layer id — evita re-enumerar o
        # renderer em cada uma das milhares de refs do JSON.
        symbolsCache = {}
        totalApplied = 0
        totalSkipped = 0
        # if layer is None: ocorre em orderEditLayersAndAddStyle quando camada
        # foi excluída do order durante o preparo de edição.
        for layer in layers:
            if not layer:
                continue
            layerName = layer.dataProvider().uri().table()
            if layerName not in mask_dict:
                continue
            labels = layer.labeling()
            if not labels:
                feedback.pushInfo(f"[máscaras] {layerName}: sem labeling, ignorado.")
                continue
            jsonProviders = list(mask_dict[layerName].keys())
            assignment = self._buildAssignment(labels, jsonProviders, layerName, feedback)
            for provider in jsonProviders:
                entries = mask_dict[layerName][provider]
                if provider not in assignment:
                    feedback.pushWarning(
                        f"[máscaras] {layerName}: rule '{provider}' sem mapeamento (ambíguo)."
                    )
                    totalSkipped += len(entries)
                    continue
                ruleKey = assignment[provider]
                if ruleKey is None:
                    label_settings = labels.settings()
                else:
                    label_settings = labels.settings(ruleKey)
                label_format = label_settings.format()
                masks = label_format.mask()
                new_symbol_mask = []
                for symbol in entries:
                    target_table, symbol_key, index_path = symbol[0], symbol[1], symbol[2]
                    if target_table not in mapId:
                        totalSkipped += 1
                        continue
                    target_layer_id = mapId[target_table]
                    cached = symbolsCache.get(target_layer_id)
                    if cached is None:
                        target_layer = QgsProject.instance().mapLayer(target_layer_id)
                        if target_layer is not None:
                            try:
                                r = _unwrapRenderer(target_layer.renderer())
                                syms, keepers = _allSymbols(r) if r else ([], [])
                            except Exception:
                                syms, keepers = [], []
                        else:
                            syms, keepers = [], []
                        cached = (syms, keepers)
                        symbolsCache[target_layer_id] = cached
                    reference = None
                    sl = _resolveInSymbols(cached[0], symbol_key, index_path)
                    if sl is not None:
                        try:
                            reference = QgsSymbolLayerReference(target_layer_id, sl.id())
                        except (TypeError, AttributeError):
                            reference = None
                    if reference is None:
                        try:
                            symbol_id = QgsSymbolLayerId(symbol_key, index_path)
                            reference = QgsSymbolLayerReference(target_layer_id, symbol_id)
                        except (TypeError, ValueError) as e:
                            feedback.pushWarning(
                                f"[máscaras] {layerName} → {target_table}: falha ao construir ref ({e})"
                            )
                            totalSkipped += 1
                            continue
                    new_symbol_mask.append(reference)
                    totalApplied += 1
                masks.setMaskedSymbolLayers(new_symbol_mask)
                if new_symbol_mask:
                    masks.setEnabled(True)
                label_format.setMask(masks)
                label_settings.setFormat(label_format)
                if ruleKey is None:
                    labels.setSettings(label_settings)
                else:
                    labels.setSettings(label_settings, ruleKey)
            layer.setLabeling(labels)

        feedback.pushInfo(
            f"[máscaras] Total aplicadas: {totalApplied}, ignoradas: {totalSkipped}"
        )
        return {}

    @staticmethod
    def _buildAssignment(labels, jsonProviders, layerName, feedback):
        """Mapeia provider do JSON → ruleKey do projeto.

        Estratégia para rule-based com wrapper top-level ("Visível" com filhos):
        1. Match exato por description (em qualquer nível).
        2. Entre providers não-matched e folhas (rules sem filhos) não-consumidas:
           - se quantidades batem → match por ordem de iteração;
           - se sobrou 1 folha → todos unmatched vão para ela.

        Retorna dict {provider: ruleKey}. `ruleKey` é None para labeling simples.
        """
        from qgis.core import QgsVectorLayerSimpleLabeling

        if isinstance(labels, QgsVectorLayerSimpleLabeling):
            return {"--SINGLE--RULE--": None} if "--SINGLE--RULE--" in jsonProviders else {}

        # Leaves (rules sem filhos) são os alvos efetivos de labeling.
        # Wrappers top-level tipo "Visível" apenas filtram visibilidade e não
        # carregam máscaras na prática.
        leaves = [r for r in _iterAllRules(labels.rootRule()) if not r.children()]
        descToKey = {r.description(): r.ruleKey() for r in leaves}

        assignment = {}
        unmatched = []
        usedKeys = set()
        for p in jsonProviders:
            if p == "--SINGLE--RULE--":
                continue
            k = descToKey.get(p)
            if k is not None and k not in usedKeys:
                assignment[p] = k
                usedKeys.add(k)
            else:
                unmatched.append(p)

        remaining = [r for r in leaves if r.ruleKey() not in usedKeys]
        if unmatched and remaining:
            if len(unmatched) == len(remaining):
                for p, r in zip(unmatched, remaining):
                    assignment[p] = r.ruleKey()
                    feedback.pushInfo(
                        f"[máscaras] {layerName}: '{p}' mapeado por ordem → rule '{r.description() or '(sem descrição)'}'."
                    )
            elif len(remaining) == 1:
                for p in unmatched:
                    assignment[p] = remaining[0].ruleKey()
                    feedback.pushInfo(
                        f"[máscaras] {layerName}: '{p}' mapeado para a única folha restante."
                    )
        return assignment

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return LoadMasks()

    def name(self):
        return "loadmasks"

    def displayName(self):
        return self.tr("Carregar máscaras")

    def group(self):
        return self.tr("Auxiliar")

    def groupId(self):
        return "auxiliar"

    def shortHelpString(self):
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return help().helpUrl(self.name())
