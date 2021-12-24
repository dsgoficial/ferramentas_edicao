from qgis import processing
from qgis.core import (QgsFeature, QgsField, QgsFields, QgsGeometry,
                       QgsRectangle, QgsVectorLayer)
from qgis.PyQt.QtCore import QVariant
from ..modules.mapBuilder.factories.gridFactory.gridFactory import GridFactory


class MapBuildControllerUtils:
    ''' Utilities for mapBuilderController, specially when
    handling the mapGrid
    '''

    def createLayerFromLatLong(self, grid: GridFactory, lon: int, lat: int, scale: int) -> tuple[QgsVectorLayer, QgsFeature]:
        ''' Creates a feature centered at lat/lon with size compatible with scale,
        and a vector layer containing this feature.
        Args:
            grid: Grid factory
            lat: Latitude
            lon: Longitude
            scale: Scale
        Returns:
            A tuple containing the layer and the feature that corresponds to informed lat/lon/scale
        '''
        spacingX = grid.getSpacingX(scale)
        xMin = lon - spacingX/2
        xMax = lon + spacingX/2
        spacingY = grid.getSpacingY(scale)
        yMin = lat - spacingY/2
        yMax = lat + spacingY/2
        rect = QgsRectangle(xMin, yMin, xMax, yMax)
        geom = QgsGeometry.fromRect(rect)
        layer, feat = self.createLayerFromGeom('mapExtents', geom)
        return layer, feat

    def createLayerFromGeom(self, name: str, geom: QgsGeometry, layerType: str ='Multipolygon', crsAuthId: str ='4326') -> tuple[QgsVectorLayer, QgsFeature]:
        ''' Creates a feature and vector layer.
        Args:
            name: name of the VectorLayer to be created
            geom: geometry to be inserted in the feat / layer
            layerType: layer type (Point, Multipoint, ...)
            crsAuthId: Coordinate Reference System for the layer
        Returns:
            A tuple containing the layer and the feature related to geom
        '''
        layer = QgsVectorLayer('%s?crs=EPSG:%s' % (layerType, crsAuthId), name, 'memory')
        if not layer.isValid():
            return None
        else:
            provider = layer.dataProvider()
            fields = QgsFields()
            fields.append(QgsField('inom', QVariant.String))
            fields.append(QgsField('mi', QVariant.String))
            fields.append(QgsField('id', QVariant.String))
            provider.addAttributes(fields)
            layer.updateFields()

            layer.startEditing()
            feat = QgsFeature(fields)
            feat['id'] = '1'
            feat.setGeometry(geom)
            provider.addFeatures([feat])

            layer.commitChanges()
            return layer, feat

    def getEpsg(self, hemisphere: str, timeZone: str) -> int:
        ''' Calculates the epsg by using the hemisphere and the timezone
        Args:
            hemisphere: N or S
            timezone: Integer / String from -12 to 12
        Returns:
            EPSG (int)
        '''
        timeZone = int(timeZone)
        epsg = "319"
        if hemisphere == 'N':
            epsg = epsg + str(72 + timeZone-18)
        elif hemisphere == 'S':
            epsg = epsg + str(78 + timeZone-18)
        return int(epsg)
