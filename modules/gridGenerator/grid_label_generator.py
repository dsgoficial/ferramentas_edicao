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
from abc import ABC, abstractmethod
from builtins import abs, range, round, str
from dataclasses import dataclass
from math import ceil, floor
from typing import Dict, List, Self, Tuple, Type, Union

from modules.gridGenerator.lat_lon_coordinate_utils import DMS
from modules.gridGenerator.utils import get_closest_value_key
from modules.gridGenerator.utm_coordinate_utils import UTM
from qgis.core import (
    Qgis,
    QgsCoordinateReferenceSystem,
    QgsCoordinateTransform,
    QgsFillSymbol,
    QgsGeometry,
    QgsGeometryGeneratorSymbolLayer,
    QgsInvertedPolygonRenderer,
    QgsLineSymbol,
    QgsMapLayer,
    QgsPalLayerSettings,
    QgsPoint,
    QgsProject,
    QgsPropertyCollection,
    QgsRenderContext,
    QgsRuleBasedLabeling,
    QgsRuleBasedRenderer,
    QgsSimpleFillSymbolLayer,
    QgsSingleSymbolRenderer,
    QgsSymbolLayerId,
    QgsSymbolLayerReference,
    QgsTextFormat,
    QgsVectorLayer,
    QgsVectorLayerSimpleLabeling,
    QgsRectangle,
    QgsFontUtils,
    QgsTextRenderer,
)
from qgis.PyQt.QtCore import QObject, QSizeF
from qgis.PyQt.QtGui import QColor, QFont, QFontMetricsF

from enum import Enum, unique

@unique
class GridTypes(str, Enum):
    TOP = "top"
    BOTTOM = "bottom"
    LEFT = "left"
    RIGHT = "right"

@dataclass
class FontConfig:
    name: QFont
    size: float
    color: QColor

@dataclass
class GridLineConfig:
    width: float
    buffer_width: float

@dataclass
class GridConfig:
    font: FontConfig
    grid_line_config: GridLineConfig
    
@dataclass
class GridLabelItem:
    text: str
    scale: int
    font: FontConfig
    coordinates: Tuple[Union[DMS, UTM]]
    crs: QgsCoordinateReferenceSystem
    destination_crs: QgsCoordinateReferenceSystem
    dpi: float = 96.0
    
    def __post_init__(self):
        self.transform = QgsCoordinateTransform(
            QgsCoordinateReferenceSystem("EPSG:4326"),
            self.crs,
            QgsProject.instance(),
        )
        self.anchor_point: QgsPoint = self.build_placement_anchor_point()
        self.bounding_rectangle: QgsRectangle = self.get_bounding_rectangle()
    
    def build_placement_anchor_point(self) -> QgsPoint:
        x, y = self.coordinates
        pgrid = QgsPoint(float(x), float(y))
        pgrid.transform(self.transform)
        if self.destination_crs.isGeographic() == True:
            pgrid.transform(self.transform, direction=Qgis.TransformDirection.Reverse)
        return pgrid
    
    def get_text_size_in_map_units(self) -> QSizeF:
        """
        Calculate the text size in map units based on font size and scale.
        
        Returns:
            QSizeF: Width and height of the text in map units
        """
        # Create QFont object from FontConfig
        font = QFont(self.font.name)
        font.setPointSizeF(self.font.size)
        
        # Use QFontMetricsF to get text dimensions in pixels
        font_metrics = QFontMetricsF(font)
        text_width_pixels = font_metrics.horizontalAdvance(self.text)
        text_height_pixels = font_metrics.height()
        
        # Convert pixels to map units using the label's DPI
        # Standard conversion: 1 point = 1/72 inch
        points_per_inch = 72.0
        
        # Convert pixels to map units using scale
        # Map units per pixel = scale / (dpi * inches_per_meter)
        inches_per_meter = 39.3701
        map_units_per_pixel = self.scale / (self.dpi * inches_per_meter)
        
        text_width_map_units = text_width_pixels * map_units_per_pixel
        text_height_map_units = text_height_pixels * map_units_per_pixel
        
        return QSizeF(text_width_map_units, text_height_map_units)
    
    def get_text_size_with_qgs_utils(self) -> QSizeF:
        """
        Alternative method using QGIS utilities for more accurate text sizing.
        
        Returns:
            QSizeF: Width and height of the text in map units
        """
        # Create a QgsTextFormat from FontConfig
        text_format = QgsTextFormat()
        text_format.setFont(self.font.name)
        text_format.setSize(self.font.size)
        text_format.setSizeUnit(Qgis.RenderUnit.Points)
        text_format.setColor(self.font.color)
        
        # Create a render context for calculations
        render_context = QgsRenderContext()
        render_context.setScaleFactor(1.0)
        render_context.setRendererScale(self.scale)
        
        # Calculate text size using QgsTextRenderer
        text_width = QgsTextRenderer.textWidth(render_context, text_format, [self.text])
        text_height = QgsTextRenderer.textHeight(render_context, text_format, [self.text])
        
        return QSizeF(text_width, text_height)
    
    def get_bounding_rectangle(self) -> QgsRectangle:
        """
        Create a bounding rectangle for the label based on text size and anchor point.
        
        Returns:
            QgsRectangle: The bounding rectangle of the label
        """
        try:
            # Try using QGIS utilities first (more accurate)
            text_size = self.get_text_size_with_qgs_utils()
        except:
            # Fallback to manual calculation
            text_size = self.get_text_size_in_map_units()
        
        width = text_size.width()
        height = text_size.height()
        
        # Get anchor point coordinates
        x = self.anchor_point.x()
        y = self.anchor_point.y()
        
        # Create rectangle centered on anchor point
        # You can adjust this based on your label placement strategy
        half_width = width / 2.0
        half_height = height / 2.0
        
        return QgsRectangle(
            x - half_width,  # xmin
            y - half_height,  # ymin
            x + half_width,   # xmax
            y + half_height   # ymax
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
    
    def overlaps_vertically(self, other_label: Type[Self]) -> bool:
        """
        Tests if the other label overlaps vertically.

        Args:
            other_label (GridLabelItem): Tests if the other label overlaps vertically.

        Returns:
            bool: True if the other label overlaps vertically
        """
        rect1 = self.bounding_rectangle
        rect2 = other_label.bounding_rectangle
        
        # Check if there's vertical overlap
        # Rectangles overlap vertically if their Y ranges intersect
        return not (rect1.yMaximum() < rect2.yMinimum() or rect2.yMaximum() < rect1.yMinimum())
    
    def overlaps_horizontally(self, other_label: 'GridLabelItem') -> bool:
        """
        Tests if the other label overlaps horizontally.

        Args:
            other_label (GridLabelItem): Tests if the other label overlaps horizontally.

        Returns:
            bool: True if the other label overlaps horizontally
        """
        rect1 = self.bounding_rectangle
        rect2 = other_label.bounding_rectangle
        
        # Check if there's horizontal overlap
        # Rectangles overlap horizontally if their X ranges intersect
        return not (rect1.xMaximum() < rect2.xMinimum() or rect2.xMaximum() < rect1.xMinimum())
    
    def overlaps(self, other_label: Type[Self]) -> bool:
        """
        Tests if the other label overlaps in any direction.

        Args:
            other_label (GridLabelItem): The other label to test against.

        Returns:
            bool: True if the labels overlap
        """
        return self.overlaps_horizontally(other_label) and self.overlaps_vertically(other_label)
    
    def resolve_overlap(self, label_list: List[Type[Self]], displacement_vector: Tuple[float, float]) -> None:
        """
        Resolve overlaps by applying displacement to anchor point.
        
        Args:
            label_list (List[GridLabelItem]): List of other labels to check against
            displacement_vector (Tuple[float, float]): Displacement vector (x, y) to apply
        """
        x_displacement, y_displacement = displacement_vector
        if x_displacement == 0 and y_displacement == 0:
            return
        
        # Check for vertical overlaps and apply y displacement
        if y_displacement > 0:
            for other_label in label_list:
                if self.overlaps_vertically(other_label):
                    # Update y coordinate of anchor point
                    new_y = self.anchor_point.y() + y_displacement
                    self.anchor_point = QgsPoint(self.anchor_point.x(), new_y)
                    break  # Apply displacement only once per direction
        
        # Check for horizontal overlaps and apply x displacement
        if x_displacement > 0:
            for other_label in label_list:
                if self.overlaps_horizontally(other_label):
                    # Update x coordinate of anchor point
                    new_x = self.anchor_point.x() + x_displacement
                    self.anchor_point = QgsPoint(new_x, self.anchor_point.y())
                    break  # Apply displacement only once per direction
        
        # Update bounding rectangle after anchor point changes
        self.bounding_rectangle = self.get_bounding_rectangle()
    

@dataclass
class AbstractGrid(ABC):
    scale_denominator: int
    config: GridConfig
    utm_crs: QgsCoordinateReferenceSystem
    x_min: float
    y_min: float
    x_max: float
    y_max: float
    
    def __post_init__(self):
        self.spacing_dict: Dict[int, Union[DMS, float]] = self.build_spacing_dict()
        self.grid_spacing = self.get_spacing()
        self.coordinate_grid_dict: Dict[GridTypes, Union[DMS, UTM]] = self.build_coordinate_grid_list()
    
    @abstractmethod
    def build_spacing_dict(self) -> Dict[int, Union[DMS, float]]:
        pass
    
    @abstractmethod
    def coordinate_grid_dict(self) -> Dict[GridTypes,Union[DMS, UTM]]:
        pass
    
    def get_spacing(self):
        grid_spacing = self.spacing_dict.get(self.scale_denominator, None)
        if grid_spacing is not None:
            return grid_spacing
        # scale not listed in systematic mapping
        return get_closest_value_key(self.spacing_dict, self.scale_denominator)

@dataclass
class UTMGrid(AbstractGrid):
    def build_spacing_dict(self):
        return {s: 400*s for s in [5, 10, 25, 50, 100, 250]}
    
    def coordinate_grid_dict(self) -> Dict[GridTypes, List[Tuple[Union[DMS, UTM], Union[DMS, UTM]]]]:
        pass

@dataclass
class LatLonGrid(AbstractGrid):
    def build_spacing_dict(self):
        return {
            5: DMS(minutes=1),  # Assumindo 1' para 1:5.000 (não especificado na tabela)
            10: DMS(minutes=1),  # Assumindo 1' para 1:10.000 (não especificado na tabela)
            25: DMS(minutes=2),  # 2' para 1:25.000
            50: DMS(minutes=5),  # 5' para 1:50.000
            100: DMS(minutes=10),  # 10' para 1:100.000
            250: DMS(minutes=20),  # 20' para 1:250.000
        }
    
    def coordinate_grid_dict(self) -> Dict[GridTypes, List[Tuple[Union[DMS, UTM], Union[DMS, UTM]]]]:
        top_grid, bottom_grid, left_grid, right_grid = [], [], [], []
        for coord in DMS.generate_range(self.x_min, self.x_max, self.grid_spacing, 'longitude'):
            top_grid.append((coord, DMS(self.y_max)))
            bottom_grid.append((coord, DMS(self.y_min)))
        for coord in DMS.generate_range(self.y_min, self.y_max, self.grid_spacing, 'latitude'):
            left_grid.append(DMS(self.x_min), coord)
            right_grid.append(DMS(self.x_max), coord)
        return {
            GridTypes.TOP: top_grid,
            GridTypes.BOTTOM: bottom_grid,
            GridTypes.LEFT: left_grid,
            GridTypes.RIGHT: right_grid,
        }

def create_outside_boundary_layer(layer_name: str) -> None:
    pass