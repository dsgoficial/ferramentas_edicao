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

Configuration dataclasses for the grid generator module.
"""

from dataclasses import dataclass
from qgis.core import QgsPoint
from qgis.PyQt.QtGui import QColor, QFont

@dataclass
class FontConfig:
    name: QFont
    size: float
    color: QColor

@dataclass
class GridLineConfig:
    width: float
    buffer_width: float

@dataclass
class DisplacementVector:
    dx: float
    dy: float

    def apply_displacement(self, point: QgsPoint) -> QgsPoint:
        return QgsPoint(point.x() + self.dx, point.y() + self.dy)
