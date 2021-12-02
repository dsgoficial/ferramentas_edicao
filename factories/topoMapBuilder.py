from pathlib import Path

from qgis.core import (QgsDataSourceUri, QgsFeature, QgsPrintLayout,
                       QgsVectorLayer)

from ..config.configDefaults import ConfigDefaults
from ..factories.mapBuilderUtils import MapBuilderUtils
from ..interfaces.iMapBuilder import IMapBuilder
from ..modules.gridGenerator.gridAndLabelCreator import GridAndLabelCreator
from ..modules.mapBuilder.factories.componentFactory import ComponentFactory


class TopoMapBuilder(IMapBuilder,MapBuilderUtils):

    def __init__(self, componentFactory: ComponentFactory) -> None:
        super().__init__()
        self.componentFactory = componentFactory
        self.productPath = Path(__file__).parent.parent / 'modules' / 'mapBuilder' / 'resources' / 'products' / 'topoMap'
        self.components = dict()
        self.components.update({'map':self.componentFactory.getComponent('Map', 'topoMap')})
        self.components.update({'miniMap':self.componentFactory.getComponent('MiniMap')})
        self.components.update({'localization':self.componentFactory.getComponent('Localization', 'topoMap')})
        self.components.update({'articulation':self.componentFactory.getComponent('Articulation', 'topoMap')})
        self.components.update({'division':self.componentFactory.getComponent('Division')})
        self.components.update({'subtitle':self.componentFactory.getComponent('Subtitle')})
        self.components.update({'anglesHandler':self.componentFactory.getComponent('AnglesHandler')})
        self.components.update({'mapScale':self.componentFactory.getComponent('MapScale')})
        self.components.update({'table':self.componentFactory.getComponent('Table')})
        self.components.update({'miniMapCoords':self.componentFactory.getComponent('MiniMapCoords')})
        self.components.update({'qrcode':self.componentFactory.getComponent('Qrcode')})
        self.grid = GridAndLabelCreator()

    def setParams(self, jsonData: dict, defaults: ConfigDefaults, connection: QgsDataSourceUri, composition: QgsPrintLayout, mapAreaFeature: QgsFeature, mapAreaLayer: QgsVectorLayer):
        self.data = jsonData
        self.conn = connection
        self.defaults = defaults
        self.composition = composition
        self.mapAreaFeature = mapAreaFeature
        self.mapAreaLayer = mapAreaLayer

    def cleanProject(self, debugMode: bool = False):
        if not debugMode:
            self.instance.removeAllMapLayers()
            self.instance.layerTreeRoot().removeAllChildren()
            self.instance.layoutManager().removeLayout(self.composition)

    def run(self, debugMode: bool = False):
        debugMode = True
        # Let's try to not track the mapLayersIds and then remove everything in the end
        mapLayers, mapLayersIds = self.getLayersFromDB(self.conn, self.data, self.defaults, self.productPath, 'map', lambda x: x)
        miniMapLayers, miniMapLayersIds = self.getLayersFromDB(self.conn, self.data, self.defaults, self.productPath, 'miniMap', lambda x: x)
        self.instance.addMapLayer(self.mapAreaLayer, False)
        if debugMode:
            manager = self.instance.layoutManager()
            self.composition.setName(self.data.get('productName'))
            manager.addLayout(self.composition)
        # self.instance.setCrs(QgsCoordinateReferenceSystem('EPSG:4674'))
        for key, component in self.components.items():
            self.deleteLayerTreeNode(key)
            if key == 'map':
                component.build(self.composition, self.data, self.defaults, self.mapAreaFeature, self.mapAreaLayer, mapLayers, self.grid)
            elif key == 'miniMap':
                component.build(self.composition, self.mapAreaFeature, miniMapLayers)
            elif key == 'localization':
                component.build(self.composition, self.data, self.mapAreaFeature)
            elif key == 'articulation':
                component.build(self.composition, self.data, self.mapAreaLayer)
            elif key == 'division':
                component.build(self.composition, self.data, self.mapAreaFeature)
            elif key == 'subtitle':
                component.build(self.composition, self.data, self.mapAreaFeature)
            elif key == 'mapScale':
                component.build(self.composition, self.data)
            elif key == 'table':
                component.build(self.composition, self.data, self.mapAreaFeature)
            elif key == 'miniMapCoords':
                component.build(self.composition, self.mapAreaFeature)
            elif key == 'qrcode':
                component.build(self.composition, self.data, self.mapAreaFeature)
        self.classifiedMapHandler(self.composition, self.data)
        # self.setupMasks(self.productPath, mapLayers)


