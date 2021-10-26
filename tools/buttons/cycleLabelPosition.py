from PyQt5.QtWidgets import QWidget

from .baseTools import BaseTools

class CycleLabelPosition(BaseTools):

    def __init__(self, toolBar, iface) -> None:
        self.toolBar = toolBar
        self.iface = iface
        d = 0.4
        self.pos = 0
        self.ord = [
            (d,d),(-2*d,0),(2*d,-2*d),((0,-2*d)),
            (d,2*d),(d,-d),(-2*d,0),(d,-d)
        ] #(0,d)
        self.currentFeats = set()

    def initButton(self):
        action = self.createAction(
            'cycleLabelPosition',
            'cycleLabelPosition.png',
            self.run,
            'Cycles the attributes "label_x" and "label_y"',
            'Cycles the attributes "label_x" and "label_y"',
            self.iface
        )
        self.toolBar.addAction(action)

    def getUpdateValue(self, feat, featXIdx, featYIdx):
        attrXValue = feat.attribute(featXIdx)
        attrYValue = feat.attribute(featYIdx)
        if not any((attrXValue, attrYValue)):
            return self.ord[0]
        return self.ord[self.pos]

    def updateCurrentPos(self):
        self.pos = (self.pos + 1) % 8

    def run(self):
        lyr = self.iface.activeLayer()
        fieldXIdx = lyr.dataProvider().fieldNameIndex('label_x')
        fieldYIdx = lyr.dataProvider().fieldNameIndex('label_y')
        if any((fieldXIdx == -1, fieldYIdx == -1)):
            self.displayErrorMessage('Os atributo "label_x" e/ou "label_y" não existe(m) na camada selecionada.')
        else:
            lyr.startEditing()
            if len(self.currentFeats) > 0 and self.currentFeats != set(x.id() for x in lyr.getSelectedFeatures()):
                self.pos = 0
                self.currentFeats = set()
            for feat in lyr.getSelectedFeatures():
                newX, newY = self.getUpdateValue(feat, fieldXIdx, fieldYIdx)
                lyr.changeAttributeValue(feat.id(), fieldXIdx, newX)
                lyr.changeAttributeValue(feat.id(), fieldYIdx, newY)
                self.currentFeats.add(feat.id())
            self.updateCurrentPos()
                