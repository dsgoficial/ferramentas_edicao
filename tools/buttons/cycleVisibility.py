from pathlib import Path
from .baseTools import BaseTools

class CycleVisibility(BaseTools):

    def __init__(self, toolBar, iface) -> None:
        self.toolBar = toolBar
        self.iface = iface

    def setupUi(self):
        button = self.createPushButton(
            'CycleVisibility',
            Path(__file__).parent / 'icons' / 'genericSymbolA.png',
            self.run,
            self.tr('Cycles the attribute "visivel" 1 -> 2 -> 1 for selected features'),
            self.tr('Cycles the attribute "visivel" 1 -> 2 -> 1 for selected features'),
            self.iface
        )
        self.action = self.toolBar.addWidget(button)

    def run(self):
        lyr = self.iface.activeLayer()
        fieldIdx = lyr.dataProvider().fieldNameIndex('visivel')
        if fieldIdx == -1:
            self.displayErrorMessage(self.tr('The attribute "visivel" does not exist in the selected layer'))
        else:
            lyr.startEditing()
            for feat in lyr.getSelectedFeatures():
                visible = feat.attribute('visivel')
                if visible == 9999:
                    lyr.changeAttributeValue(feat.id(), fieldIdx, 1)
                else:
                    lyr.changeAttributeValue(feat.id(), fieldIdx, (visible + 1) % 3 or visible + 1)
                