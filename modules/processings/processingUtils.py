from qgis.core import (QgsUnitTypes, QgsFeature, QgsDistanceArea,
                       QgsVectorLayer, QgsSpatialIndex, QgsCoordinateReferenceSystem)
from qgis import processing


class ProcessingUtils:

    def __init__(self, *args, **kwargs):
        pass

    def makeLayerFromGeometryAndCRS(geometry, crs):
        newFeat = QgsFeature()
        newFeat.setGeometry(geometry)
        wkb_list = {
            2: 'LineString',
            3: 'Polygon',
            5: 'MultiLineString',
            6: 'MultiPolygon',
        }
        wkb_id = geometry.wkbType()
        uri = f"{wkb_list.get(wkb_id)}?crs={crs.authid().lower()}"
        vectorLayer = QgsVectorLayer(uri, "Layer",  "memory")
        dataProvider = vectorLayer.dataProvider() 
        dataProvider.addFeatures([newFeat])
        return vectorLayer
    
    def buildSpatialIndexAndIdDict(self, inputLyr, feedback=None,
                                featureRequest=None):
        """
        creates a spatial index for the input layer
        :param inputLyr: (QgsVectorLayer) input layer;
        :param feedback: (QgsProcessingFeedback) processing feedback;
        :param featureRequest: (QgsFeatureRequest) optional feature request;
        """
        spatialIdx = QgsSpatialIndex()
        idDict = {}
        featCount = inputLyr.featureCount()
        size = 100/featCount if featCount else 0
        iterator = inputLyr.getFeatures() if featureRequest is None\
            else inputLyr.getFeatures(featureRequest)

        def addFeatureAlias(x): return self.addFeatureToSpatialIndex(
            current=x[0],
            feat=x[1],
            spatialIdx=spatialIdx,
            idDict=idDict,
            size=size,
            feedback=feedback
        )
        list(map(addFeatureAlias, enumerate(iterator)))
        return spatialIdx, idDict

    def addFeatureToSpatialIndex(self, current, feat, spatialIdx,
                                 idDict, size, feedback):
        """
        Adds feature to spatial index. Used along side with a
        python map operator to improve performance.
        :param current : (int) current index
        :param feat : (QgsFeature) feature to be added on spatial
        index and on idDict
        :param spatialIdx: (QgsSpatialIndex) spatial index
        :param idDict: (dict) dictionary with format {feat.id(): feat}
        :param size: (int) size to be used to update feedback
        :param feedback: (QgsProcessingFeedback) feedback to be used
        on processing
        """
        if feedback is not None and feedback.isCanceled():
            return
        idDict[feat.id()] = feat
        spatialIdx.addFeature(feat)
        if feedback is not None:
            feedback.setProgress(size * current)

    def getWaterPolyLabelFontSize(feat: QgsFeature, scale: int, lyrCrs: QgsCoordinateReferenceSystem) -> int:
        '''return label font size based on feature area according to MTM '''
        if lyrCrs.isGeographic():
            convertArea = QgsDistanceArea()
            convertArea.setEllipsoid(lyrCrs.authid())
            measure = convertArea.measureArea(feat.geometry())
            area = convertArea.convertAreaMeasurement(measure, QgsUnitTypes.AreaSquareMeters)
        else:
            area = feat.geometry().area()
        scaleComparator = (scale/1000)**2
        if area < 770*scaleComparator:
            return 6
        elif area < 2300*scaleComparator:
            return 7
        elif area < 3600*scaleComparator:
            return 8
        elif area < 5200*scaleComparator:
            return 9
        elif area < 9800*scaleComparator:
            return 10
        elif area < 16500*scaleComparator:
            return 12
        elif area < 25000*scaleComparator:
            return 14
        elif area < 36000*scaleComparator:
            return 16
        else:
            return 18
        
    def getRiverOutPolyLabelFontSize(feat: QgsFeature, scale: int, lyrCrs: QgsCoordinateReferenceSystem) -> int:
        '''return label font size based on feature length and type (outside water polygon, 'situacao_em_poligono' == 1) according to MTM '''
        if lyrCrs.isGeographic():
            convertLength = QgsDistanceArea()
            convertLength.setEllipsoid(lyrCrs.authid())
            measure = convertLength.measureLength(feat.geometry())
            length = convertLength.convertLengthMeasurement(measure, QgsUnitTypes.DistanceMeters)
        else:
            length = feat.geometry().length()
        scaleComparator = scale/1000
        if length < 80*scaleComparator:
            return 6
        elif length < 120*scaleComparator:
            return 7
        elif length < 160*scaleComparator:
            return 8
        else:
            return 9

    def getRiverInPolyLabelFontSize(feat: QgsFeature, scale: int, lyrCrs: QgsCoordinateReferenceSystem) -> int:
        '''return label font size based on feature length and type (inside water polygon, 'situacao_em_poligono' == 2,3) according to MTM '''
        if lyrCrs.isGeographic():
            convertLength = QgsDistanceArea()
            convertLength.setEllipsoid(lyrCrs.authid())
            measure = convertLength.measureLength(feat.geometry())
            length = convertLength.convertLengthMeasurement(measure, QgsUnitTypes.DistanceMeters)
        else:
            length = feat.geometry().length()
        scaleComparator = scale/1000
        if length < 65*scaleComparator:
            return 7
        elif length < 80*scaleComparator:
            return 8
        elif length < 100*scaleComparator:
            return 9
        elif length < 120*scaleComparator:
            return 10
        elif length < 160*scaleComparator:
            return 12
        elif length < 200*scaleComparator:
            return 14
        else:
            return 16

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

    def mergeLineFeaturesCommit(self, features, layer):
        layer.startEditing()
        idsToRemove = []
        featureIds = [ f.id() for f in features ]
        for featureAId in featureIds:
            if featureAId in idsToRemove:
                continue
            for featureBId in featureIds:
                if featureAId == featureBId or featureBId in idsToRemove:
                    continue
                featureA = layer.getFeature( featureAId )
                featureB = layer.getFeature( featureBId )
                if not featureA.geometry().touches( featureB.geometry() ):
                    continue
                newGeometry = featureA.geometry().combine( featureB.geometry() ).mergeLines()
                featureA.setGeometry( newGeometry )
                layer.updateFeature( featureA )
                idsToRemove.append( featureBId )
        layer.deleteFeatures( idsToRemove )
        layer.commitChanges()
