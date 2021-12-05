from pathlib import Path

from qgis.core import (QgsFeature, QgsFeatureRequest, QgsGeometry, QgsProject, QgsPoint,
                       QgsSpatialIndex, QgsDistanceArea, QgsCoordinateTransformContext,
                       QgsCoordinateReferenceSystem, QgsUnitTypes, QgsGeometryUtils)
from qgis.gui import QgsMapToolEmitPoint

from .baseTools import BaseTools
from .utils.comboBox import ComboBox


class CreateRoadIdentifierSymbol(QgsMapToolEmitPoint,BaseTools):

    def __init__(self, iface, toolBar, mapTypeSelector, scaleSelector):
        super().__init__(iface.mapCanvas())
        self.iface = iface
        self.toolBar = toolBar
        self.mapTypeSelector = mapTypeSelector
        self.scaleSelector = scaleSelector
        self.mapCanvas = iface.mapCanvas()
        self.box = ComboBox(self.iface.mainWindow())
        self.box.textActivated.connect(self.createFeature)
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
            closestSpatialID = self.spatialIndex.nearestNeighbor(pos, maxDistance=self.tolerance)
            # Option 1 (actual): Use a QgsFeatureRequest
            # Option 2: Use a dict lookup
            request = QgsFeatureRequest().setFilterFids(closestSpatialID)
            closestFeat = self.srcLyr.getFeatures(request)
            if closestSpatialID:
                feat = next(closestFeat)
                self.jurisd = feat.attribute('jurisdicao')
                if roadAbrev:=feat.attribute('sigla'):
                    self.currPos = self.projectPosition(pos, feat)
                    if ';' in roadAbrev:
                        options = roadAbrev.split(';')
                        self.box.updateItems(options)
                        self.box.showComboBox()
                    else:
                        self.createFeature(roadAbrev)
                else:
                    self.displayErrorMessage(self.tr(
                        f'Feição selecionada possui atributo "sigla" inválido'
                    ))
            else:
                self.displayErrorMessage('Não foi encontrada uma via de deslocamento dentro da tolerância')

    def createFeature(self, name):
        self.box.hide()
        toInsert = QgsFeature(self.dstLyr.fields())
        abbrv = name.split('-')[1]
        toInsert.setAttribute('jurisdicao', self.jurisd)
        toInsert.setAttribute('sigla', abbrv)
        toInsert.setAttribute('carta_mini', self.getMapType())
        toInsert.setGeometry(self.currPos)
        self.dstLyr.startEditing()
        self.dstLyr.addFeature(toInsert)
        self.mapCanvas.refresh()

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
