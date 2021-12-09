from pathlib import Path
import math

from qgis.core import (QgsCoordinateReferenceSystem,
                       QgsCoordinateTransformContext, QgsDistanceArea,
                       QgsFeature, QgsFeatureRequest, QgsGeometry,
                       QgsLineString, QgsPointXY, QgsProject, QgsSpatialIndex,
                       QgsUnitTypes)
from qgis.gui import QgsMapToolEmitPoint

from .baseTools import BaseTools
from .utils.comboBox import ComboBox


class CreateRiverLabel(QgsMapToolEmitPoint, BaseTools):

    def __init__(self, iface, toolBar, mapTypeSelector, scaleSelector):
        super().__init__(iface.mapCanvas())
        self.iface = iface
        self.toolBar = toolBar
        self.mapTypeSelector = mapTypeSelector
        self.scaleSelector = scaleSelector
        self.mapCanvas = iface.mapCanvas()
        self.box = ComboBox(self.iface.mainWindow())
        self.canvasClicked.connect(self.mouseClick)

    def setupUi(self):
        buttonImg = Path(__file__).parent / 'icons' / 'genericSymbol.png'
        self._action = self.createAction(
            'Rótulo Rio',
            None,
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
        if self.isActive():
            closestSpatialID = self.spatialIndex.nearestNeighbor(pos, maxDistance=self.tolerance)
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
                    self.displayErrorMessage('Não foram encontradas feições em "elemnat_trecho_drenagem_l"')

    @staticmethod
    def checkFeature(feat):
        return not not feat.attribute('nome')

    def createFeatureA(self, feat, pos):
        toInsert = QgsFeature(self.dstLyr.fields())
        toInsert.setAttribute('texto_edicao', feat.attribute('nome'))
        toInsert.setAttribute('estilo_fonte', 'Condensed Italic')
        # toInsert.setAttribute('justificativa_txt', 2)
        toInsert.setAttribute('espacamento', 0)
        toInsert.setAttribute('cor', '#00a0df')
        toInsert.setAttribute('carta_simbolizacao', self.getMapType())
        labelSize = self.getLabelFontSizeA(feat)
        toInsert.setAttribute('tamanho_txt', labelSize)
        toInsertGeom = self.getLabelGeometry(feat, pos, labelSize)
        toInsert.setGeometry(toInsertGeom)
        self.dstLyr.startEditing()
        self.dstLyr.addFeature(toInsert)
        self.mapCanvas.refresh()

    def createFeatureB(self, feat, pos):
        toInsert = QgsFeature(self.dstLyr.fields())
        toInsert.setAttribute('texto_edicao', feat.attribute('nome').upper())
        toInsert.setAttribute('estilo_fonte', 'Condensed Italic')
        toInsert.setAttribute('espacamento', 0)
        toInsert.setAttribute('cor', '#00a0df')
        toInsert.setAttribute('carta_simbolizacao', self.getMapType())
        labelSize = self.getLabelFontSizeB(feat)
        toInsert.setAttribute('tamanho_txt', labelSize)
        toInsertGeom = self.getLabelGeometry(feat, pos, labelSize)
        toInsert.setGeometry(toInsertGeom)
        self.dstLyr.startEditing()
        self.dstLyr.addFeature(toInsert)
        self.mapCanvas.refresh()

    def getLabelGeometry(self, feat, clickPos, labelSize):
        geom = feat.geometry()
        name = feat.attribute('nome')
        interpolateSize = labelSize * len(str(name)) * self.tolerance / 10
        clickPosGeom = QgsGeometry.fromWkt(clickPos.asWkt())
        posClosestV = geom.lineLocatePoint(clickPosGeom)
        # TODO: Vases 1,2 and 3 need to extend line
        if interpolateSize > geom.length():
            toExtend = interpolateSize - geom.length()
            geom = geom.extendLine(toExtend/2,toExtend/2)
            # start = 0
            # end = geom.length()
        elif posClosestV + interpolateSize/2 > geom.length():
            diff = geom.length() - (posClosestV + interpolateSize/2)
            geom = geom.extendLine(0,diff)
            # start = posClosestV - diff
            # end = geom.length()
        elif posClosestV - interpolateSize/2 < 0:
            diff = abs(posClosestV - interpolateSize/2)
            geom = geom.extendLine(diff,0)
            # start = 0
            # end = posClosestV + diff
        start = posClosestV - interpolateSize/2
        end = posClosestV + interpolateSize/2
        closestV = geom.interpolate(posClosestV)
        firstGeom = geom.interpolate(posClosestV-interpolateSize/2)
        lastGeom = geom.interpolate(posClosestV+interpolateSize/2)
        toInsertGeom = QgsGeometry(self.buildLineFromGeomDist(start, end, geom))
        # toInsertGeom = self.buildLineGeom(firstGeom, lastGeom, geom)
        toInsertGeom.translate(*self.getTransformParams(closestV,clickPos))
        toInsertGeom = toInsertGeom.simplify(self.tolerance/10)
        return toInsertGeom

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

    def buildLineGeom(self, firstGeom, lastGeom, geom):
        xCoords = []
        yCoords = []
        if firstGeom.isNull():
            fp = QgsPointXY(geom.vertexAt(0))
        else:
            fp = firstGeom.asPoint()
        if lastGeom.isNull():
            count = geom.constGet().vertexCount()
            lp = QgsPointXY(geom.vertexAt(count-1))
        else:
            lp = lastGeom.asPoint()
        fpClosestPoint, fpClosestVIdx, fpPrevVIdx, fpNextVIdx, _ = geom.closestVertex(fp)
        lpClosestPoint, lpClosestVIdx, lpPrevVIdx, lpNextVIdx, _ = geom.closestVertex(lp)
        xCoords.append((fp.x()))
        yCoords.append((fp.y()))
        if lpClosestVIdx >= fpClosestVIdx:
            for i in range(fpClosestVIdx, lpClosestVIdx):
                _v = geom.vertexAt(i)
                xCoords.append(_v.x())
                yCoords.append(_v.y())
        xCoords.append(lp.x())
        yCoords.append(lp.y())
        lineGeom = QgsLineString(xCoords, yCoords)
        return QgsGeometry(lineGeom)


    def getLabelFontSizeA(self, feat):
        length = feat.geometry().length()
        scale = self.getScale()
        scaleComparator = scale/1000
        if length < 80*scaleComparator:
            return 6
        elif length < 120*scaleComparator:
            return 7
        elif length < 160*scaleComparator:
            return 8
        else:
            return 9

    def getLabelFontSizeB(self, feat):
        length = feat.geometry().length()
        scale = self.getScale()
        scaleComparator = scale/1000
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
                'Camada "elemnat_trecho_drenagem_l" não encontrada'
            ))
            return None
        if len(dstLyr) == 1:
            self.dstLyr = dstLyr[0]
        else:
            self.displayErrorMessage(self.tr(
                'Camada "edicao_texto_generico_l" não encontrada'
            ))
            return None
        if self.srcLyr.dataProvider().crs().isGeographic():
            d = QgsDistanceArea()
            d.setSourceCrs(QgsCoordinateReferenceSystem('EPSG:3857'), QgsCoordinateTransformContext())
            self.tolerance = d.convertLengthMeasurement(self.getScale() * 0.01, QgsUnitTypes.DistanceDegrees)
        else:
            self.tolerance = self.getScale() * 0.01
        self.spatialIndex = QgsSpatialIndex(
            srcLyr[0].getFeatures(), flags=QgsSpatialIndex.FlagStoreFeatureGeometries) 
        return True
