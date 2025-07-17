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


class CycleVisibility(BaseTools):
    def __init__(self, toolBar, iface) -> None:
        self.toolBar = toolBar
        self.iface = iface

    def setupUi(self):
        buttonImg = Path(__file__).parent / "icons" / "Alternar_visibilidade.png"
        self._action = self.createAction(
            "Alternar visibilidade",
            buttonImg,
            self.run,
            self.tr(
                'Alterna o atributo "visivel" 1 -> 2 -> 1 nas feições selecionadas'
            ),
            self.tr(
                'Alterna o atributo "visivel" 1 -> 2 -> 1 nas feições selecionadas'
            ),
            self.iface,
        )
        self.toolBar.addAction(self._action)
        self.iface.registerMainWindowAction(self._action, "")

    def run(self):
        lyr = self.iface.activeLayer()
        fieldIdx = lyr.dataProvider().fieldNameIndex("visivel") if lyr else -1
        if fieldIdx == -1:
            self.displayErrorMessage(
                self.tr('O atributo "visivel" não existe na camada selecionada')
            )
        else:
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
                visible = int(feat.attribute("visivel"))
                if visible == 9999:
                    lyr.changeAttributeValue(feat.id(), fieldIdx, 1)
                else:
                    lyr.changeAttributeValue(feat.id(), fieldIdx, visible % 2 + 1)
            lyr.triggerRepaint()
