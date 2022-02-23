from pathlib import Path
import math

from PyQt5.QtCore import QVariant
from qgis.core import (QgsCoordinateReferenceSystem, QgsCoordinateTransform,
                       QgsFeature, QgsField, QgsLayerTreeGroup, QgsLayoutItem,
                       QgsLayoutSize, QgsMapLayer, QgsPrintLayout, QgsProject,
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

        mapAreaExtents = mapAreaFeature.geometry().boundingBox()
        omLayer, mapExtentsTransformed = self.createLayerForGrid(mapAreaLayer, mapAreaFeature, jsonData)
        omLayer.loadNamedStyle(str(self.stylesFolder / 'omLayer.qml'))
        instance.addMapLayer(omLayer, False)

        mapIDsToBeDisplayed.extend((omLayer.id(), *[x.id() for x in layers]))
        layersToComposition = [omLayer, *layers]

        mapAreaFeaureAdjustPlacement = self.calculateRotationDisplacement(jsonData, mapAreaFeature)
        self.updateComposition(composition, mapAreaExtents, mapExtentsTransformed, omLayer, layersToComposition, jsonData, mapAreaFeaureAdjustPlacement)

        if showLayers:
            mapGroupNode = QgsLayerTreeGroup('map')
            mapGroupNode.setItemVisibilityChecked(False)
            for lyr in layersToComposition:
                mapGroupNode.addLayer(lyr)
            root = QgsProject.instance().layerTreeRoot()
            root.addChildNode(mapGroupNode)

        return mapIDsToBeDisplayed

    def createLayerForGrid(self, baseLayer: QgsVectorLayer, mapExtents: QgsFeature, data: dict) -> tuple[QgsVectorLayer, QgsRectangle]:
        ''' Creates a vector layer that will be the base for the grid.
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

        convexhull = mapExtents.geometry().convexHull()
        crsSrc = QgsCoordinateReferenceSystem('EPSG:4674')
        crcDest = QgsCoordinateReferenceSystem(f'EPSG:{data.get("epsg")}')
        transform = QgsCoordinateTransform(crsSrc, crcDest, QgsProject.instance())
        convexhull.transform(transform)

        feat = QgsFeature(gridLayer.fields())
        feat.setGeometry(convexhull)
        feat['id'] = '1'
        gridLayerDataProvider.addFeature(feat)
        gridLayer.commitChanges()

        return gridLayer, convexhull.boundingBox()

    def calculateRotationDisplacement(self, data: dict, mapAreaFeature: QgsFeature) -> tuple[float,float]:
        '''Calculates the displacement of mapAreaFeature's center caused by the map rotation
        Args:
            data (dict): Holds the map metadata
            mapAreaFeature (QgsFeature): Feature holding the geometry of the map area
        Returns:
            x and y displacements
        '''
        angle = data.get('rotationAngle')
        transformer = QgsCoordinateTransform(
            QgsCoordinateReferenceSystem('EPSG:4674'),
            QgsCoordinateReferenceSystem(f'EPSG:{data.get("epsg")}'),
            QgsCoordinateTransformContext())
        geom = mapAreaFeature.geometry()
        geom.transform(transformer)
        # bboxOriginal = geom.boundingBox()
        # print(bboxOriginal)
        bboxOriented, _, _, _, _ = geom.orientedMinimumBoundingBox()
        # print(bboxOriented.boundingBox())
        # displacementX = bboxOriented.boundingBox().xMaximum() - bboxOriginal.xMaximum()
        # displacementY = bboxOriented.boundingBox().yMaximum() - bboxOriginal.yMaximum()
        # copyGeometry = QgsFeature(mapAreaFeature).geometry()
        # geom.rotate(data.get('rotationAngle', 0), geom.centroid().asPoint())
        # mapAreaFeatureCentroid = mapAreaFeature.geometry().boundingBox().center()
        # copyCentroid = copyGeometry.boundingBox().center()
        # displacementX = mapAreaFeatureCentroid.x() - copyCentroid.x()
        # displacementY = mapAreaFeatureCentroid.y() - copyCentroid.y()
        # return displacementX * math.cos(angle / (2*math.pi)), displacementY * math.sin(angle / (2*math.pi))
        return geom.boundingBox()

    # TODO: check mapExtents / mapExtentsTransformed duplication
    def updateComposition(
        self, composition: QgsPrintLayout, mapExtents: QgsRectangle,
        mapExtentsTransformed: QgsRectangle, frameLayer: QgsVectorLayer,
        layersToComposition: list[QgsMapLayer], data: dict, mapAreaFeaureAdjustPlacement: tuple):
        '''Updates the composer
        '''
        scale = data.get('scale')
        epsg = data.get('epsg')
        angle = data.get('rotationAngle')
        omTemplateType = data.get("omTemplateType")
        mapItem = composition.itemById("map")
        # mapItem.setExtent(mapExtents)
        # mapItem.setScale(scale)
        if layersToComposition is not None:
            layersToSet = [frameLayer, *layersToComposition]
            mapItem.setLayers(layersToSet)
        else:
            mapItem.setLayers([frameLayer])
        # mapItem.refresh()
        mapItem.setCrs(QgsCoordinateReferenceSystem(f'EPSG:{epsg}'))
        # mapExtentsTransformed = QgsRectangle(
        #     mapExtentsTransformed.xMinimum() + mapAreaFeaureAdjustPlacement[0]/2,
        #     mapExtentsTransformed.yMinimum() + mapAreaFeaureAdjustPlacement[1]/2,
        #     mapExtentsTransformed.xMaximum() + mapAreaFeaureAdjustPlacement[0]/2,
        #     mapExtentsTransformed.yMaximum() + mapAreaFeaureAdjustPlacement[1]/2)
        # mapExtentsTransformed.setXMaximum(mapExtentsTransformed.xMaximum() - mapAreaFeaureAdjustPlacement[0])
        # mapExtentsTransformed.setXMinimum(mapExtentsTransformed.xMinimum() - mapAreaFeaureAdjustPlacement[0])
        # mapExtentsTransformed.setYMaximum(mapExtentsTransformed.yMaximum() - mapAreaFeaureAdjustPlacement[1])
        # mapExtentsTransformed.setYMinimum(mapExtentsTransformed.yMinimum() - mapAreaFeaureAdjustPlacement[1])
        mapItem.setExtent(mapAreaFeaureAdjustPlacement)
        # mapItem.setScale(scale)
        if omTemplateType == 1:
            mapWidth, mapHeight = self.defaultMapSize[0]
        elif omTemplateType == 2:
            mapWidth, mapHeight = self.defaultMapSize[1]
        mapItem.setMapRotation(90-angle)
        mapItem.attemptResize(QgsLayoutSize(mapWidth, mapHeight, QgsUnitTypes.LayoutMillimeters))
        mapItem.setScale(scale)
        mapItem.refresh()
        self.centerMapInAreaCarta(composition, mapAreaFeaureAdjustPlacement)

    def centerMapInAreaCarta(self, composition: QgsPrintLayout, mapAreaFeaureAdjustPlacement: tuple):
        ''' Sets reference point for map and area_reservada_carta elements
        '''
        if (mapReservedArea:=composition.itemById('area_reservada_carta')) is not None:
            mapReservedArea.setReferencePoint(QgsLayoutItem.Middle)
            mapReservedArea.refresh()
            positionMapReservedArea = mapReservedArea.positionWithUnits()
        if (mapItem:=composition.itemById('map')) is not None:
            mapItem.setReferencePoint(QgsLayoutItem.Middle)
            mapItem.attemptMove(positionMapReservedArea)
            # print(mapAreaFeaureAdjustPlacement)
            # print(mapItem.mapUnitsToLayoutUnits())
            # mapItem.moveContent(*mapAreaFeaureAdjustPlacement)
