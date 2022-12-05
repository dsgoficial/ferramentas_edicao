# -*- coding: utf-8 -*-

from qgis.PyQt.QtCore import QCoreApplication
from qgis.core import (
                        QgsProcessing,
                        QgsFeatureSink,
                        QgsProcessingAlgorithm,
                        QgsProcessingParameterFeatureSink,
                        QgsCoordinateReferenceSystem,
                        QgsProcessingParameterMultipleLayers,
                        QgsFeature,
                        QgsProcessingParameterVectorLayer,
                        QgsFields,
                        QgsFeatureRequest,
                        QgsProcessingParameterNumber,
                        QgsGeometry,
                        QgsPointXY
                    )
from qgis import processing
from qgis import core, gui
from qgis.utils import iface
import math

class BridgeAndManholeWidth(QgsProcessingAlgorithm): 

    INPUT_LAYER_P = 'INPUT_LAYER_P'
    INPUT_FIELD_LAYER_P = 'INPUT_FIELD_LAYER_P'
    INPUT_LAYER_L = 'INPUT_LAYER_L'
    INPUT_FIELD_LAYER_L = 'INPUT_FIELD_LAYER_L'
    INPUT_HIGHWAY = 'INPUT_HIGHWAY'
    
    OUTPUT = 'OUTPUT'

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_P,
                self.tr('Selecionar camada de elemento viário (Ponto)'),
                [QgsProcessing.TypeVectorPoint]
            )
        )
        self.addParameter(
            core.QgsProcessingParameterField(
                self.INPUT_FIELD_LAYER_P,
                self.tr('Selecionar o atributo de largura'), 
                type=core.QgsProcessingParameterField.Any, 
                parentLayerParameterName=self.INPUT_LAYER_P,
                allowMultiple=False
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_L,
                self.tr('Selecionar camada de elemento viário (Linha)'),
                [QgsProcessing.TypeVectorLine]
            )
        )
        self.addParameter(
            core.QgsProcessingParameterField(
                self.INPUT_FIELD_LAYER_L,
                self.tr('Selecionar o atributo de largura'), 
                type=core.QgsProcessingParameterField.Any, 
                parentLayerParameterName=self.INPUT_LAYER_L,
                allowMultiple=False
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_HIGHWAY,
                self.tr('Selecionar camada de rodovia'),
                [QgsProcessing.TypeVectorLine]
            )
        )

    def processAlgorithm(self, parameters, context, feedback):      
        pointLayer = self.parameterAsVectorLayer(parameters, self.INPUT_LAYER_P, context)
        pointWidthField = self.parameterAsFields(parameters, self.INPUT_FIELD_LAYER_P, context)[0]
        lineLayer = self.parameterAsVectorLayer(parameters, self.INPUT_LAYER_L, context)
        lineWidthField = self.parameterAsFields(parameters, self.INPUT_FIELD_LAYER_L, context)[0]
        highwayLayer = self.parameterAsVectorLayer(parameters, self.INPUT_HIGHWAY, context)
        
        self.setWidthFieldOnLayer( 
            pointLayer, 
            pointWidthField, 
            highwayLayer, 
            [201,202,203,204,501]
        )

        self.setWidthFieldOnLayer( 
            lineLayer, 
            lineWidthField, 
            highwayLayer, 
            [201,202,203,204]
        )
        return {self.OUTPUT: ''}

    def setWidthFieldOnLayer(self, layer, widthField, highwayLayer, filterType):
        for layerFeature in layer.getFeatures():
            if not( layerFeature['tipo'] in filterType ):
                continue
            layerGeometry = layerFeature.geometry()
            request = QgsFeatureRequest().setFilterRect( layerGeometry.boundingBox() ) 
            for highwayFeature in highwayLayer.getFeatures(request):
                highwayFeatureGeometry = highwayFeature.geometry()
                if not( highwayFeatureGeometry.intersects( layerGeometry ) ):
                    continue
                intersection = highwayFeatureGeometry.intersection( layerGeometry )
                if not( intersection.type() == layer.geometryType() ):
                    continue
                layerFeature[ widthField ] = self.getSymbolWidth( highwayFeature )
                self.updateLayerFeature( layer, layerFeature)

    def updateLayerFeature(self, layer, feature):
        layer.startEditing()
        layer.updateFeature(feature)

    def getSymbolWidth(self, highwayFeature):
        tipo = highwayFeature[ 'tipo' ]
        situacao_fisica = highwayFeature[ 'situacao_fisica' ]
        canteiro_divisorio = highwayFeature[ 'canteiro_divisorio' ]
        revestimento = highwayFeature[ 'revestimento' ]
        trafego = highwayFeature[ 'trafego' ]
        nr_faixas = int(highwayFeature[ 'nr_faixas' ]) if highwayFeature[ 'nr_faixas' ] else False
        jurisdicao = highwayFeature[ 'jurisdicao' ]
        if (
                tipo in [2,4] 
                and situacao_fisica in [0,3] 
                and canteiro_divisorio == 1
            ):
            return 1.1
        elif (
                tipo in [2,4] 
                and situacao_fisica in [0,3]
                and canteiro_divisorio == 2
                and revestimento == 3
                and trafego == 1
                and nr_faixas >= 4
            ):
            return 0.9
        elif (
                tipo in [2,4] 
                and situacao_fisica in [0,3]
                and canteiro_divisorio == 2
                and revestimento == 3
                and jurisdicao == 1
                and ( nr_faixas in [2,3] or nr_faixas is None )
            ):
            return 0.7
        elif (
                tipo in [2,4] 
                and situacao_fisica in [0,3]
                and canteiro_divisorio == 2
                and revestimento == 3
                and trafego == 1
                and nr_faixas == 1
            ):
            return 0.5
        elif (
                tipo in [2,4] 
                and situacao_fisica in [0,3]
                and canteiro_divisorio == 2
                and revestimento == 3
                and trafego in [2,4]
                and nr_faixas >= 4
            ):
            return 0.9
        elif (
                tipo in [2,4] 
                and situacao_fisica in [0,3]
                and canteiro_divisorio == 2
                and revestimento == 3
                and jurisdicao in [0,2]
                and ( nr_faixas in [2,3] or nr_faixas is None )
            ):
            return 0.7
        elif (
                tipo in [2,4] 
                and situacao_fisica in [0,3]
                and canteiro_divisorio == 2
                and revestimento == 3
                and jurisdicao in [0,2]
                and nr_faixas == 1
            ):
            return 0.5
        elif (
                tipo in [2,4] 
                and situacao_fisica in [0,3]
                and canteiro_divisorio == 2
                and revestimento != 3
                and trafego == 1
                and jurisdicao == 1
                and nr_faixas >= 4
            ):
            return 0.9
        elif (
                tipo in [2,4] 
                and situacao_fisica in [0,3]
                and canteiro_divisorio == 2
                and revestimento != 3
                and trafego == 1
                and jurisdicao == 1
                and ( nr_faixas in [2,3] or nr_faixas is None )
            ):
            return 0.7
        elif (
                tipo in [2,4] 
                and situacao_fisica in [0,3]
                and canteiro_divisorio == 2
                and revestimento != 3
                and trafego == 1
                and jurisdicao == 1
                and nr_faixas == 1
            ):
            return 0.5
        elif (
                tipo in [2,4] 
                and situacao_fisica in [0,3]
                and canteiro_divisorio == 2
                and revestimento != 3
                and trafego == 1
                and jurisdicao in [0,2]
                and nr_faixas >= 4
            ):
            return 0.9
        elif (
                tipo in [2,4] 
                and situacao_fisica in [0,3]
                and canteiro_divisorio == 2
                and revestimento != 3
                and trafego == 1
                and jurisdicao in [0,2]
                and ( nr_faixas in [2,3] or nr_faixas is None )
            ):
            return 0.7
        elif (
                tipo in [2,4] 
                and situacao_fisica in [0,3]
                and canteiro_divisorio == 2
                and revestimento != 3
                and trafego == 1
                and jurisdicao in [0,2]
                and nr_faixas == 1
            ):
            return 0.5
        elif (
                tipo in [2,4] 
                and situacao_fisica in [0,3]
                and canteiro_divisorio == 2
                and revestimento != 3
                and trafego != 1
            ):
            return 0.5
        elif (
                tipo in [2,4] 
                and not( situacao_fisica in [0,3] )
                and canteiro_divisorio == 1
            ):
            return 1.1
        elif (
                tipo in [2,4] 
                and not( situacao_fisica in [0,3] )
                and canteiro_divisorio == 2
            ):
            return 0.7
        elif (
                tipo in [3]  
            ):
            return 0.25
        elif (
                tipo in [6]  
            ):
            return 0.2
        elif (
                tipo in [5] 
                and situacao_fisica in [0,3]
                and revestimento == 3
            ):
            return 0.5
        elif (
                tipo in [5] 
                and situacao_fisica in [0,3]
                and revestimento != 3
            ):
            return 0.3
        elif (
                tipo in [5] 
                and not( situacao_fisica in [0,3] )
            ):
            return 0.7
        return 0

   
    def tr(self, string):
        return QCoreApplication.translate('Processing', string)

    def createInstance(self):
        return BridgeAndManholeWidth()

    def name(self):
        return 'bridgeandmanholewidth'

    def displayName(self):
        return self.tr('Definir largura ponte e bueiro')

    def group(self):
        return self.tr('Edição')

    def groupId(self):
        return 'edicao'

    def shortHelpString(self):
        return self.tr("O algoritmo ...")
    
