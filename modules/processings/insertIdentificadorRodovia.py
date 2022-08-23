import math
import os

from qgis import processing
from qgis.core import (QgsCoordinateReferenceSystem, QgsField,
                       QgsCoordinateTransformContext, QgsDistanceArea,
                       QgsFeature, QgsFeatureRequest, QgsGeometry,
                       QgsProcessing, QgsProcessingAlgorithm, QgsProperty,
                       QgsProcessingParameterMultipleLayers, QgsProcessingParameterVectorLayer,
                       NULL, QgsUnitTypes,
                       QgsProcessingParameterEnum,
                       QgsProcessingParameterFeatureSink, QgsFeatureSink,
                       QgsVectorLayer)
from qgis.PyQt.QtCore import (QCoreApplication, QVariant)

from .processingUtils import ProcessingUtils


class InsertIdentificadorRodovia(QgsProcessingAlgorithm): 

    INPUT_ROAD = 'INPUT_ROAD'
    INPUT_SYMBOL = 'INPUT_SYMBOL'
    INPUT_FRAME = 'INPUT_FRAME'
    SCALE = 'SCALE'
    OUTPUT = 'OUTPUT'

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_ROAD,
                self.tr('Selecionar camada de via de deslocamento'),
                [QgsProcessing.TypeVectorLine]
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_SYMBOL,
                self.tr('Selecionar camada de edição de identificador trecho rodoviário'),
                [QgsProcessing.TypeVectorPoint]
            )
        )

        self.addParameter(
            QgsProcessingParameterEnum(
                self.SCALE,
                self.tr('Selecione a escala de edição:'),
                options = [self.tr('1:25.000'), self.tr('1:50.000'), self.tr('1:100.000'), self.tr('1:250.000')]
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_FRAME,
                self.tr('Selecionar camada de moldura'),
                [QgsProcessing.TypeVectorPolygon],
                optional = True
            )
        )

        self.addParameter(
            QgsProcessingParameterFeatureSink(
                self.OUTPUT,
                self.tr('Flag Preparar Ortoimagem')
            )
        ) 


    def processAlgorithm(self, parameters, context, feedback):      
        gridScaleParam = self.parameterAsInt(parameters, self.SCALE, context)
        lyr = self.parameterAsVectorLayer(parameters, self.INPUT_ROAD, context)
        symbol = self.parameterAsVectorLayer(parameters, self.INPUT_SYMBOL, context)

        if (gridScaleParam==0):
            scale = 25000
            scaleMini = 185000
        elif (gridScaleParam==1):
            scale = 50000
            scaleMini = 370000
        elif (gridScaleParam==2):
            scale = 100000
            scaleMini = 740000
        elif (gridScaleParam==3):
            scale = 250000
            scaleMini = 2217000

        frameLayer = self.parameterAsVectorLayer(parameters, self.INPUT_FRAME, context)
        if frameLayer:
            frameLinesLayer = self.convertPolygonToLines(frameLayer)

        highwayLyrBeforeClip = self.mergeHighways(lyr)
        if frameLayer:
            highwayLyr = self.clipLayer(highwayLyrBeforeClip, frameLayer)
        else:
            highwayLyr = highwayLyrBeforeClip
        distance1 = self.getChopDistance(highwayLyr, scale * 0.2)
        pointsAndAngles1 = self.chopLineLayer(highwayLyr, distance1, ['sigla'])
        distanceMiniMap = self.getChopDistance(highwayLyr, scaleMini * 0.2)
        pointsAndAnglesMiniMap = self.chopLineLayer(highwayLyr, distanceMiniMap, ['sigla'])
        self.populateRoadIndentificationSymbolLayer(symbol,pointsAndAngles1, 1, 0)
        self.populateRoadIndentificationSymbolLayer(symbol,pointsAndAnglesMiniMap, 2, 0)
        maxRoadIndentificationNumber = self.findMaxRoadIndentificationNumber(pointsAndAngles1)
        for n in range(maxRoadIndentificationNumber):
            if n == maxRoadIndentificationNumber:
                break
            distanceFromSymbol = self.getChopDistance(highwayLyr, scale * (n+1)* 0.008)
            highwayLyrSubstring = self.getLineSubstring(highwayLyr, distanceFromSymbol, QgsProperty.fromExpression('length( $geometry)'))
            chopDistance = self.getChopDistance(highwayLyrSubstring, scale*0.2)
            pointsAndAnglesN = self.chopLineLayer(highwayLyrSubstring, chopDistance, ['sigla'])
            distanceMiniMap = self.getChopDistance(highwayLyrSubstring, scaleMini * 0.2)
            pointsAndAnglesMiniMap = self.chopLineLayer(highwayLyrSubstring, distanceMiniMap, ['sigla'])
            self.populateRoadIndentificationSymbolLayer(symbol,pointsAndAnglesN, 1, n+1)
            self.populateRoadIndentificationSymbolLayer(symbol,pointsAndAnglesMiniMap, 2, n+1)
        distanceToRemoveRoadSymbol = self.getChopDistance(symbol, scale * 0.006)
        if frameLayer:
            distanceNextToFrame = self.getChopDistance(highwayLyr, scale * 0.006)
            self.removePointsNextToFrame(frameLinesLayer, symbol, distanceNextToFrame)

        return {self.OUTPUT: 'concluído'}


    def getLineSubstring(self, layer, startDistance, endDistance):
        r = processing.run(
            'native:linesubstring',
            {   'END_DISTANCE' : endDistance, 
                'INPUT' : layer, 
                'OUTPUT' : 'TEMPORARY_OUTPUT', 
                'START_DISTANCE' : startDistance 
            }
        )
        return r['OUTPUT']
    
    @staticmethod
    def getChopDistance(layer, distance):
        '''Helper function to get distances in decimal degrees
        '''
        if layer.crs().isGeographic():
            d = QgsDistanceArea()
            d.setSourceCrs(QgsCoordinateReferenceSystem('EPSG:3857'), QgsCoordinateTransformContext())
            return d.convertLengthMeasurement(distance, QgsUnitTypes.DistanceDegrees)
        else:
            return distance

    @staticmethod
    def chopLineLayer(layer, cutDistance, requiredAttrs=None):
        '''Chops layer using cutDistance, returning initial points of chopped features and its angles.
        If the point touches the initial/final point of any original feature the point is discarded.
        If requiredAttrs is provided, the mapping {attr:feat[attr] for attr in requiredAttrs} is also returned
        '''
        attributeMapping = {}
        pointsAndAngles = []
        output = processing.run(
            'native:splitlinesbylength', {
                'INPUT': layer,
                'LENGTH': cutDistance,
                'OUTPUT' : 'TEMPORARY_OUTPUT'
            })['OUTPUT']
        bounds = processing.run(
            'native:boundary', {
                'INPUT': layer,
                'OUTPUT' : 'TEMPORARY_OUTPUT'
            })['OUTPUT']
        for feat in output.getFeatures():
            if requiredAttrs and \
                all((x in layer.fields().names() for x in requiredAttrs)) and \
                all((feat.attribute(x) for x in requiredAttrs)):
                attributeMapping = {x:feat.attribute(x) for x in requiredAttrs}
            isBoundVertex = False
            request = QgsFeatureRequest().setFilterRect(feat.geometry().boundingBox())
            geomEngine = QgsGeometry.createGeometryEngine(feat.geometry().constGet())
            geomEngine.prepareGeometry()
            for featBound in bounds.getFeatures(request):
                if geomEngine.touches(featBound.geometry().constGet()):
                    isBoundVertex = True
                    break
            if not isBoundVertex:
                geom = feat.geometry()
                point = geom.vertexAt(0)
                angle = (geom.angleAtVertex(0) + (math.pi/2))*180/math.pi
                if angle>360:
                    angle=angle-360
                if angle>90 and angle<270:
                    angle = angle - 180
                pointsAndAngles.append((point, angle, attributeMapping))
        return pointsAndAngles

 
    def mergeHighways(self, lyr):
        r = processing.run(
            'ferramentasedicao:mergehighway',
            {   'INPUT_LAYER_L' : lyr,
                'OUTPUT_LAYER_L' : 'TEMPORARY_OUTPUT'
            }
        )
        return r['OUTPUT_LAYER_L']

    def findMaxRoadIndentificationNumber(self, pointsAndAngles):
        n = 0
        for point, angle, mapping in pointsAndAngles: 
            if sigla:=mapping.get('sigla'):
                name = sigla.split(';')
                if len(name)>n:
                    n=len(name)
        return n
    
    @staticmethod
    def populateRoadIndentificationSymbolLayer(layer, pointsAndAngles, isMiniMap, n):
        '''Populates the layer edicao_identificador_trecho_rod_p
        '''
        fields = layer.fields()
        layer.startEditing()
        for point, angle, mapping in pointsAndAngles:
            feat = QgsFeature(fields)
            geom = QgsGeometry.fromWkt(point.asWkt())
            feat.setGeometry(geom)
            if sigla:=mapping.get('sigla'):
                if not len(sigla.split(';'))>n:
                    continue
                try:
                    name = sigla.split(';')[n].split('-')[1]
                except IndexError:
                    continue
                feat.setAttribute('sigla', name)
                siglasEstados = ['AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'ES', 'GO', 'MA', 'MT', 'MS', 'MG', 'PA', 'PB', 'PR', 'PE', 'PI', 'RJ', 'RN', 'RO', 'RR', 'RS', 'SC', 'SE', 'SP', 'TO']
                if sigla.split(';')[n].split('-')[0]=='BR':
                    jurisdicao=1
                elif sigla.split(';')[n].split('-')[0] in siglasEstados:
                    jurisdicao=2
                elif mapping.get('jurisdicao'):
                    jurisdicao = mapping.get('jurisdicao')
                feat.setAttribute('jurisdicao', jurisdicao)
            # if jurisdicao:=mapping.get('jurisdicao'):
            #     feat.setAttribute('jurisdicao', jurisdicao)
            feat.setAttribute('carta_simbolizacao', isMiniMap)
            layer.addFeature(feat)
        # layer.commitChanges()


    def clipLayer(self, layer, frame):
        r = processing.run(
            'native:clip',
            {   'FIELD' : [], 
                'INPUT' : layer,
                'OVERLAY' : frame,
                'OUTPUT' : 'TEMPORARY_OUTPUT'
            }
        )
        return r['OUTPUT']
    
    def convertPolygonToLines(self, inputLayer):
        output = processing.run(
            "native:polygonstolines",
            {
                'INPUT': inputLayer,
                'OUTPUT': 'TEMPORARY_OUTPUT'
            }
        )
        return output['OUTPUT']

    def removePointsNextToFrame(self, frameLinesLayer, pointsLayer, distance):
        toBeRemoved = []
        for point in pointsLayer.getFeatures():
            for frameLine in frameLinesLayer.getFeatures():
                dist = QgsGeometry.distance(point.geometry(), frameLine.geometry())
                if dist<distance:
                    toBeRemoved.append(point.id())
        pointsLayer.deleteFeatures(toBeRemoved)

    def tr(self, string):
        return QCoreApplication.translate('Processing', string)

    def createInstance(self):
        return InsertIdentificadorRodovia()

    def name(self):
        return 'insertIdentificadorRodovia'

    def displayName(self):
        return self.tr('Insere identificador de rodovia')

    def group(self):
        return self.tr('Edição')

    def groupId(self):
        return 'edicao'

    def shortHelpString(self):
        return self.tr("O algoritmo insere identificadores de trecho rodoviário")
    
