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
from collections import defaultdict
from dataclasses import dataclass
from typing import Dict, List, Optional, Union

from qgis.core import (
    QgsCoordinateReferenceSystem,
    QgsFeature,
    QgsGeometry,
    QgsProject,
    QgsRuleBasedLabeling,
    QgsVectorLayer,
    QgsRenderContext,
    QgsPoint,
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
    dpi: int
    render_context: QgsRenderContext
    
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
                        render_context=self.render_context,
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
    
    def resolve_overlaps(self, other_grid):
        buffer_width_dict = {
            GridTypes.BOTTOM: {
                0: 0.45 * self.font_config.size * self.scale_denominator * 2,
            },
            GridTypes.LEFT: {
                0: 0.45 * self.font_config.size * self.scale_denominator * 2,
            },
            GridTypes.TOP: {
                 0: 0.35 * self.font_config.size * self.scale_denominator * len(". GREENWICH"),
            },
        }
        for key, label_list in self.grid_label_dict.items():
            for idx, label in enumerate(label_list):
                buffer_width = buffer_width_dict.get(key, {}).get(idx, 0)
                label.resolve_overlap(
                    other_grid.grid_label_dict[key],
                    current_idx=idx,
                    buffer_width=buffer_width,
                )
    
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
        "If any label overlaps the corners, delete it"
        items_to_delete_dict = defaultdict(list)
        for key, label_list in self.grid_label_dict.items():
            first_item, last_item = label_list[0], label_list[-1]
            if label_list[-2].overlaps(last_item):
                items_to_delete_dict[key].append(-2)
            if label_list[1].overlaps(first_item):
                items_to_delete_dict[key].append(1)
        for key, label_list in items_to_delete_dict.items():
            for idx in label_list:
                self.grid_label_dict[key].pop(idx)
