from pathlib import Path
from .baseTools import BaseTools


class AlternateBuildingFlag(BaseTools):
    # Construtor da classe
    def __init__(self, iface, toolBar):
        self.iface = iface
        self.toolBar = toolBar

    # User interface, botão e descrição
    def setupUi(self):
        buttonImg = Path(__file__).parent / "icons" / "Suprimir_bandeira_edif.png"
        self._action = self.createAction(
            "Suprimir Bandeira",
            buttonImg,
            self.run,
            self.tr(
                "Altera o campo 'suprimir_bandeira' das feições selecionadas da camada ativa"
            ),
            self.tr(
                "Altera o campo 'suprimir_bandeira' das feições selecionadas da camada ativa"
            ),
            self.iface,
        )
        self.toolBar.addAction(self._action)
        self.iface.registerMainWindowAction(self._action, "")

    def run(self):
        lyr = self.iface.activeLayer()
        fieldStr = "suprimir_bandeira"
        fieldIdx = lyr.dataProvider().fieldNameIndex(fieldStr) if lyr else -1
        if fieldIdx == -1:
            return self.displayErrorMessage(
                self.tr(f"O atributo {fieldStr} não existe na camada selecionada")
            )

        lyr.startEditing()
        for feat in lyr.getSelectedFeatures():
            fieldToChange = feat.attribute(fieldStr)
            if fieldToChange and fieldIdx != -1:
                lyr.changeAttributeValue(
                    feat.id(), fieldIdx, int(feat.attribute(fieldStr)) ^ 3
                )
        lyr.triggerRepaint()
