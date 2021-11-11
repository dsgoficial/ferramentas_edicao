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
from processing.gui.wrappers import WidgetWrapper
from qgis.PyQt.QtXml import QDomDocument
from PyQt5 import QtCore, uic, QtWidgets, QtGui

class OrderEditLayersAndAddStyle(QgsProcessingAlgorithm): 

    MAP_TYPE = 'MAP_TYPE'
    STYLENAME = 'STYLENAME'
    GROUP = 'GROUP'
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

        self.addParameter(
            ParameterGroup(
                self.GROUP,
                description='Grupo'
            )
        )

    def parameterAsGroup(self, parameters, name, context):
        return parameters[name]

    def processAlgorithm(self, parameters, context, feedback): 
        mapType = self.parameterAsEnum(parameters, self.MAP_TYPE, context)
        mode = self.parameterAsEnum(parameters,self.MODE,context)
        groupInput = self.parameterAsGroup(parameters, self.GROUP, context)

        project = context.project().instance()
        
        feedback.setProgressText('Iniciando...')
        group = project.layerTreeRoot().findGroup( groupInput )

        if groupInput:
            group = project.layerTreeRoot().findGroup( groupInput )
            if not group:
                raise Exception('Grupo não encontrado!')
            layers = [  layerTree.layer() for layerTree in group.findLayers() ]
        else: 
            layers = project.instance().mapLayers().values()
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
        feedback.setProgressText('Ordenando as camadas...')
        feedbackCancel = False
        self.order( [ i['tabela'] for i in jsonConfigData[ groupName ] ], layers, qmlDict, feedback, feedbackCancel, project)
        feedback.setProgressText('Carregando as máscaras...') 
        #calcular layers de novo, pois podem ter sido removidas em self.order
        group = project.layerTreeRoot().findGroup( groupInput )

        if groupInput:
            group = project.layerTreeRoot().findGroup( groupInput )
            if not group:
                raise Exception('Grupo não encontrado!')
            layers = [  layerTree.layer() for layerTree in group.findLayers() ]
        else: 
            layers = project.instance().mapLayers().values()

        layerList = [layer for layer in layers if layer]
        self.loadMasks(carta, layerList)
        if feedback.isCanceled() or feedbackCancel:
            return {self.OUTPUT: 'feedback cancelado'}
        return {self.OUTPUT: ''}

    def order(self, layerNames, layers, qmlDict, feedback, feedbackCancel, project):
        projectMapLayers = project.mapLayers()
        listSize = len(projectMapLayers)
        progressStep = 100/(listSize+1) if listSize else 0
        order = []
        for step, layer in enumerate(layers):
            if feedback.isCanceled():
                feedbackCancel = True
                return 
            layerName = layer.dataProvider().uri().table()
            feedback.setProgress( step * progressStep )
            if not( layerName in layerNames ) or not layerName in qmlDict:
                project.removeMapLayer( layer.id() )
            else:
                order.insert( 
                layerNames.index( layerName ), 
                layer
                )
                self.applyStyle(layer, qmlDict[layerName])
            
        project.layerTreeRoot().setHasCustomLayerOrder(True)
        project.layerTreeRoot().setCustomLayerOrder( order )

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
    
    def applyStyle(self, lyr, styleQmlPath):
        r = processing.run(
            'native:setlayerstyle',
            {   'INPUT' : lyr,
                'STYLE': styleQmlPath
            }
        )
    
    def loadMasks(self, carta, layers):
        jsonPathMask = os.path.join(
                os.path.abspath(os.path.join(
                    os.path.dirname(os.path.dirname(__file__))
                )),
                'map_generator',
                'produtos',
                carta,
                'masks.json'
            )
        r = processing.run(
            'ferramentasedicao:loadmasks',
            {   'INPUT_LAYERS' : layers,
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

class GroupsWidgetWrapper(WidgetWrapper):
    def __init__(self, *args, **kwargs):
        super(GroupsWidgetWrapper, self).__init__(*args, **kwargs)
    
    def getGroupNames(self):
        groupsList = [
            g.name()
            for g in  core.QgsProject.instance().layerTreeRoot().findGroups()
        ]
        groupsList.insert(0, '')
        return groupsList

    def createWidget(self):
        self.widget = QtWidgets.QComboBox()
        self.widget.addItems( self.getGroupNames() )
        self.widget.dialogType = self.dialogType
        return self.widget
    
    def parentLayerChanged(self, layer=None):
        pass
    
    def setLayer(self, layer):
        pass
    
    def setValue(self, value):
        pass

    def value(self):
        return self.widget.currentText()
    
    def postInitialize(self, wrappers):
        pass

class ParameterGroup(core.QgsProcessingParameterDefinition):

    def __init__(self, name, description=''):
        super().__init__(name, description)

    def clone(self):
        copy = ParameterGroup(self.name(), self.description())
        return copy

    def type(self):
        return self.typeName()

    @staticmethod
    def typeName():
        return 'group'

    def checkValueIsAcceptable(self, value, context=None):
        return True

    def metadata(self):
        return {'widget_wrapper': 'plugin_edicao.processings.orderEditLayersAndAddStyle.GroupsWidgetWrapper' }

    def valueAsPythonString(self, value, context):
        return str(value)

    def asScriptCode(self):
        raise NotImplementedError()

    @classmethod
    def fromScriptCode(cls, name, description, isOptional, definition):
        raise NotImplementedError()

    
    
