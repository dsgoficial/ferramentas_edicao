from PyQt5.QtWidgets import QAction, QWidget
from PyQt5.QtGui import QIcon
from qgis.core import QgsExpressionContextUtils, QgsProject
import json
from pathlib import Path
from .baseTools import BaseTools


class CollapseToolbarButton(BaseTools):
    def __init__(self, toolBar, iface, essential_widget_names=None):
        super().__init__()
        self.toolBar = toolBar
        self.iface = iface
        self._action = None
        self.collapsed = False  # Default to collapsed state
        self.visible_actions = []
        self.essential_widget_names = (
            essential_widget_names if essential_widget_names is not None else []
        )  # Widget types that should always be visible
        self.essential_actions = (
            []
        )  # Actions (like main button and help button) that should remain visible
        self.initializing = True  # Flag to prevent saving during initialization
        self.setEssentialWidgetTypes(self.essential_widget_names)
        self.setupUi()
        self.toggleToolbar(checked=False)

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
        self._action.setChecked(False)  # Start in checked (collapsed) state

        # Store the first two actions (main button and help button) as essential
        all_actions = self.toolBar.actions()
        if len(all_actions) >= 2:
            self.essential_actions = all_actions[
                :2
            ]  # First two actions will always be visible

    def setEssentialWidgetTypes(self, widget_names):
        """Set the widget class names that should always remain visible"""
        self.essential_widget_names = widget_names

    def toggleToolbar(self, checked=None):
        """Toggle the visibility of non-essential toolbar actions and widgets"""
        # Update the collapsed state
        if checked is None:
            self.collapsed = not self.collapsed
            self._action.setChecked(self.collapsed)
        else:
            self.collapsed = checked
            self._action.setChecked(self.collapsed)

        # Fix the selector visibility - show when expanded, hide when collapsed
        for widget in self.toolBar.children():
            if isinstance(widget, QWidget) and widget.__class__.__name__ in [
                "ScaleSelector",
                "ProductTypeSelector",
            ]:
                widget.setVisible(
                    not self.collapsed
                )  # Show when not collapsed, hide when collapsed

        # Fix the main logic - hide when collapsed, show when expanded
        if not self.collapsed:  # When collapsed
            # Save and hide non-essential actions
            self.visible_actions = []

            # Handle QActions in the toolbar
            for action in self.toolBar.actions():
                # Skip if this action is essential (first 2 buttons or collapse button)
                if (action in self.essential_actions) or (action == self._action):
                    continue

                # Check if this action's widget is essential
                widget = self.toolBar.widgetForAction(action)
                is_essential = False

                if widget:
                    widget_class_name = widget.__class__.__name__
                    if widget_class_name in self.essential_widget_names:
                        is_essential = True

                # If not essential and currently visible, hide it
                if not is_essential and action.isVisible():
                    self.visible_actions.append(action)
                    action.setVisible(False)
        else:  # When expanded
            # Restore visibility
            for action in self.visible_actions:
                action.setVisible(True)
            self.visible_actions = []

    def saveStateToProject(self):
        """Save collapse state to project variables WITHOUT triggering a project save"""
        if self.initializing:
            return  # Skip saving during initialization

        state = {"collapsed": self.collapsed}
        # Just set the variable - don't try to save the project
        QgsExpressionContextUtils.setProjectVariable(
            QgsProject.instance(),
            "ferramentas_edicao_collapse_state",
            json.dumps(state),
        )

    def loadStateFromProject(self):
        """Load collapse state from project variables"""
        self.initializing = True  # Set flag to prevent saving during initialization

        state_json = (
            QgsExpressionContextUtils.projectScope(QgsProject.instance()).variable(
                "ferramentas_edicao_collapse_state"
            )
            or "{}"
        )

        try:
            state = json.loads(state_json)
            if "collapsed" in state:
                # Apply the saved collapsed state
                self.toggleToolbar(state["collapsed"])
            else:
                # If no saved state, apply the default (collapsed)
                self.toggleToolbar(self.collapsed)
        except:
            # If there's any error loading state, apply the default (collapsed)
            self.toggleToolbar(self.collapsed)

        self.initializing = False  # Clear the initialization flag
