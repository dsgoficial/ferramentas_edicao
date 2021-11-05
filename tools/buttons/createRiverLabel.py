from pathlib import Path
import math

from PyQt5.QtGui import QIcon
from PyQt5.QtWidgets import QPushButton
from PyQt5.QtCore import Qt
from qgis.core import (Qgis, QgsFeature, QgsFeatureRequest, QgsGeometry,
                       QgsProject, QgsSpatialIndex)
from qgis.gui import QgsMapToolEmitPoint

from .utils.comboBox import ComboBox


class CreateRiverLabel(QgsMapToolEmitPoint):

    def __init__(self, iface, toolBar, mapTypeSelector, scaleSelector):
        super().__init__(iface.mapCanvas())
        self.iface = iface
        self.toolBar = toolBar
        self.mapTypeSelector = mapTypeSelector
        self.scaleSelector = scaleSelector
        self.mapCanvas = iface.mapCanvas()
        self.active = False
        self.box = ComboBox(self.iface.mainWindow())
        self.box.textActivated.connect(self.createFeature)
        self.canvasClicked.connect(self.mouseClick)

    def setupUi(self):
        buttonImg = Path(__file__).parent / 'icons' / 'genericSymbol.png'
        self.button =  QPushButton(
            QIcon(str(buttonImg)),
            'CreateRiverLabel',
            self.iface.mainWindow()
        )
        self.setButton(self.button)
        self.button.clicked.connect(self.setMapTool)
        self.toolBar.addWidget(self.button)

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
                if self.checkFeature(feat):
                    if feat.attribute('situacao_em_poligono') == 1:
                        self.createFeatureA(feat, pos)
                    elif feat.attribute('situacao_em_poligono') in (2,3):
                        self.createFeatureB(feat, pos)
                else:
                    self.displayErrorMessage(
                        f'Feição selecionada inválida. Verifique os campos "nome" e "tipo" na camada cobter_massa_dagua_a'
                    )

    @staticmethod
    def checkFeature(feat):
        return not not feat.attribute('nome')

    def createFeatureA(self, feat, pos):
        toInsert = QgsFeature(self.dstLyr.fields())
        toInsert.setAttribute('texto_edicao', feat.attribute('nome'))
        toInsert.setAttribute('estilo_fonte', 'Condensed Italic')
        toInsert.setAttribute('justificativa_txt', 2)
        toInsert.setAttribute('espacamento', 0)
        toInsert.setAttribute('cor', '#00a0df')
        toInsert.setAttribute('carta_simbolizacao', self.getMapType())
        toInsert.setAttribute('tamanho_txt', self.getLabelSize(feat))
        toInsertGeom = self.getLabelGeometry(pos)
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
        toInsert.setAttribute('tamanho_txt', self.getLabelSize(feat))
        toInsertGeom = self.getLabelGeometry(pos)
        toInsert.setGeometry(toInsertGeom)
        self.dstLyr.startEditing()
        self.dstLyr.addFeature(toInsert)
        self.mapCanvas.refresh()

    def getMapType(self):
        mapType = self.mapTypeSelector.currentText()
        if mapType == 'Carta':
            return 0
        return 1

    def getLabelGeometry(self, pos):
        pass

    def getLabelSize(self, feat):
        area = feat.geometry().area()
        scale = self.getScale()
        scaleComparator = (scale/1000)**2
        if area < 2300*scaleComparator:
            return 6
        elif area < 3600*scaleComparator:
            return 7
        elif area < 5200*scaleComparator:
            return 8
        elif area < 9800*scaleComparator:
            return 9
        elif area < 16500*scaleComparator:
            return 10
        elif area < 25000*scaleComparator:
            return 12
        elif area < 36000*scaleComparator:
            return 14
        else:
            return 16

    def getScale(self):
        scale = self.scaleSelector.currentText()
        scale = scale.split(':')[1]
        scale = scale.strip('.')
        return int(scale)

    def getLayers(self):
        srcLyr = QgsProject.instance().mapLayersByName('elemnat_trecho_drenagem_l')
        dstLyr = QgsProject.instance().mapLayersByName('edicao_texto_generico_l')
        if len(srcLyr) == 1:
            self.srcLyr = srcLyr[0]
        else:
            self.displayErrorMessage(
                f'Layer elemnat_trecho_drenagem_l não encontrado'
            )
            return None
        if len(dstLyr) == 1:
            self.dstLyr = dstLyr[0]
        else:
            self.displayErrorMessage(
                f'Layer edicao_texto_generico_l não encontrado'
            )
            return None
        self.spatialIndex = QgsSpatialIndex(
            srcLyr[0].getFeatures(), flags=QgsSpatialIndex.FlagStoreFeatureGeometries) 
        return True

    def displayErrorMessage(self, message):
        self.iface.messageBar().pushMessage(message, Qgis.Critical, 5)
