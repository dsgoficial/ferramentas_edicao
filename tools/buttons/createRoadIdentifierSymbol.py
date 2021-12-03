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
        print('mopa')
        if self.isActive():
            closestSpatialID = self.spatialIndex.nearestNeighbor(pos)
            print(closestSpatialID)
            # Option 1 (actual): Use a QgsFeatureRequest
            # Option 2: Use a dict lookup
            request = QgsFeatureRequest().setFilterFids(closestSpatialID)
            closestFeat = self.srcLyr.getFeatures(request)
            if not closestFeat.isClosed():
                feat = next(closestFeat)
                jurisd = feat.attribute('jurisdicao')
                if roadAbrev:=feat.attribute('sigla'):
                    self.currPos = pos
                    if ';' in roadAbrev:
                        options = roadAbrev.split(';')
                        self.box.updateItems(options)
                        self.box.showComboBox()
                    else:
                        self.createFeature(roadAbrev, jurisd)
                else:
                    self.displayErrorMessage(self.tr(
                        f'Feição selecionada possui atributo "sigla" inválido'
                    ))

    def createFeature(self, name, jurisd):
        self.box.hide()
        toInsert = QgsFeature(self.dstLyr.fields())
        abbrv = name.split('-')[1]
        toInsert.setAttribute('jurisdicao', jurisd)
        toInsert.setAttribute('sigla', abbrv)
        if self.mapChoice.currentText() == 'Carta Mini':
            toInsert.setAttribute('carta_simbolizacao', 2)
        else:
            toInsert.setAttribute('carta_simbolizacao', 1)
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
        self.spatialIndex = QgsSpatialIndex(
            srcLyr[0].getFeatures(), flags=QgsSpatialIndex.FlagStoreFeatureGeometries) 
        return True
