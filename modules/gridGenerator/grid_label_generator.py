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
from collections import defaultdict
from dataclasses import dataclass
from math import ceil, floor
try:
    from typing import Self
except ImportError:
    from typing_extensions import Self
from typing import Dict, List, Optional, Tuple, Type, Union

from ferramentas_edicao.modules.gridGenerator.lat_lon_coordinate_utils import DMS
from ferramentas_edicao.modules.gridGenerator.utils import get_closest_value_key
from ferramentas_edicao.modules.gridGenerator.utm_coordinate_utils import UTM
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
    QgsUnitTypes,
    QgsFeature,
    QgsMapUnitScale,
)
from qgis.utils import iface
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
class DisplacementVector:
    dx: float
    dy: float
    
@dataclass
class GridLabelItem:
    text: str
    scale: int
    font_config: FontConfig
    coordinates: Tuple[Union[DMS, UTM]]
    crs: QgsCoordinateReferenceSystem
    destination_crs: QgsCoordinateReferenceSystem
    grid_item_type: GridTypes
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
        pgrid = QgsPoint(pgrid.x() + self.anchor_displacement.dx, pgrid.y() + self.anchor_displacement.dy)
        if self.destination_crs.isGeographic() == True:
            pgrid.transform(self.transform, Qgis.TransformDirection.Reverse)
        return pgrid
    
    def get_text_size_in_terrain_units(self) -> QSizeF:
        text_format = QgsTextFormat()
        text_format.setFont(self.font_config.name)
        text_format.setSize(self.real_font_size * 1.7)
        text_format.setSizeUnit(QgsUnitTypes.RenderPoints)
        
        map_settings = iface.mapCanvas().mapSettings()
        render_context = QgsRenderContext.fromMapSettings(map_settings)
        render_context.setScaleFactor(15)
        render_context.setRendererScale(self.scale * 1000)  # Your scale to denominator
        
        # 3. Let QGIS do the conversion (this is what actually renders)
        width_render_units = QgsTextRenderer.textWidth(render_context, text_format, [self.text])
        height_render_units = QgsTextRenderer.textHeight(render_context, text_format, [self.text])
        
        # 4. Convert from render units to map units using QGIS's converter
        width_map_units = render_context.convertToMapUnits(
            width_render_units, 
            QgsUnitTypes.RenderMetersInMapUnits,
            QgsMapUnitScale(self.scale * 1000),
        )
        height_map_units = render_context.convertToMapUnits(
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
    
    def resolve_overlap(self, label_list: List[Type[Self]], displacement_vector: DisplacementVector) -> None:
        """
        Resolve overlaps by applying displacement to anchor point.
        
        Args:
            label_list (List[GridLabelItem]): List of other labels to check against
            displacement_vector (Tuple[float, float]): Displacement vector (x, y) to apply
        """
        if displacement_vector.dx == 0 and displacement_vector.dy == 0:
            return
        
        # Check for vertical overlaps and apply y displacement
        if displacement_vector.dy > 0:
            for other_label in label_list:
                if self.overlaps_vertically(other_label):
                    # Update y coordinate of anchor point
                    new_y = self.anchor_point.y() + displacement_vector.dy
                    self.anchor_point = QgsPoint(self.anchor_point.x(), new_y)
                    break  # Apply displacement only once per direction
        
        # Check for horizontal overlaps and apply x displacement
        if displacement_vector.dx > 0:
            for other_label in label_list:
                if self.overlaps_horizontally(other_label):
                    # Update x coordinate of anchor point
                    new_x = self.anchor_point.x() + displacement_vector.dx
                    self.anchor_point = QgsPoint(new_x, self.anchor_point.y())
                    break  # Apply displacement only once per direction
        
        # Update bounding rectangle after anchor point changes
        self.bounding_rectangle = self.get_bounding_rectangle()
    
    def build_grid_item_label(self, desc) -> QgsRuleBasedLabeling.Rule:
        settings = QgsPalLayerSettings()
        settings.placement = (
            1 if Qgis.QGIS_VERSION_INT <= 32600 else Qgis.LabelPlacement.OverPoint
        )
        settings.isExpression = True
        textprop = QgsTextFormat()
        textprop.setColor(self.font_config.color)
        textprop.setSizeUnit(
            4 if Qgis.QGIS_VERSION_INT <= 32600 else Qgis.RenderUnit.Points
        )
        textprop.setSize(self.font_config.size * 2.8346)
        textprop.setFont(self.font_config.name)
        textprop.setLineHeight(1)
        settings.setFormat(textprop)
        settings.fieldName = str("'") + fr"{self.text}".replace("'","\'") + str("'")

        # Label Position
        settings.geometryGeneratorEnabled = True
        settings.geometryGenerator = f"make_point({self.anchor_point.x()}, {self.anchor_point.y()})"
        datadefined = QgsPropertyCollection()
        datadefined.property(20).setExpressionString("True")
        datadefined.property(20).setActive(True)
        datadefined.property(15).setExpressionString("True")
        datadefined.property(15).setActive(True)
        datadefined.property(77).setExpressionString("2")
        datadefined.property(77).setActive(True)

        # Creating and Activating Labeling Rule
        settings.setDataDefinedProperties(datadefined)
        rule = QgsRuleBasedLabeling.Rule(settings)
        rule.setDescription(desc)
        rule.setActive(True)

        return rule

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
            GridTypes.TOP: DisplacementVector(-width/2 + 1 * self.scale, 1 * self.scale),
            GridTypes.BOTTOM: DisplacementVector(-width/2 + 1 * self.scale, - height - 1 * self.scale),
            GridTypes.RIGHT: DisplacementVector(1 * self.scale, -height/2),
            GridTypes.LEFT: DisplacementVector(- 1 * self.scale - width, -height/2),
        }
        return displacement_dict[self.grid_item_type]

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
    
    def resolve_overlaps(self, other_grid: Self, displacement_dict: Dict[GridTypes, DisplacementVector]):
        pass
    
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
        
                
        
        

@dataclass
class UTMGrid(AbstractGrid):
    geographic_boundary_in_utm: QgsGeometry
    
    def __post_init__(self):
        self.geographic_boundary_line_in_utm = QgsGeometry(self.geographic_boundary_in_utm.constGet().boundary())
        return super().__post_init__()

    def build_spacing_dict(self):
        return {s: 40*s for s in [5, 10, 25, 50, 100, 250]}
    
    def build_coordinate_grid_dict(self) -> Dict[GridTypes, List[Tuple[Union[DMS, UTM], Union[DMS, UTM]]]]:
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
            
    
    def build_grid_label_dict(self) -> Dict[GridTypes, List[GridLabelItem]]:
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
                new_rule = grid_label_item.build_grid_item_label(
                    desc=f"UTM{grid_type} {idx}"
                )
                root_rule.appendChild(new_rule)
        return root_rule
    
    def get_displacement_dict(self) -> Dict[GridTypes, DisplacementVector]:
        return {
            GridTypes.TOP: DisplacementVector(0, 0),
            GridTypes.BOTTOM: DisplacementVector(0, 0),
            GridTypes.LEFT: DisplacementVector(0, 0),
            GridTypes.RIGHT: DisplacementVector(0, 0),
        }

@dataclass
class LatLonGrid(AbstractGrid):
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
    
    def build_coordinate_grid_dict(self) -> Dict[GridTypes, List[Tuple[Union[DMS, UTM], Union[DMS, UTM]]]]:
        top_grid, bottom_grid, left_grid, right_grid = [], [], [], []
        for coord in DMS.generate_range(self.x_min, self.x_max, self.grid_spacing, 'longitude', include_end=True):
            top_grid.append((coord, DMS(self.y_max)))
            bottom_grid.append((coord, DMS(self.y_min)))
        for coord in DMS.generate_range(self.y_min, self.y_max, self.grid_spacing, 'latitude', include_end=True):
            left_grid.append((DMS(self.x_min), coord))
            right_grid.append((DMS(self.x_max), coord))
        return {
            GridTypes.TOP: top_grid,
            GridTypes.BOTTOM: bottom_grid,
            GridTypes.LEFT: left_grid,
            GridTypes.RIGHT: right_grid,
        }
    
    def build_grid_label_dict(self) -> Dict[GridTypes, List[GridLabelItem]]:
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
        

@dataclass
class LabellingEngine:
    geographic_boundary_geometry: QgsGeometry
    scale_denominator: int
    font_config: FontConfig
    utm_crs: QgsCoordinateReferenceSystem
    dpi: int
    
    def __post_init__(self):
        self.coordinate_transformer = QgsCoordinateTransform(
            QgsCoordinateReferenceSystem("EPSG:4326"),
            self.utm_crs,
            QgsProject.instance()
        )
        geographic_bounds_in_lat_long = QgsGeometry(self.geographic_boundary_geometry)
        geographic_bounds_in_lat_long.transform(self.coordinate_transformer, Qgis.TransformDirection.Reverse)
        geographic_bounds_in_lat_long_bbox: QgsRectangle = geographic_bounds_in_lat_long.boundingBox()
        self.lat_lon_grid: LatLonGrid = LatLonGrid(
            scale_denominator=self.scale_denominator,
            font_config=self.font_config,
            utm_crs=self.utm_crs,
            x_min=geographic_bounds_in_lat_long_bbox.xMinimum(),
            x_max=geographic_bounds_in_lat_long_bbox.xMaximum(),
            y_min=geographic_bounds_in_lat_long_bbox.yMinimum(),
            y_max=geographic_bounds_in_lat_long_bbox.yMaximum(),
            dpi=self.dpi,
        )
        geographic_boundary_bbox = self.geographic_boundary_geometry.boundingBox()
        self.utm_font_config = FontConfig(
            name=self.font_config.name,
            size=self.font_config.size * 5 / 3, # feito para manter a compatibilidade com o código do João Felipe
            color=self.font_config.color,
        )
        self.utm_grid: UTMGrid = UTMGrid(
            scale_denominator=self.scale_denominator,
            font_config=self.utm_font_config,
            utm_crs=self.utm_crs,
            x_min=geographic_boundary_bbox.xMinimum(),
            x_max=geographic_boundary_bbox.xMaximum(),
            y_min=geographic_boundary_bbox.yMinimum(),
            y_max=geographic_boundary_bbox.yMaximum(),
            dpi=self.dpi,
            geographic_boundary_in_utm=self.geographic_boundary_geometry,
        )
    
    def build_label_layer(self, geographic_boundary_layer: QgsVectorLayer) -> None:
        properties = {
            "style": "no",             # No fill
            "outline_color": "black",  # Optional: keep outline visible
            "outline_width": "0.05"
        }
        grid_symb = QgsFillSymbol.createSimple(properties)
        # grid_symb.deleteSymbolLayer(0)
        # Creating Rule Based Renderer (Rule For The Selected Feature, Root Rule)
        symb_new = QgsRuleBasedRenderer.Rule(grid_symb)
        symb_new.setFilterExpression('id = 1')
        symb_new.setLabel("layer")

        # Appending rules to symbol root rule
        root_symbol_rule = QgsRuleBasedRenderer.Rule(None)
        root_symbol_rule.setFilterExpression("")
        root_symbol_rule.appendChild(symb_new)

        # Applying New Renderer
        render_base = QgsRuleBasedRenderer(root_symbol_rule)
        geographic_boundary_layer.setRenderer(render_base)

        """Rendering outside area"""
        # Duplicating original layer
        outside_bound_layer = get_outside_boundary_layer(geographic_boundary_layer)

        # Creating Rule Based Renderer (Rule For The Other Features)
        properties = {"color": "white"}
        ext_grid_symb = QgsFillSymbol.createSimple(properties)
        symb_out = QgsSimpleFillSymbolLayer()
        symb_out.setFillColor(QColor("white"))
        symb_out.setStrokeWidth(0)
        ext_grid_symb.changeSymbolLayer(0, symb_out)
        rule_out = QgsRuleBasedRenderer.Rule(ext_grid_symb)
        rule_out.setFilterExpression('id = 1')
        rule_out.setLabel("outside")

        root_symbol_rule_out = QgsRuleBasedRenderer.Rule(None)
        root_symbol_rule_out.appendChild(rule_out)

        render_base_out = QgsRuleBasedRenderer(root_symbol_rule_out)
        new_renderer = QgsInvertedPolygonRenderer.convertFromRenderer(render_base_out)
        outside_bound_layer.setRenderer(new_renderer)
        root_rule = self.lat_lon_grid.build_rule_based_labelling()
        # self.lat_lon_grid.build_label_bounding_boxes_layer("lat_long_boxes")
        self.utm_grid.build_rule_based_labelling(parent_rule=root_rule)
        # self.utm_grid.build_label_bounding_boxes_layer("utm_boxes")
        
        rules = QgsRuleBasedLabeling(root_rule)
        geographic_boundary_layer.setLabeling(rules)
        geographic_boundary_layer.setLabelsEnabled(True)


        geographic_boundary_layer.triggerRepaint()
    

def get_outside_boundary_layer(layer_bound: QgsVectorLayer) -> None:
    layers_names = [i.name() for i in QgsProject.instance().mapLayers().values()]
    if (layer_bound.name() + "_outside") not in layers_names:
        outside_bound_layer = QgsVectorLayer(
            layer_bound.source(),
            layer_bound.name() + "_outside",
            layer_bound.providerType(),
        )
        if layer_bound.providerType() == "memory":
            feats = [feat for feat in layer_bound.getFeatures()]
            outside_bound_layer_data = outside_bound_layer.dataProvider()
            outside_bound_layer_data.addFeatures(feats)
        QgsProject.instance().addMapLayer(outside_bound_layer)
    else:
        outside_bound_layer = QgsProject.instance().mapLayersByName(
            layer_bound.name() + "_outside"
        )[0]
        
    return outside_bound_layer
