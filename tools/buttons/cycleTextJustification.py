from PyQt5.QtWidgets import QWidget

from .baseTools import BaseTools

class CycleTextJustification(BaseTools):

    def __init__(self, toolBar, iface) -> None:
        super().__init__()
        self.toolBar = toolBar
        self.iface = iface

    def initButton(self):
        action = self.createAction(
            'cycleTextJustification',
            'cycleTextJustification.png',
            self.run,
            'Cycles the attribute "justificativa_txt" 1 -> 2 -> 3 -> 1 for selected features',
            'Cycles text justification attribute',
            self.iface
        )
        self.toolBar.addAction(action)

    def run(self):
        lyr = self.iface.activeLayer()
        fieldIdx = lyr.dataProvider().fieldNameIndex('justificativa_txt')
        if fieldIdx == -1:
            self.displayErrorMessage('O atributo "justificativa_txt" não existe na camada selecionada.')
        else:
            lyr.startEditing()
            for feat in lyr.getSelectedFeatures():
                visible = feat.attribute('justificativa_txt')
                if visible == 9999:
                    lyr.changeAttributeValue(feat.id(), fieldIdx, 1)
                else:
                    lyr.changeAttributeValue(feat.id(), fieldIdx, (visible + 1) % 4 or visible + 1)
                