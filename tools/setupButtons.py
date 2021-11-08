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
        mapTypeSelector = MapTypeSelector(self.iface, self.toolBar)
        mapTypeSelector.setupUi()
        scaleSelector = ScaleSelector(self.iface, self.toolBar)
        scaleSelector.setupUi()
        cycleVisibilityButton = CycleVisibility(self.toolBar, self.iface)
        cycleVisibilityButton.initButton()
        cycleTextJustificationButton = CycleTextJustification(self.toolBar, self.iface)
        cycleTextJustificationButton.initButton()
        copyToGenericLabelButton = CopyToGenericLabel(self.toolBar, self.iface)
        copyToGenericLabelButton.initButton()
        cycleLabelPositionButton = CycleLabelPosition(self.toolBar, self.iface)
        cycleLabelPositionButton.initButton()
        createVegetationSymbol = CreateVegetationSymbol(self.iface, self.toolBar)
        createVegetationSymbol.setupUi()
        createRoadIdentifierSymbol = CreateRoadIdentifierSymbol(self.iface, self.toolBar, mapTypeSelector)
        createRoadIdentifierSymbol.setupUi()
        createLakeLabel = CreateLakeLabel(self.iface, self.toolBar, mapTypeSelector, scaleSelector)
        createLakeLabel.setupUi()
        createRiverLabel = CreateRiverLabel(self.iface, self.toolBar, mapTypeSelector, scaleSelector)
        createRiverLabel.setupUi()
        self.tools.extend([
            mapTypeSelector,
            scaleSelector,
            cycleTextJustificationButton,
            copyToGenericLabelButton,
            cycleLabelPositionButton,
            createVegetationSymbol,
            createRoadIdentifierSymbol,
            createLakeLabel,
            createRiverLabel
        ])

    def unload(self):
        # TODO: unregisterMapToolHandler for MapTools
        self.toolBar.clear()
        self.iface.mainWindow().removeToolBar(self.toolBar)
        self.actions = list()
