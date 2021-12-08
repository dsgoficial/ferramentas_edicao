from pathlib import Path
from qgis.core import QgsDistanceArea, QgsCoordinateReferenceSystem, QgsProject, QgsCoordinateTransformContext, QgsUnitTypes
from .baseTools import BaseTools

class CycleLabelPosition(BaseTools):

    def __init__(self, toolBar, iface, scaleSelector) -> None:
        self.toolBar = toolBar
        self.iface = iface
        self.scaleSelector = scaleSelector
        self.mapCanvas = iface.mapCanvas()
        self.pos = 0
        self.ord = [
            (1,1),(-1,1),(1,-1),(-1,-1),
            (0,1),(1,0),(-1,0),(0,-1)
        ] #(0,d)
        self.currentFeats = set()

    def setupUi(self):
        buttonImg = Path(__file__).parent / 'icons' / 'genericSymbol.png'
        self._action = self.createAction(
            'Alternar rótulo',
            None,
            self.run,
            self.tr('Alterna os atributos "label_x" e "label_y"'),
            self.tr('Alterna os atributos "label_x" e "label_y"'),
            self.iface
        )
        self.toolBar.addAction(self._action)
        self.iface.registerMainWindowAction(self._action, '')

    def getUpdateValue(self, feat, featXIdx, featYIdx):
        centroid = feat.geometry().centroid().vertexAt(0)
        refX, refY = centroid.x(), centroid.y()
        attrXValue = feat.attribute(featXIdx)
        attrYValue = feat.attribute(featYIdx)
        if not any((attrXValue, attrYValue)):
            return self.ord[0][0] * self.d + refX, self.ord[0][1] * self.d + refY
        return self.ord[self.pos][0] * self.d + refX, self.ord[self.pos][1] * self.d + refY

    def updateCurrentPos(self):
        self.pos = (self.pos + 1) % 8

    def updateLabelAnchor(self, x, y, name):
        if self.pos == 1: # Top left
            x = x - self.xAnchorAdjustment * len(name)
        if self.pos == 2: # Bottom right
            y = y - self.yAnchorAdjustment
        if self.pos == 3: # Bottom left
            x = x - self.xAnchorAdjustment * len(name)
            y = y - self.yAnchorAdjustment
        if self.pos == 4: # Top
            x = x - self.xAnchorAdjustment * len(name) / 2
        if self.pos == 5: # Right
            y = y - self.yAnchorAdjustment / 2
        if self.pos == 6: # Left
            x = x - self.xAnchorAdjustment * len(name)
            y = y - self.yAnchorAdjustment / 2
        if self.pos == 7: # Bottom
            x = x - self.xAnchorAdjustment * len(name) / 2
            y = y - self.yAnchorAdjustment
        return x, y

    def setTolerance(self, mapSettings):
        self.d = mapSettings.mapUnitsPerPixel() * 10
        self.xAnchorAdjustment = mapSettings.mapUnitsPerPixel() * 20
        self.yAnchorAdjustment = mapSettings.mapUnitsPerPixel() * 40

    def run(self):
        if not (lyr:=self.iface.activeLayer()):
            self.displayErrorMessage(self.tr('Nenhuma camada selecionada'))
        else:
            fieldXIdx = lyr.dataProvider().fieldNameIndex('label_x')
            fieldYIdx = lyr.dataProvider().fieldNameIndex('label_y')
            if any((fieldXIdx == -1, fieldYIdx == -1)):
                self.displayErrorMessage(self.tr('atributos "label_x" ou "label_y" não existem na camada selecionada'))
            else:
                lyr.startEditing()
                mapSettings = self.iface.mapCanvas().mapSettings()
                self.setTolerance(mapSettings)
                if len(self.currentFeats) > 0 and self.currentFeats != set(x.id() for x in lyr.getSelectedFeatures()):
                    self.pos = 0
                    self.currentFeats = set()
                for feat in lyr.getSelectedFeatures():
                    newX, newY = self.getUpdateValue(feat, fieldXIdx, fieldYIdx)
                    newX, newY = self.updateLabelAnchor(newX, newY, feat.attribute('texto_edicao'))
                    lyr.changeAttributeValue(feat.id(), fieldXIdx, newX)
                    lyr.changeAttributeValue(feat.id(), fieldYIdx, newY)
                    self.currentFeats.add(feat.id())
                self.updateCurrentPos()
                lyr.triggerRepaint()
                    