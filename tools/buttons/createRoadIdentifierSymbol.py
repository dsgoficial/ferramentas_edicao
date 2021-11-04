from pathlib import Path

from PyQt5.QtGui import QIcon
from PyQt5.QtWidgets import QPushButton
from PyQt5.QtCore import Qt
from qgis.core import (Qgis, QgsFeature, QgsFeatureRequest, QgsGeometry,
                       QgsProject, QgsSpatialIndex)
from qgis.gui import QgsMapToolEmitPoint

from .utils.comboBox import ComboBox


class CreateRoadIdentifierSymbol(QgsMapToolEmitPoint):

    def __init__(self, iface, toolBar):
        super().__init__(iface.mapCanvas())
        self.iface = iface
        self.toolBar = toolBar
        self.mapCanvas = iface.mapCanvas()
        self.active = False
        self.currFeat = None
        self.box = ComboBox(self.iface.mainWindow())
        self.box.textActivated.connect(self.createFeature)
        self.canvasClicked.connect(self.mouseClick)

    def setupUi(self):
        buttonImg = Path(__file__).parent / 'icons' / 'genericSymbol.png'
        self.button =  QPushButton(
            QIcon(str(buttonImg)),
            'CreatRoadIdentifierSymbol',
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
                        # self.currFeat = feat
                    else:
                        self.createFeature(roadAbrev)
                else:
                    self.displayErrorMessage(
                        f'Feição selecionada possui atributo "sigla" inválido'
                    )

    def createFeature(self, name):
        self.box.hide()
        toInsert = QgsFeature(self.dstLyr.fields())
        jurisd, abbrv = name.split('-')
        toInsert.setAttribute('jurisdicao', jurisd)
        toInsert.setAttribute('sigla', abbrv)
        toInsertGeom = QgsGeometry.fromPointXY(self.currPos)
        toInsert.setGeometry(toInsertGeom)
        self.dstLyr.startEditing()
        self.dstLyr.addFeature(toInsert)
        self.mapCanvas.refresh()

    def getLayers(self):
        srcLyr = QgsProject.instance().mapLayersByabbrv('infra_via_deslocamento_l')
        dstLyr = QgsProject.instance().mapLayersByName('edicao_identificador_trecho_rod_p')
        if len(srcLyr) == 1:
            self.srcLyr = srcLyr[0]
        else:
            self.displayErrorMessage(
                f'Layer infra_via_deslocamento_l não encontrado'
            )
            return None
        if len(dstLyr) == 1:
            self.dstLyr = dstLyr[0]
        else:
            self.displayErrorMessage(
                f'Layer edicao_identificador_trecho_rod_p não encontrado'
            )
            return None
        self.spatialIndex = QgsSpatialIndex(
            srcLyr[0].getFeatures(), flags=QgsSpatialIndex.FlagStoreFeatureGeometries) 
        return True

    def displayErrorMessage(self, message):
        self.iface.messageBar().pushMessage(message, Qgis.Critical, 5)
