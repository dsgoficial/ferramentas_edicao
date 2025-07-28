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

from typing import Tuple
from qgis.core import (
    QgsFeature,
    QgsMapUnitScale,
    QgsRenderContext,
    QgsTextFormat,
    QgsTextRenderer,
    QgsUnitTypes,
    QgsVectorLayer,
    QgsField
)
from qgis.utils import iface
from qgis.PyQt.QtCore import QSizeF, QVariant
from qgis.PyQt.QtGui import QFont


class LabelSizeCalculator:
    """
    Calculates accurate label dimensions using QGIS rendering context.
    """
    
    def __init__(self, scale_denominator: int, dpi: int = 300):
        """
        Initialize the calculator with rendering parameters.
        
        Args:
            scale_denominator: Map scale denominator (e.g., 25000 for 1:25,000)
            dpi: Dots per inch for rendering (default 300, same as extractlabels)
        """
        self.scale_denominator = scale_denominator
        self.dpi = dpi
        self.render_context = self._create_render_context()
    
    def _create_render_context(self) -> QgsRenderContext:
        """
        Create a render context similar to the one used in labeling_engine.py
        
        Returns:
            QgsRenderContext: Configured render context
        """
        # Scale factor mapping based on labeling_engine.py
        scale_factor_dict = {
            5000: 7.5,    # Estimated for 1:5,000
            10000: 15,    # Estimated for 1:10,000  
            25000: 15,    # From labeling_engine.py
            50000: 30,    # From labeling_engine.py
            100000: 60,   # From labeling_engine.py
            250000: 150,  # From labeling_engine.py
        }
        
        # Get current map settings
        map_settings = iface.mapCanvas().mapSettings()
        map_settings.setOutputDpi(self.dpi)

        # Create render context from map settings
        render_context = QgsRenderContext.fromMapSettings(map_settings)
        
        # Set scale factor based on scale denominator
        scale_factor = scale_factor_dict.get(self.scale_denominator, 15)
        render_context.setScaleFactor(scale_factor)
        render_context.setRendererScale(self.scale_denominator)
        
        return render_context
    
    def calculate_accurate_label_size(self, label_feature: QgsFeature) -> Tuple[float, float]:
        """
        Calculate accurate label dimensions using QGIS text rendering.
        
        Args:
            label_feature: Feature from native:extractlabels with label information
            
        Returns:
            Tuple[float, float]: (width, height) in map units
        """
        field_names = label_feature.fields().names()

        # Extract label properties
        text = label_feature["LabelText"]
        font_family = label_feature["Family"]
        font_size = label_feature["Size"]
        is_bold = label_feature["Bold"]
        is_italic = label_feature["Italic"]
        is_underline = label_feature["Underline"]
        font_style = label_feature["FontStyle"] if "FontStyle" in field_names else ""
        multi_line_height = label_feature["MultiLineHeight"] if "MultiLineHeight" in field_names else 1.0
        
        # Create text format
        text_format = self._create_text_format(
            font_family=font_family,
            font_size=font_size,
            is_bold=is_bold,
            is_italic=is_italic,
            is_underline=is_underline,
            font_style=font_style
        )
        
        # Handle multi-line text
        text_lines = text.split('\n') if text else [""]
        
        # Calculate dimensions using QGIS text renderer
        max_width = 0
        total_height = 0
        
        for line in text_lines:
            if line.strip():  # Skip empty lines
                line_width = QgsTextRenderer.textWidth(
                    self.render_context, 
                    text_format, 
                    [line]
                )
                max_width = max(max_width, line_width)
        
        # Calculate total height considering multi-line
        if text_lines:
            single_line_height = QgsTextRenderer.textHeight(
                self.render_context, 
                text_format, 
                ["A"]  # Use reference character for consistent height
            )
            total_height = single_line_height * len([l for l in text_lines if l.strip()]) * multi_line_height
        
        # Convert from render units to map units
        width_map_units = self.render_context.convertToMapUnits(
            max_width,
            QgsUnitTypes.RenderMetersInMapUnits,
            QgsMapUnitScale(self.scale_denominator)
        )
        
        height_map_units = self.render_context.convertToMapUnits(
            total_height,
            QgsUnitTypes.RenderMetersInMapUnits,
            QgsMapUnitScale(self.scale_denominator)
        )
        
        return width_map_units * 1.85, height_map_units * 1.55
    
    def _create_text_format(self, font_family: str, font_size: float, 
                          is_bold: bool, is_italic: bool, is_underline: bool,
                          font_style: str = "") -> QgsTextFormat:
        """
        Create QgsTextFormat from label feature attributes.
        
        Args:
            font_family: Font family name
            font_size: Font size in points
            is_bold: Whether font is bold
            is_italic: Whether font is italic
            is_underline: Whether font is underlined
            font_style: Font style (e.g., "Condensed")
            
        Returns:
            QgsTextFormat: Configured text format
        """
        text_format = QgsTextFormat()
        
        # Create font
        font = QFont(font_family)
        font.setPointSizeF(font_size)
        font.setBold(is_bold)
        font.setItalic(is_italic)
        font.setUnderline(is_underline)
        
        # Apply font style
        if font_style:
            if "condensed" in font_style.lower():
                font.setStretch(QFont.Condensed)
            elif "expanded" in font_style.lower():
                font.setStretch(QFont.Expanded)
        
        text_format.setFont(font)
        text_format.setSize(font_size)
        text_format.setSizeUnit(QgsUnitTypes.RenderPoints)
        
        return text_format
    
    def get_improved_label_polygons_layer(self, extracted_labels_layer: QgsVectorLayer) -> QgsVectorLayer:
        """
        Create an improved version of getLabelPolygons using accurate size calculations.
        
        Args:
            extracted_labels_layer: Layer from native:extractlabels
            
        Returns:
            QgsVectorLayer: Memory layer with accurate label polygons
        """
        from qgis.core import (
            QgsGeometry,
            QgsFeature as QgsFeatureNew,
            QgsPointXY,
            QgsRectangle,
            QgsVectorLayer,
        )
        
        # Create output layer
        fields = extracted_labels_layer.fields()
        temp_layer = QgsVectorLayer(
            f"Polygon?crs={extracted_labels_layer.crs().authid()}",
            "improved_label_polygons",
            "memory",
        )
        
        temp_layer.startEditing()
        temp_data = temp_layer.dataProvider()
        temp_data.addAttributes(fields.toList())
        temp_layer.updateFields()
        
        temp_layer.beginEditCommand("Creating improved label polygons")
        
        # Process each label feature
        for feature in extracted_labels_layer.getFeatures():
            point_geom = feature.geometry()
            point_xy = point_geom.asPoint()
            
            # Calculate accurate dimensions
            width, height = self.calculate_accurate_label_size(feature)
            
            # Create polygon geometry
            # The label point represents the lower-left corner of the text
            geom = QgsGeometry.fromRect(
                QgsRectangle.fromCenterAndSize(
                    QgsPointXY(point_xy.x() + width / 2, point_xy.y() + height / 2),
                    width,
                    height,
                )
            )
            
            # Create new feature
            new_feature = QgsFeatureNew(fields)
            for attr, value in feature.attributeMap().items():
                new_feature[attr] = value
            
            # Store calculated dimensions
            new_feature["LabelWidth"] = width
            new_feature["LabelHeight"] = height
            new_feature.setGeometry(geom)
            
            temp_layer.addFeature(new_feature)
        
        temp_layer.endEditCommand()
        temp_layer.commitChanges()
        
        # Add feature ID field
        temp_layer.addExpressionField("$id", QgsField("featid", QVariant.Int))

        return temp_layer


def get_label_size_calculator(scale_denominator: int, dpi: int = 300) -> LabelSizeCalculator:
    """
    Factory function to create a LabelSizeCalculator instance.
    
    Args:
        scale_denominator: Map scale denominator
        dpi: Rendering DPI (default 300 to match extractlabels)
        
    Returns:
        LabelSizeCalculator: Configured calculator instance
    """
    return LabelSizeCalculator(scale_denominator, dpi)