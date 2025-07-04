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

Abstract base class for grid implementations.
"""

from abc import ABC, abstractmethod
from dataclasses import dataclass
from typing import Dict, List, Optional, Union
try:
    from typing import Self
except ImportError:
    from typing_extensions import Self

from qgis.core import (
    QgsCoordinateReferenceSystem,
    QgsFeature,
    QgsGeometry,
    QgsProject,
    QgsRectangle,
    QgsRuleBasedLabeling,
    QgsVectorLayer,
)

from ferramentas_edicao.modules.gridGenerator.core.types import GridTypes
from ferramentas_edicao.modules.gridGenerator.core.config import FontConfig, DisplacementVector
from ferramentas_edicao.modules.gridGenerator.grid_label_items.base_grid_item import GridLabelItem
from ferramentas_edicao.modules.gridGenerator.utils.lat_lon_coordinate_utils import DMS
from ferramentas_edicao.modules.gridGenerator.utils.utm_coordinate_utils import UTM
from ferramentas_edicao.modules.gridGenerator.utils.qgis_utils import get_closest_value_key

@dataclass
class AbstractGrid(ABC):
    scale_denominator: int
    font_config: FontConfig
    utm_crs: QgsCoordinateReferenceSystem
    x_min: float
    y_min: float
    x_max: float
    y_max: float
    dpi: int
    
    def __post_init__(self):
        self.spacing_dict: Dict[int, Union[DMS, float]] = self.build_spacing_dict()
        self.grid_spacing = self.get_spacing()
        self.coordinate_grid_dict: Dict[GridTypes, Union[DMS, UTM]] = self.build_coordinate_grid_dict()
        self.grid_label_dict: Dict[GridTypes, List[GridLabelItem]] = self.build_grid_label_dict()
        self.displacement_vector: Dict[GridTypes, DisplacementVector] = self.get_displacement_dict()
    
    @abstractmethod
    def build_spacing_dict(self) -> Dict[int, Union[DMS, float]]:
        pass
    
    @abstractmethod
    def build_coordinate_grid_dict(self) -> Dict[GridTypes, Union[DMS, UTM]]:
        pass
    
    @abstractmethod
    def get_displacement_dict(self) -> Dict[GridTypes, DisplacementVector]:
        pass
    
    @abstractmethod
    def build_rule_based_labelling(self, parent_rule: Optional[QgsRuleBasedLabeling.Rule] = None) -> QgsRuleBasedLabeling.Rule:
        pass
    
    def build_grid_label_dict(self) -> Dict[GridTypes, List[GridLabelItem]]:
        return {
            key: list(
                map(
                    lambda x: GridLabelItem(
                        str(x[1][0]) if key in [GridTypes.TOP, GridTypes.BOTTOM] else str(x[1][1]),
                        scale=self.scale_denominator,
                        font_config=self.font_config,
                        coordinates=x[1],
                        crs=QgsCoordinateReferenceSystem("EPSG:4674"),
                        destination_crs=self.utm_crs,
                        dpi=self.dpi,
                        grid_item_type=key,
                        is_first_item=x[0]==0,
                    ),
                    enumerate(coordinate_list)
                )
            ) for key, coordinate_list in self.coordinate_grid_dict.items()
        }
    
    def get_spacing(self):
        grid_spacing = self.spacing_dict.get(self.scale_denominator, None)
        if grid_spacing is not None:
            return grid_spacing
        # scale not listed in systematic mapping
        return get_closest_value_key(self.spacing_dict, self.scale_denominator)
    
    def resolve_overlaps(self, other_grid: Self):
        for key, label_list in self.grid_label_dict.items():
            for label in label_list:
                label.resolve_overlap(other_grid.grid_label_dict[key])
    
    def build_label_bounding_boxes_layer(self, layer_name) -> None:
        label_placement_bboxes_lyr = QgsVectorLayer(f"Polygon?crs={self.utm_crs.authid()}&field=coord:string(2000)&index=yes", layer_name, "memory")
        QgsProject.instance().addMapLayer(label_placement_bboxes_lyr)
        label_placement_bboxes_lyr.startEditing()
        label_placement_bboxes_lyr.beginEditCommand("adding feats")
        fields = label_placement_bboxes_lyr.fields()
        for key, label_list in self.grid_label_dict.items():
            for label in label_list:
                rect = label.get_bounding_rectangle()
                geom = QgsGeometry.fromRect(rect)
                feat = QgsFeature(fields)
                feat.setGeometry(geom)
                feat["coord"] = str(label)
                label_placement_bboxes_lyr.addFeature(feat)
        label_placement_bboxes_lyr.endEditCommand()
        label_placement_bboxes_lyr.commitChanges()
    
    def resolve_inner_overlaps(self):
        "If any label overlaps the corner, delete it"
        pass
