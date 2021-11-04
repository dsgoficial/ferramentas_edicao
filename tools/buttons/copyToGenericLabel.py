from PyQt5.QtWidgets import QWidget
from PyQt5.QtCore import QVariant
from qgis.core import QgsWkbTypes, QgsFields, QgsField, QgsProject, QgsFeature

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

    @staticmethod
    def setFeatValues(originFeat, destFeat):
        destFeat.setAttribute('texto_edicao', originFeat.attribute('nome'))
        destFeat.setAttribute('estilo_fonte', 'Condensed')
        destFeat.setAttribute('tamanho_txt', 6)
        # destFeat.setAttribute('justificativa_txt', 2)
        destFeat.setAttribute('espacamento', 0)
        destFeat.setAttribute('cor', '#0')
        destFeat.setGeometry(originFeat.geometry())

    def run(self):
        lyr = self.iface.activeLayer()
        fieldIdx = lyr.dataProvider().fieldNameIndex('nome')
        if fieldIdx == -1:
            self.displayErrorMessage('O atributo "nome" não existe na camada selecionada.')
        else:
            instance = QgsProject().instance()
            geomType = lyr.geometryType()
            if geomType == QgsWkbTypes.PointGeometry:
                destLayerName = 'edicao_texto_generico_p'
            elif geomType == QgsWkbTypes.LineGeometry:
                destLayerName = 'edicao_texto_generico_l'
            destLayer = instance.mapLayersByName(destLayerName)
            if len(destLayer) != 1:
                self.displayErrorMessage(f'O layer "{destLayerName}" não existe')
            else:
                destLayer = destLayer[0]
                destLayer.startEditing()
                for feat in lyr.getSelectedFeatures():
                    if self.checkAttrIsEmpty(feat, 'nome'):
                        break
                    destFeat = QgsFeature(destLayer.fields())
                    self.setFeatValues(feat, destFeat)
                    destLayer.addFeature(destFeat)
