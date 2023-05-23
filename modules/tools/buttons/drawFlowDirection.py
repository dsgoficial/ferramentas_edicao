# -*- coding: utf-8 -*-
"""
/***************************************************************************
                             -------------------
        begin                : 2022-08-11
        git sha              : $Format:%H$
        copyright            : (C) 2022 by Mateus Sereno, Arthur Santos - Cartographic Engineers @ Brazilian Army
        email                : mateus.sereno@ime.eb.br - arthur.santos@ime.eb.br
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

from qgis.PyQt import QtCore, QtGui, QtWidgets
from qgis import core, gui
from qgis.utils import iface
from qgis.core import (QgsCoordinateReferenceSystem,
                       QgsCoordinateTransformContext, QgsDistanceArea,
                       QgsFeature, QgsFeatureRequest, QgsGeometry, QgsProject,
                       QgsSpatialIndex, QgsUnitTypes, QgsCoordinateTransform)

from .baseTools import BaseTools

class DrawFlowDirection(gui.QgsMapTool, BaseTools):

    #Sinal usado para enviar a geometria adquirida ao finalizar aquisição
    acquisitionFinished = QtCore.pyqtSignal(QgsGeometry)
    reshapeLineCreated = QtCore.pyqtSignal(QgsGeometry)

    def __init__(self, iface, toolBar, scaleSelector, productTypeSelector):
        #construtor
        self.iface = iface
        self.toolBar = toolBar
        self.scaleSelector = scaleSelector
        self.productTypeSelector = productTypeSelector
        self.canvas = iface.mapCanvas()
        super(DrawFlowDirection, self).__init__(self.canvas)
        self.rubberBand = None
        self.rubberBandToStopState = None
        self.drawing = False
        self.snapCursorRubberBand = None
        self.active = False
        self.contadorVert = 0
        self.stopState = False
        self.cur = QtGui.QCursor(QtGui.QPixmap(["18 13 4 1",
                                    "           c None",
                                    "#          c #ff3300",
                                    ".          c #FF0000",
                                    "+          c #1210f3",
                                    "                 ", 
                                    "     ##   ##     ",
                                    "     ##   ##     ",
                                    "   ####   ####   ",
                                    "   ####   ####   ",
                                    "                 ",
                                    "                 ", 
                                    "                 ",
                                    "   ####   ####   ",
                                    "   ####   ####  ",
                                    "     ##   ##     ",
                                    "     ##   ##     ",
                                    "                 ",]))
        self.controlPressed = False

    def setupUi(self):
        buttonImg = Path(__file__).parent / 'icons' / 'Sentido_corrente.png'
        self._action = self.createAction(
            'Sentido Corrente',
            buttonImg,
            lambda _: None,
            self.tr('Cria feições em "edicao_simb_direcao_corrente_p" baseadas no input do usuario'),
            self.tr('Cria feições em "edicao_simb_direcao_corrente_p" baseadas no input do usuario'),
            self.iface
        )
        self._action.setCheckable(True)
        self.setAction(self._action)
        self.toolBar.addAction(self._action)
        self.iface.registerMainWindowAction(self._action, '')

    def setCursor(self, cursor):
        #Método para definir cursor da ferramenta
        #Parâmetro de entrada: cursor (cursor usado na ferramenta)
        self.cur = cursor 

    def getCursor(self):
        #Método para obter cursor da ferramenta
        #Parâmetro de retorno: cursor (cursor usado na ferramenta)
        return self.cur

    def setCanvas(self, canvas : gui.QgsMapCanvas):
        #Método para definir o canvas do Qgis
        #Parâmetro de entrada: canvas (Canvas do Qgis)
        self.canvas = canvas

    def getCanvas(self) -> gui.QgsMapCanvas:
        #Método para obter o canvas do Qgis
        #Parâmetro de retorno: canvas (Canvas do Qgis)
        return self.canvas

    def setActiveState(self, state : bool):
        #Método para definir se a ferramenta está ativa ou não
        #Parâmetro de entrada: state (Boleano)
        self.active = state 
    
    def getActiveState(self) -> bool:
        #Método para obter se a ferramenta está ativa ou não
        #Parâmetro de retorno: state (Boleano)
        return self.active
     
    def setStopedState(self, state : bool):
        #Método para definir se a ferramenta está pausada
        #Parâmetro de entrada: state (Boleano)
        self.stopState = state
    
    def getStopedState(self) -> bool:
        #Método para obter se a ferramenta está pausada
        #Parâmetro de retorno: state (Boleano)
        return self.stopState

    def setDrawingState(self, state : bool):
        #Método para definir se a ferramenta está desenhando
        #Parâmetro de entrada: state (Boleano)
        self.drawing = state

    def getDrawingState(self) -> bool:
        #Método para obter se a ferramenta está desenhando
        #Parâmetro de retorno: state (Boleano)
        return self.drawing

    def setRubberBand(self, rb : gui.QgsRubberBand):
        #Método para definir o rubberBand de aquisição
        #Parâmetro de entrada: rb (rubberBand)
        self.rubberBand = rb

    def getRubberBand(self) -> gui.QgsRubberBand:
        #Método para obter o rubberBand de aquisição
        #Parâmetro de retorno: rb (rubberBand)
        return self.rubberBand

    def setRubberBandToStopState(self, rb : gui.QgsRubberBand):
        #Método para definir o rubberBand de pausa da ferramenta
        #Parâmetro de entrada: rb (rubberBand)
        self.rubberBandToStopState = rb

    def getRubberBandToStopState(self) -> gui.QgsRubberBand:
        #Método para obter o rubberBand de pausa da ferramenta
        #Parâmetro de retorno: rb (rubberBand)
        return self.rubberBandToStopState

    def setGeometryType(self, geomType):
        #Método para definir o tipo da geometria
        #Parâmetro de entrada: geomType (Tipo da geometria)
        self.geometryType = geomType

    def getGeometryType(self):
        #Método para obter o tipo da geometria
        #Parâmetro de retorno: geomType (Tipo da geometria)
        return self.geometryType

    def setSnapRubberBand(self, snapRb : gui.QgsRubberBand):
        #Método para definir o rubberBand do snap
        #Parâmetro de entrada: rb (rubberBand)
        self.snapCursorRubberBand = snapRb   

    def getSnapRubberBand(self) -> gui.QgsRubberBand:
        #Método para obter o rubberBand do snap
        #Parâmetro de entrada: rb (rubberBand)
        return self.snapCursorRubberBand

    def isPolygon(self) -> bool:
        #Método para testar se a camada atual é polígono
        #Parâmetro de retorno: isPolygon (Boleano)
        isPolygon = (self.getGeometryType() != core.QgsWkbTypes.LineGeometry)
        return isPolygon
        
    def keyPressEvent(self, event):
        #Método para receber os eventos do teclado
        #Parâmetro de entrada: event (Evento que chamou o método)
        if event.key() == QtCore.Qt.Key_Escape:
            self.cancelEdition()
            event.ignore()

    def cancelEdition(self): 
        #Método para cancelar aquisição
        self.getRubberBand().reset() if self.getRubberBand() else None
        self.getRubberBandToStopState().reset() if self.getRubberBandToStopState() else None
        self.setRubberBand(None)
        self.setDrawingState(False)
        self.setActiveState(False)
        self.contadorVert = 0
        self.getCanvas().refresh()
		    
    def canvasReleaseEvent(self, event):
        #Método para receber os eventos release do canvas do Qgis
        #Parâmetro de entrada: event (Evento que chamou o método)
        self.getRubberBandToStopState().reset() if self.getRubberBandToStopState() else ''
        if self.getStopedState():
            self.setStopedState(False)
        elif self.getActiveState():
            self.setActiveState(False)
            self.finishEdition(event)
        else:
            self.setActiveState(True)
            self.startEdition(event)

    def startEdition(self, event):
        #Método para iniciar a aquisição
        #Parâmetro de entrada: event (Evento)
        layer = self.dstLyr
        if layer:
            mapPoint = event.snapPoint()            
            self.startRubberBand(mapPoint, layer)

    def startRubberBand(self, pointMap, layer):
        #Método para iniciar o rubberBand da aquisição
        #Parâmetro de entrada: pointMap (Primeiro ponto da feição em aquisição), layer (Camada ativa)
        self.setDrawingState(True)
        self.setGeometryType(core.QgsWkbTypes.LineGeometry)
        rubberBand = gui.QgsRubberBand(self.getCanvas(), core.QgsWkbTypes.LineGeometry)
        rubberBand.setColor(QtGui.QColor(255, 0, 0, 150))
        rubberBand.setWidth(1)
        rubberBand.addPoint(pointMap)
        self.setRubberBand(rubberBand)
        
    def canvasMoveEvent(self, event):
        #Método para receber os eventos canvas move do Qgis
        #Parâmetro de entrada: event (Evento que chamou o método)

        if(self.getStopedState() or not self.getRubberBand()):
            return
        
        mapPoint = event.mapPoint()
        currentPointCount = self.getRubberBand().numberOfVertices()
        if(currentPointCount > 2):
            return
        if(currentPointCount == 2):
            self.getRubberBand().removeLastPoint()
        
        self.getRubberBand().addPoint(mapPoint)

    def updateRubberBandToStopState(self, point):
        #Método para atualizar o rubberband do pause da ferramenta
        rubberBand = self.getRubberBandToStopState()
        if rubberBand.asGeometry():
            listPoints = rubberBand.asGeometry().asPolygon() if self.isPolygon() else rubberBand.asGeometry().asPolyline()
            if self.isPolygon() and self.getRubberBand():
                rubberBand.reset(geometryType=core.QgsWkbTypes.PolygonGeometry)
                firstPoint = self.getRubberBand().asGeometry().asPolygon()[0][0]
                secondPoint = self.getRubberBand().asGeometry().asPolygon()[0][-2]
                rubberBand.addPoint(secondPoint)
                rubberBand.addPoint(point)
                rubberBand.addPoint(firstPoint)
            elif not(self.isPolygon()) and len(listPoints) >= 1:
                rubberBand.removeLastPoint()
                rubberBand.addPoint(point)

    def finishEdition(self, event):
        #Método para finalizar a aquisição
        rb = self.getRubberBand()
        if not rb:
            return
        
        pointCount = rb.numberOfVertices()
        if pointCount < 2:
            return

        point_from = rb.getPoint(0)
        point_to = event.mapPoint()

        azimuth = point_from.azimuth(point_to)
        symbolRot = azimuth - 90.0

        self.addArrow(point_from, symbolRot)
        self.cancelEdition()

    def activate(self):
        #Método chamado ao ativar a ferramenta
        mapCanvas = self.getCanvas()
        mapCanvas.setCursor(self.getCursor())

    def deactivate(self):
        QtWidgets.QApplication.restoreOverrideCursor()
        gui.QgsMapTool.deactivate(self)

    def getLayers(self):
        dstLyr = QgsProject.instance().mapLayersByName('edicao_simb_direcao_corrente_p')
        if len(dstLyr) == 1:
            self.dstLyr = dstLyr[0]
        else:
            self.displayErrorMessage(self.tr(
                'Camada "edicao_simb_direcao_corrente_p" não encontrada'
            ))
            return None
        return True
    
    def addArrow(self, point : core.QgsPointXY, rot : float):
        """ Adiciona a seta indicativa da direcao da corrente """

        toInsert = QgsFeature(self.dstLyr.fields())
        toInsert.setAttribute('simb_rot', rot)
        toInsertGeom = QgsGeometry.fromPointXY(point)
        canvasCrs = self.iface.mapCanvas().mapSettings().destinationCrs()
        referenceCrs = self.dstLyr.crs()
        if canvasCrs != referenceCrs:
            coordinateTransform = QgsCoordinateTransform(
                QgsCoordinateReferenceSystem(canvasCrs),
                QgsCoordinateReferenceSystem(referenceCrs),
                QgsProject.instance(),
            )
            toInsertGeom.transform(coordinateTransform)
        toInsert.setGeometry(toInsertGeom)

        self.dstLyr.startEditing()
        self.dstLyr.addFeature(toInsert)
        self.canvas.refresh()