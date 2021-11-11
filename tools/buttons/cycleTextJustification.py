from pathlib import Path

from .baseTools import BaseTools

class CycleTextJustification(BaseTools):

    def __init__(self, toolBar, iface) -> None:
        super().__init__()
        self.toolBar = toolBar
        self.iface = iface

    def setupUi(self):
        button = self.createPushButton(
            'Alternar justificativa',
            Path(__file__).parent / 'icons' / 'genericSymbolA.png',
            self.run,
            self.tr('Alterna o atributo "justificativa_txt" 1 -> 2 -> 3 -> 1 nas feições selecionadas'),
            self.tr('Alterna o atributo "justificativa_txt" 1 -> 2 -> 3 -> 1 nas feições selecionadas'),
            self.iface
        )
        self.action = self.toolBar.addWidget(button)

    def run(self):
        if not (lyr:=self.iface.activeLayer()):
            self.displayErrorMessage(self.tr('No selected layer'))
        else:
            fieldIdx = lyr.dataProvider().fieldNameIndex('justificativa_txt')
            if fieldIdx == -1:
                self.displayErrorMessage(self.tr('O atributo "justificativa_txt" não existe na camada selecionada'))
            else:
                lyr.startEditing()
                for feat in lyr.getSelectedFeatures():
                    visible = feat.attribute('justificativa_txt')
                    if visible == 9999:
                        lyr.changeAttributeValue(feat.id(), fieldIdx, 1)
                    else:
                        lyr.changeAttributeValue(feat.id(), fieldIdx, (visible + 1) % 4 or visible + 1)
                