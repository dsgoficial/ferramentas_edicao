import json
import os

from PyQt5 import QtWidgets
from qgis import processing
from processing.gui.wrappers import WidgetWrapper
from qgis.core import (QgsProcessingAlgorithm,
                       QgsProcessingParameterDefinition,
                       QgsProcessingParameterEnum, QgsProject)
from qgis.PyQt.QtCore import QCoreApplication


class OrderEditLayersAndAddStyle(QgsProcessingAlgorithm): 

    MAP_TYPE = 'MAP_TYPE'
    STYLENAME = 'STYLENAME'
    INPUT_SCALE = 'INPUT_SCALE'
    GROUP = 'GROUP'
    MODE = 'MODE'
    OUTPUT = 'OUTPUT'

    def flags(self):
        return super().flags() | QgsProcessingAlgorithm.FlagNoThreading

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
            QgsProcessingParameterEnum(
                self.INPUT_SCALE,
                self.tr('Selecione a escala de edição:'),
                options = [self.tr('1:25.000'), self.tr('1:50.000'), self.tr('1:100.000'), self.tr('1:250.000')]
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
        gridScaleParam = self.parameterAsInt(parameters, self.INPUT_SCALE, context)
        mode = self.parameterAsEnum(parameters,self.MODE,context)
        groupInput = self.parameterAsGroup(parameters, self.GROUP, context)

        if (gridScaleParam==0):
            gridScale = 25
        elif (gridScaleParam==1):
            gridScale = 50
        if (gridScaleParam==2):
            gridScale = 100
        elif (gridScaleParam==3):
            gridScale = 250
        else:
            return {self.OUTPUT: 'Valor para escala inválido'}

        project = context.project()
        
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
            carta = 'topoMap'
        elif mapType==1:
            carta = 'orthoMap'
        else:
            return {self.OUTPUT: 'Valor para tipo de carta inválido'}
        
        jsonConfigData = self.getJSONConfig(
            os.path.join(
                os.path.abspath(os.path.join(
                    os.path.dirname(os.path.dirname(__file__))
                )),
                'mapBuilder',
                'resources',
                'products',
                carta,
                'camadas.json'
            ))
        
        if mode==0:
            styleOption = 'mapEdition'
            groupName = 'map'
        elif mode==1:
            styleOption = 'miniMapEdition'
            groupName = 'miniMap'
        else:
            return {self.OUTPUT: 'Valor para modo inválido'}
        
        stylePath =os.path.join(
                os.path.abspath(os.path.join(
                    os.path.dirname(os.path.dirname(__file__))
                )),
                'mapBuilder',
                'resources',
                'products',
                carta,
                'styles',
                styleOption
            )
        
        feedback.setProgressText('Calculando dicionário QML...')
        qmlDict = self.buildQmlDict(stylePath)
        
        feedback.setProgressText('Removendo as camadas...')
        layers = self.remove( [ i['table'] for i in jsonConfigData[ groupName ] ], layers, qmlDict, feedback, project)
        if feedback.isCanceled():
            return {self.OUTPUT: 'Cancelado'}

        feedback.setProgressText('Ordenando as camadas...')
        self.order( [ i['table'] for i in jsonConfigData[ groupName ] ], layers, feedback, project)
        if feedback.isCanceled():
            return {self.OUTPUT: 'Cancelado'}

        feedback.setProgressText('Carregando estilos...')
        self.estilos( layers, qmlDict, gridScale, feedback)
        if feedback.isCanceled():
            return {self.OUTPUT: 'Cancelado'}

        #feedback.setProgressText('Configurando escala de renderização...')
        #self.renderizar( layers, gridScale)
        #if feedback.isCanceled():
        #    return {self.OUTPUT: 'Cancelado'}

        #feedback.setProgressText('Carregando as máscaras...') 
        #self.loadMasks(carta, layers)
        #if feedback.isCanceled():
        #    return {self.OUTPUT: 'Cancelado'}

        return {self.OUTPUT: ''}


    def remove(self, layerNames, layers, qmlDict, feedback, project):
        listSize = len(layers)
        progressStep = 100/(listSize+1) if listSize else 0
        toBeRemoved = []
        layersOk = []
        for step, layer in enumerate(layers):
            if feedback.isCanceled():
                return 
            layerName = layer.dataProvider().uri().table()
            feedback.setProgress( step * progressStep )
            if not( layerName in layerNames ) or not layerName in qmlDict:
                toBeRemoved.append(layer.id())
            else:
                layersOk.append(layer)

        if toBeRemoved:
            project.removeMapLayers( toBeRemoved )

        return layersOk

    def order(self, layerNames, layers, feedback, project):
        listSize = len(layers)
        progressStep = 100/(listSize+1) if listSize else 0
        order = []
        originalOrder = project.layerTreeRoot().layerOrder()
        for layer in originalOrder:
            if layer in layers:
                break
            order.append(layer)
        n = len(order)
        for step, layer in enumerate(layers):
            if feedback.isCanceled():
                return 
            layerName = layer.dataProvider().uri().table()
            feedback.setProgress( step * progressStep )
            order.insert( 
            layerNames.index( layerName )+n, 
            layer
            )
        if len(order):
            for layer in originalOrder[len(order)-1:]:
                if layer not in layers:
                    order.append(layer)
        project.layerTreeRoot().setHasCustomLayerOrder(True)
        project.layerTreeRoot().setCustomLayerOrder( order )

        return

    def estilos(self, layers, qmlDict, escala, feedback):
        listSize = len(layers)
        progressStep = 100/(listSize+1) if listSize else 0
        for step, layer in enumerate(layers):
            if feedback.isCanceled():
                return 
            layerName = layer.dataProvider().uri().table()
            layerNameWithScale = '{0}_{1}'.format(layerName,escala)
            if(layerNameWithScale in qmlDict):
                self.applyStyle(layer, qmlDict[layerNameWithScale])
            else:
                self.applyStyle(layer, qmlDict[layerName])
            feedback.setProgress( step * progressStep )

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
    
    # def renderizar(self, layers, scale):
    #     for layer in layers:
    #         qgs_feature_renderer = layer.renderer()
    #         qgs_feature_renderer.setReferenceScale(scale)
    #         layer.reload()
    
    # def loadMasks(self, carta, layers):
    #     jsonPathMask = os.path.join(
    #             os.path.abspath(os.path.join(
    #                 os.path.dirname(os.path.dirname(__file__))
    #             )),
    #             'mapBuilder',
    #             'resources',
    #             'products',
    #             carta,
    #             'masks.json'
    #         )
    #     r = processing.run(
    #         'ferramentasedicao:loadmasks',
    #         {   'INPUT_LAYERS' : layers,
    #             'JSON_FILE': jsonPathMask,
    #             'OUTPUT' : 'TEMPORARY_OUTPUT'
    #         }
    #     )
    #     return r['OUTPUT']   

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
            for g in  QgsProject.instance().layerTreeRoot().findGroups()
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

class ParameterGroup(QgsProcessingParameterDefinition):

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
        return {'widget_wrapper': 'ferramentas_edicao.modules.processings.orderEditLayersAndAddStyle.GroupsWidgetWrapper' }

    def valueAsPythonString(self, value, context):
        return str(value)

    def asScriptCode(self):
        raise NotImplementedError()

    @classmethod
    def fromScriptCode(cls, name, description, isOptional, definition):
        raise NotImplementedError()

    
    
