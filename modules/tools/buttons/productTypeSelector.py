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
import enum

from qgis.PyQt.QtGui import QIcon
from qgis.PyQt.QtWidgets import QPushButton, QComboBox
from qgis.PyQt.QtCore import Qt
from qgis.core import (
    Qgis,
    QgsFeature,
    QgsFeatureRequest,
    QgsGeometry,
    QgsProject,
    QgsSpatialIndex,
)


class ProductTypeSelector(QComboBox):

    options = {"Carta Ortoimagem": 0, "Carta Topográfica": 1}

    def __init__(self, iface, toolBar):
        super().__init__(iface.mainWindow())
        self.iface = iface
        self.toolBar = toolBar
        self.isConfigured = False

    def setupUi(self):
        self.insertItems(-1, [x for x in self.options.keys()])
        self.toolBar.addWidget(self)
        self.currentIndexChanged.connect(self._onChanged)

    def _onChanged(self):
        self.isConfigured = True
