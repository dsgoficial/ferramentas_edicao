from pathlib import Path

from PyQt5.QtWidgets import QButtonGroup, QActionGroup

from .buttons.productTypeSelector import ProductTypeSelector
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
from .buttons.createBorderLabel import CreateBorderLabel

class SetupButtons:

    def __init__(self, iface=None) -> None:
        self.iface = iface
        self.toolBar = iface.addToolBar('ferramentas_edicao')
        self.mapCanvas = iface.mapCanvas()
        self.tools = list()
        self.mapTools = list()
        self.mapToolsActions = list()

    def initToolBar(self):
        productTypeSelector = ProductTypeSelector(self.iface, self.toolBar)
        productTypeSelector.setupUi()
        
        mapTypeSelector = MapTypeSelector(self.iface, self.toolBar)
        mapTypeSelector.setupUi()
        scaleSelector = ScaleSelector(self.iface, self.toolBar)
        scaleSelector.setupUi()
        cycleVisibilityButton = CycleVisibility(self.toolBar, self.iface)
        cycleVisibilityButton.setupUi()
        cycleTextJustificationButton = CycleTextJustification(self.toolBar, self.iface)
        cycleTextJustificationButton.setupUi()
        copyToGenericLabelButton = CopyToGenericLabel(self.toolBar, self.iface, mapTypeSelector)
        copyToGenericLabelButton.setupUi()
        cycleLabelPositionButton = CycleLabelPosition(self.toolBar, self.iface, scaleSelector)
        cycleLabelPositionButton.setupUi()
        createVegetationSymbol = CreateVegetationSymbol(self.iface, self.toolBar, scaleSelector, productTypeSelector)
        createVegetationSymbol.setupUi()
        if not productTypeSelector.currentIndex() == 1:
            createVegetationSymbol._action.setEnabled(False)
        createRoadIdentifierSymbol = CreateRoadIdentifierSymbol(self.iface, self.toolBar, mapTypeSelector, scaleSelector)
        createRoadIdentifierSymbol.setupUi()
        createLakeLabel = CreateLakeLabel(self.iface, self.toolBar, mapTypeSelector, scaleSelector, productTypeSelector)
        createLakeLabel.setupUi()
        createRiverLabel = CreateRiverLabel(self.iface, self.toolBar, mapTypeSelector, scaleSelector, productTypeSelector)
        createRiverLabel.setupUi()
        createBorderLabel = CreateBorderLabel(self.iface, self.toolBar, mapTypeSelector, scaleSelector, productTypeSelector)
        createBorderLabel.setupUi()
        self.mapTools.extend([
            createVegetationSymbol,
            createRoadIdentifierSymbol,
            createLakeLabel,
            createRiverLabel,
            createBorderLabel
        ])
        self.mapToolsActions.extend([
            createVegetationSymbol._action,
            createRoadIdentifierSymbol._action,
            createLakeLabel._action,
            createRiverLabel._action,
            createBorderLabel._action
        ])
        self.tools.extend([
            productTypeSelector,
            mapTypeSelector,
            scaleSelector,
            cycleTextJustificationButton,
            copyToGenericLabelButton,
            cycleLabelPositionButton,
            cycleVisibilityButton,
            createVegetationSymbol,
            createRoadIdentifierSymbol,
            createLakeLabel,
            createRiverLabel,
            createBorderLabel
        ])
        self.actionGroup = self.setupActionGroup(*self.mapTools)
        productTypeSelector.currentIndexChanged.connect(lambda idx, compareIdx=[1], btn=createVegetationSymbol._action: self.disableAction(idx, compareIdx, btn))

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
            status = self.mapTools[idx].getLayers()
            if status is None:
                self.unsetMapToolsOnToggle(idx)

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
    
    def disableAction(self, idx, compareIdx, btn):
        if not idx in compareIdx:
            btn.setEnabled(False)
        else:
            btn.setEnabled(True)

    def unload(self):
        # TODO: unregisterMapToolHandler for MapTools
        self.toolBar.clear()
        self.iface.mainWindow().removeToolBar(self.toolBar)
