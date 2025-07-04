from .qgis_utils import get_outside_boundary_layer
# Import coordinate utils if they exist
try:
    from .lat_lon_coordinate_utils import DMS
    from .utm_coordinate_utils import UTM
    from .qgis_utils import get_closest_value_key
    _has_coord_utils = True
except ImportError:
    _has_coord_utils = False

__all__ = [
    'get_outside_boundary_layer',
    'build_label',
]

# Only export coordinate utils if they exist
if _has_coord_utils:
    __all__.extend(['DMS', 'UTM', 'get_closest_value_key'])