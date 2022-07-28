from pathlib import Path

from qgis.core import (QgsFeature, QgsFeatureRequest, QgsGeometry, QgsProject, QgsPoint,
                       QgsSpatialIndex, QgsDistanceArea, QgsCoordinateTransformContext,
                       QgsCoordinateReferenceSystem, QgsUnitTypes, QgsGeometryUtils)
from qgis.gui import QgsMapToolEmitPoint

from .baseTools import BaseTools
from PyQt5.QtWidgets import QMenu
from PyQt5.QtGui import QCursor


class CreateRoadIdentifierSymbol(QgsMapToolEmitPoint,BaseTools):

    def __init__(self, iface, toolBar, mapTypeSelector, scaleSelector):
        super().__init__(iface.mapCanvas())
        self.iface = iface
        self.toolBar = toolBar
        self.mapTypeSelector = mapTypeSelector
        self.scaleSelector = scaleSelector
        self.mapCanvas = iface.mapCanvas()
        self.canvasClicked.connect(self.mouseClick)

    def setupUi(self):
        buttonImg = Path(__file__).parent / 'icons' / 'genericSymbol.png'
        self._action = self.createAction(
            'Símbolo Idt.Tr.Rod.',
            None,
            lambda _: None,
            self.tr('Cria feições em "edicao_identificador_trecho_rod_p" baseadas nos valores de "infra_via_deslocamento_l"'),
            self.tr('Cria feições em "edicao_identificador_trecho_rod_p" baseadas nos valores de "infra_via_deslocamento_l"'),
            self.iface
        )
        self._action.setCheckable(True)
        self.setAction(self._action)
        self.toolBar.addAction(self._action)
        self.iface.registerMainWindowAction(self._action, '')

    def mouseClick(self, pos, btn):
        if self.isActive():
            closestSpatialID = self.spatialIndex.nearestNeighbor(pos, maxDistance=self.tolerance+2)
            # Option 1 (actual): Use a QgsFeatureRequest
            # Option 2: Use a dict lookup
            request = QgsFeatureRequest().setFilterFids(closestSpatialID)
            closestFeat = self.srcLyr.getFeatures(request)
            if closestSpatialID:
                feat = next(closestFeat)
                roadType = feat.attribute('tipo')
                if roadAbrev:=feat.attribute('sigla'):
                    self.currPos = self.projectPosition(pos, feat)
                    if ';' in roadAbrev:
                        options = roadAbrev.split(';')
                        menu = self.createMenu(options, roadType)
                        menu.exec_(QCursor.pos())
                    else:
                        self.createFeature(roadAbrev, roadType)
                else:
                    self.displayErrorMessage(self.tr(
                        f'Feição selecionada possui atributo "sigla" inválido'
                    ))
            else:
                self.displayErrorMessage('Não foi encontrada uma via de deslocamento dentro da tolerância')

    def createMenu(self, options, roadType):
        menu = QMenu()
        for option in options:
            action = menu.addAction(option)
            action.triggered.connect(lambda b, n=option: self.createFeature(n, roadType))
        return menu
        

    def createFeature(self, name, roadType):
        toInsert = QgsFeature(self.dstLyr.fields())
        jurisd, abbrv = name.split('-')
        jurisd = self.getjurisdiction(jurisd)
        toInsert.setAttribute('jurisdicao', jurisd)
        toInsert.setAttribute('sigla', abbrv)
        toInsert.setAttribute('tipo', roadType)
        toInsert.setAttribute('carta_simbolizacao', self.getMapType())
        toInsert.setGeometry(self.currPos)
        self.dstLyr.startEditing()
        self.dstLyr.addFeature(toInsert)
        self.dstLyr.triggerRepaint()

    def getjurisdiction(self, abbr):
        if abbr in ('BR','VE') :
            return 1
        if abbr in ('RS','SC','PR','SP','RJ','MG','ES','MS','MT','AP','AM','RO','RR','PA','AC','TO','MA','CE','RN','PI','PB','PE','AL','SE','BA'):
            return 2
        return 0

    def projectPosition(self, pos, feat):
        geom = feat.geometry()
        point = QgsPoint(pos.x(), pos.y())
        point, vIdx, prevVIdx, nextVIdx, _ = geom.closestVertex(pos)
        if prevVIdx == -1:
            prevPoint = geom.vertexAt(vIdx)
            nextPoint = geom.vertexAt(nextVIdx)
        else:
            prevPoint = geom.vertexAt(prevVIdx)
            nextPoint = geom.vertexAt(vIdx)
        return QgsGeometryUtils.projectPointOnSegment(
            QgsPoint(pos.x(), pos.y()),
            QgsPoint(prevPoint.x(),prevPoint.y()),
            QgsPoint(nextPoint.x(),nextPoint.y()))

    def getLayers(self):
        srcLyr = QgsProject.instance().mapLayersByName('infra_via_deslocamento_l')
        dstLyr = QgsProject.instance().mapLayersByName('edicao_identificador_trecho_rod_p')
        if len(srcLyr) == 1:
            self.srcLyr = srcLyr[0]
        else:
            self.displayErrorMessage(self.tr(
                'Camada "infra_via_deslocamento_l" não encontrada'
            ))
            return None
        if len(dstLyr) == 1:
            self.dstLyr = dstLyr[0]
        else:
            self.displayErrorMessage(self.tr(
                'Camada "edicao_identificador_trecho_rod_p" não encontrada'
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
