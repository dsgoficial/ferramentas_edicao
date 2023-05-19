from pathlib import Path
from .baseTools import BaseTools

class CycleVisibility(BaseTools):

    def __init__(self, toolBar, iface) -> None:
        self.toolBar = toolBar
        self.iface = iface

    def setupUi(self):
        buttonImg = Path(__file__).parent / 'icons' / 'Alternar_visibilidade.png'
        self._action = self.createAction(
            'Alternar visibilidade',
            buttonImg,
            self.run,
            self.tr('Alterna o atributo "visivel" 1 -> 2 -> 1 nas feições selecionadas'),
            self.tr('Alterna o atributo "visivel" 1 -> 2 -> 1 nas feições selecionadas'),
            self.iface
        )
        self.toolBar.addAction(self._action)
        self.iface.registerMainWindowAction(self._action, '')

    def run(self):
        lyr = self.iface.activeLayer()
        fieldIdx = lyr.dataProvider().fieldNameIndex('visivel') if lyr else -1
        if fieldIdx == -1:
            self.displayErrorMessage(self.tr('O atributo "visivel" não existe na camada selecionada'))
        else:
            lyr.startEditing()
            for feat in lyr.getSelectedFeatures():
                visible = int(feat.attribute('visivel'))
                if visible == 9999:
                    lyr.changeAttributeValue(feat.id(), fieldIdx, 1)
                else:
                    lyr.changeAttributeValue(feat.id(), fieldIdx, visible%2 + 1)
            lyr.triggerRepaint()
                