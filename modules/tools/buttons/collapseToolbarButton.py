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
from qgis.PyQt.QtWidgets import QWidget
from qgis.PyQt.QtGui import QIcon, QAction
from qgis.core import QgsExpressionContextUtils, QgsProject
import json
from pathlib import Path
from .baseTools import BaseTools


class CollapseToolbarButton(BaseTools):
    def __init__(self, toolBar, iface):
        super().__init__()
        self.toolBar = toolBar
        self.iface = iface
        self._action = None
        self.visible_actions = []
        self.essential_actions = (
            []
        )  # Actions (like main button and help button) that should remain visible
        self.initializing = True  # Flag to prevent saving during initialization
        self.setupUi()
        self.toggleToolbar(checked=True)

    def setupUi(self):
        # Create the collapse button action using your pattern
        buttonImg = str(Path(__file__).parent / "icons" / "collapse.png")
        self._action = self.createAction(
            "Expandir/Colapsar Barra",
            buttonImg,
            self.toggleToolbar,
            self.tr("Expandir/Colapsar a barra de ferramentas"),
            self.tr("Expandir/Colapsar a barra de ferramentas"),
            self.iface,
        )
        self._action.setCheckable(True)
        self._action.setChecked(False)

        # Store the first two actions (main button and help button) as essential
        all_actions = self.toolBar.actions()
        if len(all_actions) >= 2:
            self.essential_actions = all_actions[
                :2
            ]  # First two actions will always be visible

    def toggleToolbar(self, checked=None):
        """Toggle the visibility of non-essential toolbar actions and widgets."""

        try:
            actions = self.toolBar.actions()
        except RuntimeError:
            # A QToolBar já foi destruída pelo QGIS.
            return

        for action in actions:
            if (action in self.essential_actions) or (action == self._action):
                continue

            try:
                action.setVisible(checked)
            except RuntimeError:
                # A QAction também pode ter sido destruída durante reload/unload.
                continue

    def saveStateToProject(self):
        """Save collapse state to project variables WITHOUT triggering a project save"""
        if self.initializing:
            return  # Skip saving during initialization

        state = {"collapsed": self._action.isChecked()}
        # Just set the variable - don't try to save the project
        QgsExpressionContextUtils.setProjectVariable(
            QgsProject.instance(),
            "ferramentas_edicao_collapse_state",
            json.dumps(state),
        )

    def loadStateFromProject(self):
        """Load collapse state from project variables."""
        self.initializing = True

        try:
            state_json = (
                QgsExpressionContextUtils.projectScope(
                    QgsProject.instance()
                ).variable(
                    "ferramentas_edicao_collapse_state"
                )
                or "{}"
            )

            state = json.loads(state_json)

            if "collapsed" in state:
                self.toggleToolbar(state["collapsed"])
            else:
                self.toggleToolbar(False)

        except (json.JSONDecodeError, TypeError, ValueError):
            # Estado salvo inválido: aplica o padrão.
            self.toggleToolbar(False)

        except RuntimeError:
            # A toolbar já foi destruída. Não há nada para restaurar.
            return

        finally:
            self.initializing = False
