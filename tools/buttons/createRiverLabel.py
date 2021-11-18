from pathlib import Path

from qgis.core import (QgsFeature, QgsFeatureRequest, QgsGeometry, QgsLineString,
                       QgsPointXY, QgsProject, QgsSpatialIndex)
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
            closestSpatialID = self.spatialIndex.nearestNeighbor(pos)
            # Option 1 (actual): Use a QgsFeatureRequest
            # Option 2: Use a dict lookup
            request = QgsFeatureRequest().setFilterFids(closestSpatialID)
            closestFeat = self.srcLyr.getFeatures(request)
            if not closestFeat.isClosed():
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
        labelSize = self.getLabelFontSizeB(feat)
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

    def getMapType(self):
        mapType = self.mapTypeSelector.currentText()
        if mapType == 'Carta':
            return 0
        return 1

    def getLabelGeometry(self, feat, clickPos, labelSize):
        geom = feat.geometry()
        name = feat.attribute('nome')
        interpolateSize = labelSize * len(str(name)) * 0.5
        clickPosGeom = QgsGeometry.fromWkt(clickPos.asWkt())
        posClosestV = geom.lineLocatePoint(clickPosGeom)
        closestV = geom.interpolate(posClosestV)
        firstGeom = geom.interpolate(posClosestV-interpolateSize/2)
        lastGeom = geom.interpolate(posClosestV+interpolateSize/2)
        toInsertGeom = self.buildLineGeom(firstGeom, lastGeom, geom)
        toInsertGeom.translate(*self.getTransformParams(closestV,clickPos))
        toInsertGeom = toInsertGeom.simplify(2)
        return toInsertGeom

    def getTransformParams(self, ref, clickPos):
        ref = ref.asPoint()
        xTranslate = clickPos.x() - ref.x()
        yTranslate =  clickPos.y() - ref.y()
        return xTranslate, yTranslate

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
            return 6
        elif length < 80*scaleComparator:
            return 7
        elif length < 100*scaleComparator:
            return 8
        elif length < 120*scaleComparator:
            return 9
        elif length < 160*scaleComparator:
            return 10
        elif length < 200*scaleComparator:
            return 12
        else:
            return 16

    def getScale(self):
        scale = self.scaleSelector.currentText()
        scale = scale.split(':')[1]
        scale = scale.replace('.', '')
        return int(scale)

    def getLayers(self):
        srcLyr = QgsProject.instance().mapLayersByName('elemnat_trecho_drenagem_l')
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
        self.spatialIndex = QgsSpatialIndex(
            srcLyr[0].getFeatures(), flags=QgsSpatialIndex.FlagStoreFeatureGeometries) 
        return True
