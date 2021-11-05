from pathlib import Path
from qgis.core import QgsProject, QgsSpatialIndex, Qgis, QgsFeatureRequest, QgsFeature, QgsGeometry
from qgis.gui import QgsMapToolEmitPoint

from PyQt5.QtWidgets import QWidget, QPushButton, QAction
from PyQt5.QtGui import QIcon


class CreateVegetationSymbol(QgsMapToolEmitPoint):

    def __init__(self, iface, toolBar):
        super().__init__(iface.mapCanvas())
        self.iface = iface
        self.toolBar = toolBar
        self.mapCanvas = iface.mapCanvas()
        self.active = False
        self.canvasClicked.connect(self.mouseClick)

    def setupUi(self):
        buttonImg = Path(__file__).parent / 'icons' / 'genericSymbol.png'
        self.button =  QPushButton(
            QIcon(str(buttonImg)),
            'CreateVegetationSymbol',
            self.iface.mainWindow()
        )
        self.setButton(self.button)
        self.button.clicked.connect(self.setMapTool)
        self.toolBar.addWidget(self.button)

    def setMapTool(self):
        print('setting active / not active')
        self.active = not self.active
        if self.active:
            if not self.getLayers():
                self.active = False
                self.mapCanvas.unsetMapTool(self)
            self.mapCanvas.setMapTool(self)
        else:
            self.mapCanvas.unsetMapTool(self)

    def mouseClick(self, pos, btn):
        if self.active:
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


            # Option 2: TODO: Use a dict lookup

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
            self.displayErrorMessage(
                f'Layer cobter_vegetacao_a não encontrado'
            )
            return None
        if len(dstLyr) == 1:
            self.dstLyr = dstLyr[0]
        else:
            self.displayErrorMessage(
                f'Layer edicao_simb_vegetacao_p não encontrado'
            )
            return None
        self.spatialIndex = QgsSpatialIndex(
            srcLyr[0].getFeatures(), flags=QgsSpatialIndex.FlagStoreFeatureGeometries) 
        return True

    def displayErrorMessage(self, message):
        self.iface.messageBar().pushMessage(message, Qgis.Critical, 5)