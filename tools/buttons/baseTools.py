from os import stat
from pathlib import Path

from qgis.core import Qgis
from PyQt5 import QtWidgets, uic
from PyQt5.QtWidgets import QAction
from PyQt5.QtGui import QIcon

class BaseTools():

    @staticmethod
    def createAction(text, icon, callback, whatisthis, tip, iface):
        if icon:
            iconPath = Path(__file__).parent / 'icons' / icon
            action = QAction(
                QIcon(str(iconPath)),
                text,
                iface.mainWindow()
            )
        else:
            action = QAction(
                text,
                iface.mainWindow()
            )
        action.triggered.connect(callback)
        action.setWhatsThis(whatisthis)
        action.setStatusTip(tip)
        return action

    @staticmethod
    def displayErrorMessage(iface, message):
        iface.messageBar().pushMessage(message, Qgis.Error)

    def checkAttrIsEmpty(self, feat, attrName):
        if not feat.attribute(attrName, None):
            self.displayErrorMessage(
                f'Feature {feat.attribute(id)} has empty "{attrName}" attribute.')
            return True
