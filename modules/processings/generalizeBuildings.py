# -*- coding: utf-8 -*-

from qgis import core
from qgis.core import (QgsFeatureRequest, QgsProcessing,
                       QgsProcessingAlgorithm, QgsProcessingMultiStepFeedback,
                       QgsProcessingParameterVectorLayer)
from qgis.PyQt.QtCore import QCoreApplication


class GeneralizeBuildings(QgsProcessingAlgorithm): 

    INPUT_POINT_BUILDING = 'INPUT_POINT_BUILDING'
    INPUT_BUILDING_VISIBLE_FIELD = 'INPUT_BUILDING_VISIBLE_FIELD'
    INPUT_POINT_WAREHOUSE = 'INPUT_POINT_WAREHOUSE'
    INPUT_POINT_WAREHOUSE_VISIBLE_FIELD = 'INPUT_POINT_WAREHOUSE_VISIBLE_FIELD'
    INPUT_MINERAL_EXTRACTION_A = 'INPUT_MINERAL_EXTRACTION_A'
    INPUT_BUILDING_AREA_A = 'INPUT_BUILDING_AREA_A'
    OUTPUT = 'OUTPUT'

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_POINT_BUILDING,
                self.tr('Selecionar camada de edificação'),
                [QgsProcessing.TypeVectorPoint],
                defaultValue='constr_edificacao_p'
            )
        )

        self.addParameter(
            core.QgsProcessingParameterField(
                self.INPUT_BUILDING_VISIBLE_FIELD,
                self.tr('Selecionar o atributo de "visibilidade" da camada de edificação'), 
                type=core.QgsProcessingParameterField.Any, 
                parentLayerParameterName=self.INPUT_POINT_BUILDING,
                allowMultiple=False,
                defaultValue='visivel'
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_POINT_WAREHOUSE,
                self.tr('Selecionar camada de depósito'),
                [QgsProcessing.TypeVectorPoint],
                defaultValue='constr_deposito_p'
            )
        )

        self.addParameter(
            core.QgsProcessingParameterField(
                self.INPUT_POINT_WAREHOUSE_VISIBLE_FIELD,
                self.tr('Selecionar o atributo de "visibilidade" da camada de depósito'), 
                type=core.QgsProcessingParameterField.Any, 
                parentLayerParameterName=self.INPUT_POINT_WAREHOUSE,
                allowMultiple=False,
                defaultValue='visivel'
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_MINERAL_EXTRACTION_A,
                self.tr('Selecionar camada de extração mineral'),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue='constr_extracao_mineral_a'
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_BUILDING_AREA_A,
                self.tr('Selecionar camada de área edificada'),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue='cobter_area_construida_a'
            )
        )

    def processAlgorithm(self, parameters, context, feedback):      
        buildingLayer = self.parameterAsVectorLayer(parameters, self.INPUT_POINT_BUILDING, context)
        buildingVisibleField = self.parameterAsFields(parameters, self.INPUT_BUILDING_VISIBLE_FIELD, context)[0]
        depositLayer = self.parameterAsVectorLayer(parameters, self.INPUT_POINT_WAREHOUSE, context)
        depositVisibleField = self.parameterAsFields(parameters, self.INPUT_POINT_WAREHOUSE_VISIBLE_FIELD, context)[0]
        mineralExtractionLayer = self.parameterAsVectorLayer(parameters, self.INPUT_MINERAL_EXTRACTION_A, context)
        buildingArea = self.parameterAsVectorLayer(parameters, self.INPUT_BUILDING_AREA_A, context)

        multiStepFeedback = QgsProcessingMultiStepFeedback(2, feedback)
        multiStepFeedback.setCurrentStep(0)
        for mineralExtractionFeature in mineralExtractionLayer.getFeatures():
            mineralExtractionGeometry = mineralExtractionFeature.geometry()
            request = QgsFeatureRequest().setFilterRect( mineralExtractionGeometry.boundingBox() )
            for visibleField, layer in [ (buildingVisibleField, buildingLayer), (depositVisibleField, depositLayer) ]:
                features = list( layer.getFeatures( request ) )
                for feature in features:
                    if not feature.geometry().intersects( mineralExtractionGeometry ):
                        continue
                    feature[ visibleField ] = 2
                    self.updateLayerFeature( layer, feature )

        multiStepFeedback.setCurrentStep(1)
        for buildingAreaFeature in buildingArea.getFeatures():
            buildingAreaGeometry = buildingAreaFeature.geometry()
            request = QgsFeatureRequest().setFilterRect( buildingAreaGeometry.boundingBox() )
            for visibleField, layer in [ (buildingVisibleField, buildingLayer) ]:
                features = list( layer.getFeatures( request ) )
                for feature in features:
                    if not( feature['tipo'] == 0 and feature.geometry().intersects( buildingAreaGeometry ) ):
                        continue
                    feature[ visibleField ] = 2
                    self.updateLayerFeature( layer, feature )
        
        return {self.OUTPUT: ''}

    def updateLayerFeature(self, layer, feature):
        layer.startEditing()
        layer.updateFeature(feature)
    
    def tr(self, string):
        return QCoreApplication.translate('Processing', string)

    def createInstance(self):
        return GeneralizeBuildings()

    def name(self):
        return 'generalizebuildings'

    def displayName(self):
        return self.tr('Generalizar edificações')

    def group(self):
        return self.tr('Edição')

    def groupId(self):
        return 'edicao'

    def shortHelpString(self):
        return self.tr("O algoritmo ...")
    
