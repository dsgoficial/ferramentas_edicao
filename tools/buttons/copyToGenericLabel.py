from pathlib import Path

from qgis.core import QgsFeature, QgsProject, QgsWkbTypes

from .baseTools import BaseTools


class CopyToGenericLabel(BaseTools):

    def __init__(self, toolBar, iface, mapTypeSelector) -> None:
        self.toolBar = toolBar
        self.iface = iface
        self.mapTypeSelector = mapTypeSelector

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


    def setPointFeatValues(self, originFeat, destFeat):
        destFeat.setAttribute('texto_edicao', originFeat.attribute('nome'))
        destFeat.setAttribute('estilo_fonte', 'Condensed')
        destFeat.setAttribute('tamanho_txt', 6)
        destFeat.setAttribute('justificativa_txt', 2)
        destFeat.setAttribute('espacamento', 0)
        destFeat.setAttribute('cor', '#000000')
        destFeat.setAttribute('carta_simbolizacao', self.mapTypeSelector.options.get(self.mapTypeSelector.currentText()))
        destFeat.setGeometry(originFeat.geometry())

    def setLineFeatValues(self, originFeat, destFeat):
        destFeat.setAttribute('texto_edicao', originFeat.attribute('nome'))
        destFeat.setAttribute('estilo_fonte', 'Condensed')
        destFeat.setAttribute('tamanho_txt', 6)
        destFeat.setAttribute('espacamento', 0)
        destFeat.setAttribute('cor', '#000000')
        destFeat.setAttribute('carta_simbolizacao', self.mapTypeSelector.options.get(self.mapTypeSelector.currentText()))
        destFeat.setGeometry(originFeat.geometry())

    def run(self):
        if not (lyr:=self.iface.activeLayer()):
            self.displayErrorMessage(self.tr('Não há camada selecionada'))
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
                else:
                    destLayerName = None
                destLayer = instance.mapLayersByName(destLayerName)
                if destLayerName is None:
                    self.displayErrorMessage(self.tr(f'Não válido para camadas tipo área'))
                elif len(destLayer) != 1:
                    self.displayErrorMessage(self.tr(f'A camada "{destLayerName}" não existe'))
                else:
                    destLayer = destLayer[0]
                    destLayer.startEditing()
                    for feat in lyr.getSelectedFeatures():
                        if self.checkAttrIsEmpty(feat, 'nome'):
                            break
                        destFeat = QgsFeature(destLayer.fields())
                        if geomType == QgsWkbTypes.PointGeometry:
                            self.setPointFeatValues(feat, destFeat)
                        elif geomType == QgsWkbTypes.LineGeometry:
                            self.setLineFeatValues(feat, destFeat)
                        destLayer.addFeature(destFeat)
