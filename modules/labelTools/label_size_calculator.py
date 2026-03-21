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

from qgis.core import (
    QgsField,
    QgsProperty,
    QgsWkbTypes,
)
from qgis.PyQt.QtCore import QMetaType


def is_generic_text_line_layer(layer) -> bool:
    """Check if a layer is a generic text line layer (has tamanho_txt and is line geometry)."""
    if layer.geometryType() != QgsWkbTypes.GeometryType.LineGeometry:
        return False
    return layer.fields().lookupField("tamanho_txt") != -1


def get_generic_text_polygons(layers, scale_denominator, algRunner, context, feedback):
    """
    Convert generic text line layers to polygon layer via flat-cap buffer.

    Buffer distance = (tamanho_txt * 0.3528 * scale) / 1000 / 2
    Uses flat end cap so the buffer doesn't extend beyond line start/end.

    Returns a polygon QgsVectorLayer with a 'featid' expression field,
    or None if no features.
    """
    if len(layers) > 1:
        mergedLyr = algRunner.runMergeVectorLayers(
            layers, context, feedback=feedback
        )
    else:
        mergedLyr = layers[0]

    if mergedLyr.featureCount() == 0:
        return None

    bufferExpression = f'("tamanho_txt" * 0.3528 * {scale_denominator}) / 1000.0 / 2.0'
    mergedWithBufferDist = algRunner.runCreateFieldWithExpression(
        inputLyr=mergedLyr,
        expression=bufferExpression,
        fieldType=0,  # Float
        fieldName="buffer_dist",
        feedback=feedback,
        context=context,
        is_child_algorithm=False,
    )

    bufferedLyr = algRunner.runBuffer(
        inputLayer=mergedWithBufferDist,
        distance=QgsProperty.fromExpression('"buffer_dist"'),
        context=context,
        endCapStyle=1,  # Flat
        feedback=feedback,
    )

    if bufferedLyr.featureCount() == 0:
        return None

    bufferedLyr.addExpressionField("$id", QgsField("featid", QMetaType.Type.Int))
    return bufferedLyr
