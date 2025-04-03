from pathlib import Path
from .baseTools import BaseTools
from qgis.core import (
    QgsGeometry,
    Qgis,
)
from PyQt5.QtWidgets import QMessageBox


class CycleSideVisibility(BaseTools):
    def __init__(self, toolBar, iface) -> None:
        super().__init__()
        self.toolBar = toolBar
        self.iface = iface

    def setupUi(self):
        buttonImg = Path(__file__).parent / "icons" / "Visibilidade_lateral.png"
        self._action = self.createAction(
            "Visibilidade lateral",
            buttonImg,
            self.run,
            self.tr(
                'Alterna o atributo "exibir_lado_simbologia" 1 -> 2 -> 3 -> 1 nas feições selecionadas'
            ),
            self.tr(
                'Alterna o atributo "exibir_lado_simbologia" 1 -> 2 -> 3 -> 1 nas feições selecionadas'
            ),
            self.iface,
        )
        self.toolBar.addAction(self._action)
        self.iface.registerMainWindowAction(self._action, "")

    def run(self):
        if not (lyr := self.iface.activeLayer()):
            self.displayErrorMessage(self.tr("No selected layer"))
        fieldIdx = lyr.dataProvider().fieldNameIndex("exibir_lado_simbologia")
        if fieldIdx == -1:
            self.displayErrorMessage(
                self.tr('A camada não tem o atributo "exibir_lado_simbologia"')
            )
        else:
            selectedFeature = lyr.getSelectedFeatures()
            if lyr.selectedFeatureCount() == 0:
                self.displayErrorMessage(self.tr("Não há feições selecionadas"))
            crsLyr = lyr.crs()
            featIn = BaseTools().featInCanvas(selectedFeature, crsLyr)
            if not featIn:
                confirm = BaseTools().confirmation()
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
                just = int(feat.attribute("exibir_lado_simbologia"))
                if just == 9999:
                    lyr.changeAttributeValue(feat.id(), fieldIdx, 1)
                else:
                    lyr.changeAttributeValue(feat.id(), fieldIdx, just % 3 + 1)
            lyr.triggerRepaint()
