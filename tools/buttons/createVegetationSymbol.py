from pathlib import Path

from qgis.core import (QgsFeature, QgsFeatureRequest, QgsGeometry, QgsProject,
                       QgsSpatialIndex)
from qgis.gui import QgsMapToolEmitPoint

from .baseTools import BaseTools


class CreateVegetationSymbol(QgsMapToolEmitPoint, BaseTools):

    def __init__(self, iface, toolBar):
        super().__init__(iface.mapCanvas())
        self.iface = iface
        self.toolBar = toolBar
        self.mapCanvas = iface.mapCanvas()
        self.canvasClicked.connect(self.mouseClick)

    def setupUi(self):
        buttonImg = Path(__file__).parent / 'icons' / 'genericSymbol.png'
        self._button = self.createPushButton(
            'Símbolo Vegetação',
            buttonImg,
            lambda _: None,
            self.tr('Cria feições em "edicao_texto_generico_l" baseadas nos valores de "cobter_vegetacao_a"'),
            self.tr('Cria feições em "edicao_texto_generico_l" baseadas nos valores de "cobter_vegetacao_a"'),
            self.iface
        )
        self._button.setCheckable(True)
        self.setButton(self._button)
        self._action = self.toolBar.addWidget(self._button)

    def mouseClick(self, pos, btn):
        if self.isActive():
            closestSpatialID = self.spatialIndex.nearestNeighbor(pos)
            print(closestSpatialID)
            # Option 1: Use a QgsFeatureRequest
            request = QgsFeatureRequest().setFilterFids(closestSpatialID)
            closestFeat = self.srcLyr.getFeatures(request)
            if not closestFeat.isClosed():
                feat = next(closestFeat)
                toInsert = QgsFeature(self.dstLyr.fields())
                toInsert.setAttribute('texto', self.getVegetationMapping(feat))
                toInsertGeom = QgsGeometry.fromPointXY(pos)
                toInsert.setGeometry(toInsertGeom)
                self.dstLyr.startEditing()
                self.dstLyr.addFeature(toInsert)
                self.mapCanvas.refresh()

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
        self.spatialIndex = QgsSpatialIndex(
            srcLyr[0].getFeatures(), flags=QgsSpatialIndex.FlagStoreFeatureGeometries) 
        return True
