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

Lat/Lon grid implementation.
"""

from dataclasses import dataclass
from typing import Dict, List, Optional, Tuple, Union

from qgis.core import (
    QgsPalLayerSettings,
    QgsRuleBasedLabeling,
)

from ferramentas_edicao.modules.gridGenerator.core.types import GridTypes
from ferramentas_edicao.modules.gridGenerator.core.config import DisplacementVector
from ferramentas_edicao.modules.gridGenerator.utils.lat_lon_coordinate_utils import DMS
from .base import AbstractGrid

@dataclass
class LatLonGrid(AbstractGrid):
    x_min: float
    y_min: float
    x_max: float
    y_max: float
    
    def build_spacing_dict(self):
        return {
            5: DMS(minutes=1),  # Assumindo 30'' para 1:5.000 (não especificado na tabela)
            10: DMS(minutes=1),  # Assumindo 1' para 1:10.000 (não especificado na tabela)
            25: DMS(minutes=2),  # 2' para 1:25.000
            50: DMS(minutes=5),  # 5' para 1:50.000
            100: DMS(minutes=10),  # 10' para 1:100.000
            250: DMS(minutes=20),  # 20' para 1:250.000
        }
    
    def get_displacement_dict(self) -> Dict[GridTypes, DisplacementVector]:
        return {
            GridTypes.TOP: DisplacementVector(0, 0),
            GridTypes.BOTTOM: DisplacementVector(0, 0),
            GridTypes.LEFT: DisplacementVector(0, 0),
            GridTypes.RIGHT: DisplacementVector(0, 0),
        }
    
    def build_coordinate_grid_dict(self) -> Dict[GridTypes, List[Tuple[Union[DMS], Union[DMS]]]]:
        # top_grid, bottom_grid, left_grid, right_grid = [], [], [], []
        top_grid = DMS.generate_fixed_grid(DMS(self.x_min, coordinate_type='longitude'), DMS(self.x_max, coordinate_type='longitude'), self.grid_spacing, self.y_max, 'x', include_start=True, include_end=True)
        bottom_grid = DMS.generate_fixed_grid(DMS(self.x_min, coordinate_type='longitude'), DMS(self.x_max, coordinate_type='longitude'), self.grid_spacing, self.y_min, 'x', include_start=True, include_end=True)
        left_grid = DMS.generate_fixed_grid(DMS(self.y_min, coordinate_type='latitude'), DMS(self.y_max, coordinate_type='latitude'), self.grid_spacing, self.x_min, 'y', include_start=True, include_end=True)
        right_grid = DMS.generate_fixed_grid(DMS(self.y_min, coordinate_type='latitude'), DMS(self.y_max, coordinate_type='latitude'), self.grid_spacing, self.x_max, 'y', include_start=True, include_end=True)
        # for coord in DMS.generate_range(self.x_min, self.x_max, self.grid_spacing, 'longitude', include_end=True):
        #     top_grid.append((coord, DMS(self.y_max)))
        #     bottom_grid.append((coord, DMS(self.y_min)))
        # for coord in DMS.generate_range(self.y_min, self.y_max, self.grid_spacing, 'latitude', include_end=True):
        #     left_grid.append((DMS(self.x_min), coord))
        #     right_grid.append((DMS(self.x_max), coord))
        return {
            GridTypes.TOP: top_grid,
            GridTypes.BOTTOM: bottom_grid,
            GridTypes.LEFT: left_grid,
            GridTypes.RIGHT: right_grid,
        }
    
    def build_grid_label_dict(self) -> Dict[GridTypes, List]:
        output_dict = super().build_grid_label_dict()
        output_dict[GridTypes.TOP][0].text += ". GREENWICH"
        return output_dict

    def build_rule_based_labelling(self, parent_rule: Optional[QgsRuleBasedLabeling.Rule] = None) -> QgsRuleBasedLabeling.Rule:
        root_rule = QgsRuleBasedLabeling.Rule(QgsPalLayerSettings()) if parent_rule is None else parent_rule
        for grid_type, labelList in self.grid_label_dict.items():
            for idx, grid_label_item in enumerate(labelList, start=1):
                new_rule = grid_label_item.build_grid_item_label(
                    desc=f"{grid_type} {idx}"
                )
                root_rule.appendChild(new_rule)
        return root_rule
