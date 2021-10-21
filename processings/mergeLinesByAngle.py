from qgis.PyQt.QtCore import QCoreApplication
from qgis.core import (QgsProcessing,
                       QgsFeatureRequest,
                       QgsProcessingException,
                       QgsProcessingAlgorithm,
                       QgsProcessingParameterFeatureSink,
                       QgsProcessingParameterFeatureSource,
                       QgsGeometryUtils,
                       QgsFeatureSink,
                       QgsGeometry,
                       QgsPointXY)
from qgis import processing
import math

class MergeLinesByAngle(QgsProcessingAlgorithm):
 
    INPUT = 'INPUT'
    OUTPUT = 'OUTPUT'

    def initAlgorithm(self, config=None):

        self.addParameter(
            QgsProcessingParameterFeatureSource(
                self.INPUT,
                self.tr('Input layer'),
                [QgsProcessing.TypeVectorLine]
            )
        )
      
        self.addParameter(
            QgsProcessingParameterFeatureSink(
                self.OUTPUT,
                self.tr('Merged Lines')
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        source = self.parameterAsVectorLayer(parameters, self.INPUT, context)
        if source is None:
            raise QgsProcessingException(self.invalidSourceError(parameters, self.INPUT))
        numberOfFeatures =  {-1: source.featureCount()}
        limit = 6
        progressStep = 100/limit
        auxLayerInput = self.runAddCount(source)
        self.runCreateSpatialIndex(auxLayerInput)
        for i in range(limit):
            print(i)
            feedback.setProgress( i * progressStep )
            if not self.mergeLines(auxLayerInput):
                print('not merge')
                break
            newNumberOfFeatures = auxLayerInput.featureCount()
            numberOfFeatures[i]=newNumberOfFeatures
            if numberOfFeatures[i]==numberOfFeatures[i-1]:
                print('number equal')
                break
        newLayer = self.outLayer(parameters, context, auxLayerInput)
        return {self.OUTPUT: newLayer}

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
    
    def mergeLines(self, layer):
        pointsAndLineDict = self.startOrEndIntersectionsDict(layer)
        if not pointsAndLineDict:
            return False
        toMerge=[]

        for ptAndLine in pointsAndLineDict:
            linesArray = pointsAndLineDict[ptAndLine]
            smallerAngle = 360
            
            linePair = []
            for i in range(len(linesArray)):
                line1=linesArray[i]
                for j in range(i+1, len(linesArray)):
                    line2=linesArray[j]
                    deflection = abs(self.anglesBetweenLines(line1, line2, ptAndLine)-180)
                    if deflection<smallerAngle:
                        newGeometry = line1.geometry().combine( line2.geometry() ).mergeLines()
                        if newGeometry.isMultipart():
                            continue
                        geometry = newGeometry.asPolyline()
                        ptLast = QgsGeometry().fromPointXY(QgsPointXY(geometry[-1]))
                        ptFirst = QgsGeometry().fromPointXY(QgsPointXY(geometry[0]))
                        if ptFirst.equals(ptLast):
                            continue
                        smallerAngle=deflection
                        linePair = [line1.id(), line2.id()]
            if linePair:
                toMerge.append(linePair)
        #Merge Two Lines
        layer.startEditing()
        idsToRemove =[]
        
        changeLines = {}
        for lines in toMerge:
            line1id=lines[0]
            line2id=lines[1]
            while line1id in changeLines:
                line1id = changeLines[line1id]
            while line2id in changeLines:
                line2id = changeLines[line2id]
            line1=layer.getFeature(line1id)
            line2=layer.getFeature(line2id)
            newGeometry = line1.geometry().combine( line2.geometry() ).mergeLines()
            if newGeometry.isMultipart() or newGeometry.isNull():
                continue
            geometry = newGeometry.asPolyline()
            ptLast = QgsGeometry().fromPointXY(QgsPointXY(geometry[-1]))
            ptFirst = QgsGeometry().fromPointXY(QgsPointXY(geometry[0]))
            if ptFirst.equals(ptLast):
                continue
            line1.setGeometry( newGeometry )
            layer.updateFeature( line1 )
            changeLines[line2id]=line1id
            idsToRemove.append(line2.id())
        layer.deleteFeatures( idsToRemove )
        return True
    
    def startOrEndIntersectionsDict(self, layer):
        pointsDictWkb = {}
        for line1 in layer.getFeatures():
            line1Geom = line1.geometry()
            if line1Geom.isMultipart():
                for geometry in line1Geom.constGet():
                    ptLast = QgsGeometry().fromPointXY(QgsPointXY(geometry[-1]))
                    ptFirst = QgsGeometry().fromPointXY(QgsPointXY(geometry[0]))
            else:
                geometry = line1Geom.asPolyline()
                ptLast = QgsGeometry().fromPointXY(QgsPointXY(geometry[-1]))
                ptFirst = QgsGeometry().fromPointXY(QgsPointXY(geometry[0]))
            points = [ptFirst, ptLast]
            for pt in points:
                AreaOfInterest = pt.boundingBox()
                request = QgsFeatureRequest().setFilterRect(AreaOfInterest)
                for line2 in layer.getFeatures(request):
                    line2Geom = line2.geometry()
                    if line1Geom.equals(line2Geom):
                        continue
                    if line1Geom.touches(line2Geom):
                        try:
                            pointsDictWkb[pt.asWkb()].append(line2)
                        except KeyError:
                            pointsDictWkb[pt.asWkb()]=[line2]
        pointsDict = {}
        for pt in pointsDictWkb:
            geom = QgsGeometry()
            geom.fromWkb(pt)
            pointsDict[geom] = pointsDictWkb[pt]    
        return pointsDict

    def createFeaturesArray(self, originalLayer):
        arrayFeatures = []
        features = originalLayer.getFeatures()

        for feature in features:
            arrayFeatures.append(feature)

        return arrayFeatures
          
    def adjacentPoint(self, line, point):
        vertexPoint = line.geometry().closestVertexWithContext(point)[1]
        adjpoints = line.geometry().adjacentVertices(vertexPoint)
        adjptvertex = adjpoints[0]
        if adjptvertex<0:
            adjptvertex = adjpoints[1]
        adjpt = line.geometry().vertexAt(adjptvertex)
        return QgsPointXY(adjpt)

    def anglesBetweenLines(self, line1, line2, point):
        pointB = QgsPointXY(point.asPoint())
        pointA = self.adjacentPoint(line1, pointB)
        pointC = self.adjacentPoint(line2, pointB)
        angleRad = QgsGeometryUtils().angleBetweenThreePoints(pointA.x(), pointA.y(), pointB.x(), pointB.y(), pointC.x(), pointC.y())
        angle = math.degrees(angleRad)

        return abs(angle)

    def outLayer(self, parameters, context, layer):
        newFields = layer.fields()

        (sink, newLayer) = self.parameterAsSink(
            parameters,
            self.OUTPUT,
            context,
            newFields,
            5,
            layer.sourceCrs()
        )
        
        for feat in layer.getFeatures():
            sink.addFeature(feat, QgsFeatureSink.FastInsert)
        return newLayer

    def tr(self, string):
        return QCoreApplication.translate('Processing', string)

    def createInstance(self):
        return MergeLinesByAngle()

    def name(self):
        return 'mergelinesbyangle'

    def displayName(self):
        return self.tr('Mescla Linhas Pelo Ângulo')

    def group(self):
        return self.tr('Missoes')

    def groupId(self):
    
        return 'missoes'

    def shortHelpString(self):
    
        return self.tr("Esse algoritmo mescla linhas conectadas. Em caso de bifurcação, percorre-se o caminho de maior tamanho para mesclar. Considera-se o sentido das linhas para conectar.")
    
