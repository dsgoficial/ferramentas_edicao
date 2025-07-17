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
from .baseTools import BaseTools
from qgis.core import (
    QgsGeometry,
    Qgis,
)
from PyQt5.QtWidgets import QMessageBox


class AlternateBuildingFlag(BaseTools):
    # Construtor da classe
    def __init__(self, iface, toolBar):
        self.iface = iface
        self.toolBar = toolBar

    # User interface, botão e descrição
    def setupUi(self):
        buttonImg = Path(__file__).parent / "icons" / "Suprimir_bandeira_edif.png"
        self._action = self.createAction(
            "Suprimir Bandeira",
            buttonImg,
            self.run,
            self.tr(
                "Altera o campo 'suprimir_bandeira' das feições selecionadas da camada ativa"
            ),
            self.tr(
                "Altera o campo 'suprimir_bandeira' das feições selecionadas da camada ativa"
            ),
            self.iface,
        )
        self.toolBar.addAction(self._action)
        self.iface.registerMainWindowAction(self._action, "")

    def run(self):
        lyr = self.iface.activeLayer()
        fieldStr = "suprimir_bandeira"
        fieldIdx = lyr.dataProvider().fieldNameIndex(fieldStr) if lyr else -1
        if fieldIdx == -1:
            return self.displayErrorMessage(
                self.tr(f"O atributo {fieldStr} não existe na camada selecionada")
            )
        selectedFeature = lyr.getSelectedFeatures()
        if lyr.selectedFeatureCount() == 0:
            self.displayErrorMessage(self.tr("Não há feições selecionadas"))
        crsLyr = lyr.crs()
        featIn = BaseTools().featInCanvas(selectedFeature, crsLyr)
        if not featIn:
            confirm = BaseTools().confirmation()
            if not confirm:
                self.iface.messageBar().pushMessage(
                    "Cancelado",
                    "ação cancelada pelo usuário",
                    level=Qgis.Warning,
                    duration=5,
                )
                return
        lyr.startEditing()
        for feat in lyr.getSelectedFeatures():
            fieldToChange = feat.attribute(fieldStr)
            if fieldToChange and fieldIdx != -1:
                lyr.changeAttributeValue(
                    feat.id(), fieldIdx, int(feat.attribute(fieldStr)) ^ 3
                )
        lyr.triggerRepaint()
