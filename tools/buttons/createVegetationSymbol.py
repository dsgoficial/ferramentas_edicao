from pathlib import Path

from qgis.core import (QgsCoordinateReferenceSystem,
                       QgsCoordinateTransformContext, QgsDistanceArea,
                       QgsFeature, QgsFeatureRequest, QgsGeometry, QgsProject,
                       QgsSpatialIndex, QgsUnitTypes)
from qgis.gui import QgsMapToolEmitPoint

from .baseTools import BaseTools


class CreateVegetationSymbol(QgsMapToolEmitPoint, BaseTools):

    def __init__(self, iface, toolBar, scaleSelector):
        super().__init__(iface.mapCanvas())
        self.iface = iface
        self.toolBar = toolBar
        self.mapCanvas = iface.mapCanvas()
        self.scaleSelector = scaleSelector
        self.canvasClicked.connect(self.mouseClick)

    def setupUi(self):
        buttonImg = Path(__file__).parent / 'icons' / 'genericSymbol.png'
        self._action = self.createAction(
            'Símbolo Vegetação',
            None,
            lambda _: None,
            self.tr('Cria feições em "edicao_texto_generico_l" baseadas nos valores de "cobter_vegetacao_a"'),
            self.tr('Cria feições em "edicao_texto_generico_l" baseadas nos valores de "cobter_vegetacao_a"'),
            self.iface
        )
        self._action.setCheckable(True)
        self.setAction(self._action)
        self.toolBar.addAction(self._action)
        self.iface.registerMainWindowAction(self._action, '')

    def mouseClick(self, pos, btn):
        if self.isActive():
            closestSpatialID = self.spatialIndex.nearestNeighbor(pos, maxDistance=self.tolerance)
            print(closestSpatialID)
            # Option 1: Use a QgsFeatureRequest
            request = QgsFeatureRequest().setFilterFids(closestSpatialID)
            closestFeat = self.srcLyr.getFeatures(request)
            if closestSpatialID:
                feat = next(closestFeat)
                toInsert = QgsFeature(self.dstLyr.fields())
                toInsert.setAttribute('texto', self.getVegetationMapping(feat))
                toInsertGeom = QgsGeometry.fromPointXY(pos)
                toInsert.setGeometry(toInsertGeom)
                self.dstLyr.startEditing()
                self.dstLyr.addFeature(toInsert)
                self.mapCanvas.refresh()
            else:
                self.displayErrorMessage('Não foi encontrado um polígono de vegetação dentro da tolerância')

    @staticmethod
    def getVegetationMapping(feat):
        mapping = {
            1296: 'Ref',
            801: 'Caat',
            501: 'Campnr',
            701: 'Cerr',
            401: 'Rest'
        }
        return mapping.get(feat.attribute('tipo'), '')


    def getLayers(self):
        srcLyr = QgsProject.instance().mapLayersByName('cobter_vegetacao_a')
        dstLyr = QgsProject.instance().mapLayersByName('edicao_simb_vegetacao_p')
        if len(srcLyr) == 1:
            self.srcLyr = srcLyr[0]
        else:
            self.displayErrorMessage(self.tr(
                'Camada "cobter_vegetacao_a" não encontrada'
            ))
            return None
        if len(dstLyr) == 1:
            self.dstLyr = dstLyr[0]
        else:
            self.displayErrorMessage(self.tr(
                'Camada "edicao_simb_vegetacao_p" não encontrada'
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
