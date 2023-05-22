from lib2to3.pytree import convert
from pathlib import Path
import numpy as np
from numpy.core.fromnumeric import sort

from qgis.core import (QgsCoordinateReferenceSystem, QgsGeometryUtils,
                       QgsCoordinateTransformContext, QgsDistanceArea,
                       QgsFeature, QgsFeatureRequest, QgsGeometry,
                       QgsLineString, QgsPointXY, QgsProject, QgsSpatialIndex,
                       QgsUnitTypes)
from qgis.gui import QgsMapToolEmitPoint

from .baseTools import BaseTools
from .utils.comboBox import ComboBox


class CreateRiverLabel(QgsMapToolEmitPoint, BaseTools):

    def __init__(self, iface, toolBar, mapTypeSelector, scaleSelector, productTypeSelector):
        super().__init__(iface.mapCanvas())
        self.iface = iface
        self.toolBar = toolBar
        self.dstLyr = None
        self.mapTypeSelector = mapTypeSelector
        self.scaleSelector = scaleSelector
        self.productTypeSelector = productTypeSelector
        self.mapCanvas = iface.mapCanvas()
        self.box = ComboBox(self.iface.mainWindow())
        self.canvasClicked.connect(self.mouseClick)

    def setupUi(self):
        buttonImg = Path(__file__).parent / 'icons' / 'Rotulo_rio.png'
        self._action = self.createAction(
            'Rótulo Rio',
            buttonImg,
            lambda _: None,
            self.tr('Cria feições em "edicao_texto_generico_l" baseadas na proximidade com "elemnat_trecho_drenagem_l"'),
            self.tr('Cria feições em "edicao_texto_generico_l" baseadas na proximidade com "elemnat_trecho_drenagem_l"'),
            self.iface
        )
        self._action.setCheckable(True)
        self.setAction(self._action)
        self.toolBar.addAction(self._action)
        self.iface.registerMainWindowAction(self._action, '')

    def mouseClick(self, pos, btn):
        if self.isActive() and self.dstLyr:
            closestSpatialID = self.spatialIndex.nearestNeighbor(pos, maxDistance=2*self.tolerance)
            # Option 1 (actual): Use a QgsFeatureRequest
            # Option 2: Use a dict lookup
            request = QgsFeatureRequest().setFilterFids(closestSpatialID)
            closestFeat = self.srcLyr.getFeatures(request)
            if closestSpatialID:
                feat = next(closestFeat)
                if self.checkFeature(feat):
                    if feat.attribute('situacao_em_poligono') == 1:
                        self.createFeatureA(feat, pos)
                    elif feat.attribute('situacao_em_poligono') in (2,3):
                        self.createFeatureB(feat, pos)
                    else:
                        self.displayErrorMessage(self.tr(
                        'Feição inválida. Verifique os atributos na camada "elemnat_trecho_drenagem_l"'
                        ))
                else:
                    self.displayErrorMessage(self.tr(
                        'Feição inválida. Verifique os atributos na camada "elemnat_trecho_drenagem_l"'
                    ))
            else:
                    self.displayErrorMessage('Não foram encontradas feições em "elemnat_trecho_drenagem_l_merged"')

    @staticmethod
    def checkFeature(feat):
        return not not feat.attribute('nome')

    def createFeatureA(self, feat, pos):
        toInsert = QgsFeature(self.dstLyr.fields())
        toInsert.setAttribute('texto_edicao', feat.attribute('nome'))
        toInsert.setAttribute('estilo_fonte', 'Condensed Italic')
        toInsert.setAttribute('espacamento', 0)
        if self.productTypeSelector.currentIndex() == 0: #Ortoimagem
            toInsert.setAttribute('cor', '#ffffff')
        elif self.productTypeSelector.currentIndex() == 1: #Topografica
            toInsert.setAttribute('cor', '#00a0df')
        else:
            toInsert.setAttribute('cor', '#00a0df')
            self.displayErrorMessage('Tipo de produto inválido, cor = #00a0df, mesma da carta topográfica')
        labelSize = self.getLabelFontSizeA(feat)
        toInsert.setAttribute('tamanho_txt', labelSize)
        toInsertGeom = self.getLabelGeometry(feat, pos, labelSize)
        if self.productTypeSelector.currentIndex() == 0: #Ortoimagem
            toInsert.setAttribute('tamanho_buffer', 1)
            toInsert.setAttribute('cor_buffer', '#00a0df')
        toInsert.setGeometry(toInsertGeom)
        self.dstLyr.startEditing()
        self.dstLyr.addFeature(toInsert)
        self.dstLyr.triggerRepaint()

    def createFeatureB(self, feat, pos):
        toInsert = QgsFeature(self.dstLyr.fields())
        toInsert.setAttribute('texto_edicao', feat.attribute('nome').upper())
        toInsert.setAttribute('estilo_fonte', 'Condensed Italic')
        toInsert.setAttribute('espacamento', 0)
        if self.productTypeSelector.currentIndex() == 0: #Ortoimagem
            toInsert.setAttribute('cor', '#ffffff')
        elif self.productTypeSelector.currentIndex() == 1: #Topografica
            toInsert.setAttribute('cor', '#00a0df')
        else:
            toInsert.setAttribute('cor', '#00a0df')
            self.displayErrorMessage('Tipo de produto inválido, cor = #00a0df, mesma da carta topográfica')
        labelSize = self.getLabelFontSizeB(feat)
        toInsert.setAttribute('tamanho_txt', labelSize)
        toInsertGeom = self.getLabelGeometry(feat, pos, labelSize)
        if self.productTypeSelector.currentIndex() == 0: #Ortoimagem
            toInsert.setAttribute('tamanho_buffer', 1)
            toInsert.setAttribute('cor_buffer', '#00a0df')
        toInsert.setGeometry(toInsertGeom)
        self.dstLyr.startEditing()
        self.dstLyr.addFeature(toInsert)
        self.dstLyr.triggerRepaint()

    def getLabelGeometry(self, feat, clickPos, labelSize):
        geom = feat.geometry()
        name = feat.attribute('nome')
        interpolateSize = labelSize * len(str(name)) * self.tolerance / 15
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

    def adjustGeomLength(self, geom, start, end):
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
        d = self.tolerance
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


    def getLabelFontSizeA(self, feat):
        scale = self.getScale()
        scaleComparator = scale/1000
        if self.lyrCrs.isGeographic():
            convertLength = QgsDistanceArea()
            convertLength.setEllipsoid(self.lyrCrs.authid())
            measure = convertLength.measureLength(feat.geometry())
            length = convertLength.convertLengthMeasurement(measure, QgsUnitTypes.DistanceMeters)
        else:
            length = feat.geometry().length()
        if length < 80*scaleComparator:
            return 6
        elif length < 120*scaleComparator:
            return 7
        elif length < 160*scaleComparator:
            return 8
        else:
            return 9

    def getLabelFontSizeB(self, feat):
        scale = self.getScale()
        scaleComparator = scale/1000
        if self.lyrCrs.isGeographic():
            convertLength = QgsDistanceArea()
            convertLength.setEllipsoid(self.lyrCrs.authid())
            measure = convertLength.measureLength(feat.geometry())
            length = convertLength.convertLengthMeasurement(measure, QgsUnitTypes.DistanceMeters)
        else:
            length = feat.geometry().length()
        if length < 65*scaleComparator:
            return 7
        elif length < 80*scaleComparator:
            return 8
        elif length < 100*scaleComparator:
            return 9
        elif length < 120*scaleComparator:
            return 10
        elif length < 160*scaleComparator:
            return 12
        elif length < 200*scaleComparator:
            return 14
        else:
            return 16

    def getLayers(self):
        srcLyr = QgsProject.instance().mapLayersByName('elemnat_trecho_drenagem_l_merged')
        dstLyr = QgsProject.instance().mapLayersByName('edicao_texto_generico_l')
        if len(srcLyr) == 1:
            self.srcLyr = srcLyr[0]
        else:
            self.displayErrorMessage(self.tr(
                'Camada "elemnat_trecho_drenagem_l_merged" não encontrada'
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
