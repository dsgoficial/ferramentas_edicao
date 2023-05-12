from pathlib import Path

from qgis.core import (QgsDataSourceUri, QgsFeature, QgsPrintLayout,
                       QgsVectorLayer, QgsMapLayer)

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
        self.components.update({'elevationDiagram':self.componentFactory.getComponent('ElevationDiagram')})
        self.components.update({'localization':self.componentFactory.getComponent('Localization', 'topoMap')})
        self.components.update({'articulation':self.componentFactory.getComponent('Articulation', 'topoMap')})
        self.components.update({'division':self.componentFactory.getComponent('Division')})
        self.components.update({'subtitle':self.componentFactory.getComponent('Subtitle')})
        self.components.update({'anglesHandler':self.componentFactory.getComponent('AnglesHandler')})
        self.components.update({'mapScale':self.componentFactory.getComponent('MapScale')})
        self.components.update({'table':self.componentFactory.getComponent('Table')})
        self.components.update({'qrcode':self.componentFactory.getComponent('Qrcode')})
        self.grid = GridAndLabelCreator()

    def run(self, debugMode: bool = False):
        ''' Creates the necessary components for the TopoMap product and populates the composition.
        Args:
            debugMode: Boolean value holding the debugMode status
        '''
        self.debugMode = debugMode
        self.layersIdsToBeRemoved = []
        self.groupsToBeRemoved = []
        mapLayers, mapLayersIds = self.getLayersFromDB(self.conn, self.data, self.defaults, self.productPath, 'map', lambda x: x, self.mapAreaFeature)
        elevationDiagramLayers, elevationDiagramLayersIds = self.getLayersFromDB(self.conn, self.data, self.defaults, self.productPath, 'elevationDiagram', lambda x: x, self.mapAreaFeature)
        self.instance.addMapLayer(self.mapAreaLayer, False)
        if debugMode:
            manager = self.instance.layoutManager()
            manager.addLayout(self.composition)
            self.composition.setName(self.data.get('productName'))
        # self.instance.setCrs(QgsCoordinateReferenceSystem('EPSG:4674'))
        for key, component in self.components.items():
            self.deleteLayerTreeNode(key)
            # TODO: Parallelize
            if key == 'map':
                mapLayersIds = component.build(
                    self.composition, self.data, self.defaults, self.mapAreaFeature, self.mapAreaLayer, mapLayers, self.grid, debugMode)
            elif key == 'elevationDiagram':
                elevationDiagramLayersIds = component.build(
                    self.composition, self.data, self.mapAreaFeature, elevationDiagramLayers, debugMode)
            elif key == 'localization':
                localizationLayersIds = component.build(
                    self.composition, self.data, self.mapAreaFeature, debugMode)
            elif key == 'articulation':
                articulationLayersIds = component.build(
                    self.composition, self.data, self.mapAreaLayer, debugMode)
            elif key == 'division':
                divisionLayersIds = component.build(
                    self.composition, self.data, self.mapAreaFeature, debugMode)
            elif key == 'subtitle':
                component.build(self.composition, self.data, self.mapAreaFeature)
            elif key == 'mapScale':
                component.build(self.composition, self.data)
            elif key == 'table':
                component.build(self.composition, self.data, self.mapAreaFeature)
            elif key == 'anglesHandler':
                component.build(self.composition, self.mapAreaFeature)
            elif key == 'qrcode':
                component.build(self.composition, self.data, self.mapAreaFeature)
        self.layersIdsToBeRemoved.extend((self.mapAreaLayer.id(), *mapLayersIds, *elevationDiagramLayersIds, *localizationLayersIds, *articulationLayersIds, *divisionLayersIds))
        self.groupsToBeRemoved.extend(['map','elevationDiagram','localization','articulation','division'])
        self.classifiedMapHandler(self.composition, self.data)
        self.setupMasks(self.productPath, mapLayers)


