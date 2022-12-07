# -*- coding: utf-8 -*-

import math
from itertools import chain, tee

from qgis import core
from qgis.core import (QgsGeometry, QgsGeometryUtils, QgsProcessing,
                       QgsProcessingAlgorithm, QgsProcessingParameterBoolean,
                       QgsProcessingParameterVectorLayer, QgsVectorLayerUtils)
from qgis.PyQt.QtCore import QCoreApplication


class PlaceSymbolsOnTopOfAreaBuildings(QgsProcessingAlgorithm): 

    INPUT = 'INPUT'
    ONLY_SELECTED = 'ONLY_SELECTED'
    INPUT_SYMBOL_LAYER = 'INPUT_SYMBOL_LAYER'
    INPUT_SYMBOL_LAYER_ROTATION_FIELD = 'INPUT_SYMBOL_LAYER_ROTATION_FIELD'
    OUTPUT = 'OUTPUT'

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT,
                self.tr('Selecionar camada de entrada'),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue='constr_edificacao_a'
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.ONLY_SELECTED,
                self.tr('Executar somente nas feições selecionadas')
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_SYMBOL_LAYER,
                self.tr('Selecionar camada de camada de edição'),
                [QgsProcessing.TypeVectorPoint],
                defaultValue='edicao_simb_area_p'
            )
        )
        self.addParameter(
            core.QgsProcessingParameterField(
                self.INPUT_SYMBOL_LAYER_ROTATION_FIELD,
                self.tr('Selecionar o atributo de rotação da camada de edição'), 
                type=core.QgsProcessingParameterField.Any, 
                parentLayerParameterName=self.INPUT_SYMBOL_LAYER,
                allowMultiple=False,
                defaultValue='simb_rot'
            )
        )
        self.typeMap = {
            516: 11,
            517: 11,
            518: 11,
            519: 11,
            520: 11,
            521: 11,
            522: 11,
            523: 11,
            524: 11,
            525: 11,
            601: 14,
            2601: 16,
            2901: 17,
            2902: 17,
        }

    def processAlgorithm(self, parameters, context, feedback):      
        inputLyr = self.parameterAsVectorLayer(parameters, self.INPUT, context)
        onlySelected = self.parameterAsBool(parameters, self.ONLY_SELECTED, context)
        simbAreaLayer = self.parameterAsVectorLayer(parameters, self.INPUT_SYMBOL_LAYER, context)
        rotationField = self.parameterAsFields(parameters, self.INPUT_SYMBOL_LAYER_ROTATION_FIELD, context)[0]
        iterator = inputLyr.getFeatures() if not onlySelected else inputLyr.getSelectedFeatures()
        nFeats = inputLyr.featureCount() if not onlySelected else inputLyr.selectedFeatureCount()
        if nFeats == 0:
            return {self.OUTPUT: ''}
        stepSize = 100/nFeats
        simbAreaLayer.startEditing()
        simbAreaLayer.beginEditCommand("Posicionando elementos no segmento mais ao norte dos polígonos")
        newFeatList = []
        for current, feat in enumerate(iterator):
            if feedback.isCanceled():
                break
            if feat['tipo'] not in self.typeMap:
                continue
            geom = feat.geometry()
            geom = geom.removeInteriorRings()
            geom.forcePolygonCounterClockwise()
            midpointDict = {
                QgsGeometry(QgsGeometryUtils.midpoint(p1, p2)): [p1, p2] 
                for p1, p2 in pairwise(geom.vertices())
            }
            mostNorthernMidPoint = max(midpointDict.keys(), key=lambda x: x.asPoint().y())
            newFeat = QgsVectorLayerUtils.createFeature(simbAreaLayer, mostNorthernMidPoint)
            coordinateList = list(chain.from_iterable(
                map(lambda p: (p.x(), p.y()), midpointDict[mostNorthernMidPoint])
            ))
            # angle = math.degrees(QgsGeometryUtils.linePerpendicularAngle(*coordinateList)) % 180
            p1, p2 = midpointDict[mostNorthernMidPoint]
            azimuth = p1.azimuth(p2)
            innerPoint = geom.pointOnSurface().asPoint()
            angle = azimuth - 90 if QgsGeometryUtils.leftOfLine(innerPoint.x(), innerPoint.y(), *coordinateList) < 0 \
                else azimuth + 90
            newFeat[rotationField] = angle + 180
            newFeat['tipo'] = self.typeMap[feat['tipo']]
            newFeatList.append(newFeat)
            feedback.setProgress(current * stepSize)
        simbAreaLayer.addFeatures(newFeatList)
        simbAreaLayer.endEditCommand()
        return {self.OUTPUT: ''}
        
        
    
    def tr(self, string):
        return QCoreApplication.translate('Processing', string)

    def createInstance(self):
        return PlaceSymbolsOnTopOfAreaBuildings()

    def name(self):
        return 'placesymbolsontopofareabuildings'

    def displayName(self):
        return self.tr('Insere símbolo de edificações área no ponto médio do segmento mais ao norte')

    def group(self):
        return self.tr('Edição')

    def groupId(self):
        return 'edicao'

    def shortHelpString(self):
        return self.tr("O algoritmo insere edificação com símbolo no ponto médio do segmento mais ao norte")
    
def pairwise(iterable):
    # pairwise('ABCDEFG') --> AB BC CD DE EF FG
    a, b = tee(iterable)
    next(b, None)
    return zip(a, b)