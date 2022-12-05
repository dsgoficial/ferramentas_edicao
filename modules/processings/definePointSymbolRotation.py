# -*- coding: utf-8 -*-

import itertools
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

class DefinePointSymbolRotation(QgsProcessingAlgorithm): 

    INPUT_POINT = 'INPUT_POINT'
    INPUT_MIN_DIST= 'INPUT_MIN_DIST'
    INPUT_LINES = 'INPUT_LINES'
    INPUT_AREAS = 'INPUT_AREAS'
    INPUT_FIELD = 'INPUT_FIELD'
    OUTPUT = 'OUTPUT'

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_POINT,
                self.tr('Selecionar camada ponto'),
                [QgsProcessing.TypeVectorPoint]
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
        rotationField = self.parameterAsFields(parameters, self.INPUT_FIELD, context)[0]
        distance = self.parameterAsDouble(parameters, self.INPUT_MIN_DIST, context)
        lineList = self.parameterAsLayerList(parameters, self.INPUT_LINES, context)
        areaList = self.parameterAsLayerList(parameters, self.INPUT_AREAS, context)

        featuresToUpdateList = []
        nFeats = pointLayer.featureCount()
        if nFeats == 0:
            return {self.OUTPUT: ''}
        stepSize = 100/nFeats
        for current, pointFeature in enumerate(pointLayer.getFeatures()):
            if feedback.isCanceled():
                break
            pointGeometry = pointFeature.geometry()
            point = pointGeometry.asMultiPoint()[0]
            request = self.getFeatureRequestByPoint( pointGeometry,  distance)
            nearestGeometry = self.getNearestGeometry(distance, lineList, areaList, pointGeometry, request)
            if not nearestGeometry:
                feedback.setProgress(current * stepSize)
                continue   
            projectedPoint = core.QgsGeometryUtils.closestPoint( 
                nearestGeometry.constGet(), 
                core.QgsPoint( point.x(), point.y()) 
            )
            angleRadian = math.atan2( projectedPoint.y() - point.y(), projectedPoint.x() - point.x() ) + math.pi/2
            if angleRadian < 0:
                angleRadian += 2 * math.pi
            angleDegrees = math.degrees( angleRadian ) % 360
            pointFeature[ rotationField ] = angleDegrees
            featuresToUpdateList.append(pointFeature)
            feedback.setProgress(current * stepSize)
        if featuresToUpdateList == []:
            return {self.OUTPUT: ''}
        pointLayer.startEditing()
        pointLayer.beginEditCommand("Rotacionando simbolos")
        updateFunc = lambda x: pointLayer.updateFeature(x)
        list(map(updateFunc, featuresToUpdateList))
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
    
