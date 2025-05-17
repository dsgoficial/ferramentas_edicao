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

from qgis.core import (
    QgsCoordinateReferenceSystem,
    QgsCoordinateTransformContext,
    QgsDistanceArea,
    QgsFeature,
    QgsFeatureRequest,
    QgsGeometry,
    QgsProject,
    QgsSpatialIndex,
    QgsUnitTypes,
)
from qgis.gui import QgsMapToolEmitPoint

from .baseTools import BaseTools
from .utils.comboBox import ComboBox
from ...processings.processingUtils import ProcessingUtils


class CreateLakeLabel(QgsMapToolEmitPoint, BaseTools):
    def __init__(self, iface, toolBar, scaleSelector, productTypeSelector):
        super().__init__(iface.mapCanvas())
        self.iface = iface
        self.toolBar = toolBar
        self.scaleSelector = scaleSelector
        self.productTypeSelector = productTypeSelector
        self.mapCanvas = iface.mapCanvas()
        self.box = ComboBox(self.iface.mainWindow())
        self.box.textActivated.connect(self.createFeature)
        self.canvasClicked.connect(self.mouseClick)

    def setupUi(self):
        buttonImg = Path(__file__).parent / "icons" / "Rotulo_lago.png"
        self._action = self.createAction(
            "Rótulo Lago",
            buttonImg,
            lambda _: None,
            self.tr(
                'Cria feições em "edicao_texto_generico_p" baseadas na interseção com "cobter_massa_dagua_a"'
            ),
            self.tr(
                'Cria feições em "edicao_texto_generico_p" baseadas na interseção com "cobter_massa_dagua_a"'
            ),
            self.iface,
        )
        self._action.setCheckable(True)
        self.setAction(self._action)
        self.toolBar.addAction(self._action)
        self.iface.registerMainWindowAction(self._action, "")

    def mouseClick(self, pos, btn):
        if self.isActive():
            closestSpatialID = self.spatialIndex.nearestNeighbor(
                pos, maxDistance=self.tolerance
            )
            # Option 1 (actual): Use a QgsFeatureRequest
            # Option 2: Use a dict lookup
            request = QgsFeatureRequest().setFilterFids(closestSpatialID)
            closestFeat = self.srcLyr.getFeatures(request)
            if closestSpatialID:
                feat = next(closestFeat)
                if self.checkFeature(feat):
                    self.currPos = pos
                    self.createFeature(feat)
                else:
                    self.displayErrorMessage(
                        self.tr(
                            'Feição inválida. Verifique os atributos "nome" e "tipo" na camada "cobter_massa_dagua_a"'
                        )
                    )
            else:
                self.displayErrorMessage(
                    'Não foram encontradas feições em "cobter_massa_dagua_a"'
                )

    @staticmethod
    def checkFeature(feat):
        return (
            int(feat.attribute("tipo")) in (3, 4, 5, 6, 7, 9, 11)
        ) and feat.attribute("nome")

    def createFeature(self, feat):
        toInsert = QgsFeature(self.dstLyr.fields())
        toInsert.setAttribute("texto_edicao", feat.attribute("nome").upper())
        toInsert.setAttribute("estilo_fonte", "Condensed Italic")
        toInsert.setAttribute("justificativa_txt", 2)
        toInsert.setAttribute("espacamento", 0)
        if self.productTypeSelector.currentIndex() == 0:  # Ortoimagem
            toInsert.setAttribute("cor", "#ffffff")
        elif self.productTypeSelector.currentIndex() == 1:  # Topografica
            toInsert.setAttribute("cor", "#00a0df")
        else:
            toInsert.setAttribute("cor", "#00a0df")
            self.displayErrorMessage(
                "Tipo de produto inválido, cor = #00a0df, mesma da carta topográfica"
            )
        scale = self.getScale()
        toInsert.setAttribute(
            "tamanho_txt",
            ProcessingUtils.getWaterPolyLabelFontSize(feat, scale, self.lyrCrs),
        )
        if self.productTypeSelector.currentIndex() == 0:  # Ortoimagem
            toInsert.setAttribute("tamanho_buffer", 1)
            toInsert.setAttribute("cor_buffer", "#00a0df")
        toInsertGeom = QgsGeometry.fromPointXY(self.currPos)
        toInsert.setGeometry(toInsertGeom)
        self.dstLyr.startEditing()
        self.dstLyr.addFeature(toInsert)
        self.mapCanvas.refresh()

    def getScale(self):
        scale = self.scaleSelector.currentText()
        scale = scale.split(":")[1]
        scale = scale.replace(".", "")
        return int(scale)

    def getLayers(self):
        srcLyr = QgsProject.instance().mapLayersByName("cobter_massa_dagua_a")
        dstLyr = QgsProject.instance().mapLayersByName("edicao_texto_generico_p")
        if len(srcLyr) == 1:
            self.srcLyr = srcLyr[0]
        else:
            self.displayErrorMessage(
                self.tr('Camada "cobter_massa_dagua_a" não encontrada')
            )
            return None
        if len(dstLyr) == 1:
            self.dstLyr = dstLyr[0]
        else:
            self.displayErrorMessage(
                self.tr('Camada "edicao_texto_generico_p" não encontrada')
            )
            return None
        self.lyrCrs = self.srcLyr.dataProvider().crs()
        if self.lyrCrs.isGeographic():
            d = QgsDistanceArea()
            d.setSourceCrs(
                QgsCoordinateReferenceSystem("EPSG:3857"),
                QgsCoordinateTransformContext(),
            )
            self.tolerance = d.convertLengthMeasurement(
                self.getScale() * 0.01, QgsUnitTypes.DistanceDegrees
            )
        else:
            self.tolerance = self.getScale() * 0.01
        self.spatialIndex = QgsSpatialIndex(
            srcLyr[0].getFeatures(), flags=QgsSpatialIndex.FlagStoreFeatureGeometries
        )
        return True
