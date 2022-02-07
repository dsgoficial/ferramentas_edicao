from pathlib import Path

from qgis.core import (QgsDataSourceUri, QgsFeature, QgsPrintLayout,
                       QgsVectorLayer, QgsProperty)

from ..config.configDefaults import ConfigDefaults
from ..factories.mapBuilderUtils import MapBuilderUtils
from ..interfaces.iMapBuilder import IMapBuilder
from ..modules.mapBuilder.factories.componentFactory import ComponentFactory

class OmMapBuilder(IMapBuilder,MapBuilderUtils):

    def __init__(self, componentFactory: ComponentFactory) -> None:
        super().__init__()
        self.componentFactory = componentFactory
        self.productPath = Path(__file__).parent.parent / 'modules' / 'mapBuilder' / 'resources' / 'products' / 'omMap'
        self.components = dict()
        self.components.update({'map':self.componentFactory.getComponent('MapOM')})
        self.components.update({'localization':self.componentFactory.getComponent('Localization', 'omMap')})
        self.components.update({'division':self.componentFactory.getComponent('DivisionOM')})
        self.components.update({'subtitle':self.componentFactory.getComponent('Subtitle')})
        self.components.update({'anglesHandler':self.componentFactory.getComponent('AnglesHandler')})
        self.components.update({'mapScale':self.componentFactory.getComponent('MapScale')})
        self.components.update({'table':self.componentFactory.getComponent('Table')})

    def handleMapRotation(self, data: dict, composition: QgsPrintLayout):
        '''Rotates the north indication
        Args:
            data: dict holding the map info
            composition: a QgsPrintLayout for the mapOm product
        '''
        rotationAngle = float(data.get("rotationAngle")) - 90
        if item:=composition.itemById('quadriculaRotation'):
            item.setItemRotation(rotationAngle)
        if item:=composition.itemById('quadriculaRotationLabel'):
            item.setText(f'ROTAÇÃO DE {rotationAngle:.2f}°')

    def handleOmInfo(self, data: dict, composition: QgsPrintLayout):
        '''Sets the correct OM info in the composition: OM name / symbol and subordination's name / symbol 
        Args:
            data: dict holding the map info
            composition: a QgsPrintLayout for the mapOm product
        '''
        if item:=composition.itemById('labelSubordination1'):
            if text:=data.get("subordinacao1"):
                item.setText(str(text).upper())
                item.setVisibility(True)
            else:
                item.setVisibility(False)
        if item:=composition.itemById('labelSubordination2'):
            if text:=data.get("subordinacao2"):
                item.setText(str(text).upper())
                item.setVisibility(True)
            else:
                item.setVisibility(False)
        if item:=composition.itemById('label_nomeCarta'):
            item.setText(str(data.get("nome")).upper())
        if item:=composition.itemById('symbolOM'):
            imgPath = data.get("imagemOM")
            if imgPath:
                imgPath = Path(imgPath)
                item.setPicturePath(str(imgPath))
        if item:=composition.itemById('symbolSubordination'):
            imgPath = data.get("imagemSubordinacao")
            propertyKey = item.dataDefinedProperties().propertyKeys()
            if (isinstance(propertyKey, list) and len(propertyKey) > 0):
                propertyKey = propertyKey[0]
                item.dataDefinedProperties().setProperty(propertyKey, QgsProperty())
                item.refresh()
            if imgPath:
                imgPath = Path(imgPath)
                item.setPicturePath(str(imgPath))
        composition.refresh()

    def run(self, debugMode: bool = False):
        ''' Creates the necessary components for the OrthoMap product and populates the composition.
        Args:
            debugMode: Boolean value holding the debugMode status
        '''
        self.layersIdsToBeRemoved = []
        self.groupsToBeRemoved = []
        mapLayers, mapLayersIds = self.getLayersFromDB(
            self.conn, self.data, self.defaults, self.productPath, 'map', lambda x: x)
        imgLayers, imgLayersIds = self.createRasterLayers(self.data.get('imagens', tuple()))
        mapLayers = [*mapLayers, *imgLayers]
        mapLayersIds = [*mapLayersIds, *imgLayersIds]
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
                    self.composition, self.data, self.defaults, self.mapAreaFeature, self.mapAreaLayer, mapLayers, debugMode)
            elif key == 'localization':
                localizationLayersIds = component.build(
                    self.composition, self.data, self.mapAreaFeature, debugMode)
            elif key == 'division':
                divisionLayersIds = component.build(
                    self.composition, self.data, self.mapAreaFeature, debugMode)
            elif key == 'subtitle':
                component.build(self.composition, self.data, self.mapAreaFeature)
            elif key == 'mapScale':
                component.build(self.composition, self.data)
            elif key == 'table':
                component.build(self.composition, self.data, self.mapAreaFeature)
        self.handleMapRotation(self.data, self.composition)
        self.handleOmInfo(self.data, self.composition)
        self.layersIdsToBeRemoved.extend((self.mapAreaLayer.id(), *mapLayersIds, *localizationLayersIds, *divisionLayersIds))
        self.groupsToBeRemoved.extend(['map','miniMap','localization','articulation','division'])