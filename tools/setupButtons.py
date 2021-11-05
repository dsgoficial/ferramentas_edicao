from pathlib import Path

from PyQt5.QtWidgets import QAction, QHBoxLayout
from PyQt5.QtGui import QIcon

from qgis.gui import QgisInterface

from .buttons.mapTypeSelector import MapTypeSelector
from .buttons.scaleSelector import ScaleSelector
from .buttons.cycleVisibility import CycleVisibility
from .buttons.cycleTextJustification import CycleTextJustification
from .buttons.copyToGenericLabel import CopyToGenericLabel
from .buttons.cycleLabelPosition import CycleLabelPosition
from .buttons.createVegetationSymbol import CreateVegetationSymbol
from .buttons.createRoadIdentifierSymbol import CreateRoadIdentifierSymbol
from .buttons.createLakeLabel import CreateLakeLabel
from .buttons.createRiverLabel import CreateRiverLabel

class SetupButtons:

    def __init__(self, iface=None) -> None:
        self.iface = iface
        self.toolBar = iface.addToolBar('ferramentas_edicao')
        self.tools = list()

    def initToolBar(self):
        self.mapTypeSelector = MapTypeSelector(self.iface, self.toolBar)
        self.mapTypeSelector.setupUi()
        self.scaleSelector = ScaleSelector(self.iface, self.toolBar)
        self.scaleSelector.setupUi()
        self.cycleVisibilityButton = CycleVisibility(self.toolBar, self.iface)
        self.cycleVisibilityButton.initButton()
        self.cycleTextJustificationButton = CycleTextJustification(self.toolBar, self.iface)
        self.cycleTextJustificationButton.initButton()
        self.copyToGenericLabelButton = CopyToGenericLabel(self.toolBar, self.iface)
        self.copyToGenericLabelButton.initButton()
        self.cycleLabelPositionButton = CycleLabelPosition(self.toolBar, self.iface)
        self.cycleLabelPositionButton.initButton()
        self.createVegetationSymbol = CreateVegetationSymbol(self.iface, self.toolBar)
        self.createVegetationSymbol.setupUi()
        self.createVegetationSymbol = CreateRoadIdentifierSymbol(self.iface, self.toolBar, self.mapTypeSelector)
        self.createVegetationSymbol.setupUi()
        self.createLakeLabel = CreateLakeLabel(self.iface, self.toolBar, self.mapTypeSelector, self.scaleSelector)
        self.createLakeLabel.setupUi()
        self.createRiverLabel = CreateRiverLabel(self.iface, self.toolBar, self.mapTypeSelector, self.scaleSelector)
        self.createRiverLabel.setupUi()

    def unload(self):
        self.iface.mainWindow().removeToolBar(self.toolBar)
        del self.cycleVisibilityButton
        del self.cycleTextJustificationButton
        del self.copyToGenericLabelButton
        del self.cycleLabelPositionButton
        del self.toolBar
