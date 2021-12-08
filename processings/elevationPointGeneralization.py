# -*- coding: utf-8 -*-

from qgis.PyQt.QtCore import (QCoreApplication, QVariant)
from qgis.core import (QgsFeatureSink,
                       QgsProcessingAlgorithm,
                       QgsProcessingParameterFeatureSink,
                       QgsProcessingParameterEnum,
                       QgsProcessingParameterField,
                       QgsProcessingParameterVectorLayer,
                       QgsFeatureRequest,
                       QgsProcessing
                       )
from qgis import processing
from qgis.utils import iface
class ElevationPointsGeneralization(QgsProcessingAlgorithm): 

    INPUT_SCALE = 'INPUT_SCALE'
    INPUT_ELEVATION_POINTS = 'INPUT_ELEVATION_POINTS'
    INPUT_ELEVATION_POINTS = 'INPUT_ELEVATION_POINTS'
    INPUT_IS_DEPRESSION_FIELD ='INPUT_IS_DEPRESSION_FIELD'
    INPUT_IS_VISIBLE_FIELD ='INPUT_IS_VISIBLE_FIELD'
    OUTPUT = 'OUTPUT'
    
    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterEnum(
                'INPUT_SCALE',
                self.tr('Selecione a escala para gerar as quadriculas:'),
                options = [self.tr('1:25.000'), self.tr('1:50.000'), self.tr('1:100.000'), self.tr('1:250.000')]
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                'INPUT_ELEVATION_POINTS',
                self.tr('Selecione a camada contendo os pontos cotados'),
                types=[QgsProcessing.TypeVectorPoint]
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                'INPUT_COUNTOUR_LINES',
                self.tr('Selecione a camada contendo as curvas de nível'),
                types=[QgsProcessing.TypeVectorLine]
            )
        )
        self.addParameter(
            QgsProcessingParameterField(
                'INPUT_IS_DEPRESSION_FIELD',
                self.tr('Selecione o campo que informa se é depressão ou não'), 
                type=QgsProcessingParameterField.Numeric, 
                parentLayerParameterName='INPUT_COUNTOUR_LINES', 
                allowMultiple=False, 
                defaultValue='depressao')
            )
        self.addParameter(
            QgsProcessingParameterField(
                'INPUT_IS_VISIBLE_FIELD',
                self.tr('Selecione o campo que informa se o ponto é visível ou não'), 
                type=QgsProcessingParameterField.Numeric, 
                parentLayerParameterName='INPUT_ELEVATION_POINTS', 
                allowMultiple=False, 
                defaultValue='visivel')
            )
        self.addParameter(
            QgsProcessingParameterFeatureSink(
                self.OUTPUT,
                self.tr('Generalização de Ponto Cotado')
            )
        ) 

    def processAlgorithm(self, parameters, context, feedback):      
        feedback.setProgressText('Iniciando...')
        returnMessage = 'Camada Generalização de Ponto Cotado gerada'
        gridScaleParam = self.parameterAsEnums(parameters,'INPUT_SCALE', context)[0]
        pointLayer = self.parameterAsVectorLayer( parameters,'INPUT_ELEVATION_POINTS', context )
        countourLayerpre = self.parameterAsVectorLayer( parameters,'INPUT_COUNTOUR_LINES', context )
        isDepressionField = self.parameterAsFields (parameters,'INPUT_IS_DEPRESSION_FIELD', context)[0]
        isVisibleField = self.parameterAsFields (parameters,'INPUT_IS_VISIBLE_FIELD', context)[0]
        countourLayerLine = self.runAddCount(countourLayerpre)
        self.runCreateSpatialIndex(countourLayerLine)
        countourLayerHoles = self.lineToPolygons(countourLayerLine,context, feedback)
        countourLayer = self.fillHoles(countourLayerHoles, context, feedback)
        self.fillField(countourLayerLine, countourLayer)
        summitsOrBottoms = []
        self.selectSummitsAndBottoms(countourLayer, summitsOrBottoms)
        CRSstr = pointLayer.sourceCrs()
        pointsIdsSelected = []
        if (gridScaleParam==0):
            gridScale = 25000
        elif (gridScaleParam==1):
            gridScale = 50000
        if (gridScaleParam==2):
            gridScale = 100000
        elif (gridScaleParam==3):
            gridScale = 250000
        gridSize = 4*gridScale/100
        ptLyrExt = pointLayer.extent()
        xmin = ptLyrExt.xMinimum()
        xmax = ptLyrExt.xMaximum()
        ymin = ptLyrExt.yMinimum()
        ymax = ptLyrExt.yMaximum()
        xmin, xmax, ymin, ymax = self.processExtent(xmin, xmax, ymin, ymax, gridScale)
        grid = self.makeGrid(gridSize, CRSstr, xmin, xmax, ymin, ymax, parameters, context, feedback)
        self.generalizePoint(grid, pointLayer, pointsIdsSelected, summitsOrBottoms, isDepressionField)

        provider = pointLayer.dataProvider()
        pointLayer.startEditing()
        i=0
        for point in pointLayer.getFeatures():
            if point.id() in pointsIdsSelected:
                pointLayer.changeAttributeValue(point.id(), provider.fieldNameIndex(isVisibleField), 1) #1 = visivel, 2 = não visivel, 9999 = desconhecido
            else:
                pointLayer.changeAttributeValue(point.id(), provider.fieldNameIndex(isVisibleField), 2)
            i+=1
        return{self.OUTPUT: returnMessage}

    def processExtent(self, xmin, xmax, ymin, ymax, gridScale):
        size=4000
        if (gridScale==250000):
            size=40000
        
        return ((int(xmin/size)-1)*size, (int(xmax/size)+1)*size, (int(ymin/size)-1)*size, (int(ymax/size)+1)*size)

    def makeGrid(self, gridSize, CRS, xmin, xmax, ymin, ymax, parameters, context, feedback):
        extent = str(str(xmin)+", "+str(xmax)+", "+str(ymin)+", "+str(ymax))
        output = processing.run(
            "native:creategrid",
            {
                'TYPE':2,
                'EXTENT': extent,
                'HSPACING':gridSize,
                'VSPACING':gridSize,
                'HOVERLAY':0,
                'VOVERLAY':0,
                'CRS':CRS,
                'OUTPUT': parameters['OUTPUT']
            }
        )
        return output['OUTPUT']

    def lineToPolygons(self, layer,context, feedback):
            r = processing.run(
                'native:polygonize',
                {   'INPUT' : layer, 
                    'KEEP_FIELDS' : True,
                    'OUTPUT' : 'TEMPORARY_OUTPUT'
                },
                context = context,
                feedback = feedback
            )
            return r['OUTPUT']  
    
    def fillHoles(self, layer, context, feedback):
        r = processing.run(
            'native:deleteholes',
            {   'INPUT' : layer,
                'OUTPUT' : 'TEMPORARY_OUTPUT'
            },
            context = context,
            feedback = feedback
        )
        return r['OUTPUT']  

    def fillField(self, countourLayer, countourLayerPoly):
        countourLayerPoly.startEditing()
        pr = countourLayerPoly.dataProvider()
        updateMap = {}
        for feature1 in pr.getFeatures():
            AreaOfInterest = feature1.geometry().boundingBox()
            request = QgsFeatureRequest().setFilterRect(AreaOfInterest)
            for feature2 in countourLayer.getFeatures(request):
                if feature2.geometry().touches(feature1.geometry()):
                    fv = {}
                    for field in feature2.fields():
                        fieldIdx = pr.fields().indexFromName( field.name())
                        fv[fieldIdx] = feature2[field.name()]
                        
                        feature1[field.name()] =  feature2[field.name()]
                    updateMap[feature1.id()] = fv
        pr.changeAttributeValues( updateMap )
        countourLayerPoly.commitChanges()
        return False

    def selectSummitsAndBottoms(self, countourLayer, summitsOrBottoms):
        toBeAdd = False
        for countour in countourLayer.getFeatures():
            cGeom = countour.geometry()
            toBeRemoved = []
            if (not summitsOrBottoms):
                summitsOrBottoms.append(countour)
                continue
            
            for SoB in summitsOrBottoms:
                toBeAdd = True
                SoBgeom = SoB.geometry()
                if (cGeom.within(SoBgeom)):
                    toBeRemoved.append(SoB)
                if (SoBgeom.within(cGeom)):
                    toBeAdd = False
                    break
            if (toBeAdd):
                summitsOrBottoms.append(countour)
            for tBR in toBeRemoved:
                summitsOrBottoms.remove(tBR)


    def runAddCount(self, inputLyr):
        output = processing.run(
            "native:addautoincrementalfield",
            {
                'INPUT':inputLyr,
                'FIELD_NAME':'AUTO',
                'START':0,
                'GROUP_FIELDS':[],
                'SORT_EXPRESSION':'',
                'SORT_ASCENDING':False,
                'SORT_NULLS_FIRST':False,
                'OUTPUT':'TEMPORARY_OUTPUT'
            }
        )
        return output['OUTPUT']
    
    def runCreateSpatialIndex(self, inputLyr):
        processing.run(
            "native:createspatialindex",
            {'INPUT':inputLyr}
        )

        return False
    
    def generalizePoint(self, grid, pointLayer, pointsIdsSelected, summitsOrBottoms, isDepressionField):
        isDep = 1
        isNotDep = 0  
        for g in grid.getFeatures():
            request = QgsFeatureRequest().setFilterRect( g.geometry().boundingBox() )  
            pointsIdsSelectedinGrid=[]
            summitsOrBottomsPoints = {}
            hasSoBPoints = False
            for point in pointLayer.getFeatures(request):
                for SoB in summitsOrBottoms:
                    if (point.geometry().within(SoB.geometry())):
                        if (SoB['id'] in summitsOrBottomsPoints.keys()):
                            if (SoB[isDepressionField] == isNotDep):
                                if (summitsOrBottomsPoints[SoB['id']]['cota']<point['cota']):
                                    summitsOrBottomsPoints[SoB['id']] = point
                            if (SoB[isDepressionField] == isDep):
                                if (summitsOrBottomsPoints[SoB['id']]['cota']>point['cota']):
                                    summitsOrBottomsPoints[SoB['id']] = point
                            break
                        summitsOrBottomsPoints[SoB['id']]=point
                        hasSoBPoints = True
                        pointsIdsSelectedinGrid = []
                        break
                if (not hasSoBPoints):
                    if (not pointsIdsSelectedinGrid):
                        pointsIdsSelectedinGrid.append(point.id())
                        continue
                    if (pointLayer.getFeature(pointsIdsSelectedinGrid[-1])['cota']>point['cota']):
                        pointsIdsSelectedinGrid.append(point.id())
            if (pointsIdsSelectedinGrid):
                if (pointsIdsSelectedinGrid[-1] not in pointsIdsSelected):
                    pointsIdsSelected.append(pointsIdsSelectedinGrid[-1])
            if (summitsOrBottomsPoints):
                for point in summitsOrBottomsPoints.values():
                    pointsIdsSelected.append(point.id())
                
    def outLayer(self, parameters, context, features, setCRS):
        

        (sink, newLayer) = self.parameterAsSink(
            parameters,
            self.OUTPUT,
            context,
            features[0].fields(),
            4,
            setCRS
        )

        for feature in features:
            sink.addFeature(feature, QgsFeatureSink.FastInsert)
        return newLayer
        
    def tr(self, string):
        return QCoreApplication.translate('Processing', string)

    def createInstance(self):
        return ElevationPointsGeneralization()

    def name(self):
        return 'elevationpointsgeneralization'

    def displayName(self):
        return self.tr('Generalização de pontos cotados')

    def group(self):
        return self.tr('Auxiliar')

    def groupId(self):
        return 'auxiliar'

    def shortHelpString(self):
        return self.tr("O algoritmo generaliza os pontos cotados baseados na escala")
    
