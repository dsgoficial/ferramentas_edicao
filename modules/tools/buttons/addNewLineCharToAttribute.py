from pathlib import Path

from .baseTools import BaseTools

class AddNewLineCharToAttribute(BaseTools):

    def __init__(self, toolBar, iface) -> None:
        super().__init__()
        self.toolBar = toolBar
        self.iface = iface

    def setupUi(self):
        buttonImg = Path(__file__).parent / 'icons' / 'genericSymbolA.png'
        self._action = self.createAction(
            'Quebra Linha',
            None,
            self.run,
            self.tr('Quebra em múltiplas linha o atributo texto_edicao'),
            self.tr('Quebra em múltiplas linha o atributo texto_edicao'),
            self.iface
        )
        self.toolBar.addAction(self._action)
        self.iface.registerMainWindowAction(self._action, '')

    def run(self):
        print('hop!')
                