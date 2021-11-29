from interfaces.iMapBuilder import IMapBuilder
from pathlib import Path

from qgis.core import QgsDataSourceUri, QgsFeature, QgsVectorLayer, QgsCoordinateReferenceSystem, QgsProject, QgsPrintLayout

from modules.mapBuilder.factories.componentFactory import ComponentFactory
from factories.mapBuilderUtils import MapBuilderUtils
from config.configDefaults import ConfigDefaults

class TopoMapBuilder(IMapBuilder,MapBuilderUtils):

    def __init__(self, componentFactory: ComponentFactory) -> None:
        super().__init__()
        self.componentFactory = componentFactory
        self.productPath = Path(__file__).parent.parent / 'modules' / 'mapBuilder' / 'resources' / 'products' / 'topoMap'
        self.components = dict()
        self.components.update({'map':self.componentFactory.getComponent('Map')})
        self.components.update({'miniMap':self.componentFactory.getComponent('MiniMap')})
        self.components.update({'localization':self.componentFactory.getComponent('Localization')})
        self.components.update({'articulation':self.componentFactory.getComponent('Articulation')})
        self.components.update({'subtitle':self.componentFactory.getComponent('Subtitle')})
        self.components.update({'anglesHandler':self.componentFactory.getComponent('AnglesHandler')})
        self.components.update({'mapScale':self.componentFactory.getComponent('MapScale')})
        self.components.update({'table':self.componentFactory.getComponent('Table')})
        self.components.update({'miniMapCoords':self.componentFactory.getComponent('MiniMapCoords')})
        self.components.update({'mapIdentification':self.componentFactory.getComponent('MapIdentification')})
        self.components.update({'qrcode':self.componentFactory.getComponent('Qrcode')})

    def setParams(self, jsonData: dict, defaults: ConfigDefaults, connection: QgsDataSourceUri, composition: QgsPrintLayout, mapAreaFeature: QgsFeature, mapAreaLayer: QgsVectorLayer):
        self.data = jsonData
        self.conn = connection
        self.defaults = defaults
        self.composition = composition
        self.mapAreaFeature = mapAreaFeature
        self.mapAreaLayer = mapAreaLayer

    def run(self, debugMode=False):
        # Let's try to not track the mapLayersIds and then remove everything in the end
        mapLayers, mapLayersIds = self.getLayersFromDB(self.conn, self.data, self.defaults, self.productPath, 'map', lambda x: x)
        miniMapLayers, miniMapLayersIds = self.getLayersFromDB(self.conn, self.data, self.defaults, self.productPath, 'miniMap', lambda x: x)
        self.instance.addMapLayer(self.mapAreaLayer, False)
        if not debugMode:
            manager = self.instance.layoutManager()
            self.composition.setName(self.data.get('productType'))
            manager.addLayout(self.composition)
        # self.instance.setCrs(QgsCoordinateReferenceSystem('EPSG:4674'))
        for key, component in self.components.items():
            if key == 'map':
                component.build(self.composition, self.data, self.defaults, self.mapAreaFeature, self.mapAreaLayer, mapLayers)
            elif key == 'miniMap':
                component.build(self.composition, self.data, self.defaults, self.mapAreaFeature, self.mapAreaLayer, miniMapLayers)
            else:
                component.build(self.composition, self.data, self.defaults, self.mapAreaFeature, self.mapAreaLayer)
        self.setupMasks(self.productPath, mapLayers)
        if not debugMode:
            self.instance.removeAllMapLayers()
            self.instance.layerTreeRoot().removeAllChildren()

