from pathlib import Path

from PyQt5.QtWidgets import QAction
from PyQt5.QtGui import QIcon

from qgis.gui import QgisInterface

from .buttons.cycleVisibility import CycleVisibility
from .buttons.cycleTextJustification import CycleTextJustification
from .buttons.copyToGenericLabel import CopyToGenericLabel
from .buttons.cycleLabelPosition import CycleLabelPosition


class SetupButtons:

    def __init__(self, iface=None) -> None:
        self.iface = iface
        self.toolBar = iface.addToolBar('ferramentas_edicao')

    def initToolBar(self):
        self.cycleVisibilityButton = CycleVisibility(self.toolBar, self.iface)
        self.cycleVisibilityButton.initButton()
        self.cycleTextJustificationButton = CycleTextJustification(self.toolBar, self.iface)
        self.cycleTextJustificationButton.initButton()
        self.copyToGenericLabelButton = CopyToGenericLabel(self.toolBar, self.iface)
        self.copyToGenericLabelButton.initButton()
        self.cycleLabelPositionButton = CycleLabelPosition(self.toolBar, self.iface)
        self.cycleLabelPositionButton.initButton()

    def unload(self):
        self.iface.mainWindow().removeToolBar(self.toolBar)
        del self.cycleVisibilityButton
        del self.cycleTextJustificationButton
        del self.copyToGenericLabelButton
        del self.cycleLabelPositionButton
        del self.toolBar
