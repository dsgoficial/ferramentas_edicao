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
from qgis.core import NULL, Qgis, QgsVectorLayer


class ClearTextoEdicao(BaseTools):
    ATTRIBUTE = "texto_edicao"

    def __init__(self, toolBar, iface) -> None:
        super().__init__()
        self.toolBar = toolBar
        self.iface = iface

    def setupUi(self):
        buttonImg = Path(__file__).parent / "icons" / "Eliminar_texto_edicao.png"
        self._action = self.createAction(
            "Eliminar texto_edicao",
            buttonImg,
            self.run,
            self.tr("Define como NULL o atributo texto_edicao das feições selecionadas"),
            self.tr("Define como NULL o atributo texto_edicao das feições selecionadas"),
            self.iface,
        )
        self.toolBar.addAction(self._action)
        self.iface.registerMainWindowAction(self._action, "")

    def run(self):
        layer = self.iface.activeLayer()
        if not isinstance(layer, QgsVectorLayer):
            self.displayErrorMessage(self.tr("Selecione uma camada vetorial"))
            return
        idx = layer.fields().indexOf(self.ATTRIBUTE)
        if idx < 0:
            self.displayErrorMessage(
                self.tr(f'A camada não possui o atributo "{self.ATTRIBUTE}"')
            )
            return
        if layer.selectedFeatureCount() == 0:
            self.displayErrorMessage(self.tr("Não há feições selecionadas"))
            return
        features = layer.selectedFeatures()
        crsLyr = layer.crs()
        if not self.featInCanvas(features, crsLyr):
            if not self.confirmation():
                self.iface.messageBar().pushMessage(
                    "Cancelado",
                    "ação cancelada pelo usuário",
                    level=Qgis.MessageLevel.Warning,
                    duration=5,
                )
                return
        if not layer.isEditable() and not layer.startEditing():
            self.displayErrorMessage(self.tr("Não foi possível iniciar a edição"))
            return
        layer.beginEditCommand("eliminar texto_edicao")
        try:
            for feature in features:
                if not layer.changeAttributeValue(feature.id(), idx, NULL):
                    raise RuntimeError(
                        f"Falha ao alterar a feição {feature.id()}"
                    )
        except Exception as e:
            layer.destroyEditCommand()
            self.displayErrorMessage(str(e))
            return
        layer.endEditCommand()
        layer.triggerRepaint()
        self.iface.mapCanvas().refresh()
