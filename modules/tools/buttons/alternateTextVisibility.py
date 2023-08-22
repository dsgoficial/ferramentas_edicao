from pathlib import Path
from .baseTools import BaseTools
from qgis.core import (
    QgsGeometry,
    Qgis,
)
from PyQt5.QtWidgets import QMessageBox


class AlternateTextVisibility(BaseTools):
    def __init__(self, toolBar, iface) -> None:
        self.toolBar = toolBar
        self.iface = iface

    def setupUi(self):
        buttonImg = (
            Path(__file__).parent / "icons" / "Alternar_visibilidade_do_texto.png"
        )
        self._action = self.createAction(
            "Alternar visibilidade do texto",
            buttonImg,
            self.run,
            self.tr("Adiciona ou remove texto_edicao baseado no atributo nome"),
            self.tr("Adiciona ou remove texto_edicao baseado no atributo nome"),
            self.iface,
        )
        self.toolBar.addAction(self._action)
        self.iface.registerMainWindowAction(self._action, "")

    def run(self):
        lyr = self.iface.activeLayer()
        fieldIdx = lyr.dataProvider().fieldNameIndex("texto_edicao") if lyr else -1
        if fieldIdx == -1:
            return self.displayErrorMessage(
                self.tr('O atributo "texto_edicao" não existe na camada selecionada')
            )

        fieldNameIdx = lyr.dataProvider().fieldNameIndex("nome")
        selectedFeature = lyr.getSelectedFeatures()
        if lyr.selectedFeatureCount() == 0:
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
        lyr.startEditing()
        for feat in lyr.getSelectedFeatures():
            textoEdicao = feat.attribute("texto_edicao")
            if not textoEdicao and fieldNameIdx != -1:
                lyr.changeAttributeValue(feat.id(), fieldIdx, feat.attribute("nome"))
            else:
                lyr.changeAttributeValue(feat.id(), fieldIdx, None)
        lyr.triggerRepaint()

    def featInCanvas(self, selectedFeature):
        featIn = True
        for feat in selectedFeature:
            extentCanvas = self.iface.mapCanvas().extent()
            geomWktExtentCanvas = QgsGeometry.fromRect(extentCanvas)
            geomFeat = feat.geometry()
            if not geomFeat.within(geomWktExtentCanvas):
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
