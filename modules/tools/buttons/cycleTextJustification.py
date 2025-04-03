from pathlib import Path
from qgis.core import (
    QgsGeometry,
    Qgis,
    NULL,
)
from .baseTools import BaseTools
from PyQt5.QtWidgets import QMessageBox


class CycleTextJustification(BaseTools):
    def __init__(self, toolBar, iface) -> None:
        super().__init__()
        self.toolBar = toolBar
        self.iface = iface

    def setupUi(self):
        buttonImg = Path(__file__).parent / "icons" / "Alternar_justificativa.png"
        self._action = self.createAction(
            "Alternar justificativa",
            buttonImg,
            self.run,
            self.tr(
                'Alterna o atributo "justificativa_txt" 1 -> 2 -> 3 -> 1 nas feições selecionadas'
            ),
            self.tr(
                'Alterna o atributo "justificativa_txt" 1 -> 2 -> 3 -> 1 nas feições selecionadas'
            ),
            self.iface,
        )
        self.toolBar.addAction(self._action)
        self.iface.registerMainWindowAction(self._action, "")

    def run(self):
        if not (lyr := self.iface.activeLayer()):
            self.displayErrorMessage(self.tr("No selected layer"))
        else:
            fieldIdx = lyr.dataProvider().fieldNameIndex("justificativa_txt")
            if fieldIdx == -1:
                self.displayErrorMessage(
                    self.tr(
                        'O atributo "justificativa_txt" não existe na camada selecionada'
                    )
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
                    just = feat.attribute("justificativa_txt")
                    just = int(just) if just != NULL else 0
                    if just == 9999:
                        lyr.changeAttributeValue(feat.id(), fieldIdx, 1)
                    else:
                        lyr.changeAttributeValue(feat.id(), fieldIdx, just % 3 + 1)
                lyr.triggerRepaint()
