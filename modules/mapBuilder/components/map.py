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


class Map(ComponentUtils,IComponent):
    def __init__(self, *args, **kwargs):
        self.productType = args[0]
        self.stylesFolder = Path(__file__).parent.parent / 'resources' / 'styles' / 'map'
        self.gridStylesFolder = Path(__file__).parent.parent / 'resources' / 'styles' / 'grid'
        self.defaultMapSize = [(588,588),(494,724)]

    def build(
        self, composition: QgsPrintLayout, data: dict, defaults: ConfigDefaults,  mapAreaFeature: QgsFeature,
        mapAreaLayer: QgsVectorLayer, layers: list[QgsMapLayer], gridGenerator: GridAndLabelCreator, showLayers: bool=False):

        instance = QgsProject.instance()
        mapLayers = []

        # Setting up grid layer
        defaults = getattr(defaults, self.productType).get('grid')
        mapAreaExtents = mapAreaFeature.geometry().boundingBox()
        gridLayer, mapExtentsTransformed = self.createLayerForGrid(mapAreaLayer, mapAreaFeature, data)
        self.applyStyleGridLayer(gridLayer, gridGenerator, defaults, data)
        instance.addMapLayer(gridLayer, False)

        # Setting up aux_label, which is reprojected to mapLayers
        crs = next(iter(layers)).crs()
        copyLabel = self.cloneVectorLayerReproject(gridLayer, 'aux_label', crs)
        copyLabelStyle = self.gridStylesFolder / 'aux_label.qml'
        copyLabel.loadNamedStyle(str(copyLabelStyle))
        instance.addMapLayer(copyLabel, False)

        # Setting up aux_moldura
        copy = self.cloneVectorLayer(gridLayer, 'aux_moldura')
        copyStyle = self.gridStylesFolder / 'style.qml'
        copy.loadNamedStyle(str(copyStyle))
        instance.addMapLayer(copy, False)

        # Setting up mask layer
        maskLayer = self.createMaskLayer(mapAreaFeature)
        instance.addMapLayer(maskLayer, False)

        # mapLayers.extend((copy.id(), copyLabel.id(), gridLayer.id(), maskLayer.id(), *layers['id_map']))
        layersToComposition = [gridLayer, maskLayer, copy, copyLabel, *layers]
        self.updateComposition(composition, mapAreaExtents, mapExtentsTransformed, gridLayer, layersToComposition, data)

        if showLayers:
            mapGroupNode = QgsLayerTreeGroup('map')
            mapGroupNode.setItemVisibilityChecked(False)
            for lyr in layersToComposition:
                mapGroupNode.addLayer(lyr)
            root = QgsProject.instance().layerTreeRoot()
            root.addChildNode(mapGroupNode)

        return mapLayers

    def createLayerForGrid(self, baseLayer: QgsVectorLayer, mapExtents: QgsFeature, data: dict) -> tuple[QgsVectorLayer, QgsRectangle]:
        ''' Creates a vector layer that will be the base for the grid.
        '''
        uri = f'Polygon?crs=EPSG:{data.get("epsg")}'
        gridLayer = QgsVectorLayer(uri, 'auxiliar_moldura', "memory")
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

    def applyStyleGridLayer(self, gridLayer: QgsVectorLayer, gridGenerator: GridAndLabelCreator, gridOpts: dict, data: dict) -> None:
        gridCrs = gridLayer.crs().authid()
        srid = gridCrs.replace('EPSG:', '')
        gridGeometry = next(gridLayer.getFeatures()).geometry()
        gridGenerator.styleCreator(
            feature_geometry=gridGeometry,
            layer_bound=gridLayer,
            utmSRID=srid,
            id_attr='id',
            id_value=1, 
            scale=data.get('scale'),
            spacing=data.get('scale') * 40,
            **gridOpts
            # crossX=gridOpts.get('crossX'),
            # crossY=gridOpts.get('crossY'),
            # fontSize= gridOpts.get('fontSize'),
            # font=gridOpts.get('font'),
            # fontLL=gridOpts.get('fontLL'),
            # llcolor=gridOpts.get('llcolor'),
            # linwidth_geo=gridOpts.get('linwidth_geo'),
            # linwidth_utm=gridOpts.get('linwidth_utm'),
            # linwidth_buffer_geo=gridOpts.get('linwidth_buffer_geo'),
            # linwidth_buffer_utm=gridOpts.get('linwidth_buffer_utm'),
            # geo_grid_color=gridOpts.get('geo_grid_color'),
            # utm_grid_color=gridOpts.get('utm_grid_color'),
            # geo_grid_buffer_color=gridOpts.get('geo_grid_buffer_color'),
            # utm_grid_buffer_color=gridOpts.get('utm_grid_buffer_color'),
            # masks_check=gridOpts.get('masks_check')
        )
        gridLayer.triggerRepaint()

    def createMaskLayer(self, mapExtents: QgsFeature) -> QgsVectorLayer:
        bound = mapExtents.geometry()
        bufferedBound = bound.buffer(0.3, 2)
        diffBound = bufferedBound.difference(bound)
        maskLayer = self.createVectorLayerFromIter('mascara_rotulo', [diffBound])
        maskLayer.loadNamedStyle(str(self.stylesFolder / 'mascara_rotulos.qml'))
        maskLayer.triggerRepaint()
        return maskLayer

    # TODO: check mapExtents / mapExtentsTransformed duplication
    def updateComposition(
        self, composition: QgsPrintLayout, mapExtents: QgsRectangle,
        mapExtentsTransformed: QgsRectangle, frameLayer: QgsVectorLayer, layersToComposition: list[QgsMapLayer], data: dict):
        '''Updates the composer
        '''
        scale = data.get('scale')*1000
        epsg = data.get('epsg')
        mapItem = composition.itemById("map")
        mapItem.setExtent(mapExtents)
        mapItem.setScale(scale)
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
        print(composition)
        if (mapReservedArea:=composition.itemById('area_reservada_carta')) is not None:
            mapReservedArea.setReferencePoint(QgsLayoutItem.Middle)
            mapReservedArea.refresh()
            positionMapReservedArea = mapReservedArea.positionWithUnits()
        if (mapItem:=composition.itemById('map')) is not None:
            mapItem.setReferencePoint(QgsLayoutItem.Middle)
            mapItem.attemptMove(positionMapReservedArea)
