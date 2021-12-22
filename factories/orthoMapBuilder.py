
from pathlib import Path

from qgis.core import (QgsDataSourceUri, QgsFeature, QgsPrintLayout,
                       QgsVectorLayer, QgsMapLayer)

from ..config.configDefaults import ConfigDefaults
from ..factories.mapBuilderUtils import MapBuilderUtils
from ..interfaces.iMapBuilder import IMapBuilder
from ..modules.gridGenerator.gridAndLabelCreator import GridAndLabelCreator
from ..modules.mapBuilder.factories.componentFactory import ComponentFactory

class OrthoMapBuilder(IMapBuilder,MapBuilderUtils):

    def __init__(self, componentFactory: ComponentFactory) -> None:
        super().__init__()
        self.componentFactory = componentFactory
        self.productPath = Path(__file__).parent.parent / 'modules' / 'mapBuilder' / 'resources' / 'products' / 'orthoMap'
        self.components = dict()
        self.components.update({'map':self.componentFactory.getComponent('Map', 'orthoMap')})
        self.components.update({'miniMap':self.componentFactory.getComponent('MiniMap')})
        self.components.update({'localization':self.componentFactory.getComponent('Localization', 'orthoMap')})
        self.components.update({'articulation':self.componentFactory.getComponent('Articulation', 'orthoMap')})
        self.components.update({'division':self.componentFactory.getComponent('Division')})
        self.components.update({'subtitle':self.componentFactory.getComponent('Subtitle')})
        self.components.update({'legend':self.componentFactory.getComponent('Legend')})
        self.components.update({'anglesHandler':self.componentFactory.getComponent('AnglesHandler')})
        self.components.update({'mapScale':self.componentFactory.getComponent('MapScale')})
        self.components.update({'table':self.componentFactory.getComponent('Table')})
        self.components.update({'miniMapCoords':self.componentFactory.getComponent('MiniMapCoords')})
        self.components.update({'qrcode':self.componentFactory.getComponent('Qrcode')})
        self.grid = GridAndLabelCreator()

    def setParams(self, jsonData: dict, defaults: ConfigDefaults, connection: QgsDataSourceUri, composition: QgsPrintLayout, mapAreaFeature: QgsFeature, mapAreaLayer: QgsVectorLayer):
        ''' Sets necessary parameters to create the map.
        Args:
            jsonData: dict with json data + other parameters
            defaults: default settings
            connection: instance of QgsDataSourceUri which points to the database to be used
            composition: QgsPrintLayout which will hold the map components
            mapAreaFeature: QgsFeature which covers the map area
            mapAreaLayer: QgsVectorLayer that contains a mapAreaFeature
        '''
        self.data = jsonData
        self.conn = connection
        self.defaults = defaults
        self.composition = composition
        self.mapAreaFeature = mapAreaFeature
        self.mapAreaLayer = mapAreaLayer

    def removeLayers(self, debugMode: bool = False):
        ''' Removes map layers and layer tree roots. Should be called when not running in debug mode, specially when exporting multiple maps at once.
        This function is called pre-export process to remove mapLayers that won't be used and in the end of the exportation process (when not running in debug mode)
        to cleanup layers from the interface.
        Args:
            debugMode: Boolean value holding the debugMode status
        '''
        if not debugMode and hasattr(self, 'layersIdsToBeRemoved') and hasattr(self, 'groupsToBeRemoved'):
            self.instance.removeMapLayers(self.layersIdsToBeRemoved)
            root = self.instance.layerTreeRoot()
            for group in self.groupsToBeRemoved:
                groupTree = root.findGroup(group)
                root.removeChildNode(groupTree)

    def cleanProject(self, debugMode: bool = False):
        ''' Removes a composition from the layoutManager. Only called when not in debug mode.
        Args:
            debugMode: Boolean value holding the debugMode status
        '''
        if not debugMode:
            self.instance.layoutManager().removeLayout(self.composition)

    def filterLayers(self, mapType, mapLayers, miniMapLayers, jsonData, defaults):
        '''Filters displayed classes by merging mandatory layers from ConfigDefaults and desired classes from json file.
        '''
        _toDisplay = defaults.orthoMandatoryClasses.union(defaults.orthoOptionalClasses.intersection(set(jsonData)))
        mapLayersToDisplay = [x for x in mapLayers if x.get('tabela') in _toDisplay]
        miniMapLayersToDisplay = [x for x in miniMapLayers if x.get('tabela') in _toDisplay]
        if mapType == 'map':
            if 'infra_elemento_energia_l' in _toDisplay:
                mapLayersToDisplay.insert(0, {
                    "tabela": "edicao_simb_torre_energia_p",
                    "schema": "edgv"
            })

            if 'elemnat_curva_nivel_l' in _toDisplay:
                mapLayersToDisplay.insert(0, {
                    "tabela": "edicao_simb_cota_mestra_l",
                    "schema": "edgv"
            })

        return mapLayersToDisplay, miniMapLayersToDisplay

    def run(self, debugMode: bool = False):
        ''' Creates the necessary components for the OrthoMap product and populates the composition.
        Args:
            debugMode: Boolean value holding the debugMode status
        '''
        self.layersIdsToBeRemoved = []
        self.groupsToBeRemoved = []
        mapLayers, mapLayersIds = self.getLayersFromDB(self.conn, self.data, self.defaults, self.productPath, 'map', lambda x: x)
        miniMapLayers, miniMapLayersIds = self.getLayersFromDB(self.conn, self.data, self.defaults, self.productPath, 'miniMap', lambda x: x)
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
            elif key == 'miniMap':
                miniMapLayersIds = component.build(
                    self.composition, self.mapAreaFeature, miniMapLayers, debugMode)
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
            elif key == 'legend':
                component.build(self.composition, self.data, self.defaults)
            elif key == 'mapScale':
                component.build(self.composition, self.data)
            elif key == 'table':
                component.build(self.composition, self.data, self.mapAreaFeature)
            elif key == 'miniMapCoords':
                component.build(self.composition, self.mapAreaFeature)
            elif key == 'qrcode':
                component.build(self.composition, self.data, self.mapAreaFeature)
        self.layersIdsToBeRemoved.extend((self.mapAreaLayer.id(), *mapLayersIds, *miniMapLayersIds, *localizationLayersIds, *articulationLayersIds, *divisionLayersIds))
        self.groupsToBeRemoved.extend(['map','miniMap','localization','articulation','division'])
        self.classifiedMapHandler(self.composition, self.data)
        # self.setupMasks(self.productPath, mapLayers)
