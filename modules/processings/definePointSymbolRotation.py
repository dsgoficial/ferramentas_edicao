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

class DefinePointSymbolRotation(QgsProcessingAlgorithm): 

    INPUT_POINTS = 'INPUT_POINTS'
    INPUT_MIN_DIST= 'INPUT_MIN_DIST'
    INPUT_LINES = 'INPUT_LINES'
    INPUT_AREAS = 'INPUT_AREAS'
    INPUT_FIELDS = 'INPUT_FIELDS'
    OUTPUT = 'OUTPUT'

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_POINTS,
                self.tr('Selecionar camada ponto'),
                [QgsProcessing.TypeVectorPoint]
            )
        )
        self.addParameter(
            core.QgsProcessingParameterField(
                self.INPUT_FIELDS,
                self.tr('Selecionar o atributo de rotação da camada'), 
                type=core.QgsProcessingParameterField.Any, 
                parentLayerParameterName=self.INPUT_POINTS,
                allowMultiple=True
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
        pointLayer = self.parameterAsVectorLayer(parameters, self.INPUT_POINTS, context)
        rotationField = self.parameterAsFields(parameters, self.INPUT_FIELDS, context)[0]
        distance = self.parameterAsDouble(parameters, self.INPUT_MIN_DIST, context)
        lineList = self.parameterAsLayerList(parameters, self.INPUT_LINES, context)
        areaList = self.parameterAsLayerList(parameters, self.INPUT_AREAS, context)

        for pointFeature in pointLayer.getFeatures():
            pointGeometry = pointFeature.geometry()
            point = pointGeometry.asMultiPoint()[0]
            request = self.getFeatureRequestByPoint( pointGeometry,  distance)
            nearestGeometry = None
            shortestDistance = None     

            for layerList in [lineList, areaList]: 
                for layer in layerList:

                    for feature in layer.getFeatures(request):
                        geometry = feature.geometry()
                        distanceFound = pointGeometry.distance( geometry )
                        if distanceFound > distance:
                            continue
                        if not shortestDistance:
                            nearestGeometry = geometry
                            shortestDistance = distanceFound  
                        elif distanceFound < shortestDistance:
                            nearestGeometry = geometry
                            shortestDistance = distanceFound
                        
            if not nearestGeometry:
                continue   
                
            projectedPoint = core.QgsGeometryUtils.closestPoint( 
                nearestGeometry.constGet(), 
                core.QgsPoint( point.x(), point.y()) 
            )
            angleRadian = math.atan2( projectedPoint.y() - point.y(), projectedPoint.x() - point.x() ) + math.pi/2
            if angleRadian < 0:
                angleRadian += 2 * math.pi
            angleDegrees = 360 - round( math.degrees( angleRadian ) )
            pointFeature[ rotationField ] = angleDegrees
            self.updateLayerFeature( pointLayer, pointFeature)
        
        return {self.OUTPUT: ''}

    def getFeatureRequestByPoint(self, geometry, distance, segment=5):
        return QgsFeatureRequest().setFilterRect(
            geometry.buffer(distance, segment).boundingBox()
        )
   
    def updateLayerFeature(self, layer, feature):
        layer.startEditing()
        layer.updateFeature(feature)
   
    def tr(self, string):
        return QCoreApplication.translate('Processing', string)

    def createInstance(self):
        return DefinePointSymbolRotation()

    def name(self):
        return 'definepointsymbolrotation'

    def displayName(self):
        return self.tr('Definir rotação')

    def group(self):
        return self.tr('Edição')

    def groupId(self):
        return 'edicao'

    def shortHelpString(self):
        return self.tr("O algoritmo ...")
    
