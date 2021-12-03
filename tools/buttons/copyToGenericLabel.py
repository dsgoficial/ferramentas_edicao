from pathlib import Path

from qgis.core import QgsFeature, QgsProject, QgsWkbTypes

from .baseTools import BaseTools


class CopyToGenericLabel(BaseTools):

    def __init__(self, toolBar, iface) -> None:
        self.toolBar = toolBar
        self.iface = iface

    def setupUi(self):
        buttonImg = Path(__file__).parent / 'icons' / 'genericSymbolA.png'
        self._action = self.createAction(
            'Copiar Texto Genérico',
            None,
            self.run,
            self.tr('Copia feições selecionadas para "edicao_texto_generico_p" ou "edicao_texto_generico_l"'),
            self.tr('Copia feições selecionadas para "edicao_texto_generico_p" ou "edicao_texto_generico_l"'),
            self.iface
        )
        self.toolBar.addAction(self._action)
        self.iface.registerMainWindowAction(self._action, '')


    @staticmethod
    def setFeatValues(originFeat, destFeat):
        destFeat.setAttribute('texto_edicao', originFeat.attribute('nome'))
        destFeat.setAttribute('estilo_fonte', 'Condensed')
        destFeat.setAttribute('tamanho_txt', 6)
        destFeat.setAttribute('justificativa_txt', 2)
        destFeat.setAttribute('espacamento', 0)
        destFeat.setAttribute('cor', '#000000')
        destFeat.setGeometry(originFeat.geometry())

    def run(self):
        if not (lyr:=self.iface.activeLayer()):
            self.displayErrorMessage(self.tr('No selected layer'))
        else:
            fieldIdx = lyr.dataProvider().fieldNameIndex('nome')
            if fieldIdx == -1:
                self.displayErrorMessage(self.tr('O atributo "nome" não existe na camada selecionada'))
            else:
                instance = QgsProject().instance()
                geomType = lyr.geometryType()
                if geomType == QgsWkbTypes.PointGeometry:
                    destLayerName = 'edicao_texto_generico_p'
                elif geomType == QgsWkbTypes.LineGeometry:
                    destLayerName = 'edicao_texto_generico_l'
                destLayer = instance.mapLayersByName(destLayerName)
                if len(destLayer) != 1:
                    self.displayErrorMessage(self.tr(f'A camada "{destLayerName}" não existe'))
                else:
                    destLayer = destLayer[0]
                    destLayer.startEditing()
                    for feat in lyr.getSelectedFeatures():
                        if self.checkAttrIsEmpty(feat, 'nome'):
                            break
                        destFeat = QgsFeature(destLayer.fields())
                        self.setFeatValues(feat, destFeat)
                        destLayer.addFeature(destFeat)
