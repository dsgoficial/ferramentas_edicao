from functools import partial
from pathlib import Path
from typing import Dict, List
from qgis.core import (QgsDataSourceUri, QgsFeature, QgsPrintLayout,
                       QgsVectorLayer, QgsMapLayer, QgsProject)

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
        self.components.update({'elevationDiagram':self.componentFactory.getComponent('ElevationDiagram')})
        self.components.update({'localization':self.componentFactory.getComponent('Localization', 'orthoMap')})
        self.components.update({'articulation':self.componentFactory.getComponent('Articulation', 'orthoMap')})
        self.components.update({'division':self.componentFactory.getComponent('Division')})
        self.components.update({'subtitle':self.componentFactory.getComponent('Subtitle')})
        self.components.update({'legend':self.componentFactory.getComponent('Legend')})
        self.components.update({'anglesHandler':self.componentFactory.getComponent('AnglesHandler')})
        self.components.update({'mapScale':self.componentFactory.getComponent('MapScale')})
        self.components.update({'table':self.componentFactory.getComponent('Table')})
        # self.components.update({'miniMapCoords':self.componentFactory.getComponent('MiniMapCoords')})
        self.components.update({'qrcode':self.componentFactory.getComponent('Qrcode')})
        self.grid = GridAndLabelCreator()

    def filterLayers(self, mapType: str, jsonData: Dict, defaults: ConfigDefaults, mapLayers:List[Dict]):
        '''Filters displayed classes by merging mandatory layers from ConfigDefaults and desired classes from json file.
        Args:
            mapType: map or miniMap
            jsonData: dict with json data + other parameters
            defaults: instance of configuration defaults
            mapLayers: Dict with available layers
        '''
        _complementarClasses = set(jsonData.get('classes_complementares', list()))
        _toDisplay = defaults.orthoMandatoryClasses.union(defaults.orthoOptionalClasses.intersection(_complementarClasses))
        layersToDisplay = [x for x in mapLayers if x.get('table') in _toDisplay]
        if mapType == 'map':
            if 'infra_elemento_energia_l' in _toDisplay:
                layersToDisplay.insert(0, {
                    "table": "edicao_simb_torre_energia_p",
                    "schema": "edgv"
            })

            if 'elemnat_curva_nivel_l' in _toDisplay:
                layersToDisplay.insert(0, {
                    "table": "edicao_simb_cota_mestra_l",
                    "schema": "edgv"
            })
        return layersToDisplay

    def run(self, debugMode: bool = False):
        ''' Creates the necessary components for the OrthoMap product and populates the composition.
        Args:
            debugMode: Boolean value holding the debugMode status
        '''
        self.layersIdsToBeRemoved = []
        self.groupsToBeRemoved = []
        getLayersFromDbLambda = lambda x: self.getLayersFromDB(
            uri=self.conn,
            data=self.data,
            defaults=self.defaults,
            productPath=self.productPath,
            group=x,
            filterF=partial(self.filterLayers, x, self.data, self.defaults),
            mapAreaFeature=self.mapAreaFeature
        )
        mapLayers, mapLayersIds = getLayersFromDbLambda('map')
        elevationDiagramLayers, elevationDiagramLayersIds = getLayersFromDbLambda('miniMap')
        imgLayers, imgLayersIds = self.createRasterLayers(self.data.get('imagens', tuple()))
        mapLayers = [*mapLayers, *imgLayers]
        mapLayersIds = [*mapLayersIds, *imgLayersIds]
        elevationDiagramLayers = [*elevationDiagramLayers, *imgLayers]
        elevationDiagramLayersIds = [*elevationDiagramLayersIds, *imgLayersIds]
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
                    self.composition, self.mapAreaFeature, elevationDiagramLayers, debugMode)
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
            elif key == 'anglesHandler':
                component.build(self.composition, self.mapAreaFeature)
            elif key == 'qrcode':
                component.build(self.composition, self.data, self.mapAreaFeature)

        auxLayerIds = [lyr.id() for lyr in QgsProject.instance().mapLayers().values() if lyr.name() in ("convexhull", "auxiliar_moldura_outside")]

        self.layersIdsToBeRemoved.extend((self.mapAreaLayer.id(), *mapLayersIds, *elevationDiagramLayersIds, *localizationLayersIds, *articulationLayersIds, *divisionLayersIds, *auxLayerIds))
        self.groupsToBeRemoved.extend(['map','elevationDiagram','localization','articulation','division'])
        self.classifiedMapHandler(self.composition, self.data)
        self.setupMasks(self.productPath, mapLayers)
