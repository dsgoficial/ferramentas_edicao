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
        if iface and isinstance(iface, QgisInterface):
            self.iface = iface
            self.toolBar = iface.addToolBar('ferramentas_edicao')

    def initToolBar(self):
        cycleVisibilityTool = CycleVisibility(self.toolBar, self.iface)
        cycleVisibilityTool.initButton()
        cycleTextJustificationButton = CycleTextJustification(self.toolBar, self.iface)
        cycleTextJustificationButton.initButton()
        copyToGenericLabel = CopyToGenericLabel(self.toolBar, self.iface)
        copyToGenericLabel.initButton()
        cycleLabelPosition = CycleLabelPosition(self.toolBar, self.iface)
        cycleLabelPosition.initButton()

    def unload(self):
        self.iface.mainWindow().removeToolBar(self.toolBar)
