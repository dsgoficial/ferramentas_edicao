from pathlib import Path

from .baseTools import BaseTools
from qgis.core import (
    QgsGeometry,
    Qgis,
    QgsProcessingException,
)
from PyQt5.QtWidgets import QMessageBox
from PyQt5.QtCore import QVariant


class AddNewLineCharToAttribute(BaseTools):
    def __init__(self, toolBar, iface) -> None:
        super().__init__()
        self.toolBar = toolBar
        self.iface = iface

    def setupUi(self):
        buttonImg = Path(__file__).parent / "icons" / "Quebra_linha.png"
        self._action = self.createAction(
            "Quebra Linha",
            buttonImg,
            self.run,
            self.tr("Quebra em múltiplas linhas o atributo texto_edicao"),
            self.tr("Quebra em múltiplas linhas o atributo texto_edicao"),
            self.iface,
        )
        self.toolBar.addAction(self._action)
        self.iface.registerMainWindowAction(self._action, "")

    def run(self):
        def inserir_simbolo(texto):
            if texto == QVariant(None):
                self.displayErrorMessage(
                    'O atributo "texto_edicao" da feição selecionada está vazio'
                )
                return
            # Remove espaços em branco no início e no final do texto
            texto = texto.strip()

            # Calcula o número de espaços no texto
            num_espacos = texto.count(" ")

            if num_espacos == 0:
                # Não há espaços no texto, retorna o texto original
                return texto

            # Calcula a posição mais central
            posicao_central = len(texto) // 2

            # Encontra os índices dos espaços em branco
            indices_espacos = [i for i, char in enumerate(texto) if char == " "]

            # Encontra o índice do espaço em branco mais próximo da posição mais central
            indice = min(indices_espacos, key=lambda x: abs(posicao_central - x))

            # Insere o símbolo | no espaço em branco mais próximo da posição mais central
            texto = texto[:indice] + "|" + texto[indice + 1 :]

            return texto

        layer = self.iface.activeLayer()
        Features = layer.selectedFeatures()
        selectedFeature = layer.getSelectedFeatures()
        if layer.selectedFeatureCount() == 0:
            self.displayErrorMessage(self.tr("Não há feições selecionadas"))
        featIn = self.featInCanvas(selectedFeature)
        if not featIn:
            confirm = self.confirmation()
            if not confirm:
                self.iface.messageBar().pushMessage(
                    "Cancelado",
                    "ação cancelada pelo usuário",
                    level=Qgis.Warning,
                    duration=5,
                )
                return
        layer.startEditing()
        layer.beginEditCommand("quebra de linha")
        for feature in Features:
            atributo = feature.attributes()
            indice = feature.fields().indexOf("texto_edicao")
            novo_valor = inserir_simbolo(atributo[indice])
            feature.setAttribute("texto_edicao", novo_valor)
            layer.updateFeature(feature)
        layer.endEditCommand()
        layer.triggerRepaint()
        self.iface.mapCanvas().refresh()

    def featInCanvas(self, selectedFeature):
        featIn = True
        for feat in selectedFeature:
            extentCanvas = self.iface.mapCanvas().extent()
            geomWktExtentCanvas = QgsGeometry.fromRect(extentCanvas)
            geomFeat = feat.geometry()
            if not geomFeat.intersects(geomWktExtentCanvas):
                featIn = False
        return featIn

    def confirmation(self):
        confirmation = False
        reply = QMessageBox.question(
            self.iface.mainWindow(),
            "Continuar ?",
            "Há feições selecionadas fora do canvas. Deseja continuar ?",
            QMessageBox.Yes,
            QMessageBox.No,
        )
        if reply == QMessageBox.Yes:
            confirmation = True
        return confirmation
