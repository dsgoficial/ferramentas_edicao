from pathlib import Path

from PyQt5.QtCore import QVariant
from PyQt5.QtGui import *
from qgis.core import (QgsCoordinateReferenceSystem, QgsCoordinateTransform,
                       QgsFeature, QgsField, QgsLayerTreeGroup, QgsLayoutItem,
                       QgsLayoutSize, QgsMapLayer, QgsPrintLayout, QgsProject,
                       QgsRectangle, QgsUnitTypes, QgsVectorLayer)

from ....config.configDefaults import ConfigDefaults
from ....interfaces.iComponent import IComponent
from ....modules.gridGenerator.gridAndLabelCreator import GridAndLabelCreator
from .componentUtils import ComponentUtils


class MapOM(ComponentUtils,IComponent):
    def __init__(self, *args, **kwargs):
        self.stylesFolder = Path(__file__).parent.parent / 'resources' / 'products' / 'omMap' / 'styles'
        self.defaultMapSize = [(588,588),(494,724)]

    def build(
        self, composition: QgsPrintLayout, jsonData: dict, defaults: ConfigDefaults,  mapAreaFeature: QgsFeature,
        mapAreaLayer: QgsVectorLayer, layers: list[QgsMapLayer], showLayers: bool=False):

        instance = QgsProject.instance()
        mapIDsToBeDisplayed = []

        mapAreaExtents = mapAreaFeature.geometry().boundingBox()
        omLayer, mapExtentsTransformed = self.createLayerForGrid(mapAreaLayer, mapAreaFeature, jsonData)
        omLayer.loadNamedStyle(self.stylesFolder / 'omLayer.qml')
        instance.addMapLayer(omLayer, False)

        mapIDsToBeDisplayed.extend((omLayer.id(), *[x.id() for x in layers]))
        layersToComposition = [omLayer, *layers]
        self.updateComposition(composition, mapAreaExtents, mapExtentsTransformed, omLayer, layersToComposition, jsonData)

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

    # TODO: check mapExtents / mapExtentsTransformed duplication
    def updateComposition(
        self, composition: QgsPrintLayout, mapExtents: QgsRectangle,
        mapExtentsTransformed: QgsRectangle, frameLayer: QgsVectorLayer, layersToComposition: list[QgsMapLayer], data: dict):
        '''Updates the composer
        '''
        scale = data.get('scale')
        epsg = data.get('epsg')
        angle = data.get('rotationAngle')
        mapItem = composition.itemById("map")
        mapItem.setExtent(mapExtents)
        mapItem.setScale(scale)
        mapItem.setMapRotation(90-angle)
        # mapItem.rotateItem(angle)
        if layersToComposition is not None:
            layersToSet = [frameLayer, *layersToComposition]
            mapItem.setLayers(layersToSet)
        else:
            mapItem.setLayers([frameLayer])
        mapItem.refresh()
        mapItem.setCrs(QgsCoordinateReferenceSystem(f'EPSG:{epsg}'))
        mapItem.setExtent(mapExtentsTransformed)
        mapItem.setScale(scale)
        if scale == 250000:
            mapWidth, mapHeight = self.defaultMapSize[1]
        else:
            mapWidth, mapHeight = self.defaultMapSize[0]
        mapItem.attemptResize(QgsLayoutSize(mapWidth, mapHeight, QgsUnitTypes.LayoutMillimeters))
        mapItem.setScale(scale)
        mapItem.refresh()
        self.centerMapInAreaCarta(composition)

    def centerMapInAreaCarta(self, composition: QgsPrintLayout):
        ''' Sets reference point for map and area_reservada_carta elements
        '''
        if (mapReservedArea:=composition.itemById('area_reservada_carta')) is not None:
            mapReservedArea.setReferencePoint(QgsLayoutItem.Middle)
            mapReservedArea.refresh()
            positionMapReservedArea = mapReservedArea.positionWithUnits()
        if (mapItem:=composition.itemById('map')) is not None:
            mapItem.setReferencePoint(QgsLayoutItem.Middle)
            mapItem.attemptMove(positionMapReservedArea)
