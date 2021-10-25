from PyQt5.QtWidgets import QWidget

from .baseTools import BaseTools

class CycleLabelPosition(BaseTools):

    def __init__(self, toolBar, iface) -> None:
        self.toolBar = toolBar
        self.iface = iface

    def initButton(self):
        action = self.createAction(
            'cycleLabelPosition',
            'cycleLabelPosition.png',
            self.run,
            'Cycles the attributes "label_x" and "label_y"',
            'Cycles "label_x" and "label_y" attributes',
            self.iface
        )
        self.toolBar.addAction(action)

    def run(self):
        lyr = self.iface.activeLayer()
        fieldIdx = lyr.dataProvider().fieldNameIndex('visivel')
        if fieldIdx == -1:
            self.displayErrorMessage('Os atributo "label_x" e/ou "label_y" não existe(m) na camada selecionada.')
        else:
            lyr.startEditing()
            for feat in lyr.getSelectedFeatures():
                visible = feat.attribute('visivel')
                if visible == 9999:
                    lyr.changeAttributeValue(feat.id(), fieldIdx, 1)
                else:
                    lyr.changeAttributeValue(feat.id(), fieldIdx, (visible + 1) % 3 or visible + 1)
                