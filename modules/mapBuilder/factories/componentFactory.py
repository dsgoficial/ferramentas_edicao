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
from typing import Any

from ..components.anglesHandler import AnglesHandler
from ..components.articulation import Articulation
from ..components.division import Division
from ..components.divisionOM import DivisionOM
from ..components.elevationDiagram import ElevationDiagram
from ..components.imageArticulation import ImageArticulation
from ..components.legend import Legend
from ..components.localization import Localization
from ..components.map import Map
from ..components.mapOM import MapOM
from ..components.mapScale import MapScale
from ..components.mapScaleOM import MapScaleOM
from ..components.qrcode import Qrcode
from ..components.subtitle import Subtitle
from ..components.table import Table


class ComponentFactory:

    # TODO: organize every component resouce in its folder

    def getComponent(self, comp: str, *args, **kwargs):
        components = {
            "AnglesHandler": AnglesHandler,
            "Articulation": Articulation,
            "Division": Division,
            "DivisionOM": DivisionOM,
            "ImageArticulation": ImageArticulation,
            "MapScale": MapScale,
            "MapScaleOM": MapScaleOM,
            "Localization": Localization,
            "Map": Map,
            "MapOM": MapOM,
            "ElevationDiagram": ElevationDiagram,
            "Subtitle": Subtitle,
            "Table": Table,
            "Legend": Legend,
            "Qrcode": Qrcode,
        }
        return components.get(comp)(*args, **kwargs)
