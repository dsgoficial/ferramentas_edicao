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

class SaveMasks(QgsProcessingAlgorithm): 

    FOLDER_OUTPUT = 'FOLDER_OUTPUT'
    OUTPUT = 'OUTPUT'

    def initAlgorithm(self, config=None):
        self.addParameter(
            core.QgsProcessingParameterFileDestination(
                self.FOLDER_OUTPUT,
                self.tr('Selecionar o arquivo para salvar'),
                fileFilter='.json'
            )
        )

    def processAlgorithm(self, parameters, context, feedback):      
        fileOutput = self.parameterAsFileOutput(parameters, self.FOLDER_OUTPUT, context)
        layers = core.QgsProject.instance().mapLayers().values()
        mask_dict = {}
        for layer in layers:
            layerName = layer.dataProvider().uri().table()
            if not layer.type() == core.QgsMapLayer.VectorLayer:
                continue
            labels = layer.labeling()
            if not labels:
                continue
            providers = []
            if isinstance(labels, core.QgsVectorLayerSimpleLabeling):
                providers.append('--SINGLE--RULE--')
                providerMap = {'--SINGLE--RULE--': '--SINGLE--RULE--'}
            if isinstance(labels, core.QgsRuleBasedLabeling):
                providers = [x.ruleKey() for x in labels.rootRule().children()]
                providerMap = {x.ruleKey(): x.description() for x in labels.rootRule().children()}
                
            for provider in providers:
                if provider == '--SINGLE--RULE--':
                    label_settings=labels.settings()
                else:
                    label_settings=labels.settings(provider)
                label_format = label_settings.format()
                masks = label_format.mask()
                if masks.enabled():
                    symbols = masks.maskedSymbolLayers()
                    for symbol in symbols:
                        if not layerName in mask_dict:
                            mask_dict[layerName] = {}
                        if not providerMap[provider] in mask_dict[layerName]:
                            mask_dict[layerName][providerMap[provider]] = []
                        mask_dict[layerName][providerMap[provider]].append([symbol.layerId()[:-37], symbol.symbolLayerId().symbolKey(), symbol.symbolLayerId().symbolLayerIndexPath()])
        with open('{0}'.format( fileOutput ), 'w') as f:
            json.dump(mask_dict, f)
        return {self.OUTPUT: ''}

    def tr(self, string):
        return QCoreApplication.translate('Processing', string)

    def createInstance(self):
        return SaveMasks()

    def name(self):
        return 'savemasks'

    def displayName(self):
        return self.tr('Salvar máscaras')

    def group(self):
        return self.tr('Auxiliar')

    def groupId(self):
        return 'auxiliar'

    def shortHelpString(self):
        return self.tr("O algoritmo ...")