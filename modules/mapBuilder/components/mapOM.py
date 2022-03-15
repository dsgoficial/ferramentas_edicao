from pathlib import Path

from numpy import ndarray, array, asarray, dot, cov, array, finfo, min as npmin, max as npmax
from numpy.linalg import eigh, norm

from PyQt5.QtCore import QVariant
from qgis.core import (QgsCoordinateReferenceSystem, QgsCoordinateTransform,
                       QgsFeature, QgsField, QgsLayerTreeGroup, QgsLayoutItem, QgsPointXY,
                       QgsLayoutSize, QgsMapLayer, QgsPrintLayout, QgsProject, QgsGeometry,
                       QgsRectangle, QgsUnitTypes, QgsVectorLayer, QgsCoordinateTransformContext)

from ....config.configDefaults import ConfigDefaults
from ....interfaces.iComponent import IComponent
from .componentUtils import ComponentUtils


class MapOM(ComponentUtils,IComponent):
    def __init__(self, *args, **kwargs):
        self.stylesFolder = Path(__file__).parent.parent / 'resources' / 'products' / 'omMap' / 'styles'
        self.defaultMapSize = [(1025,865), (550,550), ]

    def build(
        self, composition: QgsPrintLayout, jsonData: dict, defaults: ConfigDefaults,  mapAreaFeature: QgsFeature,
        mapAreaLayer: QgsVectorLayer, layers: list[QgsMapLayer], showLayers: bool=False):

        instance = QgsProject.instance()
        mapIDsToBeDisplayed = []

        omLayer = self.createOmLayer(mapAreaLayer, mapAreaFeature, jsonData)
        omLayer.loadNamedStyle(str(self.stylesFolder / 'omLayer.qml'))
        instance.addMapLayer(omLayer, False)

        mapIDsToBeDisplayed.extend((omLayer.id(), *[x.id() for x in layers]))
        layersToComposition = [omLayer, *layers]

        utmGeom = self.transformGeometry(mapAreaFeature.geometry(), 'EPSG:4674', f'EPSG:{jsonData.get("epsg")}' )
        mapAreaFeaureAdjustPlacement = OBB.build_from_geom(utmGeom).rectangle
        self.updateComposition(composition, omLayer, layersToComposition, jsonData, mapAreaFeaureAdjustPlacement)

        if showLayers:
            mapGroupNode = QgsLayerTreeGroup('map')
            mapGroupNode.setItemVisibilityChecked(False)
            for lyr in layersToComposition:
                mapGroupNode.addLayer(lyr)
            root = QgsProject.instance().layerTreeRoot()
            root.addChildNode(mapGroupNode)

        return mapIDsToBeDisplayed

    def createOmLayer(self, baseLayer: QgsVectorLayer, mapAreaFeature: QgsFeature, data: dict) -> QgsVectorLayer:
        ''' Copy of (reprojected) mapAreaLayer that will be displayed on composition
        Args:
            baseLayer (QgsVectorLayer): layer which holds one feature (map area)
            mapAreaFeature (QgsFeature): Feature holding the geometry of the map area
            data (dict): holds the map information
        Returns:
            the OM vector layer
        '''
        uri = f'Polygon?crs=EPSG:{data.get("epsg")}'
        gridLayer = QgsVectorLayer(uri, 'om_layer', "memory")
        gridLayerDataProvider = gridLayer.dataProvider()
        gridLayer.startEditing()
        gridLayerFields = (field.name() for field in baseLayer.fields())
        gridLayerDataProvider.addAttributes(baseLayer.fields())

        if 'id' not in gridLayerFields:
            gridLayerDataProvider.addAttributes([QgsField("id",  QVariant.String)])
        gridLayer.updateFields()

        mapAreaGeom = mapAreaFeature.geometry()
        crsSrc = QgsCoordinateReferenceSystem('EPSG:4674')
        crcDest = QgsCoordinateReferenceSystem(f'EPSG:{data.get("epsg")}')
        transform = QgsCoordinateTransform(crsSrc, crcDest, QgsProject.instance())
        mapAreaGeom.transform(transform)

        feat = QgsFeature(gridLayer.fields())
        feat.setGeometry(mapAreaGeom)
        feat['id'] = '1'
        gridLayerDataProvider.addFeature(feat)
        gridLayer.commitChanges()

        return gridLayer

    def calculateRotationDisplacement(self, data: dict, mapAreaFeature: QgsFeature) -> QgsRectangle:
        '''Calculates the new extents of the map after the rotation of the map area
        Args:
            data (dict): Holds the map metadata
            mapAreaFeature (QgsFeature): Feature holding the geometry of the map area
        Returns:
            The new bounding box of the map layout item
        '''
        transformer = QgsCoordinateTransform(
            QgsCoordinateReferenceSystem('EPSG:4674'),
            QgsCoordinateReferenceSystem(f'EPSG:{data.get("epsg")}'),
            QgsCoordinateTransformContext())
        geom = mapAreaFeature.geometry()
        geom.transform(transformer)
        bboxOriented, _, _, _, _ = geom.orientedMinimumBoundingBox()
        return bboxOriented.boundingBox()

    def updateComposition(self, composition: QgsPrintLayout, omLayer: QgsVectorLayer,
        layersToComposition: list[QgsMapLayer], data: dict, mapAreaExtentsAfterRotation: QgsRectangle):
        ''' Updates the print layout of the map component by setting layers, scale and extents for this component.
        Args:
            composition (QgsPrintLayout): composition to be updated
            omLayer (QgsVectorLayer): om layer that will be displayed
            layersToComposition (list[QgsMapLayer]): optional layers that will also be displayed
            data (dict): map information
            mapAreaExtentsAfterRotation (QgsRectangle): map extents after the rotation (oriented bounding box)
        '''
        scale = data.get('scale')
        epsg = data.get('epsg')
        angle = data.get('rotationAngle')
        omTemplateType = data.get("omTemplateType")
        if omTemplateType == 1:
            mapWidth, mapHeight = self.defaultMapSize[0]
        elif omTemplateType == 2:
            mapWidth, mapHeight = self.defaultMapSize[1]
        if mapItem:=composition.itemById("map"):
            mapItem.setLayers([omLayer, *layersToComposition])
            mapItem.setCrs(QgsCoordinateReferenceSystem(f'EPSG:{epsg}'))
            mapItem.setExtent(mapAreaExtentsAfterRotation)
            mapItem.setMapRotation(90-angle)
            mapItem.attemptResize(QgsLayoutSize(mapWidth, mapHeight, QgsUnitTypes.LayoutMillimeters))
            mapItem.setScale(scale)
            mapItem.refresh()
            self.centerMapInAreaCarta(composition)

    def centerMapInAreaCarta(self, composition: QgsPrintLayout):
        '''Updates map reference point (it was probably displaced in updateComposition())
        Args:
            composition (QgsPrintLayout): composition to be updated
        '''
        if (mapReservedArea:=composition.itemById('area_reservada_carta')) is not None:
            mapReservedArea.setReferencePoint(QgsLayoutItem.Middle)
            mapReservedArea.refresh()
            positionMapReservedArea = mapReservedArea.positionWithUnits()
        if (mapItem:=composition.itemById('map')) is not None:
            mapItem.setReferencePoint(QgsLayoutItem.Middle)
            mapItem.attemptMove(positionMapReservedArea)

class OBB:
    '''
    From https://github.com/pboechat/pyobb/blob/master/pyobb/obb.py
    '''
    def __init__(self):
        self.rotation = None
        self.min = None
        self.max = None

    def transform(self, point):
        return dot(array(point), self.rotation)

    @property
    def centroid(self):
        return self.transform((self.min + self.max) / 2.0)

    @property
    def extents(self):
        return abs(self.transform((self.max - self.min) / 2.0))

    @property
    def rectangle(self):
        pMin = self.transform((self.min[0], self.min[1]))
        pMax = self.transform((self.max[0], self.max[1]))
        return QgsRectangle(
            pMin[0],
            pMin[1],
            pMax[0],
            pMax[1]
        )


    @classmethod
    def build_from_covariance_matrix(cls, covariance_matrix, points):
        if not isinstance(points, ndarray):
            points = array(points, dtype=float)

        obb = OBB()

        _, eigen_vectors = eigh(covariance_matrix)

        def try_to_normalize(v):
            n = norm(v)
            if n < finfo(float).resolution:
                raise ZeroDivisionError
            return v / n

        r = try_to_normalize(eigen_vectors[:, 0])
        u = try_to_normalize(eigen_vectors[:, 1])

        obb.rotation = array((r, u)).T

        p_primes = asarray([obb.rotation.dot(p) for p in points])
        obb.min = npmin(p_primes, axis=0)
        obb.max = npmax(p_primes, axis=0)

        return obb

    @classmethod
    def build_from_points(cls, points):
        if not isinstance(points, ndarray):
            points = array(points, dtype=float)
        return OBB.build_from_covariance_matrix(cov(points, y=None, rowvar=0, bias=1), points)

    @classmethod
    def build_from_geom(cls, geom: QgsGeometry):
        geomWkt = geom.asWkt()
        if geom.isMultipart():
            coordsTxt = geomWkt.replace('MultiPolygon (((', '').replace(')))', '').split(',')
        else:
            coordsTxt = geomWkt.replace('Polygon ((', '').replace('))', '').split(',')
        npCoords = [[float(x.strip().split(' ')[0]),float(x.strip().split(' ')[1])] for x in coordsTxt]
        return OBB.build_from_covariance_matrix(cov(npCoords, y=None, rowvar=0, bias=1), npCoords)