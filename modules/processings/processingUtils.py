from qgis.core import (QgsCoordinateReferenceSystem, QgsFeature, QgsGeometry,
                       QgsLayout, QgsLayoutItem, QgsLayoutPoint,QgsCoordinateTransform,
                       QgsPrintLayout, QgsProject, QgsRasterLayer, QgsRectangle, QgsCoordinateTransformContext,
                       QgsReadWriteContext, QgsVectorLayer, QgsSpatialIndex)



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