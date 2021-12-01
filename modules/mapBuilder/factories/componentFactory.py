from typing import Any
from ..components.anglesHandler import AnglesHandler
from ..components.articulation import Articulation
from ..components.division import Division
from ..components.mapScale import MapScale
from ..components.localization import Localization
from ..components.map import Map
from ..components.miniMap import MiniMap
from ..components.subtitle import Subtitle
from ..components.table import Table
from ..components.miniMapCoords import MiniMapCoords
from ..components.qrcode import Qrcode

class ComponentFactory:

    # TODO: organize every component resouce in its folder

    def getComponent(self, comp: str, *args, **kwargs):
        components = {
            'AnglesHandler': AnglesHandler,
            'Articulation': Articulation,
            'Division': Division,
            'MapScale': MapScale,
            'Localization': Localization,
            'Map': Map,
            'MiniMap': MiniMap,
            'Subtitle': Subtitle,
            'Table': Table,
            'MiniMapCoords': MiniMapCoords,
            'Qrcode': Qrcode
        }
        return components.get(comp)(*args, **kwargs)