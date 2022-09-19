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
import numpy as np

from qgis.PyQt import QtCore, QtGui, QtWidgets
from qgis import core, gui
from qgis.utils import iface
from qgis.core import (QgsCoordinateReferenceSystem, QgsVectorLayer,
                       QgsCoordinateTransformContext, QgsDistanceArea,
                       QgsFeature, QgsFeatureRequest, QgsGeometry, QgsProject,
                       QgsLineString, QgsPoint,
                       QgsSpatialIndex, QgsUnitTypes)

from .baseTools import BaseTools

class CreateBorderLabel(gui.QgsMapTool, BaseTools):

    #Sinal usado para enviar a geometria adquirida ao finalizar aquisição
    acquisitionFinished = QtCore.pyqtSignal(QgsGeometry)
    reshapeLineCreated = QtCore.pyqtSignal(QgsGeometry)

    def __init__(self, iface, toolBar, mapTypeSelector, scaleSelector, productTypeSelector):
        #construtor
        self.iface = iface
        self.toolBar = toolBar
        self.mapTypeSelector = mapTypeSelector
        self.scaleSelector = scaleSelector
        self.productTypeSelector = productTypeSelector
        self.canvas = iface.mapCanvas()
        super(CreateBorderLabel, self).__init__(self.canvas)
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
                                    ".          c #000000",
                                    "+          c #1210f3",
                                    "       ...       ", 
                                    "       .#.       ",
                                    "       .#.       ",
                                    "       .#.       ",
                                    "       .#.       ",
                                    "  .....   .....  ",
                                    "  .####   ####.  ", 
                                    "  .....   .....  ",
                                    "       .#.       ",
                                    "       .#.      ",
                                    "       .#.       ",
                                    "       .#.       ",
                                    "       ...       ",]))
        self.controlPressed = False

    def setupUi(self):
        buttonImg = Path(__file__).parent / 'icons' / 'genericSymbol.png'
        self._action = self.createAction(
            'Rótulo Fronteira',
            None,
            lambda _: None,
            self.tr('Cria feições em "edicao_texto_generico_l" baseadas na proximidade com "edicao_limite_legal_l"'),
            self.tr('Cria feições em "edicao_texto_generico_l" baseadas na proximidade com "edicao_limite_legal_l"'),
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
        line_from_to = QgsGeometry.fromPolyline([QgsPoint(point_from), QgsPoint(point_to)])

        self.cancelEdition()

        # 1. Get the intersection point

        borderFeat, intersectionPoint = self.getIntersection(line_from_to)

        if borderFeat == None:
            self.displayErrorMessage(self.tr(
                'A linha desenhada não cruza uma fronteira.'
            ))
            return None

        # 2. Get 2 little-offseted points

        versor_x, versor_y = self.versorFromLineGeometry(line_from_to)
        EPS = 1e-10
        offsetted_a = QgsPoint(intersectionPoint.x() - versor_x*EPS , intersectionPoint.y() - versor_y*EPS)
        offsetted_b = QgsPoint(intersectionPoint.x() + versor_x*EPS , intersectionPoint.y() + versor_y*EPS)

        # 3. Split the 'name' into 2 label texts

        labelTexts = borderFeat.attribute('nome').split('|')

        # 4. Add a border label for each point-text pair

        self.addBorderLabel(labelTexts[0], offsetted_a, borderFeat.geometry())
        self.addBorderLabel(labelTexts[1], offsetted_b, borderFeat.geometry())

    def activate(self):
        #Método chamado ao ativar a ferramenta
        mapCanvas = self.getCanvas()
        mapCanvas.setCursor(self.getCursor())

    def deactivate(self):
        QtWidgets.QApplication.restoreOverrideCursor()
        gui.QgsMapTool.deactivate(self)

    def getLayers(self):
        srcLyr = QgsProject.instance().mapLayersByName('edicao_limite_legal_l')
        dstLyr = QgsProject.instance().mapLayersByName('edicao_texto_generico_l')
        if len(srcLyr) == 1:
            self.srcLyr = srcLyr[0]
        else:
            self.displayErrorMessage(self.tr(
                'Camada "edicao_limite_legal_l" não encontrada'
            ))
            return None
        if len(dstLyr) == 1:
            self.dstLyr = dstLyr[0]
        else:
            self.displayErrorMessage(self.tr(
                'Camada "edicao_texto_generico_l" não encontrada'
            ))
            return None
        self.lyrCrs = self.srcLyr.dataProvider().crs()
        if self.lyrCrs.isGeographic():
            d = QgsDistanceArea()
            d.setSourceCrs(QgsCoordinateReferenceSystem('EPSG:3857'), QgsCoordinateTransformContext())
            self.tolerance = d.convertLengthMeasurement(self.getScale() * 0.005, QgsUnitTypes.DistanceDegrees)
        else:
            self.tolerance = self.getScale() * 0.005
        self.spatialIndex = QgsSpatialIndex(
            srcLyr[0].getFeatures(), flags=QgsSpatialIndex.FlagStoreFeatureGeometries) 
        return True
    
    def getIntersection(self, drawnLine : QgsGeometry) -> tuple[QgsFeature, QgsPoint]:
        for feat in self.srcLyr.getFeatures():
            if feat.geometry().intersects(drawnLine):
                # This is the feature we want!
                intersectionPoint = feat.geometry().intersection(drawnLine).asPoint()
                return feat, intersectionPoint
        
        return None, None

    def addBorderLabel(self, labelText : str, point : core.QgsPointXY, border : core.QgsGeometry):
        """ Adiciona o rótulo de fronteira """

        toInsert = QgsFeature(self.dstLyr.fields())
        toInsert.setAttribute('texto_edicao', labelText.upper())
        toInsert.setAttribute('estilo_fonte', 'Condensed Bold')
        toInsert.setAttribute('espacamento', 0)
        if self.productTypeSelector.currentIndex() == 0: #Ortoimagem
            toInsert.setAttribute('cor', '#ffffff')
        elif self.productTypeSelector.currentIndex() == 1: #Topografica
            toInsert.setAttribute('cor', '#000000')
        else:
            toInsert.setAttribute('cor', '#000000')
            self.displayErrorMessage('Tipo de produto inválido, cor = #000000, mesma da carta topográfica')
        toInsert.setAttribute('carta_simbolizacao', self.getMapType())
        fontSize = 10
        toInsert.setAttribute('tamanho_txt', fontSize)
        toInsertGeom = self.getLabelGeometry(border, point, fontSize * len(labelText))
        if self.productTypeSelector.currentIndex() == 0: #Ortoimagem
            toInsert.setAttribute('tamanho_buffer', 0.5)
            toInsert.setAttribute('cor_buffer', '#000000')
        toInsert.setGeometry(toInsertGeom)
        self.dstLyr.startEditing()
        self.dstLyr.addFeature(toInsert)
        self.dstLyr.triggerRepaint()
    
    def getLabelGeometry(self, geom : core.QgsGeometry, clickPos : core.QgsPointXY, labelSize : float):
        interpolateSize = labelSize * self.tolerance / 15
        clickPosGeom = QgsGeometry.fromWkt(clickPos.asWkt())
        posClosestV = geom.lineLocatePoint(clickPosGeom)
        start = posClosestV - interpolateSize/2
        end = posClosestV + interpolateSize/2
        if interpolateSize > geom.length():
            toExtend = interpolateSize - geom.length()
            geom = geom.extendLine(toExtend/2,toExtend/2)
        elif posClosestV + interpolateSize/2 > geom.length():
            diff = (posClosestV + interpolateSize/2) - geom.length()
            geom = geom.extendLine(0,diff)
            end = geom.length()
        elif posClosestV - interpolateSize/2 < 0:
            diff =  interpolateSize/2 - posClosestV
            geom = geom.extendLine(diff,0)
            start = 0
            end += diff
        closestV = geom.interpolate(posClosestV)
        start, end = self.adjustGeomLength(geom, start, end)
        toInsertGeom = QgsGeometry(self.buildLineFromGeomDist(start, end, geom))
        toInsertGeom = self.polynomialFit(toInsertGeom)
        toInsertGeom.translate(*self.getTransformParams(closestV,clickPos))
        #toInsertGeom = toInsertGeom.simplify(self.tolerance/3)

        return toInsertGeom
    
    def adjustGeomLength(self, geom : QgsGeometry, start : float, end : float) -> tuple[float, float]:
        if geom.interpolate(start) and geom.interpolate(end):
            firstV = geom.interpolate(start).asPoint()
            lastV = geom.interpolate(end).asPoint()
            realLength = ((firstV.x() - lastV.x())**2 + (firstV.y() - lastV.y())**2)**0.5
            observedLength = end - start
            maxCount = 0
            while(observedLength / realLength) > 1.2 and maxCount < 10:
                start, end = start - self.tolerance, end + self.tolerance
                start = max(start, 0)
                end = min(end, geom.length())
                firstV = geom.interpolate(start).asPoint()
                lastV = geom.interpolate(end).asPoint()
                realLength = ((firstV.x() - lastV.x())**2 + (firstV.y() - lastV.y())**2)**0.5
                maxCount+=1
        return start, end

    def polynomialFit(self, geom):
        #geom = geom.simplify(self.tolerance/10)
        xVert = [p.x() for p in geom.vertices()]
        yVert = [p.y() for p in geom.vertices()]
        f = np.poly1d(np.polyfit(xVert, yVert, 2))
        xVert = sorted(xVert)
        newYVert = f(xVert)
        return QgsGeometry(QgsLineString(xVert,newYVert.tolist()))

    def getTransformParams(self, ref, clickPos):
        ref = ref.asPoint()
        xTranslate = clickPos.x() - ref.x()
        yTranslate =  clickPos.y() - ref.y()
        xTranslate, yTranslate = self.scaleTransform(xTranslate, yTranslate)
        return xTranslate, yTranslate
    
    def scaleTransform(self, x, y):
        d = self.tolerance * 0.9
        scaleFactor = (d**2 / ((x**2 + y**2)))**0.5
        return scaleFactor*x, scaleFactor*y
    
    def buildLineFromGeomDist(self, start, end, geom):
        xCoords = []
        yCoords = []
        if geom.isMultipart():
            for point in geom.asMultiPolyline()[0]:
                xCoords.append(point.x())
                yCoords.append(point.y())
        else:
            for point in geom.asPolyline():
                xCoords.append(point.x())
                yCoords.append(point.y())
        return QgsLineString(xCoords,yCoords).curveSubstring(start,end)
    
    def getCommonBorder(self, polyA : core.QgsGeometry, polyB : core.QgsGeometry) -> core.QgsGeometry:
        """ Retorna a interseção das fronteiras de dois poligonos """

        if polyA.intersects(polyB) == False:
            return None
        
        return polyA.intersection(polyB)
    
    @staticmethod
    def versorFromLineGeometry(lineGeometry : QgsGeometry) -> tuple[float, float]:
        p1 = lineGeometry.asPolyline()[0]
        p2 = lineGeometry.asPolyline()[1]

        dist = p1.distance(p2)
        dx = p2.x() - p1.x()
        dy = p2.y() - p1.y()

        return dx/dist, dy/dist
