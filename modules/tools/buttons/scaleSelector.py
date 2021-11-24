from pathlib import Path
import enum

from PyQt5.QtGui import QIcon
from PyQt5.QtWidgets import QPushButton, QComboBox
from PyQt5.QtCore import Qt
from qgis.core import (Qgis, QgsFeature, QgsFeatureRequest, QgsGeometry,
                       QgsProject, QgsSpatialIndex)



class ScaleSelector(QComboBox):

    options = {
        '1:25.000': 0,
        '1:50.000': 1,
        '1:100.000': 2,
        '1:250.000': 3,
    }

    def __init__(self, iface, toolBar):
        super().__init__(iface.mainWindow())
        self.iface = iface
        self.toolBar = toolBar

    def setupUi(self):
        self.insertItems(-1, [x for x in self.options.keys()])
        self.toolBar.addWidget(self)