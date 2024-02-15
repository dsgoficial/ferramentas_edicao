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
from .orthoMapBuilder import OrthoMapBuilder


class MilitaryOrthoMapBuilder(OrthoMapBuilder):
    def __init__(self, componentFactory: ComponentFactory, versionFolder) -> None:
        super(MilitaryOrthoMapBuilder, self).__init__(componentFactory, versionFolder)

    def run(self, debugMode: bool = False):
        super().run(debugMode=debugMode)
