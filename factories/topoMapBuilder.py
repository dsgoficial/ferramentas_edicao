from interfaces.iMapBuilder import IMapBuilder

from qgis.core import QgsDataSourceUri, QgsFeature

from modules.mapBuilder.factories.componentFactory import ComponentFactory
from config.configDefaults import ConfigDefaults

class TopoMapBuilder(IMapBuilder):

    def __init__(self, componentFactory: ComponentFactory) -> None:
        self.componentFactory = componentFactory
        super().__init__()

    def setParams(self, jsonData: dict, defaults: ConfigDefaults, connection: QgsDataSourceUri, compositions: dict, mapAreaFeature: QgsFeature):
        self.data = jsonData
        self.conn = connection
        self.compositions = compositions
        self.mapAreaFeature = mapAreaFeature
