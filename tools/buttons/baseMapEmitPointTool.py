from os import stat
from pathlib import Path
from abc import ABC, abstractmethod

from qgis.core import Qgis
from qgis.gui import QgsMapToolEmitPoint
from PyQt5 import QtWidgets, uic
from PyQt5.QtWidgets import QAction
from PyQt5.QtGui import QIcon

from .baseTools import BaseTools

class BaseMapEmitPointTool(QgsMapToolEmitPoint):

    def __init__(self, canvas):
        super().__init__(canvas)
        self.tol = 50
        self.canvas = canvas
        self.canvasClicked.connect(self.mouseClick)

    def mouseClick(self, pos, btn):
        pass

    def displayErrorMessage(self, message):
        pass
