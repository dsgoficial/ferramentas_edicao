from pathlib import Path

from .baseTools import BaseTools

class AddNewLineCharToAttribute(BaseTools):

    def __init__(self, toolBar, iface) -> None:
        super().__init__()
        self.toolBar = toolBar
        self.iface = iface

    def setupUi(self):
        buttonImg = Path(__file__).parent / 'icons' / 'Quebra_linha.png'
        self._action = self.createAction(
            'Quebra Linha',
            buttonImg,
            self.run,
            self.tr('Quebra em múltiplas linhas o atributo texto_edicao'),
            self.tr('Quebra em múltiplas linhas o atributo texto_edicao'),
            self.iface
        )
        self.toolBar.addAction(self._action)
        self.iface.registerMainWindowAction(self._action, '')

    def run(self):

        def inserir_simbolo(texto):
            # Remove espaços em branco no início e no final do texto
            texto = texto.strip()

            # Calcula o número de espaços no texto
            num_espacos = texto.count(' ')

            if num_espacos == 0:
                # Não há espaços no texto, retorna o texto original
                return texto

            # Calcula a posição mais central
            posicao_central = len(texto) // 2

            # Encontra os índices dos espaços em branco
            indices_espacos = [i for i, char in enumerate(texto) if char == ' ']

            # Encontra o índice do espaço em branco mais próximo da posição mais central
            indice = min(indices_espacos, key=lambda x: abs(posicao_central - x))

            # Insere o símbolo | no espaço em branco mais próximo da posição mais central
            texto = texto[:indice] + '|' + texto[indice+1:]

            return texto

        layer = self.iface.activeLayer()
        Features = layer.selectedFeatures()
        layer.startEditing()
        layer.beginEditCommand('quebra de linha')
        for feature in Features:
            atributo = feature.attributes()
            indice = feature.fields().indexOf("texto_edicao")
            if len(atributo[indice]) > 20:
                novo_valor =  inserir_simbolo(atributo[indice])
                feature.setAttribute('texto_edicao', novo_valor)                
                layer.updateFeature(feature)
        layer.endEditCommand()
        layer.triggerRepaint()
        self.iface.mapCanvas().refresh()
        
