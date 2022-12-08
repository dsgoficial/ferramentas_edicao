# -*- coding: utf-8 -*-

import processing

from qgis import core
from qgis.core import (QgsFeatureRequest, QgsProcessing,
                       QgsProcessingAlgorithm, QgsProcessingMultiStepFeedback,
                       QgsProcessingParameterVectorLayer, QgsProcessingParameterBoolean, QgsProcessingParameterEnum,
                       QgsDistanceArea, QgsCoordinateReferenceSystem, QgsProcessingFeatureSourceDefinition,
                       QgsVectorLayerUtils)
from qgis.PyQt.QtCore import QCoreApplication


class PlaceHospitalSymbol(QgsProcessingAlgorithm): 

    INPUT = 'INPUT'
    ONLY_SELECTED = 'ONLY_SELECTED'
    INPUT_VISIBLE_FIELD = 'INPUT_VISIBLE_FIELD'
    HIDE_FEATS = 'HIDE_FEATS'
    SCALE = 'SCALE'
    INPUT_SYMBOL_LAYER = 'INPUT_SYMBOL_LAYER'
    OUTPUT = 'OUTPUT'

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT,
                self.tr('Selecionar camada de hospital (edificação área)'),
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
            core.QgsProcessingParameterField(
                self.INPUT_VISIBLE_FIELD,
                self.tr('Selecionar o atributo de "visibilidade" da camada de entrada'), 
                type=core.QgsProcessingParameterField.Any, 
                parentLayerParameterName=self.INPUT,
                allowMultiple=False,
                defaultValue='visivel'
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.HIDE_FEATS,
                self.tr('Ocultar feições que não tem tamanho suficiente'),
                defaultValue=False
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

    def processAlgorithm(self, parameters, context, feedback):      
        inputLyr = self.parameterAsVectorLayer(parameters, self.INPUT, context)
        onlySelected = self.parameterAsBool(parameters, self.ONLY_SELECTED, context)
        hideFeats = self.parameterAsBool(parameters, self.HIDE_FEATS, context)
        inputLyrVisibleField = self.parameterAsFields(parameters, self.INPUT_VISIBLE_FIELD, context)[0]
        simbAreaLayer = self.parameterAsVectorLayer(parameters, self.INPUT_SYMBOL_LAYER, context)
        request = QgsFeatureRequest().setFilterExpression('("tipo" - "tipo"%100)/100 in (20)')
        if onlySelected:
            request.setFilterFids([feat.id() for feat in inputLyr.selectedFeatures()])
        iterator = inputLyr.getFeatures(request) if not onlySelected else list(inputLyr.getFeatures(request))
        nFeats = inputLyr.featureCount() if not onlySelected else len(iterator)
        if nFeats == 0:
            return {self.OUTPUT: ''}
        stepSize = 100/nFeats
        simbAreaLayer.startEditing()
        simbAreaLayer.beginEditCommand("Posicionando símbolos de hospital")
        newFeatList = []
        for current, feat in enumerate(iterator):
            if feedback.isCanceled():
                break
            geom = feat.geometry()
            innerPoint = geom.centroid()
            if not innerPoint.within(geom):
                innerPoint = geom.pointOnSurface()
            newFeat = QgsVectorLayerUtils.createFeature(simbAreaLayer, innerPoint)
            newFeat['tipo'] = 15
            newFeatList.append(newFeat)
            feedback.setProgress(current * stepSize)
        simbAreaLayer.addFeatures(newFeatList)
        simbAreaLayer.endEditCommand()
        return {self.OUTPUT: ''}
        
        
    
    def tr(self, string):
        return QCoreApplication.translate('Processing', string)

    def createInstance(self):
        return PlaceHospitalSymbol()

    def name(self):
        return 'placehospitalsymbol'

    def displayName(self):
        return self.tr('Insere símbolo de hospital área')

    def group(self):
        return self.tr('Edição')

    def groupId(self):
        return 'edicao'

    def shortHelpString(self):
        return self.tr("O algoritmo ...")
    
