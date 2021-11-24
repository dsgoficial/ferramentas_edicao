from pathlib import Path

from PyQt5.QtCore import QVariant
from PyQt5.QtGui import *
from qgis.core import (QgsCoordinateReferenceSystem, QgsCoordinateTransform,
                       QgsFeature, QgsField, QgsLayerTreeGroup, QgsLayoutItem,
                       QgsLayoutSize, QgsProject, QgsUnitTypes, QgsVectorLayer)

from .map_utils import MapParent


class Map(MapParent):
    def __init__(self, GLC):
        self.GLC = GLC
        self.stylesFolder = Path(__file__).parent.parent / 'styles' / 'map'

    def setMapSize(self, mapWidth=588, mapHeight=588):
        self.mapWidth = mapWidth
        self.mapHeight = mapHeight

    def getExtent(self, feat):
        return feat.geometry().boundingBox()

    def createLayerForGrid(self, baseLayer, mapExtents):
        ''' Creates a vector layer that will be the base for the grid.
        '''
        uri = f'Polygon?crs=EPSG:{self.epsg}'
        gridLayer = QgsVectorLayer(uri, 'auxiliar_moldura', "memory")
        gridLayerDataProvider = gridLayer.dataProvider()
        gridLayer.startEditing()
        gridLayerFields = (field.name() for field in baseLayer.fields())
        gridLayerDataProvider.addAttributes(baseLayer.fields())

        if 'id' not in gridLayerFields:
            gridLayerDataProvider.addAttributes([QgsField("id",  QVariant.String)])
        gridLayer.updateFields()

        convexhull = mapExtents.geometry().convexHull()
        crsSrc = QgsCoordinateReferenceSystem('EPSG:4326')
        crcDest = QgsCoordinateReferenceSystem(f'EPSG:{self.epsg}')
        transform = QgsCoordinateTransform(crsSrc, crcDest, QgsProject.instance())
        convexhull.transform(transform)

        feat = QgsFeature(gridLayer.fields())
        feat.setGeometry(convexhull)
        feat['id'] = '1'
        gridLayerDataProvider.addFeature(feat)
        gridLayer.commitChanges()

        return gridLayer, convexhull.boundingBox()

    def setSpacingFromScale(self, scale):
        self.id_attr = 'id'
        self.id_value = 1
        self.scale = scale
        self.spacing = 40*scale

    def setGridAndLabelParameters(self, crossX, crossY, fontSize, font, fontLL, llcolor, linwidth_geo, linwidth_utm, linwidth_buffer_geo, linwidth_buffer_utm, geo_grid_color, utm_grid_color, geo_grid_buffer_color, utm_grid_buffer_color, masks_check):
        self.crossX = crossX
        self.crossY = crossY
        self.fontSize = fontSize
        self.font = font
        self.fontLL = fontLL
        self.llcolor = llcolor
        self.linwidth_geo = linwidth_geo
        self.linwidth_utm = linwidth_utm
        self.linwidth_buffer_geo = linwidth_buffer_geo
        self.linwidth_buffer_utm = linwidth_buffer_utm
        self.geo_grid_color = geo_grid_color
        self.utm_grid_color = utm_grid_color
        self.geo_grid_buffer_color = geo_grid_buffer_color
        self.utm_grid_buffer_color = utm_grid_buffer_color
        self.masks_check = masks_check

    def applyStyleGridLayer(self, layer_auxiliarMoldura):
        layer = layer_auxiliarMoldura

        layer_bound = layer
        projCRS = layer_bound.crs().authid()
        utmSRID = projCRS.replace('EPSG:', '')

        feature_bound = [feat for feat in layer_auxiliarMoldura.getFeatures()][0]
        feature_geometry = feature_bound.geometry()

        self.GLC.styleCreator(feature_geometry, layer_bound, utmSRID, self.id_attr, self.id_value, self.spacing, self.crossX, self.crossY, self.scale, self.fontSize, self.font, self.fontLL, self.llcolor,
                              self.linwidth_geo, self.linwidth_utm, self.linwidth_buffer_geo, self.linwidth_buffer_utm, self.geo_grid_color, self.utm_grid_color, self.geo_grid_buffer_color, self.utm_grid_buffer_color, self.masks_check)

    def make(self, composition, mapExtentsLayer, mapExtents, layers, showLayers=False):

        mapLayers = []
        self.deleteGroups(['map'])

        instance = QgsProject.instance()
        # Setting up grid layer
        mapExtent = self.getExtent(mapExtents)
        gridLayer, mapExtentsTransformed = self.createLayerForGrid(mapExtentsLayer, mapExtents)
        self.applyStyleGridLayer(gridLayer)
        gridLayer.triggerRepaint()
        instance.addMapLayer(gridLayer, False)

        # Setting up aux_label, which is reprojected to mapLayers
        crs = next(iter(layers['map'])).crs()
        copyLabel = self.cloneVectorLayerReproject(gridLayer, 'aux_label', crs)
        copyLabelStyle = Path(__file__).parent.parent / 'styles' / 'grid' / 'aux_label.qml'
        copyLabel.loadNamedStyle(str(copyLabelStyle))
        instance.addMapLayer(copyLabel, False)

        # Setting up aux_moldura
        copy = self.cloneVectorLayer(gridLayer, 'aux_moldura')
        copyStyle = Path(__file__).parent.parent / 'styles' / 'grid' / 'style.qml'
        copy.loadNamedStyle(str(copyStyle))
        instance.addMapLayer(copy, False)

        # Setting up mask layer
        maskLayer = self.createMaskLayer(mapExtents)
        instance.addMapLayer(maskLayer, False)

        mapLayers.extend((copy.id(), copyLabel.id(), gridLayer.id(), maskLayer.id(), *layers['id_map']))
        layersToComposition = [gridLayer, maskLayer, copy, copyLabel, *layers['map'], *layers['images']]
        self.updateMapItem(composition, mapExtent, mapExtentsTransformed, gridLayer, layersToComposition)

        if showLayers:
            mapGroupNode = QgsLayerTreeGroup('map')
            mapGroupNode.setItemVisibilityChecked(False)
            for lyr in layersToComposition:
                mapGroupNode.addLayer(lyr)
            root = QgsProject.instance().layerTreeRoot()
            root.addChildNode(mapGroupNode)

        return mapLayers

    def createMaskLayer(self, mapExtents):
        bound = mapExtents.geometry()
        bufferedBound = bound.buffer(0.3, 2)
        diffBound = bufferedBound.difference(bound)
        maskLayer = self.createVectorLayerFromIter('mascara_rotulo', [diffBound])
        maskLayer.loadNamedStyle(str(self.stylesFolder / 'mascara_rotulos.qml'))
        maskLayer.triggerRepaint()
        return maskLayer

    def updateMapItem(self, composition, mapExtents, mapExtentsTransformed, frameLayer, layersToComposition):
        '''Updates the composer
        '''
        theScale = self.scale*1000.0
        mapItem = composition.itemById("the_map")
        mapItem.setExtent(mapExtents)
        mapItem.setScale(theScale)
        if layersToComposition is not None:
            layersToSet = [frameLayer, *layersToComposition]
            mapItem.setLayers(layersToSet)
        else:
            mapItem.setLayers([frameLayer])
        mapItem.refresh()
        mapItem.setCrs(QgsCoordinateReferenceSystem(f'EPSG:{self.epsg}'))
        mapItem.setExtent(mapExtentsTransformed)
        mapItem.setScale(theScale)
        if theScale == 250000:
            self.mapHeight = 494
            self.mapWidth = 724
        mapItem.attemptResize(QgsLayoutSize(
            self.mapWidth,  self.mapHeight, QgsUnitTypes.LayoutMillimeters))
        mapItem.setScale(theScale)
        mapItem.refresh()
        self.centerMapInAreaCarta(composition)

    def centerMapInAreaCarta(self, composition):
        ''' Sets reference point for the_map and area_reservada_carta elements
        '''
        if (mapReservedArea:=composition.itemById('area_reservada_carta')) is not None:
            mapReservedArea.setReferencePoint(QgsLayoutItem.Middle)
            mapReservedArea.refresh()
            positionMapReservedArea = mapReservedArea.positionWithUnits()
            mapItem = composition.itemById('the_map')
            mapItem.setReferencePoint(QgsLayoutItem.Middle)
            mapItem.attemptMove(positionMapReservedArea)
