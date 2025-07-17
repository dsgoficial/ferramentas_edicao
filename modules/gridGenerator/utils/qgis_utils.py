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
from qgis.core import QgsProject, QgsVectorLayer

from qgis.core import (
    Qgis,
    QgsPalLayerSettings,
    QgsProject,
    QgsPropertyCollection,
    QgsRuleBasedLabeling,
    QgsTextFormat,
)

from qgis.PyQt.QtGui import QColor, QFont

def get_closest_value_key(input_dict, target_value):
    if not input_dict:
        return None
    closest_key = None
    min_diff = float('inf')
    for key, value in input_dict.items():
        if not isinstance(value, (int, float)):
            continue
        diff = abs(value - target_value)
        if diff < min_diff:
            min_diff = diff
            closest_key = key
    return closest_key

def get_outside_boundary_layer(layer_bound: QgsVectorLayer) -> QgsVectorLayer:
    """
    Get or create an outside boundary layer for the given boundary layer.
    
    Args:
        layer_bound: The boundary layer to create an outside layer for
        
    Returns:
        QgsVectorLayer: The outside boundary layer
    """
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

def build_rule_label(text: str, desc: str, anchor_x: float, anchor_y: float, font_size: float, font: QFont, font_color: QColor) -> QgsRuleBasedLabeling.Rule:
    settings = QgsPalLayerSettings()
    settings.placement = (
        1 if Qgis.QGIS_VERSION_INT <= 32600 else Qgis.LabelPlacement.OverPoint
    )
    settings.isExpression = True
    textprop = QgsTextFormat()
    textprop.setColor(font_color)
    textprop.setSizeUnit(
        4 if Qgis.QGIS_VERSION_INT <= 32600 else Qgis.RenderUnit.Points
    )
    textprop.setSize(font_size * 2.8346)
    textprop.setFont(font)
    textprop.setLineHeight(1)
    settings.setFormat(textprop)
    settings.fieldName = str("'") + fr"{text}".replace("'","\'") + str("'")

    # Label Position
    settings.geometryGeneratorEnabled = True
    settings.geometryGenerator = f"make_point({anchor_x}, {anchor_y})"
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