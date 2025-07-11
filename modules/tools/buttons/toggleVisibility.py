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
from pathlib import Path
from .baseTools import BaseTools
from qgis.core import QgsFeatureRenderer, QgsProject, QgsRuleBasedRenderer
from qgis.utils import iface


class ToggleVisibility(BaseTools):
    def __init__(self, iface, toolBar) -> None:
        super().__init__()
        self.toolBar = toolBar
        self.iface = iface

    def setupUi(self):
        buttonImg = Path(__file__).parent / "icons" / "Alternar_estilo_nao_visivel.png"
        self._action = self.createAction(
            "Alternar estilo 'Não visível'",
            buttonImg,
            self.run,
            self.tr("Alterna o estilo 'Não visível'"),
            self.tr("Alterna o estilo 'Não visível'"),
            self.iface,
        )
        self.toolBar.addAction(self._action)
        self.iface.registerMainWindowAction(self._action, "")
        self.toggle_visibility_pressed = False

    def run(self):
        project = QgsProject.instance()
        layers = project.mapLayers().values()
        styleLabel = "Não visível"  # nome do estilo a ser alterado
        for layer in layers:
            sym_rend = layer.renderer()
            if not (
                isinstance(sym_rend, QgsRuleBasedRenderer)
                or isinstance(sym_rend, QgsFeatureRenderer)
            ):
                continue
            lgd_syms = sym_rend.legendSymbolItems()
            for lgd_sym in lgd_syms:
                lbl = lgd_sym.label()
                if lbl == styleLabel:
                    key = lgd_sym.ruleKey()
                    sym_rend.checkLegendSymbolItem(key, self.toggle_visibility_pressed)
            iface.layerTreeView().refreshLayerSymbology(layer.id())
        self.toggle_visibility_pressed = not self.toggle_visibility_pressed
        iface.mapCanvas().refreshAllLayers()
