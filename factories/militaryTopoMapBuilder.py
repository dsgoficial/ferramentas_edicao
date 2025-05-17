# -*- coding: utf-8 -*-
"""
/***************************************************************************
 ferramentas_edicao
                                 A QGIS plugin
 Brazilian Army Cartographic Finishing Tools
                              -------------------
 ***************************************************************************/
/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/
"""
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
    def __init__(self, componentFactory: ComponentFactory, versionFolder) -> None:
        super(MilitaryTopoMapBuilder, self).__init__(componentFactory, versionFolder)

    def run(self, debugMode: bool = False):
        super().run(debugMode=debugMode)
