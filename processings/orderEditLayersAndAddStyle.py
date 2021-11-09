# -*- coding: utf-8 -*-

from qgis.PyQt.QtCore import QCoreApplication
from qgis.core import (
                        QgsProcessingAlgorithm,
                        QgsProcessingParameterEnum
                    )
from qgis import processing
from qgis import core, gui
from qgis.utils import iface
import os
import json
from qgis.PyQt.QtXml import QDomDocument

class OrderEditLayersAndAddStyle(QgsProcessingAlgorithm): 

    MAP_TYPE = 'MAP_TYPE'
    STYLENAME = 'STYLENAME'
    MODE = 'MODE'
    OUTPUT = 'OUTPUT'

    def initAlgorithm(self, config=None):

        self.map = [
            self.tr('Carta Topográfica'),
            self.tr('Carta Ortoimagem'),
        ]

        self.addParameter(
            QgsProcessingParameterEnum(
                self.MAP_TYPE,
                self.tr('Tipo da carta'),
                options=self.map,
                defaultValue=1
            )
        )

        self.modes = [
            self.tr('Carta Principal'),
            self.tr('Carta Mini'),
        ]

        self.addParameter(
            QgsProcessingParameterEnum(
                self.MODE,
                self.tr('Modo'),
                options=self.modes,
                defaultValue=0
            )
        )

    def processAlgorithm(self, parameters, context, feedback): 
        mapType = self.parameterAsEnum(parameters, self.MAP_TYPE, context)
        mode = self.parameterAsEnum(parameters,self.MODE,context)
        feedback.setProgressText('Iniciando...')
        if mapType==0:
            carta = 'carta_topografica'
        elif mapType==1:
            carta = 'carta_ortoimagem'
        else:
            return {self.OUTPUT: 'Valor para tipo de carta inválido'}
        jsonConfigData = self.getJSONConfig(
            os.path.join(
                os.path.abspath(os.path.join(
                    os.path.dirname(os.path.dirname(__file__))
                )),
                'map_generator',
                'produtos',
                carta,
                'camadas.json'
            ))
        if mode==0:
            styleOption = 'map'
            groupName = 'carta'
        elif mode==1:
            styleOption = 'miniMap'
            groupName = 'carta_mini'
        else:
            return {self.OUTPUT: 'Valor para modo inválido'}
        stylePath =os.path.join(
                os.path.abspath(os.path.join(
                    os.path.dirname(os.path.dirname(__file__))
                )),
                'map_generator',
                'produtos',
                carta,
                'styles',
                styleOption
            )
        feedback.setProgressText('Calculando dicionário QML...')
        qmlDict = self.buildQmlDict(stylePath)
        iface.mapCanvas().freeze(True)
        feedback.setProgressText('Ordenando as camadas...')
        feedbackCancel = False
        self.order( [ i['tabela'] for i in jsonConfigData[ groupName ] ], qmlDict, feedback, feedbackCancel)
        feedback.setProgressText('Carregando as máscaras...')  
        group=''
        self.loadMasks(carta, group)
        if feedback.isCanceled() or feedbackCancel:
            return {self.OUTPUT: 'feedback cancelado'}
        iface.mapCanvas().freeze(False) 
        return {self.OUTPUT: ''}

    def order(self, layerNames, qmlDict, feedback, feedbackCancel):
        project = core.QgsProject.instance()
        projectMapLayers = project.mapLayers()
        listSize = len(projectMapLayers)
        progressStep = 100/(listSize+1) if listSize else 0
        layers = projectMapLayers.values()
        order = []
        layersIdToRemove = []
        for step, layer in enumerate(layers):
            if feedback.isCanceled():
                feedbackCancel = True
                return 
            layerName = layer.dataProvider().uri().table()
            feedback.setProgress( step * progressStep )
            if not( layerName in layerNames ):
                #layersIdToRemove.append(layer.id())
                project.removeMapLayer( layer.id() )
                continue
            if not layerName in qmlDict:
                #layersIdToRemove.append(layer.id())
                project.removeMapLayer( layer.id() )
                continue 
            else:
                order.insert( 
                layerNames.index( layerName ), 
                layer
                )
                layer.loadNamedStyle(qmlDict[layerName])
                #layer.loadNamedStyle(qmlDict[layer.name()], True)
                layer.triggerRepaint()
                
            
        
        project.layerTreeRoot().setHasCustomLayerOrder(True)
        project.layerTreeRoot().setCustomLayerOrder( order )
        #project.removeMapLayers(layersIdToRemove)

        return

    def getJSONConfig(self, jsonFilePath):
        with open(jsonFilePath, 'r') as f:
            return json.load( f )

    def buildQmlDict(self, inputDir):
        """
        Builds a dict with the format 
        {'fileName':'filePath'}
        """
        qmlDict = dict()
        for fileNameWithExtension in os.listdir(inputDir):
            if not fileNameWithExtension.endswith(".qml"):
                continue
            fileName = fileNameWithExtension.split('.')[0]
            qmlDict[fileName] = os.path.join(inputDir, fileNameWithExtension)
        return qmlDict
    
    def loadMasks(self, carta, group):
        jsonPathMask = os.path.join(
                os.path.abspath(os.path.join(
                    os.path.dirname(os.path.dirname(__file__))
                )),
                'map_generator',
                'produtos',
                carta,
                'mascaras.json'
            )
        r = processing.run(
            'ferramentasedicao:loadmasks',
            {   'GROUP' : group,
                'JSON_FILE': jsonPathMask,
                'OUTPUT' : 'TEMPORARY_OUTPUT'
            }
        )
        return r['OUTPUT']  
        
        
        

    def tr(self, string):
        return QCoreApplication.translate('Processing', string)

    def createInstance(self):
        return OrderEditLayersAndAddStyle()

    def name(self):
        return 'odereditlayersandaddstyle'

    def displayName(self):
        return self.tr('Configurar para o preparo de edição')

    def group(self):
        return self.tr('Edição')

    def groupId(self):
        return 'edicao'

    def shortHelpString(self):
        return self.tr("O algoritmo ordena as camadas e aplica os estilos para a edição")
    
