from PyQt5.QtWidgets import QWidget
from qgis.core import QgsWkbTypes

from .baseTools import BaseTools

class CopyToGenericLabel(BaseTools):

    def __init__(self, toolBar, iface) -> None:
        self.toolBar = toolBar
        self.iface = iface

    def initButton(self):
        action = self.createAction(
            'copyToGenericLabel',
            'copyToGenericLabel.png',
            self.run,
            'Copies selected feature to classes "edicao_texto_generico_p" or "edicao_texto_generico_l"',
            'Copies selected feature to classes "edicao_texto_generico_p" or "edicao_texto_generico_l"',
            self.iface
        )
        self.toolBar.addAction(action)

    def run(self):
        lyr = self.iface.activeLayer()
        fieldIdx = lyr.dataProvider().fieldNameIndex('nome')
        if fieldIdx == -1:
            self.displayErrorMessage('O atributo "nome" não existe na camada selecionada.')
        else:
            lyr.startEditing()
            for feat in lyr.getSelectedFeatures():
                if self.checkAttrIsEmpty(feat, 'nome'):
                    break
                geomType = feat.geometry().type()
                if geomType == QgsWkbTypes.PointGeometry:
                    pass
                elif geomType == QgsWkbTypes.LineGeometry:
                    pass
                