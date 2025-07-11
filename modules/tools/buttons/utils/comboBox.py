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
from PyQt5.QtWidgets import QComboBox
from PyQt5.QtGui import QCursor


class ComboBox(QComboBox):
    def __init__(self, iface) -> None:
        super().__init__(iface)
        self.hide()

    def updateItems(self, options):
        self.clear()
        self.insertItems(0, options)

    def showComboBox(self):
        pos = QCursor.pos()
        self.move(pos)
        # self.showPopup()
        self.show()
