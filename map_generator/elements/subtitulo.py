from pathlib import Path

from qgis.core import QgsFeatureRequest

from ..elements.map_utils import MapParent


class Subtitulo(MapParent):

    def replaceLabel(self, composition, regionsIntersected, isInternational):				
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

    def getIntersections(self, mapArea, layer, isInternational):
        '''
        Checks intersections between mapArea and states or countries based on key isInternational. 
        '''
        intersections = set()
        request = QgsFeatureRequest().setFilterRect(mapArea.geometry().boundingBox())
        for feat in layer.getFeatures(request):
            if isInternational:
                if name:= feat.attribute('nome'):
                    intersections.add(name)
            else:
                if name:= feat.attribute('REGIAO'):
                    intersections.add(feat.attribute('REGIAO'))
        return intersections


    def make(self, composition, mapArea, isInternational):
        if isInternational:
            pathShpCountries = Path(__file__).parent.parent / 'limites' / '2020' / 'Paises_2020.shp'
            layer = self.loadShapeLayer(pathShpCountries, '', 'paises')
        else:
            pathShpStates = Path(__file__).parent.parent / 'limites' / '2020' / 'Estados_2020.shp'
            layer = self.loadShapeLayer(pathShpStates, '', 'estados')

        regionsIntersected = self.getIntersections(mapArea, layer, isInternational)
        self.replaceLabel(composition, regionsIntersected, isInternational)
