from pathlib import Path

from PyQt5.QtWidgets import QButtonGroup, QActionGroup

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
        self.mapCanvas = iface.mapCanvas()
        self.tools = list()
        self.mapTools = list()
        self.mapToolsActions = list()

    def initToolBar(self):
        mapTypeSelector = MapTypeSelector(self.iface, self.toolBar)
        mapTypeSelector.setupUi()
        scaleSelector = ScaleSelector(self.iface, self.toolBar)
        scaleSelector.setupUi()
        cycleVisibilityButton = CycleVisibility(self.toolBar, self.iface)
        cycleVisibilityButton.setupUi()
        cycleTextJustificationButton = CycleTextJustification(self.toolBar, self.iface)
        cycleTextJustificationButton.setupUi()
        copyToGenericLabelButton = CopyToGenericLabel(self.toolBar, self.iface)
        copyToGenericLabelButton.setupUi()
        cycleLabelPositionButton = CycleLabelPosition(self.toolBar, self.iface)
        cycleLabelPositionButton.setupUi()
        createVegetationSymbol = CreateVegetationSymbol(self.iface, self.toolBar)
        createVegetationSymbol.setupUi()
        createRoadIdentifierSymbol = CreateRoadIdentifierSymbol(self.iface, self.toolBar, mapTypeSelector)
        createRoadIdentifierSymbol.setupUi()
        createLakeLabel = CreateLakeLabel(self.iface, self.toolBar, mapTypeSelector, scaleSelector)
        createLakeLabel.setupUi()
        createRiverLabel = CreateRiverLabel(self.iface, self.toolBar, mapTypeSelector, scaleSelector)
        createRiverLabel.setupUi()
        self.mapTools.extend([
            createVegetationSymbol,
            createRoadIdentifierSymbol,
            createLakeLabel,
            createRiverLabel
        ])
        self.mapToolsActions.extend([
            createVegetationSymbol._action,
            createRoadIdentifierSymbol._action,
            createLakeLabel._action,
            createRiverLabel._action
        ])
        self.tools.extend([
            mapTypeSelector,
            scaleSelector,
            cycleTextJustificationButton,
            copyToGenericLabelButton,
            cycleLabelPositionButton,
            cycleVisibilityButton,
            createVegetationSymbol,
            createRoadIdentifierSymbol,
            createLakeLabel,
            createRiverLabel
        ])
        self.actionGroup = self.setupActionGroup(*self.mapTools)

    def setupActionGroup(self, *tools):
        actionGroup = QActionGroup(self.iface.mainWindow())
        for tool in tools:
            actionGroup.addAction(tool._action)
        actionGroup.triggered.connect(self.setMapToolsOnTrigger)
        return actionGroup

    def setMapToolsOnTrigger(self, action):
        idx = self.mapToolsActions.index(action)
        if self.mapTools[idx].isActive():
            self.unsetMapToolsOnToggle(idx)
        else:
            self.mapCanvas.setMapTool(self.mapTools[idx])
            self.mapTools[idx].getLayers()

    def unsetMapToolsOnToggle(self, idx):
        self.mapCanvas.unsetMapTool(self.mapTools[idx])
        self.actionGroup.setExclusive(False)
        action = self.mapToolsActions[idx]
        action.setChecked(False)
        self.actionGroup.setExclusive(True)

    def setupButtonGroup(self, *tools):
        buttonGroup = QButtonGroup(self.iface.mainWindow())
        for idx, tool in enumerate(tools):
            buttonGroup.addButton(tool._button, idx)
        buttonGroup.idClicked.connect(self.setMapToolsOnToggle)
        return buttonGroup

    def setMapToolsOnToggle(self, idx):
        if self.mapTools[idx].isActive():
            self.unsetMapToolsOnToggleButton(idx)
        else:
            self.mapCanvas.setMapTool(self.mapTools[idx])
            self.mapTools[idx].getLayers()

    def unsetMapToolsOnToggleButton(self, idx):
        self.mapCanvas.unsetMapTool(self.mapTools[idx])
        self.buttonGroup.setExclusive(False)
        button = self.buttonGroup.button(idx)
        button.setChecked(False)
        self.buttonGroup.setExclusive(True)

    def unload(self):
        # TODO: unregisterMapToolHandler for MapTools
        self.toolBar.clear()
        self.iface.mainWindow().removeToolBar(self.toolBar)