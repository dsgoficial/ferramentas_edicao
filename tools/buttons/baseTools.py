from os import stat
from pathlib import Path

from qgis.core import Qgis
from PyQt5 import QtWidgets, uic
from qgis.PyQt.QtCore import QCoreApplication
from PyQt5.QtWidgets import QAction, QPushButton
from PyQt5.QtGui import QIcon

class BaseTools:

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
    def createPushButton(text, icon, callback, whatisthis, tip, iface):
        if icon:
            button = QPushButton(QIcon(str(icon)), text, iface.mainWindow())
        else:
            button = QPushButton(QIcon(text, iface.mainWindow()))
        button.clicked.connect(callback)
        button.setWhatsThis(whatisthis)
        button.setStatusTip(tip)
        return button

    def displayErrorMessage(self, message, duration=5):
        iface = getattr(self, 'iface')
        iface.messageBar().pushMessage(message, Qgis.Critical, duration)

    def checkAttrIsEmpty(self, feat, attrName):
        if not feat.attribute(attrName):
            self.displayErrorMessage(
                f'Feature {feat.attribute("id")} has empty "{attrName}" attribute.')
            return True

    @staticmethod
    def tr(message):
        return QCoreApplication.translate('EditionPlugin', message)