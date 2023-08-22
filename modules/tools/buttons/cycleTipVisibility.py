from pathlib import Path
from .baseTools import BaseTools
from qgis.core import (
    QgsGeometry,
    Qgis,
)
from PyQt5.QtWidgets import QMessageBox


class CycleTipVisibility(BaseTools):
    def __init__(self, toolBar, iface) -> None:
        super().__init__()
        self.toolBar = toolBar
        self.iface = iface

    def setupUi(self):
        buttonImg = Path(__file__).parent / "icons" / "Visibilidade_ponta.png"
        self._action = self.createAction(
            "Visibilidade ponta",
            buttonImg,
            self.run,
            self.tr(
                'Alterna o atributo "exibir_ponta_simbologia" 1 -> 2 -> 3 -> 1 nas feições selecionadas'
            ),
            self.tr(
                'Alterna o atributo "exibir_ponta_simbologia" 1 -> 2 -> 3 -> 1 nas feições selecionadas'
            ),
            self.iface,
        )
        self.toolBar.addAction(self._action)
        self.iface.registerMainWindowAction(self._action, "")

    def run(self):
        if not (lyr := self.iface.activeLayer()):
            self.displayErrorMessage(self.tr("No selected layer"))
        fieldIdx = lyr.dataProvider().fieldNameIndex("exibir_ponta_simbologia")
        if fieldIdx == -1:
            self.displayErrorMessage(
                self.tr('Camada não tem o atributo "exibir_ponta_simbologia"')
            )
        else:
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
                just = int(feat.attribute("exibir_ponta_simbologia"))
                if just == 9999:
                    lyr.changeAttributeValue(feat.id(), fieldIdx, 1)
                else:
                    lyr.changeAttributeValue(feat.id(), fieldIdx, just % 3 + 1)
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
