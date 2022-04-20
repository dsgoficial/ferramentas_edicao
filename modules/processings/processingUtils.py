from qgis.core import (QgsCoordinateReferenceSystem, QgsFeature, QgsGeometry,
                       QgsLayout, QgsLayoutItem, QgsLayoutPoint,QgsCoordinateTransform,
                       QgsPrintLayout, QgsProject, QgsRasterLayer, QgsRectangle, QgsCoordinateTransformContext,
                       QgsReadWriteContext, QgsVectorLayer)



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