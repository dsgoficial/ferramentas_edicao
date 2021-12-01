from pathlib import Path

from qgis.PyQt import QtWidgets, uic

FORM_CLASS, _ = uic.loadUiType(Path(__file__).parent.parent / 'uis' / 'editionPluginBaseDialog.ui')


class EditionPluginDialog(QtWidgets.QDialog, FORM_CLASS):
    def __init__(self, parent=None):
        """Constructor."""
        super(EditionPluginDialog, self).__init__(parent)
        self.setupUi(self)
