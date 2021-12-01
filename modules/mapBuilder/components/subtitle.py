from pathlib import Path

from qgis.core import (QgsFeature, QgsFeatureRequest, QgsPrintLayout,
                       QgsVectorLayer)

from ....interfaces.iComponent import IComponent
from .componentUtils import ComponentUtils


class Subtitle(ComponentUtils,IComponent):

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
    # TODO: Maybe build the components instead of changing them?

    def build(self, composition: QgsPrintLayout, data:dict, mapAreaFeature: QgsFeature):
        if isInternational := bool(data.get('territorio_internacional')):
            pathShpCountries = Path(__file__).parent.parent / 'resources' / 'limits' / '2020' / 'Paises_2020.shp'
            layer = self.loadShapeLayer(pathShpCountries, '', 'countries')
        else:
            pathShpStates = Path(__file__).parent.parent / 'resources' / 'limits' / '2020' / 'Estados_2020.shp'
            layer = self.loadShapeLayer(pathShpStates, '', 'states')

        regionsIntersected = self.getIntersections(mapAreaFeature, layer, isInternational)
        self.updateMapName(composition, data)
        self.updateComposition(composition, regionsIntersected, isInternational)

    def getIntersections(self, mapAreaFeature: QgsFeature, layer: QgsVectorLayer, isInternational: bool) -> set[str]:
        '''
        Checks intersections between mapArea and states or countries based on key isInternational. 
        '''
        intersections = set()
        request = QgsFeatureRequest().setFilterRect(mapAreaFeature.geometry().boundingBox())
        for feat in layer.getFeatures(request):
            if isInternational:
                if name:= feat.attribute('nome'):
                    intersections.add(name)
            else:
                if name:= feat.attribute('REGIAO'):
                    intersections.add(feat.attribute('REGIAO'))
        return intersections

    def updateMapName(self, composition: QgsPrintLayout, data: dict):
        name = data.get('nome')
        mi = data.get('mi')
        inom = data.get('inom')
        scale = data.get('scale')
        productName = data.get('productName')
        if (productTypeLabel:=composition.itemById("label_nome_produto")) is not None:
            productTypeLabel.setText(productName)
            productTypeLabel.refresh()
        if (mapNameLabel:=composition.itemById("label_nomeCarta")) is not None:
            mapText = name.upper() if name else 'ESPECIAL'
            mapNameLabel.setText(mapText)
            mapNameLabel.refresh()
        if (indiceLabel:=composition.itemById("label_indice")) is not None:
            if inom != 'Especial':
                indiceText = "ÍNDICE: " + inom
                indiceLabel.setVisible(True)
                indiceLabel.setText(indiceText)
            else:
                indiceLabel.setVisible(False)
            indiceLabel.refresh()
        if (miLabel:=composition.itemById("label_mi")) is not None:
            if mi and mi != 'Especial':
                miText = f'{"MIR" if int(scale) == 250 else "MI"}: {mi}'
                miLabel.setVisible(True)
                miLabel.setText(miText)
            else:
                miLabel.setVisible(False)
            miLabel.refresh()

    def updateComposition(self, composition: QgsPrintLayout, regionsIntersected: set[str], isInternational: bool):				
        regionsIntersected = [regiao.upper() for regiao in regionsIntersected]
        if label := composition.itemById("label_regiao"):
            if isInternational:
                labelText = ' E '.join(regionsIntersected)
            else:
                labelText = 'REGIÃO {regiao} DO BRASIL'.format(regiao=' E '.join(regionsIntersected))
                case1 = set(['SUL', 'SUDESTE', 'CENTRO-OESTE']) # 11
                case2 = set(['NORDESTE', 'SUDESTE', 'CENTRO-OESTE']) # 10
                case3 = set(['NORTE', 'SUDESTE', 'CENTRO-OESTE']) # 10
                labelFont = label.font()
                if regionsIntersected == case1:
                    labelFont.setPointSize(11)
                    label.setFont(labelFont)
                if regionsIntersected == case2 or regionsIntersected == case3:
                    labelFont.setPointSize(10)
                    label.setFont(labelFont)
            label.setText(labelText)
            label.refresh()

