# -*- coding: utf-8 -*-
"""
/***************************************************************************
                             -------------------
        begin                : 2022-08-29
        git sha              : $Format:%H$
        copyright            : (C) 2022 by Mateus Sereno - Cartographic Engineer @ Brazilian Army
        email                : mateus.sereno@ime.eb.br
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
from typing import List, Tuple

from qgis import gui
from qgis.core import (
    QgsCoordinateTransform,
    QgsDistanceArea,
    QgsExpression,
    QgsExpressionContext,
    QgsExpressionContextScope,
    QgsFeature,
    QgsGeometry,
    QgsPalLayerSettings,
    QgsPoint,
    QgsPointXY,
    QgsProject,
    QgsUnitTypes,
    QgsVectorLayer,
    QgsWkbTypes,
)
from qgis.gui import QgsRubberBand
from qgis.PyQt import QtCore
from qgis.PyQt.QtCore import QSettings, Qt, pyqtSlot
from qgis.PyQt.QtGui import QColor

from .baseTools import BaseTools


class CreateMasterElevationTextValue(gui.QgsMapTool, BaseTools):

    # Sinal usado para enviar a geometria adquirida ao finalizar aquisição
    lineCreated = QtCore.pyqtSignal(QgsGeometry)

    def __init__(self, iface, toolBar, scaleSelector, productTypeSelector):
        # construtor
        self.iface = iface
        self.toolBar = toolBar
        self.scaleSelector = scaleSelector
        self.productTypeSelector = productTypeSelector
        self.canvas = iface.mapCanvas()
        super(CreateMasterElevationTextValue, self).__init__(self.canvas)
        self.rubberBand = None
        self.reset()
        self.lineCreated.connect(self.updateLayer)
        self.avgLetterSizeInDegrees = 0.0006

    def setupUi(self):
        buttonImg = Path(__file__).parent / "icons" / "texto_de_cota_mestra.png"
        self._action = self.createAction(
            "Fixa texto de cota mestra",
            buttonImg,
            lambda _: None,
            self.tr('Cria feições em "edicao_simb_cota_mestra_l" de cotas mestras'),
            self.tr('Cria feições em "edicao_simb_cota_mestra_l" de cotas mestras'),
            self.iface,
        )
        self._action.setCheckable(True)
        self.setAction(self._action)
        self.toolBar.addAction(self._action)
        self.iface.registerMainWindowAction(self._action, "")

    def deactivate(self):
        """
        Deativates this tool
        """
        self.canvas.scene().removeItem(self.rubberBand)
        super(CreateMasterElevationTextValue, self).deactivate()

    def defineRubberBand(self):
        """
        Defines the rubber band style
        """
        settings = QSettings()
        myRed = int(settings.value("/qgis/default_measure_color_red", 222))
        myGreen = int(settings.value("/qgis/default_measure_color_green", 155))
        myBlue = int(settings.value("/qgis/default_measure_color_blue", 67))

        self.rubberBand = QgsRubberBand(self.canvas)
        self.rubberBand.setColor(QColor(myRed, myGreen, myBlue, 100))
        self.rubberBand.setWidth(3)

    def reset(self):
        """
        Resets the tool
        """
        if self.rubberBand:
            self.rubberBand.reset(QgsWkbTypes.LineGeometry)
        self.isEmittingPoint = False
        self.defineRubberBand()

    def canvasPressEvent(self, e):
        """
        Reimplementation to add a point to the rubber band or reset it
        """
        if self.isEmittingPoint:
            point = self.toMapCoordinates(e.pos())
            self.rubberBand.addPoint(point, True)
        else:
            self.reset()

        self.isEmittingPoint = True

    def canvasReleaseEvent(self, e):
        """
        Reimplementation to add a vertex to the rubber band or to finish the rubber band according to the button used
        """
        point = self.toMapCoordinates(e.pos())
        if e.button() == Qt.RightButton:
            geom = self.rubberBand.asGeometry()
            self.reset()
            self.lineCreated.emit(geom)
        elif e.button() == Qt.LeftButton:
            self.isEmittingPoint = True

        self.rubberBand.addPoint(point, True)

    def canvasMoveEvent(self, e):
        """
        Reimplementation to move the rubber band
        """
        if not self.isEmittingPoint:
            return

        point = self.toMapCoordinates(e.pos())
        self.rubberBand.movePoint(point)

    def keyPressEvent(self, event):
        # Método para receber os eventos do teclado
        # Parâmetro de entrada: event (Evento que chamou o método)
        if event.key() != QtCore.Qt.Key_Escape:
            return
        self.cancelEdition()
        event.ignore()

    def toMapCoordinates(self, p):
        """
        Reimplementation to make use of the snap
        """
        return self.canvas.getCoordinateTransform().toMapCoordinates(p)

    @pyqtSlot(QgsGeometry)
    def updateLayer(self, geom):
        ret = self.getLayers()
        if ret is None:
            return
        self.reproject(geom, self.contourLyr, QgsProject.instance().crs())
        outputList = self.computeIntersections(self.contourLyr, geom)
        if outputList == []:
            return
        self.updateContourAndGenericTextLayers(
            self.contourLyr, self.genericTextLyr, outputList
        )
        self.canvas.refresh()
        self.genericTextLyr.triggerRepaint()

    @staticmethod
    def computeIntersections(
        inputLyr: QgsVectorLayer, lineGeom: QgsGeometry
    ) -> List[Tuple[QgsFeature, QgsGeometry]]:
        bbox = lineGeom.boundingBox()
        outputList = []
        for feat in inputLyr.getFeatures(bbox):
            geom = feat.geometry()
            if not geom.intersects(lineGeom):
                continue
            if feat["indice"] != 1:
                continue
            intersectionPoint = lineGeom.intersection(geom)
            outputList.append((feat, intersectionPoint))
        return outputList

    def updateContourAndGenericTextLayers(
        self,
        contourLyr: QgsVectorLayer,
        genericTextLyr: QgsVectorLayer,
        tupleList: List[Tuple[QgsFeature, QgsGeometry]],
    ):
        contourLyr.startEditing()
        genericTextLyr.startEditing()
        contourLyr.beginEditCommand("Atualizando campo texto_edicao de curvas de nivel")
        genericTextLyr.beginEditCommand("Criando novas feições")
        for contourFeat, intersectionPoint in tupleList:
            contourGeom = contourFeat.geometry()
            if isinstance(intersectionPoint, QgsPoint):
                self.createGenericFeatAndUpdateContourFeat(
                    contourFeat=contourFeat,
                    intersectionPoint=QgsGeometry.fromPointXY(
                        QgsPointXY(intersectionPoint)
                    ),
                    contourGeom=contourGeom,
                )
                continue
            for part in intersectionPoint.parts():
                self.createGenericFeatAndUpdateContourFeat(
                    contourFeat=contourFeat,
                    intersectionPoint=QgsGeometry.fromPointXY(QgsPointXY(part)),
                    contourGeom=contourGeom,
                )

        contourLyr.endEditCommand()
        genericTextLyr.endEditCommand()

    def createGenericFeatAndUpdateContourFeat(
        self, contourFeat, intersectionPoint, contourGeom
    ):
        contourText = str(contourFeat["cota"])
        bufferSize = self.getBufferSize(contourText, self.contourLyr)
        buffer = intersectionPoint.buffer(bufferSize, -1)
        intersectionFromBuffer = contourGeom.intersection(buffer)
        newFeat = self.createGenericTextFeature(
            geom=intersectionFromBuffer, text=contourText
        )
        self.genericTextLyr.addFeature(newFeat)
        contourFeat["texto_edicao"] = None
        self.contourLyr.updateFeature(contourFeat)

    def getBufferSize(self, contourText, contourLyr):
        crs = contourLyr.crs()
        if crs.isGeographic():
            return len(contourText) * self.avgLetterSizeInDegrees
        avgLetterSizeInMeters = self.convertLength(
            contourLyr, self.avgLetterSizeInDegrees
        )
        return len(contourText) * avgLetterSizeInMeters

    def createGenericTextFeature(self, geom, text):
        newFeat = QgsFeature(self.genericTextLyr.fields())
        newFeat["texto_edicao"] = text
        newFeat.setGeometry(geom)
        return newFeat

    def convertLength(self, lyr, measure):
        convertLength = QgsDistanceArea()
        #convertLength.setEllipsoid(self.lyrCrs.ellipsoidAcronym())
        return convertLength.convertLengthMeasurement(
            measure, QgsUnitTypes.DistanceMeters
        )

    def getLayers(self):
        contourLyr = self.getLyrByName("elemnat_curva_nivel_l")
        if contourLyr is None:
            self.displayErrorMessage(
                self.tr('Camada "elemnat_curva_nivel_l" não encontrada')
            )
            return None
        genericTextLyr = self.getLyrByName("edicao_simb_cota_mestra_l")
        if genericTextLyr is None:
            self.displayErrorMessage(
                self.tr('Camada "edicao_simb_cota_mestra_l" não encontrada')
            )
            return None
        self.contourLyr = contourLyr
        self.genericTextLyr = genericTextLyr
        self.lyrCrs = self.genericTextLyr.dataProvider().crs()
        return True

    def getLyrByName(self, name):
        lyrList = QgsProject.instance().mapLayersByName(name)
        return lyrList[0] if len(lyrList) > 0 else None

    def reproject(self, geom, inputLyr, canvasCrs):
        """
        Reprojects geom to the reference layer crs
        """
        destCrs = inputLyr.crs()
        if canvasCrs.authid() == destCrs.authid():
            return
        coordinateTransformer = QgsCoordinateTransform(
            canvasCrs, destCrs, QgsProject.instance()
        )
        geom.transform(coordinateTransformer)
