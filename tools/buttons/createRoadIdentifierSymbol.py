from pathlib import Path

from qgis.core import (QgsFeature, QgsFeatureRequest, QgsGeometry, QgsProject,
                       QgsSpatialIndex)
from qgis.gui import QgsMapToolEmitPoint

from .baseTools import BaseTools
from .utils.comboBox import ComboBox


class CreateRoadIdentifierSymbol(QgsMapToolEmitPoint,BaseTools):

    def __init__(self, iface, toolBar, mapChoice):
        super().__init__(iface.mapCanvas())
        self.iface = iface
        self.toolBar = toolBar
        self.mapChoice = mapChoice
        self.mapCanvas = iface.mapCanvas()
        self.active = False
        self.box = ComboBox(self.iface.mainWindow())
        self.box.textActivated.connect(self.createFeature)
        self.canvasClicked.connect(self.mouseClick)

    def setupUi(self):
        buttonImg = Path(__file__).parent / 'icons' / 'genericSymbol.png'
        self._button = self.createPushButton(
            'CreatRoadIdentifierSymbol',
            buttonImg,
            self.setMapTool,
            self.tr('Creates features in "edicao_identificador_trecho_rod_p" based on "infra_via_deslocamento_l" values'),
            self.tr('Creates features in "edicao_identificador_trecho_rod_p" based on "infra_via_deslocamento_l" values'),
            self.iface
        )
        self.setButton(self._button)
        self._action = self.toolBar.addWidget(self._button)

    def setMapTool(self):
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
            # Option 1 (actual): Use a QgsFeatureRequest
            # Option 2: Use a dict lookup
            request = QgsFeatureRequest().setFilterFids(closestSpatialID)
            closestFeat = self.srcLyr.getFeatures(request)
            if not closestFeat.isClosed():
                feat = next(closestFeat)
                if roadAbrev:=feat.attribute('sigla'):
                    self.currPos = pos
                    if ';' in roadAbrev:
                        options = roadAbrev.split(';')
                        self.box.updateItems(options)
                        self.box.showComboBox()
                    else:
                        self.createFeature(roadAbrev)
                else:
                    self.displayErrorMessage(self.tr(
                        f'Selected feature has an invalid "sigla" attribute'
                    ))

    def createFeature(self, name):
        self.box.hide()
        toInsert = QgsFeature(self.dstLyr.fields())
        jurisd, abbrv = name.split('-')
        toInsert.setAttribute('jurisdicao', jurisd)
        toInsert.setAttribute('sigla', abbrv)
        if self.mapChoice.currentText() == 'Carta Mini':
            toInsert.setAttribute('carta_mini', True)
        else:
            toInsert.setAttribute('carta_mini', False)
        toInsertGeom = QgsGeometry.fromPointXY(self.currPos)
        toInsert.setGeometry(toInsertGeom)
        self.dstLyr.startEditing()
        self.dstLyr.addFeature(toInsert)
        self.mapCanvas.refresh()

    def getLayers(self):
        srcLyr = QgsProject.instance().mapLayersByName('infra_via_deslocamento_l')
        dstLyr = QgsProject.instance().mapLayersByName('edicao_identificador_trecho_rod_p')
        if len(srcLyr) == 1:
            self.srcLyr = srcLyr[0]
        else:
            self.displayErrorMessage(self.tr(
                'Layer "infra_via_deslocamento_l" not found'
            ))
            return None
        if len(dstLyr) == 1:
            self.dstLyr = dstLyr[0]
        else:
            self.displayErrorMessage(self.tr(
                'Layer "edicao_identificador_trecho_rod_p" not found'
            ))
            return None
        self.spatialIndex = QgsSpatialIndex(
            srcLyr[0].getFeatures(), flags=QgsSpatialIndex.FlagStoreFeatureGeometries) 
        return True
