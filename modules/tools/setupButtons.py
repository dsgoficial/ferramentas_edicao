import json
from pathlib import Path

from PyQt5.QtWidgets import QButtonGroup, QActionGroup
from PyQt5.QtCore import QTimer
from qgis.core import QgsExpressionContextUtils, QgsProject

from .buttons.productTypeSelector import ProductTypeSelector
from .buttons.scaleSelector import ScaleSelector
from .buttons.collapseToolbarButton import CollapseToolbarButton
from .buttons.cycleVisibility import CycleVisibility
from .buttons.cycleTextJustification import CycleTextJustification
from .buttons.copyToGenericLabel import CopyToGenericLabel
from .buttons.cycleLabelPosition import CycleLabelPosition
from .buttons.alternateTextVisibility import AlternateTextVisibility
from .buttons.createVegetationSymbol import CreateVegetationSymbol
from .buttons.createRoadIdentifierSymbol import CreateRoadIdentifierSymbol
from .buttons.createLakeLabel import CreateLakeLabel
from .buttons.copySugestedLabel import CopySugestedLabel
from .buttons.createRiverLabel import CreateRiverLabel
from .buttons.drawFlowDirection import DrawFlowDirection
from .buttons.createBorderLabel import CreateBorderLabel
from .buttons.addNewLineCharToAttribute import AddNewLineCharToAttribute
from .buttons.createMasterElevationTextValue import CreateMasterElevationTextValue
from .buttons.createRoadLabel import CreateRoadLabel
from .buttons.createApproximateLabel import CreateAproximateLabel
from .buttons.alternateBuildingFlag import AlternateBuildingFlag
from .buttons.cycleSideVisibility import CycleSideVisibility
from .buttons.cycleTipVisibility import CycleTipVisibility
from .buttons.toggleVisibility import ToggleVisibility


class SetupButtons:
    def __init__(self, toolbar, iface=None) -> None:
        self.iface = iface
        self.toolBar = toolbar
        self.mapCanvas = iface.mapCanvas()
        self.tools = list()
        self.mapTools = list()
        self.mapToolsActions = list()
        self.collapseButton = None
        self.initializing = True  # Flag to prevent saving during initialization
        QgsProject.instance().projectSaved.connect(self.saveStateOnProject)
        self.iface.projectRead.connect(self.loadStateFromProject)

    def initToolBar(self):
        # First create the ProductTypeSelector
        productTypeSelector = ProductTypeSelector(self.iface, self.toolBar)
        productTypeSelector.setupUi()

        # Then create the ScaleSelector
        scaleSelector = ScaleSelector(self.iface, self.toolBar)
        scaleSelector.setupUi()

        # Now create the collapse button AFTER the first two buttons
        # but BEFORE all other widgets/buttons
        self.collapseButton = CollapseToolbarButton(self.toolBar, self.iface)
        self.collapseButton.setupUi()

        # Insert the collapse button as the THIRD button in the toolbar
        all_actions = self.toolBar.actions()
        if len(all_actions) >= 2:
            # Insert after the second button
            self.toolBar.insertAction(
                all_actions[2] if len(all_actions) > 2 else None,
                self.collapseButton._action,
            )

        # Create all other buttons as normal
        cycleVisibilityButton = CycleVisibility(self.toolBar, self.iface)
        cycleVisibilityButton.setupUi()

        cycleTextJustificationButton = CycleTextJustification(self.toolBar, self.iface)
        cycleTextJustificationButton.setupUi()

        copySugestedLabelButton = CopySugestedLabel(
            self.iface, self.toolBar, productTypeSelector, scaleSelector
        )
        copySugestedLabelButton.setupUi()

        copyToGenericLabelButton = CopyToGenericLabel(self.toolBar, self.iface)
        copyToGenericLabelButton.setupUi()

        cycleLabelPositionButton = CycleLabelPosition(
            self.toolBar, self.iface, scaleSelector
        )
        cycleLabelPositionButton.setupUi()

        createMasterElevationTextValueTool = CreateMasterElevationTextValue(
            iface=self.iface,
            toolBar=self.toolBar,
            scaleSelector=scaleSelector,
            productTypeSelector=productTypeSelector,
        )
        createMasterElevationTextValueTool.setupUi()

        alternateTextVisibilityButton = AlternateTextVisibility(
            self.toolBar, self.iface
        )
        alternateTextVisibilityButton.setupUi()

        addNewLineButton = AddNewLineCharToAttribute(self.toolBar, self.iface)
        addNewLineButton.setupUi()

        createVegetationSymbol = CreateVegetationSymbol(
            self.iface, self.toolBar, scaleSelector, productTypeSelector
        )
        createVegetationSymbol.setupUi()

        if not productTypeSelector.currentIndex() == 1:
            createVegetationSymbol._action.setEnabled(False)

        createRoadIdentifierSymbol = CreateRoadIdentifierSymbol(
            self.iface, self.toolBar, scaleSelector
        )
        createRoadIdentifierSymbol.setupUi()

        createLakeLabel = CreateLakeLabel(
            self.iface, self.toolBar, scaleSelector, productTypeSelector
        )
        createLakeLabel.setupUi()

        createRiverLabel = CreateRiverLabel(
            self.iface, self.toolBar, scaleSelector, productTypeSelector
        )
        createRiverLabel.setupUi()

        drawFlowDirection = DrawFlowDirection(
            self.iface, self.toolBar, scaleSelector, productTypeSelector
        )
        drawFlowDirection.setupUi()

        if not productTypeSelector.currentIndex() == 1:
            drawFlowDirection._action.setEnabled(False)

        createBorderLabel = CreateBorderLabel(
            self.iface, self.toolBar, scaleSelector, productTypeSelector
        )
        createBorderLabel.setupUi()

        createRoadLabel = CreateRoadLabel(
            self.iface, self.toolBar, scaleSelector, productTypeSelector
        )
        createRoadLabel.setupUi()

        createAproximateLabel = CreateAproximateLabel(
            self.iface, self.toolBar, scaleSelector, productTypeSelector
        )
        createAproximateLabel.setupUi()

        alternateBuildingFlag = AlternateBuildingFlag(self.iface, self.toolBar)
        alternateBuildingFlag.setupUi()

        cycleSideVisibilityButton = CycleSideVisibility(self.toolBar, self.iface)
        cycleSideVisibilityButton.setupUi()

        cycleTipVisibilityButton = CycleTipVisibility(self.toolBar, self.iface)
        cycleTipVisibilityButton.setupUi()

        createToogleVisibility = ToggleVisibility(self.iface, self.toolBar)
        createToogleVisibility.setupUi()

        # Add tools to the appropriate lists
        self.mapTools.extend(
            [
                createVegetationSymbol,
                createRoadIdentifierSymbol,
                createLakeLabel,
                copySugestedLabelButton,
                createRiverLabel,
                drawFlowDirection,
                createBorderLabel,
                createMasterElevationTextValueTool,
                createRoadLabel,
                createAproximateLabel,
            ]
        )

        self.mapToolsActions.extend(
            [
                createVegetationSymbol._action,
                createRoadIdentifierSymbol._action,
                createLakeLabel._action,
                copySugestedLabelButton._action,
                createRiverLabel._action,
                drawFlowDirection._action,
                createBorderLabel._action,
                createMasterElevationTextValueTool._action,
                createRoadLabel._action,
                createAproximateLabel._action,
            ]
        )

        self.tools.extend(
            [
                self.collapseButton,
                productTypeSelector,
                scaleSelector,
                cycleTextJustificationButton,
                copyToGenericLabelButton,
                cycleLabelPositionButton,
                alternateTextVisibilityButton,
                cycleVisibilityButton,
                createVegetationSymbol,
                createRoadIdentifierSymbol,
                createLakeLabel,
                copySugestedLabelButton,
                createRiverLabel,
                drawFlowDirection,
                createBorderLabel,
                addNewLineButton,
                createRoadLabel,
                createAproximateLabel,
                alternateBuildingFlag,
                cycleSideVisibilityButton,
                cycleTipVisibilityButton,
                createToogleVisibility,
            ]
        )

        self.actionGroup = self.setupActionGroup(*self.mapTools)

        productTypeSelector.currentIndexChanged.connect(
            lambda idx, compareIdx=[
                1
            ], btn=createVegetationSymbol._action: self.disableAction(
                idx, compareIdx, btn
            )
        )

        productTypeSelector.currentIndexChanged.connect(
            lambda idx, compareIdx=[
                1
            ], btn=alternateBuildingFlag._action: self.disableAction(
                idx, compareIdx, btn
            )
        )

        productTypeSelector.currentIndexChanged.connect(
            lambda idx, compareIdx=[
                1
            ], btn=drawFlowDirection._action: self.disableAction(idx, compareIdx, btn)
        )

        # Apply the initial collapsed state or load from saved state
        # Use a small delay to ensure all widgets are properly initialized
        QTimer.singleShot(100, self.finishInitialization)

    def finishInitialization(self):
        """Complete initialization after a short delay"""
        # Apply the initial state
        self.collapseButton.loadStateFromProject()
        # Mark initialization as complete
        self.initializing = False

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
        QgsProject.instance().projectSaved.disconnect(self.saveStateOnProject)
        self.iface.projectRead.disconnect(self.loadStateFromProject)
        self.toolBar.clear()
        self.iface.mainWindow().removeToolBar(self.toolBar)

    def saveStateOnProject(self):
        """Save toolbar state to project variables WITHOUT triggering a project save"""
        # Skip saving during initialization
        if self.initializing:
            return

        comboBoxesStateDict = {
            i.__class__.__name__: i.currentIndex()
            for i in self.toolBar.children()
            if i.__class__.__name__ in ["ScaleSelector", "ProductTypeSelector"]
        }
        # Just set the variable - don't try to save the project
        QgsExpressionContextUtils.setProjectVariable(
            QgsProject.instance(),
            "ferramentas_edicao_state",
            json.dumps(comboBoxesStateDict),
        )
        # The following lines have been removed to prevent triggering a project save:
        # QgsProject.instance().projectSaved.disconnect(self.saveStateOnProject)
        # QgsProject.instance().write()
        # QgsProject.instance().projectSaved.connect(self.saveStateOnProject)

    def loadStateFromProject(self):
        """Load saved state from project"""
        # Mark as initializing to prevent save during state recovery
        self.initializing = True

        state = json.loads(
            QgsExpressionContextUtils.projectScope(QgsProject.instance()).variable(
                "ferramentas_edicao_state"
            )
            or "{}"
        )
        if state == {}:
            self.initializing = False
            return

        comboBoxesDict = {
            i.__class__.__name__: i
            for i in self.toolBar.children()
            if i.__class__.__name__ in ["ScaleSelector", "ProductTypeSelector"]
        }
        for comboBoxName, idx in state.items():
            if comboBoxName in comboBoxesDict:
                comboBoxesDict[comboBoxName].setCurrentIndex(idx)

        # Allow a short delay before enabling state saving
        QTimer.singleShot(100, lambda: setattr(self, "initializing", False))
