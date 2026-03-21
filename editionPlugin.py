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
import os

from pathlib import Path

from qgis.PyQt.QtCore import QCoreApplication, QSettings, QTranslator
from qgis.PyQt.QtGui import QIcon, QAction
from qgis.PyQt.QtWidgets import QMessageBox

from qgis.core import QgsFontUtils
from qgis.utils import active_plugins

from .config.configDefaults import ConfigDefaults
from .controllers.mapBuilderController import MapBuildController
from .modules.processings.pluginProvider import ProcessingProvider
from .modules.tools.setupButtons import SetupButtons
from .resources.dialogs.editionPluginDialog import EditionPluginDialog
from .modules.expressionFunctions import loadExpressionFunctions
from .modules.fontInstaller import install_fonts
from .modules.helpBrowser import HelpBrowser


class EditionPlugin:
    """QGIS Plugin Implementation."""

    def __init__(self, iface):
        self.iface = iface
        self.debugMode = (Path(__file__).parent / ".env").exists()
        self.plugin_dir = os.path.dirname(__file__)

        locale = QSettings().value("locale/userLocale")[0:2]
        locale_path = os.path.join(
            self.plugin_dir, "i18n", "EditionPlugin_{}.qm".format(locale)
        )
        if os.path.exists(locale_path):
            self.translator = QTranslator()
            self.translator.load(locale_path)
            QCoreApplication.installTranslator(self.translator)

        self.actions = []
        self.menu = self.tr("&Ferramentas de Edição")
        self.firstStart = None
        self.helpBrowser = HelpBrowser(iface, self.plugin_dir)

    def tr(self, message):
        return QCoreApplication.translate("FerramentasEdicao", message)

    def add_action(
        self,
        icon_path,
        text,
        callback,
        enabled_flag=True,
        add_to_menu=True,
        add_to_toolbar=True,
        status_tip=None,
        whats_this=None,
        parent=None,
        parentToolbar=None,
    ):
        icon = QIcon(icon_path)
        action = QAction(icon, text, parent)
        action.triggered.connect(callback)
        action.setEnabled(enabled_flag)

        if status_tip is not None:
            action.setStatusTip(status_tip)
        if whats_this is not None:
            action.setWhatsThis(whats_this)
        if add_to_toolbar:
            self.iface.addToolBarIcon(action)
        if add_to_menu:
            self.iface.addPluginToMenu(self.menu, action)
        if parentToolbar:
            parentToolbar.addAction(action)

        self.actions.append(action)
        return action

    def initGui(self):
        self.firstStart = True
        self.toolBar = self.iface.addToolBar("ferramentas_edicao")
        self.toolBar.setObjectName("ferramentas_edicao")

        icon_path = Path(__file__).parent / "icon.png"
        self.add_action(
            str(icon_path),
            text=self.tr("Ferramentas de Edição: Exportar produtos"),
            callback=self.run,
            parentToolbar=self.toolBar,
            add_to_toolbar=False,
        )

        help_icon_path = (
            Path(__file__).parent / "Help" / "button" / "icons" / "icon2.png"
        )
        self.add_action(
            str(help_icon_path),
            text=self.tr("Clique aqui para obter ajuda"),
            callback=self.helpBrowser.show,
            parentToolbar=self.toolBar,
            add_to_toolbar=False,
        )

        self.add_action(
            icon_path="",
            text=self.tr("Instalar Fontes Noto Sans"),
            callback=lambda: install_fonts(self.plugin_dir, self.iface.mainWindow()),
            add_to_menu=False,
            add_to_toolbar=False,
        )

        self.tools = SetupButtons(toolbar=self.toolBar, iface=self.iface)
        self.tools.initToolBar()
        self.processingProvider = ProcessingProvider()
        self.processingProvider.initProcessing()
        loadExpressionFunctions()

    def unload(self):
        if hasattr(self, "tools"):
            self.tools.unload()
        if hasattr(self, "controller"):
            self.controller.unload()
        if hasattr(self, "processingProvider"):
            self.processingProvider.unload()
        if hasattr(self, "dlg"):
            self.dlg.close()
        for action in self.actions:
            self.iface.removePluginMenu(self.tr("&Ferramentas de Edição"), action)
            self.iface.removeToolBarIcon(action)

    def initialize(self):
        locale = QSettings().value("locale/userLocale")[0:2]
        if "en" not in locale:
            QMessageBox.warning(
                self.iface.mainWindow(),
                "Erro",
                "O idioma do QGIS deve estar em inglês para que as fontes sejam atribuídas corretamente. "
                "Mude o idioma do QGIS em Configurações > Opções > Geral, reinicie o QGIS e tente novamente.",
            )
            return
        fontsInstalled, errorMsg = self.fontsAreInstalled()
        if not fontsInstalled:
            QMessageBox.warning(
                self.iface.mainWindow(),
                "Erro",
                f"Erro na instalação das fontes: {errorMsg}.\n"
                "Feche o QGIS, corrija a instalação, reinicie o QGIS e tente novamente.",
            )
            return
        if "grassprovider" not in active_plugins:
            QMessageBox.warning(
                self.iface.mainWindow(),
                "Erro",
                "Erro no grass plugin. Ative o plugin e tente novamente.",
            )
            return
        if "DsgTools" not in active_plugins:
            QMessageBox.warning(
                self.iface.mainWindow(),
                "Erro",
                "Erro no DsgTools. Ative o plugin e tente novamente.",
            )
            return

        if not self.firstStart:
            return
        self.firstStart = False
        self.dlg = EditionPluginDialog()
        self.controller = MapBuildController(self.dlg, self.iface, ConfigDefaults())
        self.dlg.pushButton.clicked.connect(self.controller.run)
        if not self.debugMode:
            return
        env_dict = self.loadEnv()
        self.dlg.jsonConfigs.setFilePath(
            env_dict.get(
                "jsonConfigs",
                "C:\\Users\\eliton\\Documents\\edicao\\json_test\\om\\om1.json",
            )
        )
        self.dlg.exportFolder.setFilePath(env_dict.get("exportFolder", "D:\\export"))
        self.dlg.jsonConfigs.setFilter("JSON (*.json)")
        username = env_dict.get("username", None)
        if username is not None:
            self.dlg.username.setText(username)
        password = env_dict.get("password", None)
        if password is not None:
            self.dlg.password.setText(password)

    def loadEnv(self):
        with open(Path(__file__).parent / ".env") as f:
            return json.loads(f.read())

    def fontsAreInstalled(self):
        fontUtils = QgsFontUtils()
        if not fontUtils.fontFamilyOnSystem("Noto Sans"):
            return False, "A fonte Noto Sans não está instalada no sistema."
        # Qt6 pode registrar variantes Light/Condensed Light como famílias
        # separadas ao invés de estilos de "Noto Sans". Para cada estilo,
        # verifica primeiro como estilo e depois como família alternativa.
        fontChecks = [
            ("Regular", None),
            ("Bold", None),
            ("Bold Italic", None),
            ("Italic", None),
            ("Condensed", "Noto Sans Cond"),
            ("Condensed Bold", "Noto Sans Cond"),
            ("Condensed Bold Italic", "Noto Sans Cond"),
            ("Condensed Italic", "Noto Sans Cond"),
            ("Light", "Noto Sans Light"),
            ("Light Italic", "Noto Sans Light"),
            ("Condensed Light", "Noto Sans Condensed Light"),
            ("Condensed Light Italic", "Noto Sans Condensed Light"),
        ]
        missing = []
        for style, altFamily in fontChecks:
            if fontUtils.fontFamilyHasStyle("Noto Sans", style):
                continue
            if altFamily and fontUtils.fontFamilyOnSystem(altFamily):
                continue
            missing.append(style)
        if missing:
            return False, ", ".join(missing)
        return True, ""

    def run(self):
        self.initialize()
        if not hasattr(self, "dlg"):
            return
        self.dlg.show()
        self.dlg.exec()
