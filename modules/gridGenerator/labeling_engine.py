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
from dataclasses import dataclass
from itertools import product
from typing import List, Tuple

from qgis.core import (
    Qgis,
    QgsCoordinateReferenceSystem,
    QgsCoordinateTransform,
    QgsFillSymbol,
    QgsGeometry,
    QgsInvertedPolygonRenderer,
    QgsProject,
    QgsRectangle,
    QgsRuleBasedLabeling,
    QgsRuleBasedRenderer,
    QgsSimpleFillSymbolLayer,
    QgsVectorLayer,
    QgsRenderContext,
    QgsPoint,
    QgsPointXY,
)
from qgis.utils import iface
from qgis.PyQt.QtGui import QColor

from ferramentas_edicao.modules.gridGenerator.core.config import FontConfig
from ferramentas_edicao.modules.gridGenerator.grids.latlon_grid import LatLonGrid
from ferramentas_edicao.modules.gridGenerator.grids.utm_grid import UTMGrid
from ferramentas_edicao.modules.gridGenerator.utils.qgis_utils import get_outside_boundary_layer

@dataclass
class LabelingEngine:
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
        self.render_context = self.get_render_context()
        self.lat_lon_grid: LatLonGrid = LatLonGrid(
            scale_denominator=self.scale_denominator,
            font_config=self.font_config,
            utm_crs=self.utm_crs,
            x_min=geographic_bounds_in_lat_long_bbox.xMinimum(),
            x_max=geographic_bounds_in_lat_long_bbox.xMaximum(),
            y_min=geographic_bounds_in_lat_long_bbox.yMinimum(),
            y_max=geographic_bounds_in_lat_long_bbox.yMaximum(),
            render_context=self.render_context,
            dpi=self.dpi,
        )
        lower_left_corner, upper_left_corner, lower_right_corner, upper_right_corner = self.get_utm_bounds(geographic_bounds_in_lat_long_bbox)
        self.utm_font_config = FontConfig(
            name=self.font_config.name,
            size=self.font_config.size * 5 / 3, # feito para manter a compatibilidade com o código do João Felipe
            color=self.font_config.color,
        )
        self.utm_grid: UTMGrid = UTMGrid(
            scale_denominator=self.scale_denominator,
            font_config=self.utm_font_config,
            utm_crs=self.utm_crs,
            lower_left_corner=lower_left_corner,
            upper_left_corner=upper_left_corner,
            lower_right_corner=lower_right_corner,
            upper_right_corner=upper_right_corner,
            dpi=self.dpi,
            render_context=self.render_context,
        )
    
    def get_utm_bounds(self, geographic_boundary_bbox: QgsGeometry) -> List[QgsPointXY]:
        pointList = []
        for x, y in product(
            [geographic_boundary_bbox.xMinimum(), geographic_boundary_bbox.xMaximum()],
            [geographic_boundary_bbox.yMinimum(), geographic_boundary_bbox.yMaximum()]
        ):
            geom = QgsGeometry(QgsPoint(x, y))
            geom.transform(self.coordinate_transformer)
            pointList.append(geom.asPoint())
        return pointList
    
    def get_render_context(self) -> QgsRenderContext:
        scale_factor_dict = {
            25: 15,
            50: 2*15,
            100: 4*15,
            250: 10*15,
        }
        map_settings = iface.mapCanvas().mapSettings()
        map_settings.setDestinationCrs(self.utm_crs)
        map_settings.setOutputDpi(self.dpi)
        render_context = QgsRenderContext.fromMapSettings(map_settings)
        render_context.setScaleFactor(scale_factor_dict.get(self.scale_denominator, 15)) # 15 para 1:25.000
        render_context.setRendererScale(self.scale_denominator * 1000)  # Your scale to denominator
        return render_context
    
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
        self.lat_lon_grid.resolve_inner_overlaps()
        self.utm_grid.resolve_overlaps(self.lat_lon_grid)
        root_rule = self.lat_lon_grid.build_rule_based_labelling()
        # self.lat_lon_grid.build_label_bounding_boxes_layer("lat_long_boxes")
        self.utm_grid.build_rule_based_labelling(parent_rule=root_rule)
        # self.utm_grid.build_label_bounding_boxes_layer("utm_boxes")
        
        rules = QgsRuleBasedLabeling(root_rule)
        geographic_boundary_layer.setLabeling(rules)
        geographic_boundary_layer.setLabelsEnabled(True)

        geographic_boundary_layer.triggerRepaint()
