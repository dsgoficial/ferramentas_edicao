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

from ferramentas_edicao.modules.gridGenerator.core.types import GridTypes
from ferramentas_edicao.modules.gridGenerator.core.config import DisplacementVector
from .base_grid_item import GridLabelItem

class UTMGridLabelItem(GridLabelItem):

    def get_anchor_displacement(self) -> DisplacementVector:
        """
        Returns:
            DisplacementVector: displacement vector in meters
        """
        text_size = self.get_text_size_in_terrain_units()
        # Text dimensions in terrain units
        width = text_size.width()
        height = text_size.height()
        # conversion_factor = self.scale * self.font_config.size * 3/5 / 1.5
        displacement_dict = {
            GridTypes.TOP: DisplacementVector(-width/2 + 1 * self.scale, 1.8 * self.scale),
            GridTypes.BOTTOM: DisplacementVector(-width/2 + 1.1 * self.scale, - height - 1.35 * self.scale),
            GridTypes.RIGHT: DisplacementVector(2.5 * self.scale, -height/2 + 0.35 * self.scale),
            GridTypes.LEFT: DisplacementVector(- 2 * self.scale - width, -height/2 + 0.5 * self.scale),
        }
        return displacement_dict[self.grid_item_type]
