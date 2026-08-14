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

from qgis.core import QgsApplication
from qgis.PyQt.QtGui import QAction, QFont
from qgis.PyQt.QtWidgets import QDialog, QDialogButtonBox, QPlainTextEdit, QVBoxLayout

from .baseTools import BaseTools


class ShowFeatureSources(BaseTools):
    def __init__(self, toolBar, iface) -> None:
        self.toolBar = toolBar
        self.iface = iface

    def setupUi(self):
        icon = QgsApplication.getThemeIcon("mActionIdentify.svg")
        self._action = QAction(icon, self.tr("Mostrar Fontes"), self.iface.mainWindow())
        self._action.triggered.connect(self.run)
        self._action.setWhatsThis(
            self.tr('Exibe o conteúdo do atributo "fontes" das feições selecionadas')
        )
        self._action.setStatusTip(
            self.tr('Exibe o conteúdo do atributo "fontes" das feições selecionadas')
        )
        self.toolBar.addAction(self._action)
        self.iface.registerMainWindowAction(self._action, "")

    def run(self):
        layer = self.iface.activeLayer()
        if not layer:
            self.displayErrorMessage(self.tr("Não há camada selecionada"))
            return
        if layer.fields().lookupField("fontes") == -1:
            self.displayErrorMessage(
                self.tr('A camada selecionada não possui o atributo "fontes"')
            )
            return
        if layer.selectedFeatureCount() == 0:
            self.displayErrorMessage(self.tr("Não há feições selecionadas"))
            return

        sections = [
            self._formatFeatureSources(feat.id(), feat.attribute("fontes"))
            for feat in layer.getSelectedFeatures()
        ]
        self._showDialog("\n\n".join(sections))

    def _formatFeatureSources(self, featId, raw):
        header = self.tr(f"Feição {featId}")
        separator = "-" * len(header)
        if not raw:
            return f"{header}\n{separator}\n{self.tr('Sem fontes cadastradas.')}"
        try:
            data = json.loads(raw)
        except (TypeError, ValueError):
            return f"{header}\n{separator}\n{raw}"
        if not data:
            return f"{header}\n{separator}\n{self.tr('Sem fontes cadastradas.')}"
        pretty = json.dumps(data, ensure_ascii=False, indent=2)
        return f"{header}\n{separator}\n{pretty}"

    def _showDialog(self, text):
        dialog = QDialog(self.iface.mainWindow())
        dialog.setWindowTitle(self.tr("Fontes da Feição"))
        dialog.resize(560, 480)

        layout = QVBoxLayout(dialog)
        textEdit = QPlainTextEdit(dialog)
        textEdit.setReadOnly(True)
        textEdit.setFont(QFont("Consolas", 9))
        textEdit.setPlainText(text)
        layout.addWidget(textEdit)

        buttonBox = QDialogButtonBox(QDialogButtonBox.StandardButton.Close, dialog)
        buttonBox.rejected.connect(dialog.reject)
        buttonBox.accepted.connect(dialog.accept)
        layout.addWidget(buttonBox)

        dialog.exec()
