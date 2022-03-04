from pathlib import Path

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

        omLayer = self.createOmLayer(mapAreaLayer, mapAreaFeature, jsonData)
        omLayer.loadNamedStyle(str(self.stylesFolder / 'omLayer.qml'))
        instance.addMapLayer(omLayer, False)

        mapIDsToBeDisplayed.extend((omLayer.id(), *[x.id() for x in layers]))
        layersToComposition = [omLayer, *layers]

        mapAreaFeaureAdjustPlacement = self.calculateRotationDisplacement(jsonData, mapAreaFeature)
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
