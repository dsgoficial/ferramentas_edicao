from pathlib import Path
from .baseTools import BaseTools
from qgis.core import (
    QgsGeometry,
    Qgis,
)


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
                just = int(feat.attribute("exibir_ponta_simbologia"))
                if just == 9999:
                    lyr.changeAttributeValue(feat.id(), fieldIdx, 1)
                else:
                    lyr.changeAttributeValue(feat.id(), fieldIdx, just % 3 + 1)
            lyr.triggerRepaint()
