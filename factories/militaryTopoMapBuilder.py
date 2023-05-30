from functools import partial
from pathlib import Path
from typing import Dict, List
from qgis.core import (
    QgsDataSourceUri,
    QgsFeature,
    QgsPrintLayout,
    QgsVectorLayer,
    QgsMapLayer,
    QgsProject,
)

from ..config.configDefaults import ConfigDefaults
from .mapBuilderUtils import MapBuilderUtils
from ..interfaces.iMapBuilder import IMapBuilder
from ..modules.gridGenerator.gridAndLabelCreator import GridAndLabelCreator
from ..modules.mapBuilder.factories.componentFactory import ComponentFactory
from .topoMapBuilder import TopoMapBuilder


class MilitaryTopoMapBuilder(TopoMapBuilder):
    def __init__(self, componentFactory: ComponentFactory) -> None:
        super(MilitaryTopoMapBuilder, self).__init__(componentFactory)

    def run(self, debugMode: bool = False):
        super().run(debugMode=debugMode)
