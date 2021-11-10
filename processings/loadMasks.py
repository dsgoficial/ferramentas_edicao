# -*- coding: utf-8 -*-

from qgis.PyQt.QtCore import QCoreApplication
from qgis.core import (
                        QgsProcessingAlgorithm,
                    )
from qgis import processing
from qgis import core, gui
from qgis.utils import iface
import math
import json
from qgis.PyQt.QtXml import QDomDocument
from processing.gui.wrappers import WidgetWrapper
from PyQt5 import QtCore, uic, QtWidgets, QtGui

class LoadMasks(QgsProcessingAlgorithm): 

    JSON_FILE = 'JSON_FILE'
    GROUP = 'GROUP'
    OUTPUT = 'OUTPUT'

    def initAlgorithm(self, config=None):
        self.addParameter(
            core.QgsProcessingParameterFile(
                self.JSON_FILE,
                self.tr('Selecionar o arquivo de máscaras:'),
                extension='json'
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
        jsonFilePath = self.parameterAsFile(parameters, self.JSON_FILE, context)
        groupName = self.parameterAsGroup(parameters, self.GROUP, context)
        mask_dict = json.load( open( jsonFilePath ) )

        group = core.QgsProject.instance().layerTreeRoot().findGroup( groupName )

        if groupName:
            group = core.QgsProject.instance().layerTreeRoot().findGroup( groupName )
            if not group:
                raise Exception('Grupo não encontrado!')
            layers = [  layerTree.layer() for layerTree in group.findLayers() ]
        else: 
            layers = core.QgsProject.instance().mapLayers().values()

        mapId = {layer.dataProvider().uri().table() : layer.id() for layer in layers if layer}
        '''
        if layer porque quando roda pelo orderEditLayersAndAddStyle (configurar para o preparo de edição), 
        a camada pode vir como NoneType, aparentemente, tal fato deve-se à exclusão da camada no order do 
        orderEditLayersAndAddStyle
        '''

        for layer in layers:
            if not layer:
                continue
            layerName = layer.dataProvider().uri().table()
            if not layerName in mask_dict:
                continue
            labels = layer.labeling()
            for provider in mask_dict[layerName]:
                if provider == '--SINGLE--RULE--':
                    label_settings=labels.settings()
                else:
                    providerInverseMap = {x.description(): x.ruleKey() for x in labels.rootRule().children()}
                    label_settings=labels.settings(providerInverseMap[provider])
                label_format = label_settings.format()
                masks = label_format.mask()
                new_symbol_mask = []
                for symbol in mask_dict[layerName][provider]:
                    symbol_id = core.QgsSymbolLayerId(symbol[1], symbol[2])
                    reference = core.QgsSymbolLayerReference(mapId[symbol[0]], symbol_id)
                    new_symbol_mask.append(reference)
                masks.setMaskedSymbolLayers(new_symbol_mask)
                label_settings.setFormat(label_format)
                if provider == '--SINGLE--RULE--':
                    labels.setSettings(label_settings)
                else:
                    labels.setSettings(label_settings, providerInverseMap[provider])
            layer.setLabeling(labels)

        return {self.OUTPUT: ''}

    def tr(self, string):
        return QCoreApplication.translate('Processing', string)

    def createInstance(self):
        return LoadMasks()

    def name(self):
        return 'loadmasks'

    def displayName(self):
        return self.tr('Carregar máscaras')

    def group(self):
        return self.tr('Auxiliar')

    def groupId(self):
        return 'auxiliar'

    def shortHelpString(self):
        return self.tr("O algoritmo carrega as máscaras de acordo com o json")


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
        return {'widget_wrapper': 'plugin_edicao.processings.loadMasks.GroupsWidgetWrapper' }

    def valueAsPythonString(self, value, context):
        return str(value)

    def asScriptCode(self):
        raise NotImplementedError()

    @classmethod
    def fromScriptCode(cls, name, description, isOptional, definition):
        raise NotImplementedError()