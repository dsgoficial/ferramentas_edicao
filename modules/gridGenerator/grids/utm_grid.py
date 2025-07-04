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

UTM grid implementation.
"""

from dataclasses import dataclass
from typing import Dict, List, Optional, Tuple, Union

from qgis.core import (
    QgsGeometry,
    QgsPalLayerSettings,
    QgsPoint,
    QgsRuleBasedLabeling,
)

from ferramentas_edicao.modules.gridGenerator.core.types import GridTypes
from ferramentas_edicao.modules.gridGenerator.core.config import DisplacementVector
from ferramentas_edicao.modules.gridGenerator.grid_label_items.utm_grid_label_item import UTMGridLabelItem
from ferramentas_edicao.modules.gridGenerator.utils.utm_coordinate_utils import UTM
from ferramentas_edicao.modules.gridGenerator.utils.qgis_utils import build_rule_label
from .base import AbstractGrid

@dataclass
class UTMGrid(AbstractGrid):
    geographic_boundary_in_utm: QgsGeometry
    
    def __post_init__(self):
        self.geographic_boundary_line_in_utm = QgsGeometry(self.geographic_boundary_in_utm.constGet().boundary())
        return super().__post_init__()

    def build_spacing_dict(self):
        return {s: 40*s for s in [5, 10, 25, 50, 100, 250]}
    
    def build_coordinate_grid_dict(self) -> Dict[GridTypes, List[Tuple[Union[UTM], Union[UTM]]]]:
        top_grid = UTM.generate_range(
            start=self.x_min,
            end=self.x_max,
            step=self.grid_spacing,
            grid_spacing=self.grid_spacing, 
            coord_type='x',
            fixed_coord=self.y_max,
            coord_display='easting',
        )
        bottom_grid = UTM.generate_range(
            start=self.x_min,
            end=self.x_max,
            step=self.grid_spacing,
            grid_spacing=self.grid_spacing, 
            coord_type='x',
            fixed_coord=self.y_min,
            coord_display='easting',
        )
        left_grid = UTM.generate_range(
            start=self.y_min,
            end=self.y_max,
            step=self.grid_spacing,
            grid_spacing=self.grid_spacing, 
            coord_type='y',
            fixed_coord=self.x_min,
            coord_display='northing',
        )
        right_grid = UTM.generate_range(
            start=self.y_min,
            end=self.y_max,
            step=self.grid_spacing,
            grid_spacing=self.grid_spacing, 
            coord_type='y',
            fixed_coord=self.x_max,
            coord_display='northing',
        )
        return {
            GridTypes.TOP: top_grid,
            GridTypes.BOTTOM: bottom_grid,
            GridTypes.LEFT: left_grid,
            GridTypes.RIGHT: right_grid,
        }
        
    def get_coordinates_on_geographic_boundary_line(self, x, y):
        point = QgsGeometry(QgsPoint(x, y))
        return tuple(self.geographic_boundary_line_in_utm.nearestPoint(point).asPoint())
            
    
    def build_grid_label_dict(self) -> Dict[GridTypes, List[UTMGridLabelItem]]:
        return {
            key: list(
                map(
                    lambda x: UTMGridLabelItem(
                        str(x[1]),
                        scale=self.scale_denominator,
                        font_config=self.font_config,
                        coordinates=self.get_coordinates_on_geographic_boundary_line(*x[1].get_coordinates()),
                        crs=self.utm_crs,
                        destination_crs=self.utm_crs,
                        dpi=self.dpi,
                        grid_item_type=key,
                        is_first_item=x[0]==0,
                    ),
                    enumerate(coordinate_list)
                )
            ) for key, coordinate_list in self.coordinate_grid_dict.items()
        }
    
    def build_rule_based_labelling(self, parent_rule: Optional[QgsRuleBasedLabeling.Rule] = None) -> QgsRuleBasedLabeling.Rule:
        root_rule = QgsRuleBasedLabeling.Rule(QgsPalLayerSettings()) if parent_rule is None else parent_rule
        for grid_type, labelList in self.grid_label_dict.items():
            for idx, grid_label_item in enumerate(labelList, start=1):
                meter_and_northing_rule_list = self.create_meter_and_northing_label(idx, grid_label_item)
                if meter_and_northing_rule_list is not None:
                    for new_rule in meter_and_northing_rule_list:
                        root_rule.appendChild(new_rule)
                new_rule = grid_label_item.build_grid_item_label(
                    desc=f"UTM{grid_type} {idx}"
                )
                root_rule.appendChild(new_rule)
        return root_rule
    
    def create_meter_and_northing_label(self, idx, base_grid_item: UTMGridLabelItem):
        if idx > 1 or base_grid_item.grid_item_type not in [GridTypes.BOTTOM, GridTypes.LEFT]:
            return None
        if base_grid_item.grid_item_type == GridTypes.LEFT:
            base_grid_item.displace_item(
                DisplacementVector(- self.scale_denominator * 4.1, 0.0)
            )
        output_label_list = []
        grid_type = base_grid_item.grid_item_type
        text_size = base_grid_item.get_text_size_in_terrain_units()
        meter_anchor_x = base_grid_item.anchor_point.x() + text_size.width()
        meter_anchor_y = base_grid_item.anchor_point.y() + 0.6 * base_grid_item.font_config.size * self.scale_denominator # (60% do tamanho da fonte na escala)
        meter_label = build_rule_label(
            text=str("m"),
            desc=f"UTM{grid_type} {idx} m",
            anchor_x=meter_anchor_x,
            anchor_y=meter_anchor_y,
            font=base_grid_item.font_config.name,
            font_size=base_grid_item.font_config.size * 0.5,
            font_color=base_grid_item.font_config.color,
        )
        output_label_list.append(meter_label)
        easting_token = "N" if grid_type == GridTypes.LEFT else "E"
        easting_label  = build_rule_label(
            text=f"{easting_token}",
            desc=f"UTM{grid_type} {idx} {easting_token}",
            anchor_x=meter_anchor_x + 0.45 * self.font_config.size * self.scale_denominator, # (45% do tamanho da fonte na escala),
            anchor_y=base_grid_item.anchor_point.y(),
            font=base_grid_item.font_config.name,
            font_size=base_grid_item.font_config.size,
            font_color=base_grid_item.font_config.color,
        )
        output_label_list.append(easting_label)
        return output_label_list
        
            
    
    def get_displacement_dict(self) -> Dict[GridTypes, DisplacementVector]:
        return {
            GridTypes.TOP: DisplacementVector(0, 0),
            GridTypes.BOTTOM: DisplacementVector(0, 0),
            GridTypes.LEFT: DisplacementVector(0, 0),
            GridTypes.RIGHT: DisplacementVector(0, 0),
        }
