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

Base label item implementation for grid labeling.
"""

from dataclasses import dataclass
from typing import List, Optional, Tuple, Type, Union
try:
    from typing import Self
except ImportError:
    from typing_extensions import Self

from qgis.core import (
    Qgis,
    QgsCoordinateReferenceSystem,
    QgsCoordinateTransform,
    QgsMapUnitScale,
    QgsPalLayerSettings,
    QgsPoint,
    QgsProject,
    QgsPropertyCollection,
    QgsRectangle,
    QgsRenderContext,
    QgsRuleBasedLabeling,
    QgsTextFormat,
    QgsTextRenderer,
    QgsUnitTypes,
)
from qgis.utils import iface
from qgis.PyQt.QtCore import QSizeF

from ferramentas_edicao.modules.gridGenerator.core.types import GridTypes
from ferramentas_edicao.modules.gridGenerator.core.config import FontConfig, DisplacementVector
from ferramentas_edicao.modules.gridGenerator.utils.qgis_utils import build_rule_label
from ferramentas_edicao.modules.gridGenerator.utils.lat_lon_coordinate_utils import DMS
from ferramentas_edicao.modules.gridGenerator.utils.utm_coordinate_utils import UTM

@dataclass
class GridLabelItem:
    text: str
    scale: int
    font_config: FontConfig
    coordinates: Tuple[Union[DMS, UTM]]
    crs: QgsCoordinateReferenceSystem
    destination_crs: QgsCoordinateReferenceSystem
    grid_item_type: GridTypes
    render_context: QgsRenderContext
    is_first_item: bool = False
    dpi: float = 96.0
    
    def __post_init__(self):
        self.transform = QgsCoordinateTransform(
            self.crs,
            self.destination_crs,
            QgsProject.instance(),
        )
        self.real_font_size = self.font_config.size * 2.8346
        self.anchor_displacement: DisplacementVector = self.get_anchor_displacement()
        self.anchor_point: QgsPoint = self.build_placement_anchor_point()
        self.bounding_rectangle: QgsRectangle = self.get_bounding_rectangle()
    
    def get_anchor_displacement(self) -> DisplacementVector:
        """
        Returns:
            DisplacementVector: displacement vector in meters
        """
        dx = list(
            map(
                lambda i: i * self.scale * self.font_config.size / 1.5,
                [2.0, -11.0, -8.0, -3.6]
            )
        )
        dy = list(
            map(
                lambda i: i * self.scale * self.font_config.size / 1.5,
                [1.7, -3.8, -0.8, -0.8]
            )
        )
        displacement_dict = {
            GridTypes.TOP: DisplacementVector(dx[3], dy[0]) if not self.is_first_item else DisplacementVector(dx[2], dy[0]),
            GridTypes.BOTTOM: DisplacementVector(dx[3], dy[1]),
            GridTypes.RIGHT: DisplacementVector(dx[0], dy[2]),
            GridTypes.LEFT: DisplacementVector(dx[1], dy[3]),
        }
        return displacement_dict[self.grid_item_type]
        
    
    def build_placement_anchor_point(self) -> QgsPoint:
        x, y = self.coordinates
        pgrid = QgsPoint(float(x), float(y))
        pgrid.transform(self.transform)
        pgrid = self.anchor_displacement.apply_displacement(pgrid)
        if self.destination_crs.isGeographic() == True:
            pgrid.transform(self.transform, Qgis.TransformDirection.Reverse)
        return pgrid
    
    def get_text_size_in_terrain_units(self) -> QSizeF:
        text_format = QgsTextFormat()
        text_format.setFont(self.font_config.name)
        text_format.setSize(self.real_font_size * 1.7)
        text_format.setSizeUnit(QgsUnitTypes.RenderPoints)
        
        # 3. Let QGIS do the conversion (this is what actually renders)
        width_render_units = QgsTextRenderer.textWidth(self.render_context, text_format, [self.text])
        height_render_units = QgsTextRenderer.textHeight(self.render_context, text_format, [self.text])
        
        # 4. Convert from render units to map units using QGIS's converter
        width_map_units = self.render_context.convertToMapUnits(
            width_render_units, 
            QgsUnitTypes.RenderMetersInMapUnits,
            QgsMapUnitScale(self.scale * 1000),
        )
        height_map_units = self.render_context.convertToMapUnits(
            height_render_units, 
            QgsUnitTypes.RenderMetersInMapUnits,
            QgsMapUnitScale(self.scale * 1000),
        )
        
        return QSizeF(width_map_units, height_map_units)
    
    def get_bounding_rectangle(self) -> QgsRectangle:
        """
        Create a bounding rectangle for the label based on text size and anchor point.
        Anchored at lower-left corner as per QGIS label placement.
        
        Returns:
            QgsRectangle: The bounding rectangle of the label in terrain units
        """
        text_size = self.get_text_size_in_terrain_units()
        # Text dimensions in terrain units
        width = text_size.width()
        height = text_size.height()
        
        # Get anchor point coordinates (already in terrain units)
        x = self.anchor_point.x()
        y = self.anchor_point.y()
        
        # Create rectangle with anchor at lower-left corner
        return QgsRectangle(
            x,           # xmin (left edge)
            y,           # ymin (bottom edge) 
            x + width,   # xmax (right edge)
            y + height   # ymax (top edge)
        )
    
    def get_bounding_rectangle_with_placement(self, placement: str = 'center') -> QgsRectangle:
        """
        Create a bounding rectangle with specific label placement.
        
        Args:
            placement: 'center', 'top-left', 'top-right', 'bottom-left', 'bottom-right', etc.
            
        Returns:
            QgsRectangle: The bounding rectangle of the label
        """
        try:
            text_size = self.get_text_size_with_qgs_utils()
        except:
            text_size = self.get_text_size_in_map_units()
        
        width = text_size.width()
        height = text_size.height()
        
        x = self.anchor_point.x()
        y = self.anchor_point.y()
        
        # Adjust rectangle based on placement
        if placement == 'center':
            xmin, ymin = x - width/2, y - height/2
        elif placement == 'top-left':
            xmin, ymin = x, y - height
        elif placement == 'top-right':
            xmin, ymin = x - width, y - height
        elif placement == 'bottom-left':
            xmin, ymin = x, y
        elif placement == 'bottom-right':
            xmin, ymin = x - width, y
        elif placement == 'top-center':
            xmin, ymin = x - width/2, y - height
        elif placement == 'bottom-center':
            xmin, ymin = x - width/2, y
        elif placement == 'left-center':
            xmin, ymin = x, y - height/2
        elif placement == 'right-center':
            xmin, ymin = x - width, y - height/2
        else:  # default to center
            xmin, ymin = x - width/2, y - height/2
            
        return QgsRectangle(xmin, ymin, xmin + width, ymin + height)
    
    def overlaps(self, other_label: Type[Self]) -> bool:
        """
        Tests if the other label overlaps in any direction.

        Args:
            other_label (GridLabelItem): The other label to test against.

        Returns:
            bool: True if the labels overlap
        """
        this_rectangle = self.get_bounding_rectangle()
        other_rectangle = other_label.get_bounding_rectangle()
        return this_rectangle.intersects(other_rectangle)
    
    def displace_item(self, displacement_vector: DisplacementVector) -> None:
        self.anchor_point = displacement_vector.apply_displacement(self.anchor_point)
        self.bounding_rectangle = self.get_bounding_rectangle()
    
    def resolve_overlap(self, label_list: List[Type[Self]], current_idx: int) -> None:
        """
        Resolve overlaps by automatically determining displacement direction and amount.
        Top labels move upward, all others move downward.
        
        Args:
            label_list (List[GridLabelItem]): List of other labels to check against
        """
        # Check for overlaps with other labels
        overlapping_labels = []
        for other_label in label_list:
            if self.overlaps(other_label):
                overlapping_labels.append(other_label)
        
        # If no overlaps, no need to move
        if not overlapping_labels:
            return
        
        # Calculate displacement based on grid item type
        if self.grid_item_type == GridTypes.TOP or (self.grid_item_type == GridTypes.RIGHT and current_idx == 0):
            # TOP labels move upward
            displacement_y = self._calculate_upward_displacement(overlapping_labels)
            new_y = self.anchor_point.y() + displacement_y
            self.anchor_point = QgsPoint(self.anchor_point.x(), new_y)
        else:
            # All other labels (BOTTOM, LEFT, RIGHT) move downward
            displacement_y = self._calculate_downward_displacement(overlapping_labels)
            new_y = self.anchor_point.y() - displacement_y
            self.anchor_point = QgsPoint(self.anchor_point.x(), new_y)
        
        # Update bounding rectangle after anchor point changes
        self.bounding_rectangle = self.get_bounding_rectangle()

    def _calculate_upward_displacement(self, overlapping_labels: List[Type[Self]]) -> float:
        """
        Calculate how much to move upward to clear all overlapping labels.
        
        Args:
            overlapping_labels: List of labels that overlap with this one
            
        Returns:
            float: Distance to move upward in terrain units
        """
        if not overlapping_labels:
            return 0.0
        
        # Find the highest point of all overlapping labels
        max_top = max(label.bounding_rectangle.yMaximum() for label in overlapping_labels)
        
        # Move this label so its bottom is above the highest overlapping label
        # Add small padding to ensure clear separation
        padding = self.get_text_size_in_terrain_units().height() * 0.01  # 10% of text height as padding
        required_bottom = max_top + padding
        
        # Calculate displacement needed
        current_bottom = self.bounding_rectangle.yMinimum()
        displacement = required_bottom - current_bottom
        
        return max(0.0, displacement)

    def _calculate_downward_displacement(self, overlapping_labels: List[Type[Self]]) -> float:
        """
        Calculate how much to move downward to clear all overlapping labels.
        
        Args:
            overlapping_labels: List of labels that overlap with this one
            
        Returns:
            float: Distance to move downward in terrain units
        """
        if not overlapping_labels:
            return 0.0
        
        # Find the lowest point of all overlapping labels
        min_bottom = min(label.bounding_rectangle.yMinimum() for label in overlapping_labels)
        
        # Move this label so its top is below the lowest overlapping label
        # Add small padding to ensure clear separation
        padding = self.get_text_size_in_terrain_units().height() * 0.01  # 10% of text height as padding
        required_top = min_bottom - padding
        
        # Calculate displacement needed
        current_top = self.bounding_rectangle.yMaximum()
        displacement = current_top - required_top - self.scale * 0.7
        
        return max(0.0, displacement)
    
    def build_grid_item_label(self, desc) -> QgsRuleBasedLabeling.Rule:
        return build_rule_label(
            text=self.text,
            desc=desc,
            anchor_x=self.anchor_point.x(),
            anchor_y=self.anchor_point.y(),
            font=self.font_config.name,
            font_size=self.font_config.size,
            font_color=self.font_config.color,
        )
