# -*- coding: utf-8 -*-
"""
/***************************************************************************
 ferramentas_edicao
                                 A QGIS plugin
 Brazilian Army Cartographic Finishing Tools
                              -------------------
 ***************************************************************************/
/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/
"""
from pathlib import Path

from qgis.core import Qgis, QgsGeometry
from qgis.PyQt.QtCore import QCoreApplication, Qt
from PyQt5.QtWidgets import QAction, QPushButton
from PyQt5.QtGui import QIcon, QKeyEvent
from qgis.utils import iface
from qgis.core import QgsProject, QgsCoordinateTransform
from PyQt5.QtWidgets import QMessageBox


class BaseTools:
    @staticmethod
    def createAction(text, icon, callback, whatisthis, tip, iface):
        if icon:
            iconPath = Path(__file__).parent / "icons" / icon
            action = QAction(QIcon(str(iconPath)), text, iface.mainWindow())
        else:
            action = QAction(text, iface.mainWindow())
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
        iface = getattr(self, "iface")
        iface.messageBar().pushMessage(message, Qgis.Critical, duration)

    def checkAttrIsEmpty(self, feat, attrName):
        if not feat.attribute(attrName):
            self.displayErrorMessage(
                f'Feature {feat.attribute("id")} has empty "{attrName}" attribute.'
            )
            return True

    def getScale(self):
        if hasattr(self, "scaleSelector"):
            scale = self.scaleSelector.currentText()
            scale = scale.replace(".", "").split(":")[1]
            return int(scale)

    def keyPressEvent(self, event):
        activeTool = iface.mapCanvas().mapTool()
        if event.key() == Qt.Key_Escape:
            if not isinstance(activeTool, BaseTools):
                return
            iface.mapCanvas().unsetMapTool(activeTool)

    @staticmethod
    def tr(message):
        return QCoreApplication.translate("FerramentasEdicao", message)

    def unsetTool(self):
        return None

    def confirmation(self):
        confirmation = False
        reply = QMessageBox.question(
            iface.mainWindow(),
            "Continuar ?",
            "Há feições selecionadas fora do canvas. Deseja continuar ?",
            QMessageBox.Yes,
            QMessageBox.No,
        )
        if reply == QMessageBox.Yes:
            confirmation = True
        return confirmation

    def featInCanvas(self, selectedFeatures, crsLyr):
        crsProject = QgsProject.instance().crs()

        extentCanvas = iface.mapCanvas().extent()
        geomExtentCanvas = QgsGeometry.fromRect(extentCanvas)

        transformContext = QgsProject.instance().transformContext()
        xform = QgsCoordinateTransform(crsProject, crsLyr, transformContext)
        geomExtentCanvas.transform(xform)

        return all(
            feat.geometry().intersects(geomExtentCanvas) for feat in selectedFeatures
        )
