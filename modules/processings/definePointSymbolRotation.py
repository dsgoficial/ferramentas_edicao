# -*- coding: utf-8 -*-

import itertools
import os
from qgis.PyQt.QtCore import QCoreApplication
from qgis.core import (
                        QgsProcessing,
                        QgsProcessingAlgorithm,
                        QgsProcessingParameterMultipleLayers,
                        QgsProcessingParameterVectorLayer,
                        QgsFeatureRequest,
                        QgsProcessingParameterNumber,
                        QgsProcessingParameterBoolean,
                        QgsProcessingMultiStepFeedback
                    )
from qgis import core
import math
import concurrent.futures

class DefinePointSymbolRotation(QgsProcessingAlgorithm): 

    INPUT_POINT = 'INPUT_POINT'
    ONLY_SELECTED = 'ONLY_SELECTED'
    INPUT_MIN_DIST= 'INPUT_MIN_DIST'
    INPUT_LINES = 'INPUT_LINES'
    INPUT_AREAS = 'INPUT_AREAS'
    INPUT_FIELD = 'INPUT_FIELD'
    OUTPUT = 'OUTPUT'

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_POINT,
                self.tr('Camada ponto'),
                [QgsProcessing.TypeVectorPoint]
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
                self.INPUT_FIELD,
                self.tr('Selecionar o atributo de rotação da camada'), 
                type=core.QgsProcessingParameterField.Any, 
                parentLayerParameterName=self.INPUT_POINT,
                allowMultiple=False,
                defaultValue='simb_rot'
            )
        )
        self.addParameter(
            QgsProcessingParameterNumber(
                self.INPUT_MIN_DIST,
                self.tr('Tolerância da distância'), 
                type=QgsProcessingParameterNumber.Double, 
                minValue=0
            )
        )

        self.addParameter(
            QgsProcessingParameterMultipleLayers(
                self.INPUT_LINES,
                self.tr('Selecionar linhas'),
                QgsProcessing.TypeVectorLine
            )
        )

        self.addParameter(
            QgsProcessingParameterMultipleLayers(
                self.INPUT_AREAS,
                self.tr('Selecionar áreas'),
                QgsProcessing.TypeVectorPolygon
            )
        )

    def processAlgorithm(self, parameters, context, feedback):      
        pointLayer = self.parameterAsVectorLayer(parameters, self.INPUT_POINT, context)
        onlySelected = self.parameterAsBool(parameters, self.ONLY_SELECTED, context)
        rotationField = self.parameterAsFields(parameters, self.INPUT_FIELD, context)[0]
        distance = self.parameterAsDouble(parameters, self.INPUT_MIN_DIST, context)
        lineList = self.parameterAsLayerList(parameters, self.INPUT_LINES, context)
        areaList = self.parameterAsLayerList(parameters, self.INPUT_AREAS, context)

        featuresToUpdateList = []
        iterator = pointLayer.getFeatures() if not onlySelected else pointLayer.getSelectedFeatures()
        nFeats = pointLayer.featureCount() if not onlySelected else pointLayer.selectedFeatureCount()
        if nFeats == 0:
            return {self.OUTPUT: ''}
        stepSize = 100/nFeats
        multiStepFeedback = QgsProcessingMultiStepFeedback(2, feedback)
        multiStepFeedback.setCurrentStep(0)
        multiStepFeedback.setProgressText("Submetendo tarefas para as threads")
        futures = set()
        pool = concurrent.futures.ThreadPoolExecutor(max_workers=os.cpu_count()-1)
        def evaluate(pointFeature):
            if feedback.isCanceled():
                return None, None
            pointGeometry = pointFeature.geometry()
            point = pointGeometry.asMultiPoint()[0]
            request = self.getFeatureRequestByPoint(pointGeometry, distance)
            nearestGeometry = self.getNearestGeometry(distance, lineList, areaList, pointGeometry, request)
            if not nearestGeometry:
                return None, None
            projectedPoint = core.QgsGeometryUtils.closestPoint( 
                nearestGeometry.constGet(), 
                core.QgsPoint( point.x(), point.y()) 
            )
            angle = core.QgsPoint(point.x(), point.y()).azimuth(projectedPoint)
            return pointFeature, angle
        
        for current, pointFeature in enumerate(iterator):
            if multiStepFeedback.isCanceled():
                return {self.OUTPUT: ''}
            futures.add(pool.submit(evaluate, pointFeature))
            multiStepFeedback.setProgress(current * stepSize)
        
        multiStepFeedback.setCurrentStep(1)
        multiStepFeedback.setProgressText("Rotacionando símbolos")
        pointLayer.startEditing()
        pointLayer.beginEditCommand("Rotacionando simbolos")
        def commit_changes(input):
            current, future = input
            if multiStepFeedback.isCanceled():
                return
            pointFeature, angle = future.result()
            if pointFeature is None or pointFeature[rotationField] == angle:
                return
            pointFeature[rotationField] = angle
            pointLayer.updateFeature(pointFeature)
        list(map(commit_changes, enumerate(concurrent.futures.as_completed(futures))))
        pointLayer.endEditCommand()
        
        return {self.OUTPUT: ''}

    def getNearestGeometry(self, distance, lineList, areaList, pointGeometry, request):
        nearestGeometry = None
        shortestDistance = None     

        for layer in itertools.chain.from_iterable([lineList, areaList]):
            for feature in layer.getFeatures(request):
                geometry = feature.geometry()
                distanceFound = pointGeometry.distance( geometry )
                if distanceFound > distance:
                    continue
                elif shortestDistance is None or distanceFound < shortestDistance:
                    nearestGeometry = geometry
                    shortestDistance = distanceFound
        return nearestGeometry

    def getFeatureRequestByPoint(self, geometry, distance, segment=5):
        return QgsFeatureRequest().setFilterRect(
            geometry.buffer(distance, segment).boundingBox()
        )
   
    def tr(self, string):
        return QCoreApplication.translate('Processing', string)

    def createInstance(self):
        return DefinePointSymbolRotation()

    def name(self):
        return 'definepointsymbolrotation'

    def displayName(self):
        return self.tr('Definir rotação de símbolo')

    def group(self):
        return self.tr('Edição')

    def groupId(self):
        return 'edicao'

    def shortHelpString(self):
        return self.tr("O algoritmo ...")
    
