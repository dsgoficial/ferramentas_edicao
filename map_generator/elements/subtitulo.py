from pathlib import Path
from ..elements.map_utils import MapParent

class Subtitulo(MapParent):
    def __init__(self):		
        pass

    def setComposition(self, composition):
        self.composition = composition

    def setScale(self, scale):
        self.scale = scale    

    def replaceLabel(self, composition, regionsIntersected, isInternational):				
        label = composition.itemById("label_regiao")
        regionsIntersected = [regiao.upper() for regiao in regionsIntersected]
        if label:
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

    def getIntersections(self, selectedFeature, lyrStates, lyrCountries=None):
        '''
        Checks existence of internacional intersections. 
        Otherwise, checks intersections between selectedFeature and states.
        '''
        intersections = set()
        for feat in lyrCountries.getFeatures():
            if selectedFeature.geometry().intersects(feat.geometry()):
                intersections.add(feat['nome'])
        if len(intersections) == 1 and next(iter(intersections)) == 'Brasil':
            intersections.pop()
            for feat in lyrStates.getFeatures():
                if selectedFeature.geometry().intersects(feat.geometry()):
                    intersections.add(feat['REGIAO'])
            return intersections, False
        else:
            return intersections, True


    def make(self, composition, selected_feature):
        pathShpStates = Path(__file__).parent.parent / 'limites' / '2020' / 'Estados_2020.shp'
        shpStates = self.loadShapeLayer(pathShpStates, '', 'estados')        
        
        pathShpCountries = Path(__file__).parent.parent / 'limites' / '2020' / 'Paises_2020.shp'
        shpCountries = self.loadShapeLayer(pathShpCountries, '', 'paises')

        # Se intersecta

        regionsIntersected, isInternational = self.getIntersections(selected_feature, shpStates, shpCountries)
        self.replaceLabel(composition, regionsIntersected, isInternational)