from .baseMapEmitPointTool import BaseMapEmitPointTool
from qgis.core import QgsProject, QgsSpatialIndex
from qgis.gui import QgsMapToolEmitPoint

class CreateVegetationSymbolTool(BaseMapEmitPointTool):

    def __init__(self, canvas):
        super().__init__(canvas)
        # self.getLayers()

    def mouseClick(self, pos, btn):
        closest = self.spatialIndex.nearestNeighbor(pos)
        print(closest)

    def getLayers(self):
        srcLyr = QgsProject.instance().mapLayersByName('cobter_vegetacao_a')
        if len(srcLyr) == 1:
            self.srcLyr = srcLyr[0]
        else:
            self.displayErrorMessage(
                f'Layer cobter_vegetacao_a não encontrado'
            )
        self.spatialIndex = QgsSpatialIndex(
            srcLyr[0].getFeatures(), flags=QgsSpatialIndex.FlagStoreFeatureGeometries)

        dstLyr = QgsProject.instance().mapLayersByName('edicao_simb_vegetacao_p')
        if len(dstLyr) == 1:
            self.dstLyr = dstLyr[0]
        else:
            self.displayErrorMessage(
                f'Layer edicao_simb_vegetacao_p não encontrado'
            )
