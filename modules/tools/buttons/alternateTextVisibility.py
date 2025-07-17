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


class AlternateTextVisibility(BaseTools):
    def __init__(self, toolBar, iface) -> None:
        self.toolBar = toolBar
        self.iface = iface

    def setupUi(self):
        buttonImg = (
            Path(__file__).parent / "icons" / "Alternar_visibilidade_do_texto.png"
        )
        self._action = self.createAction(
            "Alternar visibilidade do texto",
            buttonImg,
            self.run,
            self.tr("Adiciona ou remove texto_edicao baseado no atributo nome"),
            self.tr("Adiciona ou remove texto_edicao baseado no atributo nome"),
            self.iface,
        )
        self.toolBar.addAction(self._action)
        self.iface.registerMainWindowAction(self._action, "")

    def run(self):
        lyr = self.iface.activeLayer()
        fieldIdx = lyr.dataProvider().fieldNameIndex("texto_edicao") if lyr else -1
        if fieldIdx == -1:
            return self.displayErrorMessage(
                self.tr('O atributo "texto_edicao" não existe na camada selecionada')
            )

        fieldNameIdx = lyr.dataProvider().fieldNameIndex("nome")
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
            textoEdicao = feat.attribute("texto_edicao")
            if not textoEdicao and fieldNameIdx != -1:
                lyr.changeAttributeValue(feat.id(), fieldIdx, feat.attribute("nome"))
            else:
                lyr.changeAttributeValue(feat.id(), fieldIdx, None)
        lyr.triggerRepaint()
