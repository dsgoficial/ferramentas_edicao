from pathlib import Path
from .baseTools import BaseTools

class AlternateTextVisibility(BaseTools):

    def __init__(self, toolBar, iface) -> None:
        self.toolBar = toolBar
        self.iface = iface

    def setupUi(self):
        buttonImg = Path(__file__).parent / 'icons' / 'genericSymbolA.png'
        self._action = self.createAction(
            'Alternar visibilidade do texto',
            None,
            self.run,
            self.tr('Adiciona ou remove texto_edicao baseado no atributo nome'),
            self.tr('Adiciona ou remove texto_edicao baseado no atributo nome'),
            self.iface
        )
        self.toolBar.addAction(self._action)
        self.iface.registerMainWindowAction(self._action, '')

    def run(self):
        lyr = self.iface.activeLayer()
        fieldIdx = lyr.dataProvider().fieldNameIndex('texto_edicao') if lyr else -1
        if fieldIdx == -1:
            return self.displayErrorMessage(self.tr('O atributo "texto_edicao" não existe na camada selecionada'))

        fieldNameIdx = lyr.dataProvider().fieldNameIndex('nome')

        lyr.startEditing()
        for feat in lyr.getSelectedFeatures():
            textoEdicao = feat.attribute('texto_edicao')
            if not textoEdicao and fieldNameIdx != -1:
                lyr.changeAttributeValue(feat.id(), fieldIdx, feat.attribute('nome'))
            else:
                lyr.changeAttributeValue(feat.id(), fieldIdx, None)
        lyr.triggerRepaint()
                