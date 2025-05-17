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

from qgis.core import QgsFeature, QgsProject, QgsWkbTypes

from .baseTools import BaseTools

from qgis.core import (
    QgsGeometry,
    Qgis,
)
from PyQt5.QtWidgets import QMessageBox


class CopyToGenericLabel(BaseTools):
    def __init__(
        self,
        toolBar,
        iface,
    ) -> None:
        self.toolBar = toolBar
        self.iface = iface

    def setupUi(self):
        buttonImg = Path(__file__).parent / "icons" / "Copiar_texto_generico.png"
        self._action = self.createAction(
            "Copiar Texto Genérico",
            buttonImg,
            self.run,
            self.tr(
                'Copia feições selecionadas para "edicao_texto_generico_p" ou "edicao_texto_generico_l"'
            ),
            self.tr(
                'Copia feições selecionadas para "edicao_texto_generico_p" ou "edicao_texto_generico_l"'
            ),
            self.iface,
        )
        self.toolBar.addAction(self._action)
        self.iface.registerMainWindowAction(self._action, "")

    def setPointFeatValues(self, originFeat, destFeat):
        destFeat.setAttribute("texto_edicao", originFeat.attribute("nome"))
        destFeat.setAttribute("estilo_fonte", "Condensed")
        destFeat.setAttribute("tamanho_txt", 6)
        destFeat.setAttribute("justificativa_txt", 2)
        destFeat.setAttribute("espacamento", 0)
        destFeat.setAttribute("cor", "#241F21")
        destFeat.setGeometry(originFeat.geometry())

    def setLineFeatValues(self, originFeat, destFeat):
        destFeat.setAttribute("texto_edicao", originFeat.attribute("nome"))
        destFeat.setAttribute("estilo_fonte", "Condensed")
        destFeat.setAttribute("tamanho_txt", 6)
        destFeat.setAttribute("espacamento", 0)
        destFeat.setAttribute("cor", "#241F21")
        destFeat.setGeometry(originFeat.geometry())

    def run(self):
        if not (lyr := self.iface.activeLayer()):
            self.displayErrorMessage(self.tr("Não há camada selecionada"))
        else:
            fieldIdx = lyr.dataProvider().fieldNameIndex("nome")
            if fieldIdx == -1:
                self.displayErrorMessage(
                    self.tr('O atributo "nome" não existe na camada selecionada')
                )
            else:
                instance = QgsProject().instance()
                geomType = lyr.geometryType()
                if geomType == QgsWkbTypes.PointGeometry:
                    destLayerName = "edicao_texto_generico_p"
                elif geomType == QgsWkbTypes.LineGeometry:
                    destLayerName = "edicao_texto_generico_l"
                else:
                    destLayerName = None
                destLayer = instance.mapLayersByName(destLayerName)
                if destLayerName is None:
                    self.displayErrorMessage(
                        self.tr(f"Não válido para camadas tipo área")
                    )
                elif len(destLayer) != 1:
                    self.displayErrorMessage(
                        self.tr(f'A camada "{destLayerName}" não existe')
                    )
                else:
                    lyr = self.iface.activeLayer()
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
                    destLayer = destLayer[0]
                    destLayer.startEditing()
                    for feat in lyr.getSelectedFeatures():
                        if self.checkAttrIsEmpty(feat, "nome"):
                            break
                        destFeat = QgsFeature(destLayer.fields())
                        if geomType == QgsWkbTypes.PointGeometry:
                            self.setPointFeatValues(feat, destFeat)
                        elif geomType == QgsWkbTypes.LineGeometry:
                            self.setLineFeatValues(feat, destFeat)
                        destLayer.addFeature(destFeat)
