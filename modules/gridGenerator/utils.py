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