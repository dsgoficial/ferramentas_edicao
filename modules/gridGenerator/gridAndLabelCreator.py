from builtins import abs, range, round, str
from dataclasses import dataclass
from math import floor
from typing import List, Tuple, Dict, Optional, Union, Any

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
)
from qgis.PyQt.QtCore import QObject
from qgis.PyQt.QtGui import QColor, QFont
import logging


# Constants
EPSG_WGS84 = "EPSG:4326"

# Superscript characters for labeling
SUPERSCRIPT_CHARS = {
    0: "\u2070",
    1: "\u00B9",
    2: "\u00B2",
    3: "\u00B3",
    4: "\u2074",
    5: "\u2075",
    6: "\u2076",
    7: "\u2077",
    8: "\u2078",
    9: "\u2079",
}

# Label direction constants
DIRECTION_UP = "Up"
DIRECTION_BOTTOM = "Bot"
DIRECTION_LEFT = "Left"
DIRECTION_RIGHT = "Right"


@dataclass
class GridConfig:
    """Configuration for grid creation and styling."""

    utm_srid: int
    grid_spacing: float
    geo_number_x: int
    geo_number_y: int
    scale: float
    id_attr: str
    id_value: int


@dataclass
class StyleConfig:
    """Styling configuration for grid lines."""

    linwidth_geo: float
    linwidth_utm: float
    linwidth_buffer_geo: float
    linwidth_buffer_utm: float
    geo_grid_color: QColor
    utm_grid_color: QColor
    geo_grid_buffer_color: QColor
    utm_grid_buffer_color: QColor


@dataclass
class LabelConfig:
    """Configuration for grid labels."""

    font_size: float
    font: QFont
    font_ll: QFont
    ll_color: QColor


@dataclass
class BoundingBoxes:
    """Container for various bounding boxes used in grid creation."""

    utm_extent: Tuple[float, float, float, float]
    geo_extent: Tuple[float, float, float, float]
    oriented_geo_bb: QgsRectangle


class TransformationHelper:
    """Helper class for coordinate transformations."""

    def __init__(self, utm_srid: int):
        """Initialize with specified UTM SRID.

        Args:
            utm_srid: The UTM Spatial Reference ID
        """
        self.utm_srid = utm_srid
        self.ll_to_utm = self._create_transform(EPSG_WGS84, f"EPSG:{utm_srid}")
        self.utm_to_ll = self._create_transform(f"EPSG:{utm_srid}", EPSG_WGS84)

    def _create_transform(self, source: str, target: str) -> QgsCoordinateTransform:
        """Create a coordinate transformation.

        Args:
            source: Source coordinate system
            target: Target coordinate system

        Returns:
            QgsCoordinateTransform: The transformation object
        """
        return QgsCoordinateTransform(
            QgsCoordinateReferenceSystem(source),
            QgsCoordinateReferenceSystem(target),
            QgsProject.instance(),
        )

    def transform_point(self, point: QgsPoint, to_utm: bool = True) -> QgsPoint:
        """Transform a point between coordinate systems.

        Args:
            point: The point to transform
            to_utm: If True, transform from LL to UTM, otherwise UTM to LL

        Returns:
            QgsPoint: The transformed point
        """
        try:
            if to_utm:
                point.transform(self.ll_to_utm)
            else:
                point.transform(self.utm_to_ll)
            return point
        except Exception as e:
            logging.error(f"Transformation error: {e}")
            return point

    def create_line_expression(self, x1: float, y1: float, x2: float, y2: float) -> str:
        """Create a line geometry expression for QGIS.

        Args:
            x1, y1: First point coordinates
            x2, y2: Second point coordinates

        Returns:
            str: The geometry expression string
        """
        return f"transform(make_line(make_point({x1}, {y1}), make_point({x2}, {y2})), 'EPSG:{self.utm_srid}', @map_crs)"


class GeometryHelper:
    """Helper class for geometry operations."""

    @staticmethod
    def create_crossing_lines_geometry(
        transformer: TransformationHelper,
        x_geo: float,
        y_geo: float,
        px: float,
        py: float,
        u: int,
        t: int,
        dx: float,
        dy: float,
        width: float,
        color: QColor,
    ) -> QgsGeometryGeneratorSymbolLayer:
        """Create a line symbol layer with a crossing pattern.

        Args:
            transformer: The transformer to use
            x_geo, y_geo: Base geographic coordinates
            px, py: Spacing in x and y directions
            u, t: Grid position indices
            dx, dy: Offsets for the line
            width: Line width
            color: Line color

        Returns:
            QgsGeometryGeneratorSymbolLayer: The symbol layer
        """
        # Create points
        p1 = QgsPoint(x_geo + px * u, y_geo + py * t)
        p2 = QgsPoint(x_geo + px * u + dx, y_geo + py * t + dy)

        # Transform points
        p1 = transformer.transform_point(p1, to_utm=True)
        p2 = transformer.transform_point(p2, to_utm=True)

        # Create base line symbol
        properties = {"color": color.name()}
        line_temp = QgsLineSymbol.createSimple(properties)
        line_temp.setWidth(width)
        line_temp.setColor(color)

        # Create geometry generator
        symb = QgsGeometryGeneratorSymbolLayer.create(properties)
        symb.setSymbolType(Qgis.SymbolType.Line)
        symb.setSubSymbol(line_temp)

        # Set geometry expression
        expr = transformer.create_line_expression(p1.x(), p1.y(), p2.x(), p2.y())
        symb.setGeometryExpression(expr)

        return symb

    @staticmethod
    def create_grid_line_points(
        transformer: TransformationHelper,
        x1: float,
        y1: float,
        x2: float,
        y2: float,
        x_min: float,
        x_max: float,
        y_min: float,
        y_max: float,
        is_vertical: bool,
    ) -> List[QgsPoint]:
        """Create points for grid lines.

        Args:
            transformer: The transformer to use
            x1, y1, x2, y2: Line endpoints in UTM
            x_min, x_max, y_min, y_max: Geographic extent
            is_vertical: Whether the line is vertical

        Returns:
            List[QgsPoint]: List containing [a1, a2, p1, p2] points
        """
        # Create and transform the UTM points to geographic
        a1 = QgsPoint(x1, y1)
        a2 = QgsPoint(x2, y2)
        a1 = transformer.transform_point(a1, to_utm=False)
        a2 = transformer.transform_point(a2, to_utm=False)

        # Create geographic points for the full grid line
        if is_vertical:
            p1 = QgsPoint(a1.x(), y_min)
            p2 = QgsPoint(a2.x(), y_max)
        else:
            p1 = QgsPoint(x_min, a1.y())
            p2 = QgsPoint(x_max, a2.y())

        # Transform back to UTM
        p1 = transformer.transform_point(p1, to_utm=True)
        p2 = transformer.transform_point(p2, to_utm=True)

        return [a1, a2, p1, p2]


class GridSymbolGenerator:
    """Generator for grid symbols and lines."""

    def __init__(self, transformer: TransformationHelper):
        """Initialize with a transformer.

        Args:
            transformer: The transformer to use for coordinate transformations
        """
        self.transformer = transformer
        self.geometry_helper = GeometryHelper()

    def generate_utm_symbol(
        self,
        grid_spacing: float,
        grid_symb: QgsFillSymbol,
        extents_geo: Tuple[float, float, float, float],
        extents_utm: Tuple[float, float, float, float],
        utm_num_x: int,
        utm_num_y: int,
        t: int,
        u: int,
        linwidth: float,
        color: QColor,
    ) -> QgsFillSymbol:
        """Generate UTM grid symbols.

        Args:
            grid_spacing: The grid spacing
            grid_symb: The base fill symbol
            extents_geo: Geographic extents (x_min, y_min, x_max, y_max)
            extents_utm: UTM extents (x_min, y_min, x_max, y_max)
            utm_num_x, utm_num_y: Number of grid cells in x and y
            t, u: Position indices
            linwidth: Line width
            color: Line color

        Returns:
            QgsFillSymbol: The updated symbol with added symbol layers
        """
        properties = {"color": color.name()}
        line_temp = QgsLineSymbol.createSimple(properties)
        line_temp.setWidth(linwidth)
        line_temp.setColor(color)

        symb = QgsGeometryGeneratorSymbolLayer.create(properties)
        symb.setSymbolType(Qgis.SymbolType.Line)
        symb.setSubSymbol(line_temp)

        # Handle boundary lines
        if self._is_vertical_boundary(t, u, utm_num_x):
            self._add_vertical_line_symbol(
                symb, t, grid_spacing, extents_utm, extents_geo, utm_num_x
            )
        elif self._is_horizontal_boundary(t, u, utm_num_y):
            self._add_horizontal_line_symbol(
                symb, u, grid_spacing, extents_utm, extents_geo, utm_num_y
            )
        # Handle interior lines
        elif self._is_vertical_interior(t, u, utm_num_x):
            points = self.geometry_helper.create_grid_line_points(
                self.transformer,
                ((floor(extents_utm[0] / grid_spacing) + t) * grid_spacing),
                extents_utm[1],
                ((floor(extents_utm[0] / grid_spacing) + t) * grid_spacing),
                extents_utm[3],
                extents_geo[2],
                extents_geo[0],
                extents_geo[3],
                extents_geo[1],
                True,
            )
            expr = self.transformer.create_line_expression(
                points[2].x(), points[2].y(), points[3].x(), points[3].y()
            )
            symb.setGeometryExpression(expr)
        elif self._is_horizontal_interior(t, u, utm_num_y):
            points = self.geometry_helper.create_grid_line_points(
                self.transformer,
                extents_utm[0],
                ((floor(extents_utm[1] / grid_spacing) + u) * grid_spacing),
                extents_utm[2],
                ((floor(extents_utm[1] / grid_spacing) + u) * grid_spacing),
                extents_geo[2],
                extents_geo[0],
                extents_geo[3],
                extents_geo[1],
                False,
            )
            expr = self.transformer.create_line_expression(
                points[2].x(), points[2].y(), points[3].x(), points[3].y()
            )
            symb.setGeometryExpression(expr)

        grid_symb.appendSymbolLayer(symb)
        return grid_symb

    def _is_vertical_boundary(self, t: int, u: int, utm_num_x: int) -> bool:
        """Check if this is a vertical boundary line."""
        return (t == 1 and u == 0) or (t == utm_num_x and u == 0)

    def _is_horizontal_boundary(self, t: int, u: int, utm_num_y: int) -> bool:
        """Check if this is a horizontal boundary line."""
        return (u == 1 and t == 0) or (u == utm_num_y and t == 0)

    def _is_vertical_interior(self, t: int, u: int, utm_num_x: int) -> bool:
        """Check if this is an interior vertical line."""
        return (not (t == 1)) and (not (t == utm_num_x)) and u == 0

    def _is_horizontal_interior(self, t: int, u: int, utm_num_y: int) -> bool:
        """Check if this is an interior horizontal line."""
        return (not (u == 1)) and (not (u == utm_num_y)) and t == 0

    def _add_vertical_line_symbol(
        self,
        symb: QgsGeometryGeneratorSymbolLayer,
        t: int,
        grid_spacing: float,
        extents_utm: Tuple[float, float, float, float],
        extents_geo: Tuple[float, float, float, float],
        utm_num_x: int,
    ) -> None:
        """Add a vertical line symbol."""
        # Create line points
        points = self.geometry_helper.create_grid_line_points(
            self.transformer,
            ((floor(extents_utm[0] / grid_spacing) + t) * grid_spacing),
            extents_utm[1],
            ((floor(extents_utm[0] / grid_spacing) + t) * grid_spacing),
            extents_utm[3],
            extents_geo[2],
            extents_geo[0],
            extents_geo[3],
            extents_geo[1],
            True,
        )

        # Create test lines for intersection
        test_line = [None] * 2
        test_line[0] = QgsGeometry.fromWkt(
            f"LINESTRING ({extents_geo[0]} {extents_geo[1]},{extents_geo[0]} {extents_geo[3]})"
        )
        test_line[1] = QgsGeometry.fromWkt(
            f"LINESTRING ({extents_geo[2]} {extents_geo[1]},{extents_geo[2]} {extents_geo[3]})"
        )

        # Create test grid line
        test_grid = QgsGeometry.fromPolyline([points[0], points[1]])

        # Handle left bound intersection
        if test_line[0].intersects(test_grid):
            mid_point = test_line[0].intersection(test_grid).vertexAt(0)
            mid_point = self.transformer.transform_point(mid_point, to_utm=True)

            if points[0].x() > points[1].x():
                expr = self.transformer.create_line_expression(
                    points[2].x(), points[2].y(), mid_point.x(), mid_point.y()
                )
            else:
                expr = self.transformer.create_line_expression(
                    mid_point.x(), mid_point.y(), points[3].x(), points[3].y()
                )
            symb.setGeometryExpression(expr)

        # Handle right bound intersection
        elif test_line[1].intersects(test_grid):
            mid_point = test_line[1].intersection(test_grid).vertexAt(0)
            mid_point = self.transformer.transform_point(mid_point, to_utm=True)

            if points[0].x() < points[1].x():
                expr = self.transformer.create_line_expression(
                    points[2].x(), points[2].y(), mid_point.x(), mid_point.y()
                )
            else:
                expr = self.transformer.create_line_expression(
                    mid_point.x(), mid_point.y(), points[3].x(), points[3].y()
                )
            symb.setGeometryExpression(expr)

        # No intersection case
        else:
            expr = self.transformer.create_line_expression(
                points[2].x(), points[2].y(), points[3].x(), points[3].y()
            )
            symb.setGeometryExpression(expr)

    def _add_horizontal_line_symbol(
        self,
        symb: QgsGeometryGeneratorSymbolLayer,
        u: int,
        grid_spacing: float,
        extents_utm: Tuple[float, float, float, float],
        extents_geo: Tuple[float, float, float, float],
        utm_num_y: int,
    ) -> None:
        """Add a horizontal line symbol."""
        # Create line points
        points = self.geometry_helper.create_grid_line_points(
            self.transformer,
            extents_utm[0],
            ((floor(extents_utm[1] / grid_spacing) + u) * grid_spacing),
            extents_utm[2],
            ((floor(extents_utm[1] / grid_spacing) + u) * grid_spacing),
            extents_geo[2],
            extents_geo[0],
            extents_geo[3],
            extents_geo[1],
            False,
        )

        # Create test lines for intersection
        test_line = [None] * 2
        test_line[0] = QgsGeometry.fromWkt(
            f"LINESTRING ({extents_geo[0]} {extents_geo[1]},{extents_geo[2]} {extents_geo[1]})"
        )
        test_line[1] = QgsGeometry.fromWkt(
            f"LINESTRING ({extents_geo[0]} {extents_geo[3]},{extents_geo[2]} {extents_geo[3]})"
        )

        # Create test grid line
        test_grid = QgsGeometry.fromPolyline([points[0], points[1]])

        # Handle bottom bound intersection
        if test_line[0].intersects(test_grid):
            mid_point = test_line[0].intersection(test_grid).vertexAt(0)
            mid_point = self.transformer.transform_point(mid_point, to_utm=True)

            if points[0].y() > points[1].y():
                expr = self.transformer.create_line_expression(
                    points[2].x(), points[2].y(), mid_point.x(), mid_point.y()
                )
            else:
                expr = self.transformer.create_line_expression(
                    mid_point.x(), mid_point.y(), points[3].x(), points[3].y()
                )
            symb.setGeometryExpression(expr)

        # Handle upper bound intersection
        elif test_line[1].intersects(test_grid):
            mid_point = test_line[1].intersection(test_grid).vertexAt(0)
            mid_point = self.transformer.transform_point(mid_point, to_utm=True)

            if points[0].y() < points[1].y():
                expr = self.transformer.create_line_expression(
                    points[2].x(), points[2].y(), mid_point.x(), mid_point.y()
                )
            else:
                expr = self.transformer.create_line_expression(
                    mid_point.x(), mid_point.y(), points[3].x(), points[3].y()
                )
            symb.setGeometryExpression(expr)

        # No intersection case
        else:
            expr = self.transformer.create_line_expression(
                points[2].x(), points[2].y(), points[3].x(), points[3].y()
            )
            symb.setGeometryExpression(expr)

    def generate_geographic_grid(
        self,
        grid_symb: QgsFillSymbol,
        extents_geo: Tuple[float, float, float, float],
        px: float,
        py: float,
        geo_number_x: int,
        geo_number_y: int,
        scale: float,
        linwidth: float,
        color: QColor,
    ) -> QgsFillSymbol:
        """Generate geographic grid symbols.

        Args:
            grid_symb: The base symbol to append to
            extents_geo: Geographic extents (xmin, ymin, xmax, ymax)
            px, py: Grid spacing in x and y directions
            geo_number_x, geo_number_y: Number of grid cells
            scale: Map scale factor
            linwidth: Line width
            color: Line color

        Returns:
            QgsFillSymbol: Updated symbol with geographic grid
        """
        # Crossing lines with various offsets to create a grid pattern
        offset_factor = 0.00002145 * scale

        # Top-right to bottom-left crosses
        for u in range(1, geo_number_x + 2):
            for t in range(0, geo_number_y + 2):
                symb_cross = self.geometry_helper.create_crossing_lines_geometry(
                    self.transformer,
                    extents_geo[0],
                    extents_geo[1],
                    px,
                    py,
                    u,
                    t,
                    -offset_factor,
                    0,
                    linwidth,
                    color,
                )
                grid_symb.appendSymbolLayer(symb_cross)

        # Bottom-left to top-right crosses
        for u in range(0, geo_number_x + 2):
            for t in range(1, geo_number_y + 2):
                symb_cross = self.geometry_helper.create_crossing_lines_geometry(
                    self.transformer,
                    extents_geo[0],
                    extents_geo[1],
                    px,
                    py,
                    u,
                    t,
                    0,
                    -offset_factor,
                    linwidth,
                    color,
                )
                grid_symb.appendSymbolLayer(symb_cross)

        # Left-right crosses
        for u in range(0, geo_number_x + 1):
            for t in range(0, geo_number_y + 2):
                symb_cross = self.geometry_helper.create_crossing_lines_geometry(
                    self.transformer,
                    extents_geo[0],
                    extents_geo[1],
                    px,
                    py,
                    u,
                    t,
                    offset_factor,
                    0,
                    linwidth,
                    color,
                )
                grid_symb.appendSymbolLayer(symb_cross)

        # Up-down crosses
        for u in range(0, geo_number_x + 2):
            for t in range(0, geo_number_y + 1):
                symb_cross = self.geometry_helper.create_crossing_lines_geometry(
                    self.transformer,
                    extents_geo[0],
                    extents_geo[1],
                    px,
                    py,
                    u,
                    t,
                    0,
                    offset_factor,
                    linwidth,
                    color,
                )
                grid_symb.appendSymbolLayer(symb_cross)

        return grid_symb
    
    def generate_geographic_grid_by_minutes(
        self,
        grid_symb: QgsFillSymbol,
        extents_geo: Tuple[float, float, float, float],
        minute_interval: int,
        scale: float,
        linwidth: float,
        color: QColor,
    ) -> QgsFillSymbol:
        """Generate geographic grid symbols based on minute intervals.

        Args:
            grid_symb: The base symbol to append to
            extents_geo: Geographic extents (xmin, ymin, xmax, ymax)
            minute_interval: Interval in minutes (e.g., 2, 5, 10, 20)
            scale: Map scale factor
            linwidth: Line width
            color: Line color

        Returns:
            QgsFillSymbol: Updated symbol with geographic grid
        """
        from math import floor, ceil
        
        # Convert minute interval to degrees for calculations
        degree_interval = minute_interval / 60.0
        
        # Calculate grid spacing in x and y directions (in degrees)
        px = degree_interval
        py = degree_interval
        
        # Calculate starting points (round down to nearest minute_interval)
        x_min, y_min, x_max, y_max = extents_geo
        start_x = floor(x_min / degree_interval) * degree_interval
        start_y = floor(y_min / degree_interval) * degree_interval
        
        # Calculate number of cells
        geo_number_x = ceil((x_max - start_x) / degree_interval)
        geo_number_y = ceil((y_max - start_y) / degree_interval)
        
        # Crossing lines with various offsets to create a grid pattern
        offset_factor = 0.00002145 * scale

        # Top-right to bottom-left crosses
        for u in range(1, geo_number_x + 2):
            for t in range(0, geo_number_y + 2):
                symb_cross = self.geometry_helper.create_crossing_lines_geometry(
                    self.transformer,
                    start_x,
                    start_y,
                    px,
                    py,
                    u,
                    t,
                    -offset_factor,
                    0,
                    linwidth,
                    color,
                )
                grid_symb.appendSymbolLayer(symb_cross)

        # Bottom-left to top-right crosses
        for u in range(0, geo_number_x + 2):
            for t in range(1, geo_number_y + 2):
                symb_cross = self.geometry_helper.create_crossing_lines_geometry(
                    self.transformer,
                    start_x,
                    start_y,
                    px,
                    py,
                    u,
                    t,
                    0,
                    -offset_factor,
                    linwidth,
                    color,
                )
                grid_symb.appendSymbolLayer(symb_cross)

        # Left-right crosses
        for u in range(0, geo_number_x + 1):
            for t in range(0, geo_number_y + 2):
                symb_cross = self.geometry_helper.create_crossing_lines_geometry(
                    self.transformer,
                    start_x,
                    start_y,
                    px,
                    py,
                    u,
                    t,
                    offset_factor,
                    0,
                    linwidth,
                    color,
                )
                grid_symb.appendSymbolLayer(symb_cross)

        # Up-down crosses
        for u in range(0, geo_number_x + 2):
            for t in range(0, geo_number_y + 1):
                symb_cross = self.geometry_helper.create_crossing_lines_geometry(
                    self.transformer,
                    start_x,
                    start_y,
                    px,
                    py,
                    u,
                    t,
                    0,
                    offset_factor,
                    linwidth,
                    color,
                )
                grid_symb.appendSymbolLayer(symb_cross)

        return grid_symb


class LabelGenerator:
    """Generator for grid labels."""

    def __init__(self, transformer: TransformationHelper):
        """Initialize the label generator.

        Args:
            transformer: The transformer for coordinate transformations
        """
        self.transformer = transformer

    def create_label_rule(
        self,
        x: float,
        y: float,
        desc: str,
        font_size: float,
        font: QFont,
        expression: str,
        color: QColor,
        layer_bound: QgsVectorLayer,
        discourage_placement: bool = False,
    ) -> QgsRuleBasedLabeling.Rule:
        """Create a rule for a grid label.

        Args:
            x, y: Position coordinates
            desc: Label description
            font_size: Font size
            font: Font to use
            expression: Label text expression
            color: Label color
            layer_bound: The layer to place labels on
            discourage_placement: Whether to discourage placement of this label

        Returns:
            QgsRuleBasedLabeling.Rule: The created rule
        """
        # Label settings
        settings = QgsPalLayerSettings()
        settings.placement = (
            1 if Qgis.QGIS_VERSION_INT <= 32600 else Qgis.LabelPlacement.OverPoint
        )
        settings.isExpression = True

        # Text format
        text_format = QgsTextFormat()
        text_format.setColor(color)
        text_format.setSizeUnit(
            4 if Qgis.QGIS_VERSION_INT <= 32600 else Qgis.RenderUnit.Points
        )
        text_format.setSize(font_size * 2.8346)  # Convert to points
        text_format.setFont(font)
        text_format.setLineHeight(1)
        settings.setFormat(text_format)
        settings.fieldName = expression

        # Geometry generator for placement
        settings.geometryGeneratorEnabled = True
        settings.geometryGenerator = f"make_point({x}, {y})"

        # Data defined properties
        data_defined = QgsPropertyCollection()
        data_defined.property(20).setExpressionString("True")
        data_defined.property(20).setActive(True)
        data_defined.property(15).setExpressionString("True")
        data_defined.property(15).setActive(True)
        data_defined.property(77).setExpressionString("2")
        data_defined.property(77).setActive(True)
        settings.setDataDefinedProperties(data_defined)

        # Create rule
        rule = QgsRuleBasedLabeling.Rule(settings)
        rule.setDescription(desc)
        rule.setActive(True)

        return rule

    def create_geo_grid_labels(
        self,
        extents_geo: Tuple[float, float, float, float],
        px: float,
        py: float,
        geo_number_x: int,
        geo_number_y: int,
        dx: List[float],
        dy: List[float],
        font_size: float,
        font: QFont,
        color: QColor,
        scale: float,
        layer_bound: QgsVectorLayer,
    ) -> QgsRuleBasedLabeling.Rule:
        """Create labels for the geographic grid.

        Args:
            extents_geo: Geographic extents (xmin, ymin, xmax, ymax)
            px, py: Grid spacing in x and y directions
            geo_number_x, geo_number_y: Number of grid cells
            dx, dy: Label offsets
            font_size: Font size
            font: Font to use
            color: Label color
            scale: Map scale factor
            layer_bound: The layer to place labels on

        Returns:
            QgsRuleBasedLabeling.Rule: Root rule with all grid labels
        """
        root_rule = QgsRuleBasedLabeling.Rule(QgsPalLayerSettings())

        # Upper edge labels
        for u in range(0, geo_number_x + 2):
            if u == 0:
                # Special case for Greenwich meridian
                rule_temp = self.create_label_rule(
                    extents_geo[0],
                    extents_geo[3],
                    f"Up {u + 1}",
                    font_size,
                    font,
                    str(
                        self._convert_decimal_to_dms(
                            extents_geo[0],
                            u,
                            "W",
                            "E",
                            extents_geo,
                            True,
                            geo_number_x,
                            geo_number_y,
                        )
                    )
                    + "+'. GREENWICH'",
                    color,
                    layer_bound,
                )
            else:
                rule_temp = self.create_label_rule(
                    extents_geo[0],
                    extents_geo[3],
                    f"Up {u + 1}",
                    font_size,
                    font,
                    self._convert_decimal_to_dms(
                        extents_geo[0],
                        u,
                        "W",
                        "E",
                        extents_geo,
                        True,
                        geo_number_x,
                        geo_number_y,
                    ),
                    color,
                    layer_bound,
                )
            root_rule.appendChild(rule_temp)

        # Bottom edge labels
        for b in range(0, geo_number_x + 2):
            rule_temp = self.create_label_rule(
                extents_geo[0],
                extents_geo[1],
                f"Bot {b + 1}",
                font_size,
                font,
                self._convert_decimal_to_dms(
                    extents_geo[0],
                    b,
                    "W",
                    "E",
                    extents_geo,
                    True,
                    geo_number_x,
                    geo_number_y,
                ),
                color,
                layer_bound,
            )
            root_rule.appendChild(rule_temp)

        # Right edge labels
        for r in range(0, geo_number_y + 2):
            rule_temp = self.create_label_rule(
                extents_geo[2],
                extents_geo[1],
                f"Right {r + 1}",
                font_size,
                font,
                self._convert_decimal_to_dms(
                    extents_geo[1],
                    r,
                    "S",
                    "N",
                    extents_geo,
                    False,
                    geo_number_x,
                    geo_number_y,
                ),
                color,
                layer_bound,
            )
            root_rule.appendChild(rule_temp)

        # Left edge labels
        for l in range(0, geo_number_y + 2):
            rule_temp = self.create_label_rule(
                extents_geo[0],
                extents_geo[1],
                f"Left {l + 1}",
                font_size,
                font,
                self._convert_decimal_to_dms(
                    extents_geo[1],
                    l,
                    "S",
                    "N",
                    extents_geo,
                    False,
                    geo_number_x,
                    geo_number_y,
                ),
                color,
                layer_bound,
            )
            root_rule.appendChild(rule_temp)

        return root_rule

    def create_utm_grid_labels(
        self,
        root_rule: QgsRuleBasedLabeling.Rule,
        grid_spacing: float,
        extents_geo: Tuple[float, float, float, float],
        extents_utm: Tuple[float, float, float, float],
        px: float,
        py: float,
        utm_num_x: int,
        utm_num_y: int,
        dx: List[float],
        dy: List[float],
        dy0: List[float],
        dy1: List[float],
        font_size: float,
        font: QFont,
        scale: float,
        geo_bb: QgsRectangle,
        layer_bound: QgsVectorLayer,
    ) -> QgsRuleBasedLabeling.Rule:
        """Create labels for UTM grid.

        Args:
            root_rule: The root labeling rule to append to
            grid_spacing: UTM grid spacing
            extents_geo: Geographic extents
            extents_utm: UTM extents
            px, py: Grid spacing in geographic coordinates
            utm_num_x, utm_num_y: Number of UTM grid cells
            dx, dy, dy0, dy1: Various offsets for label positioning
            font_size: Font size for labels
            font: Font to use
            scale: Map scale factor
            geo_bb: Geographic bounding box
            layer_bound: The layer to place labels on

        Returns:
            QgsRuleBasedLabeling.Rule: Updated root rule with UTM grid labels
        """
        if grid_spacing <= 0:
            return root_rule

        # Add bottom labels
        test_rule = QgsRuleBasedLabeling.Rule(QgsPalLayerSettings())
        test_rule = self._create_utm_grid_label_rule(
            test_rule,
            extents_utm,
            extents_geo,
            px,
            py,
            1,
            True,
            dx[0],
            dy[1],
            dy0[1],
            0,
            "UTMBotTest",
            font_size,
            font,
            grid_spacing,
            scale,
            range(1),
            geo_bb,
            layer_bound,
        )

        if test_rule.children()[0].settings().fieldName == "fail":
            bot_range = range(2, utm_num_x + 1)
        else:
            bot_range = range(1, utm_num_x + 1)

        for u in bot_range:
            root_rule = self._create_utm_grid_label_rule(
                root_rule,
                extents_utm,
                extents_geo,
                px,
                py,
                u,
                True,
                dx[0],
                dy[1],
                dy0[1] + 0.4 * scale * font_size / 1.5,
                0,
                f"UTMBot{u}",
                font_size,
                font,
                grid_spacing,
                scale,
                bot_range,
                geo_bb,
                layer_bound,
            )

        # Add top labels
        top_range = range(1, utm_num_x + 1)
        for u in top_range:
            root_rule = self._create_utm_grid_label_rule(
                root_rule,
                extents_utm,
                extents_geo,
                px,
                py,
                u,
                True,
                dx[1],
                dy[0],
                dy0[0] - 1.3 * scale * font_size / 1.5,
                0,
                f"UTMUp{u}",
                font_size,
                font,
                grid_spacing,
                scale,
                top_range,
                geo_bb,
                layer_bound,
            )

        # Add left labels
        test_rule = QgsRuleBasedLabeling.Rule(QgsPalLayerSettings())
        test_rule = self._create_utm_grid_label_rule(
            test_rule,
            extents_utm,
            extents_geo,
            px,
            py,
            1,
            False,
            dx[2],
            dy[3],
            dy0[3],
            dy1[1],
            "UTMLeftTest",
            font_size,
            font,
            grid_spacing,
            scale,
            range(1),
            geo_bb,
            layer_bound,
        )

        if test_rule.children()[0].settings().fieldName == "fail":
            left_range = range(2, utm_num_y + 1)
        else:
            left_range = range(1, utm_num_y + 1)

        min_range, max_range = min(left_range), max(left_range)
        for u in left_range:
            extra_dist = -3.2 * scale * font_size / 1.5 if u == min_range else 0
            discourage = u in (min_range, max_range)

            root_rule = self._create_utm_grid_label_rule(
                root_rule,
                extents_utm,
                extents_geo,
                px,
                py,
                u,
                False,
                dx[2] + extra_dist,
                dy[3],
                dy0[3],
                dy1[1],
                f"UTMLeft{u}",
                font_size,
                font,
                grid_spacing,
                scale,
                left_range,
                geo_bb,
                layer_bound,
                discourage,
            )

        # Add right labels
        right_range = range(1, utm_num_y + 1)
        for u in right_range:
            root_rule = self._create_utm_grid_label_rule(
                root_rule,
                extents_utm,
                extents_geo,
                px,
                py,
                u,
                False,
                dx[3],
                dy[3],
                dy0[3],
                dy1[1],
                f"UTMRight{u}",
                font_size,
                font,
                grid_spacing,
                scale,
                right_range,
                geo_bb,
                layer_bound,
            )

        return root_rule

    def _create_utm_grid_label_rule(
        self,
        root_rule: QgsRuleBasedLabeling.Rule,
        extents_utm: Tuple[float, float, float, float],
        extents_geo: Tuple[float, float, float, float],
        px: float,
        py: float,
        u: int,
        is_vertical: bool,
        dx: float,
        dy: float,
        dy_o: float,
        dy1: float,
        desc: str,
        font_size: float,
        font: QFont,
        grid_spacing: float,
        scale: float,
        range_test: range,
        geo_bb: QgsRectangle,
        layer_bound: QgsVectorLayer,
        discourage_placement: bool = False,
    ) -> QgsRuleBasedLabeling.Rule:
        """Create a UTM grid label rule."""
        
        x_min_test = geo_bb.xMinimum()
        x_max_test = geo_bb.xMaximum()
        y_min_test = geo_bb.yMinimum()
        y_max_test = geo_bb.yMaximum()

        if is_vertical:
            # Handling vertical grid line labels
            test_plac = QgsPoint(
                ((floor(extents_utm[0] / grid_spacing) + u) * grid_spacing),
                extents_utm[1],
            )
            test_plac = self.transformer.transform_point(test_plac, to_utm=False)

            anc_x = QgsPoint(
                ((floor(extents_utm[0] / grid_spacing) + u) * grid_spacing) + dx,
                extents_utm[1],
            )
            anc_x = self.transformer.transform_point(anc_x, to_utm=False)

            anc_y = QgsPoint(anc_x.x(), extents_geo[1])
            anc_y = self.transformer.transform_point(anc_y, to_utm=True)

            test = QgsPoint(
                ((floor(extents_utm[0] / grid_spacing) + u) * grid_spacing),
                extents_utm[1],
            )
            test = self.transformer.transform_point(test, to_utm=False)

            # Calculate delta adjustments based on label position
            if u == 1 and "Up" in desc:
                delta_d_neg = 0.0022
                delta_d_pos = 0.0011
            elif u == 1 and "Bot" in desc:
                delta_d_neg = 0.0011
                delta_d_pos = 0.0011
            else:
                delta_d_neg = 0.0009
                delta_d_pos = 0.0009

            # Safely calculate the test values, preventing division by zero
            if px != 0:
                offset_neg = (test.x() - (extents_geo[0] % px) - (delta_d_neg * (font_size / 1.5) * scale / 10))
                offset_pos = (test.x() - (extents_geo[0] % px) + (delta_d_pos * (font_size / 1.5) * scale / 10))
                test_if = abs(
                    floor(abs(round(offset_neg, 4)) / px)
                    - floor(abs(round(offset_pos, 4)) / px)
                )
            else:
                test_if = 0  # Default to 0 when px is 0

            if test_if >= 1:
                anc_y = QgsPoint(anc_y.x(), anc_y.y() + dy_o)
            else:
                anc_y = QgsPoint(anc_y.x(), anc_y.y() + dy)

            dx0 = 0
            anc_y = self.transformer.transform_point(anc_y, to_utm=False)
            x, y = anc_x.x() + dx0, anc_y.y()
            full_label = str((floor(extents_utm[0] / grid_spacing) + u) * grid_spacing)

            # Skip label if outside bounds
            if test_plac.x() < x_min_test or test_plac.x() > x_max_test:
                fake_rule = self.create_label_rule(
                    x,
                    y,
                    desc,
                    font_size,
                    font,
                    "fail",
                    QColor("black"),
                    layer_bound,
                    discourage_placement,
                )
                root_rule.appendChild(fake_rule)
                return root_rule

        else:
            # Handling horizontal grid line labels
            test_plac = QgsPoint(
                extents_utm[0],
                (floor(extents_utm[1] / grid_spacing) + u) * grid_spacing,
            )
            test_plac = self.transformer.transform_point(test_plac, to_utm=False)

            anc_x = QgsPoint(
                extents_utm[0],
                (floor(extents_utm[1] / grid_spacing) + u) * grid_spacing,
            )
            anc_x = self.transformer.transform_point(anc_x, to_utm=False)
            anc_x = QgsPoint(extents_geo[0], anc_x.y())

            anc_y = QgsPoint(extents_geo[0], anc_x.y())
            anc_y = self.transformer.transform_point(anc_y, to_utm=True)

            test = QgsPoint(
                extents_utm[0],
                (floor(extents_utm[1] / grid_spacing) + u) * grid_spacing,
            )
            test = self.transformer.transform_point(test, to_utm=False)

            # Safely calculate the test values, preventing division by zero
            if py != 0:
                offset_neg = (test.y() - (extents_geo[1] % py) - (0.0004 * (font_size / 1.5) * scale / 10))
                offset_pos = (test.y() - (extents_geo[1] % py) + (0.0004 * (font_size / 1.5) * scale / 10))
                
                test_if = abs(
                    floor(abs(round(offset_neg, 4)) / py)
                    - floor(abs(round(test.y() - (extents_geo[1] % py), 4)) / py)
                )
                
                test_if2 = abs(
                    floor(abs(round(test.y() - (extents_geo[1] % py), 4)) / py)
                    - floor(abs(round(offset_pos, 4)) / py)
                )
            else:
                test_if = 0
                test_if2 = 0

            if test_if >= 1:
                anc_y = QgsPoint(anc_y.x(), anc_y.y() + dy1)
            else:
                if test_if2 >= 1:
                    anc_y = QgsPoint(anc_y.x(), anc_y.y() + dy_o)
                else:
                    anc_y = QgsPoint(anc_y.x(), anc_y.y() + dy)

            dx0 = 0
            anc_x = self.transformer.transform_point(anc_x, to_utm=True)
            anc_x = QgsPoint(anc_x.x() + dx, anc_x.y())
            anc_x = self.transformer.transform_point(anc_x, to_utm=False)
            anc_y = self.transformer.transform_point(anc_y, to_utm=False)

            x, y = anc_x.x() + dx0, anc_y.y()
            full_label = str((floor(extents_utm[1] / grid_spacing) + u) * grid_spacing)

            utm_label_point = QgsPoint(anc_y.x(), anc_y.y())
            utm_label_point = self.transformer.transform_point(
                utm_label_point, to_utm=True
            )

            # Skip label if outside bounds
            if (
                test_plac.y() < y_min_test
                or test_plac.y() > y_max_test
                or abs(utm_label_point.y() - float(full_label)) < 40
            ):
                fake_rule = self.create_label_rule(
                    x,
                    y,
                    desc,
                    font_size,
                    font,
                    "fail",
                    QColor("black"),
                    layer_bound,
                    discourage_placement,
                )
                root_rule.appendChild(fake_rule)
                return root_rule

        # Format the label with superscript characters
        if full_label != "0":
            full_label = self._format_with_superscripts(full_label)

        expression_str = f"'{full_label}'"
        font.setWeight(50)
        font_size_alt = font_size * 5 / 3

        plac = QgsPoint(x, y)
        plac = self.transformer.transform_point(plac, to_utm=True)

        # Add extra N/E labels for first grid line in each direction
        if u == min(range_test) and any(
            spec_lbl in desc for spec_lbl in ("Bot", "Left")
        ):
            extra_label = "N"
            dy_t = 1.4 * scale * font_size / 1.5
            dx_t = 7.2 * scale * font_size / 1.5
            dx_h = 8.2 * scale * font_size / 1.5

            if is_vertical:
                extra_label = "E"
                dy_t = 1.6 * scale * font_size / 1.5
                dx_t = 7.2 * scale * font_size / 1.5
                dx_h = 8.1 * scale * font_size / 1.5

            plac_new = QgsPoint(plac.x() + dx_t, plac.y() + dy_t)
            plac_new = self.transformer.transform_point(plac_new, to_utm=False)

            plac_hem = QgsPoint(plac.x() + dx_h, plac.y())
            plac_hem = self.transformer.transform_point(plac_hem, to_utm=False)

            # Add 'm' label
            rule_utm2 = self.create_label_rule(
                plac_new.x(),
                plac_new.y(),
                f"{desc}m",
                font_size * 4 / 5,
                font,
                "'m'",
                QColor("black"),
                layer_bound,
                discourage_placement,
            )
            root_rule.appendChild(rule_utm2)

            # Add compass direction label (N/E)
            rule_utm3 = self.create_label_rule(
                plac_hem.x(),
                plac_hem.y(),
                f"{desc} {extra_label}",
                font_size_alt,
                font,
                f"'{extra_label}'",
                QColor("black"),
                layer_bound,
                discourage_placement,
            )
            root_rule.appendChild(rule_utm3)

        # Adjust spacing based on expression length
        dx_s = 0
        if any(spec_lbl in desc for spec_lbl in ("Bot", "Left", "Up")):
            if len(expression_str) == 3:
                dx_s = 5.4 * scale * font_size / 1.5
            elif len(expression_str) == 6:
                dx_s = 3.2 * scale * font_size / 1.5
            elif len(expression_str) == 7:
                dx_s = 1.6 * scale * font_size / 1.5
            elif len(expression_str) == 8:
                dx_s = 0.7 * scale * font_size / 1.5

        plac_size = QgsPoint(plac.x() + dx_s, plac.y())
        plac_size = self.transformer.transform_point(plac_size, to_utm=False)

        # Add the main UTM coordinate label
        rule_utm = self.create_label_rule(
            plac_size.x(),
            plac_size.y(),
            desc,
            font_size_alt,
            font,
            expression_str,
            QColor("black"),
            layer_bound,
            discourage_placement,
        )
        root_rule.appendChild(rule_utm)

        return root_rule

    def _convert_decimal_to_dms(
        self,
        base_coord: float,
        u: int,
        neg_character: str,
        pos_character: str,
        extents_geo: Tuple[float, float, float, float],
        is_vertical: bool,
        geo_number_x: int,
        geo_number_y: int,
    ) -> str:
        """Convert decimal coordinate to degrees, minutes, seconds format.

        Args:
            base_coord: Base coordinate
            u: Position index
            neg_character: Character for negative values (W/S)
            pos_character: Character for positive values (E/N)
            extents_geo: Geographic extents
            is_vertical: Whether this is a vertical grid line
            geo_number_x, geo_number_y: Number of grid cells

        Returns:
            str: Formatted DMS string with proper unicode characters
        """
        if not is_vertical:
            coord_spacing = (round(extents_geo[3], 6) - round(extents_geo[1], 6)) / (
                geo_number_y + 1
            )
        else:
            coord_spacing = (round(extents_geo[2], 6) - round(extents_geo[0], 6)) / (
                geo_number_x + 1
            )

        x_base = base_coord + coord_spacing * u
        x = round(abs(x_base), 6)
        x_deg = int(x)
        x_min = int((round((x - x_deg), 6) * 60))
        x_sec = round((round((x - x_deg - round((x_min / 60), 6)), 6)) * 3600)

        if x_base < 0:
            x_hem = neg_character
        else:
            x_hem = pos_character

        return f"'{str(x_deg).rjust(2, '0')}º {str(x_min).rjust(2, '0')}\\' {str(x_sec).rjust(2, '0')}\" {x_hem}'"

    def _format_with_superscripts(self, value: str) -> str:
        """Format a string using superscript characters for digits.

        Args:
            value: The string to format

        Returns:
            str: The formatted string with superscript digits
        """
        chars = [char for char in value]
        for j in range(0, len(chars)):
            if not (j == len(chars) - 5 or j == len(chars) - 4):
                chars[j] = SUPERSCRIPT_CHARS[int(chars[j])]
        return "".join(chars)
    
    def create_geo_grid_labels_by_minutes(
        self,
        extents_geo: Tuple[float, float, float, float],
        minute_interval: int,
        dx: List[float],
        dy: List[float],
        font_size: float,
        font: QFont,
        color: QColor,
        scale: float,
        layer_bound: QgsVectorLayer,
    ) -> QgsRuleBasedLabeling.Rule:
        """Create labels for the geographic grid based on minute intervals.

        Args:
            extents_geo: Geographic extents (xmin, ymin, xmax, ymax)
            minute_interval: Interval in minutes for grid lines
            dx, dy: Label offsets
            font_size: Font size
            font: Font to use
            color: Label color
            scale: Map scale factor
            layer_bound: The layer to place labels on

        Returns:
            QgsRuleBasedLabeling.Rule: Root rule with all grid labels
        """
        from math import floor, ceil
        
        # Convert minute interval to degrees
        degree_interval = minute_interval / 60.0
        
        # Calculate starting and ending grid lines
        x_min, y_min, x_max, y_max = extents_geo
        start_x = floor(x_min / degree_interval) * degree_interval
        start_y = floor(y_min / degree_interval) * degree_interval
        
        # Calculate number of grid cells and grid spacing
        geo_number_x = ceil((x_max - start_x) / degree_interval)
        geo_number_y = ceil((y_max - start_y) / degree_interval)
        px = degree_interval
        py = degree_interval
        
        # Adjust extents_geo to match the grid starting points
        adjusted_extents = (start_x, start_y, start_x + geo_number_x * px, start_y + geo_number_y * py)
        
        # Use the existing method with calculated parameters
        root_rule = self.create_geo_grid_labels(
            adjusted_extents,
            px,
            py,
            geo_number_x,
            geo_number_y,
            dx,
            dy,
            font_size,
            font,
            color,
            scale,
            layer_bound,
        )
        
        return root_rule



class MaskHelper:
    """Helper for applying masks to labels."""

    @staticmethod
    def apply_masks(layer_bound: QgsVectorLayer) -> None:
        """Apply masks to the grid layer so labels are visible.

        Args:
            layer_bound: The layer with the grid
        """
        layers = QgsProject.instance().mapLayers().values()

        # Create symbol layer reference list for the grid
        grid_symbol_ref_list = []
        renderer = layer_bound.renderer()
        grid_symbol_rule_id = renderer.rootRule().children()[0].ruleKey()
        layer_id = layer_bound.id()
        symbol_list = renderer.symbols(QgsRenderContext())
        symbol_layer_list = symbol_list[0].symbolLayers()

        for smb in range(1, len(symbol_layer_list)):
            idx_list = [smb, 0]
            symbol_id = QgsSymbolLayerId(grid_symbol_rule_id, idx_list)
            temp = QgsSymbolLayerReference(layer_id, symbol_id)
            grid_symbol_ref_list.append(temp)

        # Apply masks to all applicable layers
        for layer in layers:
            if not layer.type() == QgsMapLayer.VectorLayer:
                continue

            labels = layer.labeling()
            if not labels:
                continue

            providers = []
            if isinstance(labels, QgsVectorLayerSimpleLabeling):
                providers.append("--SINGLE--RULE--")
            if isinstance(labels, QgsRuleBasedLabeling):
                providers = [x.ruleKey() for x in labels.rootRule().children()]

            for provider in providers:
                if provider == "--SINGLE--RULE--":
                    label_settings = labels.settings()
                else:
                    label_settings = labels.settings(provider)

                label_format = label_settings.format()
                masks = label_format.mask()
                if not masks.enabled():
                    continue

                # Update masked symbol layers
                mask_symbol_list = masks.maskedSymbolLayers()
                new_symbol_mask = []

                for item in mask_symbol_list:
                    if item.layerId() == layer_id:
                        continue
                    new_symbol_mask.append(item)

                for item in grid_symbol_ref_list:
                    new_symbol_mask.append(item)

                masks.setMaskedSymbolLayers(new_symbol_mask)
                label_format.setMask(masks)
                label_settings.setFormat(label_format)

                if provider == "--SINGLE--RULE--":
                    labels.setSettings(label_settings)
                else:
                    labels.setSettings(label_settings, provider)

            layer.setLabeling(labels)


class GridAndLabelCreator(QObject):
    """Creates and manages grid lines and labels for QGIS maps.

    This class handles the creation of both UTM and geographic grid systems,
    including styling and labeling.
    """

    def __init__(self, parent=None):
        """Initialize the grid creator."""
        super(GridAndLabelCreator, self).__init__(parent)
        self.logger = logging.getLogger("GridAndLabelCreator")

    def reset(self, layer: QgsVectorLayer) -> None:
        """Reset a layer to default styling.

        Args:
            layer: The layer to reset
        """
        properties = {"color": "black"}
        grid_symb = QgsFillSymbol.createSimple(properties)
        symb_out = QgsSimpleFillSymbolLayer()
        symb_out.setFillColor(QColor("white"))
        grid_symb.changeSymbolLayer(0, symb_out)

        render_base = QgsSingleSymbolRenderer(grid_symb)
        layer.setRenderer(render_base)

        root_rule = QgsRuleBasedLabeling.Rule(QgsPalLayerSettings())
        rules = QgsRuleBasedLabeling(root_rule)
        layer.setLabeling(rules)
        layer.setLabelsEnabled(False)
        layer.triggerRepaint()

    def styleCreator(
        self,
        feature_geometry: QgsGeometry,
        layer_bound: QgsVectorLayer,
        utm_srid: int,
        id_attr: str,
        id_value: int,
        spacing: float,  # UTM grid spacing (can be determined from scale)
        scale: float,
        font_size: float,
        font: QFont,
        font_ll: QFont,
        ll_color: QColor,
        linwidth_geo: float,
        linwidth_utm: float,
        linwidth_buffer_geo: float,
        linwidth_buffer_utm: float,
        geo_grid_color: QColor,
        utm_grid_color: QColor,
        geo_grid_buffer_color: QColor,
        utm_grid_buffer_color: QColor,
        masks_check: bool,
    ) -> None:
        """Create and apply grid styling to a layer with minute-based intervals.

        Args:
            feature_geometry: The geometry to place the grid on
            layer_bound: The layer to style
            utm_srid: UTM spatial reference ID
            id_attr: ID attribute field name for filtering features
            id_value: Value of the ID attribute to match
            map_scale: Map scale denominator (e.g., 25000 for 1:25,000)
            spacing: UTM grid spacing
            scale: Map scale factor
            font_size: Font size for labels
            font, font_ll: Fonts to use for different label types
            ll_color: Label color
            linwidth_geo, linwidth_utm: Line widths
            linwidth_buffer_geo, linwidth_buffer_utm: Buffer line widths
            geo_grid_color, utm_grid_color: Grid colors
            geo_grid_buffer_color, utm_grid_buffer_color: Buffer colors
            masks_check: Whether to apply masks to labels
        """
        # Create configurations
        grid_config = GridConfig(
            utm_srid=utm_srid,
            grid_spacing=spacing,
            geo_number_x=0,  # Not used with minute-based grid
            geo_number_y=0,  # Not used with minute-based grid
            scale=scale,
            id_attr=id_attr,
            id_value=id_value,
        )

        style_config = StyleConfig(
            linwidth_geo=linwidth_geo,
            linwidth_utm=linwidth_utm,
            linwidth_buffer_geo=linwidth_buffer_geo + linwidth_geo,
            linwidth_buffer_utm=linwidth_buffer_utm + linwidth_utm,
            geo_grid_color=geo_grid_color,
            utm_grid_color=utm_grid_color,
            geo_grid_buffer_color=geo_grid_buffer_color,
            utm_grid_buffer_color=utm_grid_buffer_color,
        )

        label_config = LabelConfig(
            font_size=font_size, font=font, font_ll=font_ll, ll_color=ll_color
        )

        # Determine minute interval based on map scale
        minute_interval = self.get_minute_interval_from_scale(scale)

        # Create helpers
        transformer = TransformationHelper(utm_srid)
        grid_generator = GridSymbolGenerator(transformer)
        label_generator = LabelGenerator(transformer)
        mask_helper = MaskHelper()

        # Get feature bounding boxes
        feature_bbox = feature_geometry.boundingBox()
        bound_utm_bb = str(feature_bbox).replace(",", "").replace(">", "")

        # Create a copy of the geometry for transformation
        geo_geometry = QgsGeometry(feature_geometry)
        geo_geometry.transform(transformer.utm_to_ll)
        feature_geo_bbox = geo_geometry.boundingBox()
        geo_bound_bb = str(feature_geo_bbox).replace(",", "").replace(">", "")

        # Create bounding boxes container
        extents_utm = (
            float(bound_utm_bb.split()[1]),
            float(bound_utm_bb.split()[2]),
            float(bound_utm_bb.split()[3]),
            float(bound_utm_bb.split()[4]),
        )
        extents_geo = (
            float(geo_bound_bb.split()[1]),
            float(geo_bound_bb.split()[2]),
            float(geo_bound_bb.split()[3]),
            float(geo_bound_bb.split()[4]),
        )

        # Create base symbol
        properties = {"color": "black"}
        grid_symb = QgsFillSymbol.createSimple(properties)

        # Calculate UTM grid parameters
        if grid_config.grid_spacing > 0:
            utm_num_x = floor(extents_utm[2] / grid_config.grid_spacing) - floor(
                extents_utm[0] / grid_config.grid_spacing
            )
            utm_num_y = floor(extents_utm[3] / grid_config.grid_spacing) - floor(
                extents_utm[1] / grid_config.grid_spacing
            )

            # Generate UTM grid with buffer if needed
            if style_config.linwidth_buffer_utm != style_config.linwidth_utm:
                # Vertical buffer lines
                for x in range(1, utm_num_x + 1):
                    grid_symb = grid_generator.generate_utm_symbol(
                        grid_config.grid_spacing,
                        grid_symb,
                        extents_geo,
                        extents_utm,
                        utm_num_x,
                        utm_num_y,
                        x,
                        0,
                        style_config.linwidth_buffer_utm,
                        style_config.utm_grid_buffer_color,
                    )

                # Horizontal buffer lines
                for y in range(1, utm_num_y + 1):
                    grid_symb = grid_generator.generate_utm_symbol(
                        grid_config.grid_spacing,
                        grid_symb,
                        extents_geo,
                        extents_utm,
                        utm_num_x,
                        utm_num_y,
                        0,
                        y,
                        style_config.linwidth_buffer_utm,
                        style_config.utm_grid_buffer_color,
                    )

            # Generate UTM grid main lines
            # Vertical lines
            for x in range(1, utm_num_x + 1):
                grid_symb = grid_generator.generate_utm_symbol(
                    grid_config.grid_spacing,
                    grid_symb,
                    extents_geo,
                    extents_utm,
                    utm_num_x,
                    utm_num_y,
                    x,
                    0,
                    style_config.linwidth_utm,
                    style_config.utm_grid_color,
                )

            # Horizontal lines
            for y in range(1, utm_num_y + 1):
                grid_symb = grid_generator.generate_utm_symbol(
                    grid_config.grid_spacing,
                    grid_symb,
                    extents_geo,
                    extents_utm,
                    utm_num_x,
                    utm_num_y,
                    0,
                    y,
                    style_config.linwidth_utm,
                    style_config.utm_grid_color,
                )

        # Generate geographic grid buffer if needed
        if style_config.linwidth_buffer_geo != style_config.linwidth_geo:
            grid_symb = grid_generator.generate_geographic_grid_by_minutes(
                grid_symb,
                extents_geo,
                minute_interval,
                grid_config.scale,
                style_config.linwidth_buffer_geo,
                style_config.geo_grid_buffer_color,
            )

        # Generate geographic grid main lines
        grid_symb = grid_generator.generate_geographic_grid_by_minutes(
            grid_symb,
            extents_geo,
            minute_interval,
            grid_config.scale,
            style_config.linwidth_geo,
            style_config.geo_grid_color,
        )

        # Prepare for rendering by removing base layer
        grid_symb.deleteSymbolLayer(0)

        # Create rule-based renderer for the selected feature
        symb_new = QgsRuleBasedRenderer.Rule(grid_symb)
        symb_new.setFilterExpression(
            f'"{grid_config.id_attr}" = {grid_config.id_value}'
        )
        symb_new.setLabel("layer")

        # Create root rule and append the feature rule
        root_symbol_rule = QgsRuleBasedRenderer.Rule(None)
        root_symbol_rule.setFilterExpression("")
        root_symbol_rule.appendChild(symb_new)

        # Apply the renderer
        render_base = QgsRuleBasedRenderer(root_symbol_rule)
        layer_bound.setRenderer(render_base)

        # Create outside area layer
        self._create_outside_area_layer(
            layer_bound,
            grid_config.id_attr,
            grid_config.id_value,
            style_config.linwidth_utm,
        )

        # Create label offsets
        dx = [2.0, -11.0, -8.0, -3.6]
        dx = [i * grid_config.scale * label_config.font_size / 1.5 for i in dx]
        dy = [1.7, -3.8, -0.8, -0.8]
        dy = [i * grid_config.scale * label_config.font_size / 1.5 for i in dy]

        # Create geographic grid labels using minute-based intervals
        root_rule = label_generator.create_geo_grid_labels_by_minutes(
            extents_geo,
            minute_interval,
            dx,
            dy,
            label_config.font_size,
            label_config.font_ll,
            label_config.ll_color,
            grid_config.scale,
            layer_bound,
        )

        # Create UTM grid label offsets
        dx_utm = [-2.9, -2.9, -8.9, 2.0]
        dx_utm = [i * grid_config.scale * label_config.font_size / 1.5 for i in dx_utm]
        dy_utm = [1.4, -4.6, -0.5, -1.5]
        dy_utm = [i * grid_config.scale * label_config.font_size / 1.5 for i in dy_utm]
        dy0_utm = [5.0, -7.2, -3.2, -4.2]
        dy0_utm = [
            i * grid_config.scale * label_config.font_size / 1.5 for i in dy0_utm
        ]
        dy1_utm = [2.15, 1.2]
        dy1_utm = [
            i * grid_config.scale * label_config.font_size / 1.5 for i in dy1_utm
        ]

        # Create UTM grid labels
        if grid_config.grid_spacing > 0:
            root_rule = label_generator.create_utm_grid_labels(
                root_rule,
                grid_config.grid_spacing,
                extents_geo,
                extents_utm,
                0,
                0,
                utm_num_x,
                utm_num_y,
                dx_utm,
                dy_utm,
                dy0_utm,
                dy1_utm,
                label_config.font_size,
                label_config.font,
                grid_config.scale,
                geo_geometry.boundingBox(),
                layer_bound,
            )

        # Apply labels to the layer
        rules = QgsRuleBasedLabeling(root_rule)
        layer_bound.setLabeling(rules)
        layer_bound.setLabelsEnabled(True)

        # Apply masks if needed
        if masks_check:
            mask_helper.apply_masks(layer_bound)

        # Refresh the layer
        layer_bound.triggerRepaint()

    def _create_outside_area_layer(
        self,
        layer_bound: QgsVectorLayer,
        id_attr: str,
        id_value: int,
        line_width: float,
    ) -> None:
        """Create a layer for the area outside the grid.

        Args:
            layer_bound: The main grid layer
            id_attr: ID attribute field name
            id_value: Value of the ID attribute to match
            line_width: Width for border lines
        """
        # Check if the outside layer already exists
        layers_names = [i.name() for i in QgsProject.instance().mapLayers().values()]
        outside_layer_name = layer_bound.name() + "_outside"

        if outside_layer_name not in layers_names:
            # Create a new layer from the same source
            outside_bound_layer = QgsVectorLayer(
                layer_bound.source(), outside_layer_name, layer_bound.providerType()
            )

            # Handle memory layers specially
            if layer_bound.providerType() == "memory":
                feats = [feat for feat in layer_bound.getFeatures()]
                outside_bound_layer_data = outside_bound_layer.dataProvider()
                outside_bound_layer_data.addFeatures(feats)

            # Add the layer to the project
            QgsProject.instance().addMapLayer(outside_bound_layer)
        else:
            outside_bound_layer = QgsProject.instance().mapLayersByName(
                outside_layer_name
            )[0]

        # Create the outside area style
        properties = {"color": "white"}
        ext_grid_symb = QgsFillSymbol.createSimple(properties)
        symb_out = QgsSimpleFillSymbolLayer()
        symb_out.setFillColor(QColor("white"))
        symb_out.setStrokeWidth(line_width)
        ext_grid_symb.changeSymbolLayer(0, symb_out)

        # Create a rule for the selected feature
        rule_out = QgsRuleBasedRenderer.Rule(ext_grid_symb)
        rule_out.setFilterExpression(f'"{id_attr}" = {id_value}')
        rule_out.setLabel("outside")

        # Create root rule and append
        root_symbol_rule_out = QgsRuleBasedRenderer.Rule(None)
        root_symbol_rule_out.appendChild(rule_out)

        # Create and apply an inverted polygon renderer
        render_base_out = QgsRuleBasedRenderer(root_symbol_rule_out)
        new_renderer = QgsInvertedPolygonRenderer.convertFromRenderer(render_base_out)
        outside_bound_layer.setRenderer(new_renderer)

    # Legacy methods maintained for compatibility - these delegate to the new implementation
    def crossLinegenerator(
        self, utmSRID, x_geo, y_geo, px, py, u, t, dx, dy, trLLUTM, linwidth_geo, color
    ):
        """Legacy method - delegates to new implementation."""
        transformer = TransformationHelper(utmSRID)
        return GeometryHelper.create_crossing_lines_geometry(
            transformer, x_geo, y_geo, px, py, u, t, dx, dy, linwidth_geo, color
        )

    def gridLinesymbolMaker(
        self,
        x1,
        y1,
        x2,
        y2,
        xmax_geo,
        xmin_geo,
        ymax_geo,
        ymin_geo,
        trUTMLL,
        trLLUTM,
        isVertical,
    ):
        """Legacy method - delegates to new implementation."""
        utm_srid = trUTMLL.destinationCrs().authid().split(":")[1]
        transformer = TransformationHelper(int(utm_srid))
        return GeometryHelper.create_grid_line_points(
            transformer,
            x1,
            y1,
            x2,
            y2,
            xmin_geo,
            xmax_geo,
            ymin_geo,
            ymax_geo,
            isVertical,
        )

    def utm_Symb_Generator(
        self,
        layer_bound,
        grid_spacing,
        trUTMLL,
        trLLUTM,
        grid_symb,
        properties,
        UTM_num_x,
        UTM_num_y,
        t,
        u,
        extentsGeo,
        extentsUTM,
        linwidth_utm,
        color,
    ):
        """Legacy method - delegates to new implementation."""
        utm_srid = trUTMLL.destinationCrs().authid().split(":")[1]
        transformer = TransformationHelper(int(utm_srid))
        grid_generator = GridSymbolGenerator(transformer)
        return grid_generator.generate_utm_symbol(
            grid_spacing,
            grid_symb,
            extentsGeo,
            extentsUTM,
            UTM_num_x,
            UTM_num_y,
            t,
            u,
            linwidth_utm,
            color,
        )

    def geoGridcreator(
        self,
        utmSRID,
        grid_symb,
        extentsGeo,
        px,
        py,
        geo_number_x,
        geo_number_y,
        scale,
        trLLUTM,
        linwidth_geo,
        color,
    ):
        """Legacy method - delegates to new implementation."""
        transformer = TransformationHelper(utmSRID)
        grid_generator = GridSymbolGenerator(transformer)
        return grid_generator.generate_geographic_grid(
            grid_symb,
            extentsGeo,
            px,
            py,
            geo_number_x,
            geo_number_y,
            scale,
            linwidth_geo,
            color,
        )

    def grid_labeler(
        self,
        coord_base_x,
        coord_base_y,
        px,
        py,
        u,
        t,
        dx,
        dy,
        desc,
        fSize,
        fontType,
        expression_str,
        trLLUTM,
        llcolor,
        layer_bound,
        trUTMLL,
        discourage_placement=False,
    ):
        """Legacy method - delegates to new implementation."""
        utm_srid = trUTMLL.destinationCrs().authid().split(":")[1]
        transformer = TransformationHelper(int(utm_srid))
        label_generator = LabelGenerator(transformer)
        return label_generator.create_label_rule(
            coord_base_x,
            coord_base_y,
            desc,
            fSize,
            fontType,
            expression_str,
            llcolor,
            layer_bound,
            discourage_placement,
        )

    def geoGridlabelPlacer(
        self,
        extentsGeo,
        px,
        py,
        geo_number_x,
        geo_number_y,
        dx,
        dy,
        fSize,
        LLfontType,
        trLLUTM,
        llcolor,
        scale,
        layer_bound,
        trUTMLL,
    ):
        """Legacy method - delegates to new implementation."""
        utm_srid = trUTMLL.destinationCrs().authid().split(":")[1]
        transformer = TransformationHelper(int(utm_srid))
        label_generator = LabelGenerator(transformer)
        return label_generator.create_geo_grid_labels(
            extentsGeo,
            px,
            py,
            geo_number_x,
            geo_number_y,
            dx,
            dy,
            fSize,
            LLfontType,
            llcolor,
            scale,
            layer_bound,
        )

    def apply_masks(self, layer_bound):
        """Legacy method - delegates to new implementation."""
        MaskHelper.apply_masks(layer_bound)

    def get_minute_interval_from_scale(self, map_scale: int) -> int:
        """Determine the minute interval based on map scale.

        Args:
            map_scale: The map scale denominator (e.g., 25000 for 1:25,000)

        Returns:
            int: The minute interval (2, 5, 10, or 20)
        """
        if map_scale <= 25000:
            return 2  # Every 2 minutes for 1:25,000
        elif map_scale <= 50000:
            return 5  # Every 5 minutes for 1:50,000
        elif map_scale <= 100000:
            return 10  # Every 10 minutes for 1:100,000
        else:
            return 20  # Every 20 minutes for 1:250,000 and larger
