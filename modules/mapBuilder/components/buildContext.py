# -*- coding: utf-8 -*-
from dataclasses import dataclass, field
from typing import Optional

from qgis.core import (
    QgsFeature,
    QgsMapLayer,
    QgsPrintLayout,
    QgsVectorLayer,
)

from ....config.configDefaults import ConfigDefaults


@dataclass
class BuildContext:
    composition: QgsPrintLayout
    data: dict
    defaults: Optional[ConfigDefaults] = None
    mapAreaFeature: Optional[QgsFeature] = None
    mapAreaLayer: Optional[QgsVectorLayer] = None
    layers: list = field(default_factory=list)
    showLayers: bool = False
