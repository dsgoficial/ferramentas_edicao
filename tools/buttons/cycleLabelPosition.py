from pathlib import Path
from qgis.core import QgsDistanceArea, QgsCoordinateReferenceSystem, QgsProject, QgsCoordinateTransformContext, QgsUnitTypes
from .baseTools import BaseTools

class CycleLabelPosition(BaseTools):

    def __init__(self, toolBar, iface, scaleSelector) -> None:
        self.toolBar = toolBar
        self.iface = iface
        self.scaleSelector = scaleSelector
        d = 0.004
        self.pos = 0
        self.ord = [
            (d,d),(-2*d,0),(2*d,-2*d),((0,-2*d)),
            (d,2*d),(d,-d),(-2*d,0),(d,-d)
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

    def getUpdateValue(self, feat, featXIdx, featYIdx, isGeographic):
        centroid = feat.geometry().centroid().vertexAt(0)
        scale = self.scaleSelector.currentText()
        scale = int(scale.replace('.', '').split(':')[1])
        attrXValue = feat.attribute(featXIdx)
        attrYValue = feat.attribute(featYIdx)
        oldX, oldY = centroid.x(), centroid.y()
        if isGeographic:
            d = QgsDistanceArea()
            d.setSourceCrs(QgsCoordinateReferenceSystem('EPSG:3857'), QgsCoordinateTransformContext())
            if not any((attrXValue, attrYValue)):
                d0 = d.convertLengthMeasurement(self.ord[0][0] * scale, QgsUnitTypes.DistanceDegrees)
                d1 = d.convertLengthMeasurement(self.ord[0][1] * scale, QgsUnitTypes.DistanceDegrees)
            else:
                d0 = d.convertLengthMeasurement(self.ord[self.pos][0] * scale, QgsUnitTypes.DistanceDegrees)
                d1 = d.convertLengthMeasurement(self.ord[self.pos][1] * scale, QgsUnitTypes.DistanceDegrees)
            return d0 + oldX, d1 + oldY
        else:
            if not any((attrXValue, attrYValue)):
                return self.ord[0][0] * scale + oldX, self.ord[0][1] * scale + oldY
            return self.ord[self.pos][0] * scale + oldX, self.ord[self.pos][1] * scale + oldY

    def updateCurrentPos(self):
        self.pos = (self.pos + 1) % 8

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
                isGeographic = lyr.dataProvider().crs().isGeographic()
                if len(self.currentFeats) > 0 and self.currentFeats != set(x.id() for x in lyr.getSelectedFeatures()):
                    self.pos = 0
                    self.currentFeats = set()
                for feat in lyr.getSelectedFeatures():
                    newX, newY = self.getUpdateValue(feat, fieldXIdx, fieldYIdx, isGeographic)
                    lyr.changeAttributeValue(feat.id(), fieldXIdx, newX)
                    lyr.changeAttributeValue(feat.id(), fieldYIdx, newY)
                    self.currentFeats.add(feat.id())
                self.updateCurrentPos()
                    