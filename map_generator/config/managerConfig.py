from PyQt5.QtGui import QFont, QColor
from dataclasses import dataclass
from pathlib import Path

@dataclass
class DefaultPaths:
    header: Path = Path(__file__).parent.parent / 'produtos' / 'carta_topografica' / 'cabecalho.qpt'
    footer: Path = Path(__file__).parent.parent / 'produtos' / 'carta_topografica' / 'projeto_mif_creditos_dsg.qpt'

product_parameters = {
    'carta_topografica': {
        "nome_produto": "Carta Topográfica",
        "required_files": [],
        "grid": {
            "crossX": 4,
            "crossY": 4,
            "fontSize": 1.9,
            "font": QFont("Arial"),
            "fontLL": QFont("Arial"),
            "llcolor": QColor('black'),
            "linwidth_geo": 0.07,
            "linwidth_utm": 0.05,
            "linwidth_buffer_geo": 0,
            "linwidth_buffer_utm": 0,
            "geo_grid_color": QColor('black'),
            "utm_grid_color": QColor('black'),
            "geo_grid_buffer_color": QColor('black'),
            "utm_grid_buffer_color": QColor('black'),
            "masks_check": True
        },
        "qpt": {
            "25": {
                "projeto": {
                    "x_0": 7,
                    "y_0": 487,
                    "width": 110,
                    "height": 70,
                },
                "cabecalho": {
                    "x_0": 7,
                    "y_0": 7,
                    "width": 110,
                    "height": 22,
                }
            },
            "50": {
                "projeto": {
                    "x_0": 7,
                    "y_0": 487,
                    "width": 110,
                    "height": 70,
                },
                "cabecalho": {
                    "x_0": 7,
                    "y_0": 7,
                    "width": 110,
                    "height": 22,
                },
                "classified": {
                    "x_0": 7,
                    "y_0": 175,
                    "width": 110,
                    "height": 20
                }
            }
        }

    },
    'carta_ortoimagem': {
        "nome_produto": "Carta Ortoimagem",
        "required_files": [
            ['map_generator', 'limites', 'estados_2019.shp'],
            ['map_generator', 'limites', 'internacional.shp'],
            ['map_generator', 'limites', 'municipios_2019.shp'],
            ['map_generator', 'limites', 'oceano.shp'],
            ['map_generator', 'limites', 'paises.shp']
        ],
        "qpt": {
            "25": {
                "projeto": {
                    "x_0": 7,
                    "y_0": 487,
                    "width": 110,
                    "height": 70,
                },
                "cabecalho": {
                    "x_0": 7,
                    "y_0": 7,
                    "width": 110,
                    "height": 22,
                }
            },
            "50": {
                "projeto": {
                    "x_0": 7,
                    "y_0": 487,
                    "width": 110,
                    "height": 70,
                },
                "cabecalho": {
                    "x_0": 7,
                    "y_0": 7,
                    "width": 110,
                    "height": 22,
                },
                "classified": {
                    "x_0": 7,
                    "y_0": 180,
                    "width": 120,
                    "height": 20
                }
            },
            "100": {
                "projeto": {
                    "x_0": 7,
                    "y_0": 487,
                    "width": 110,
                    "height": 70,
                },
                "cabecalho": {
                    "x_0": 7,
                    "y_0": 7,
                    "width": 110,
                    "height": 22,
                }
            },
            "250": {
                "projeto": {
                    "x_0": 7,
                    "y_0": 395,
                    "width": 110,
                    "height": 70,
                },
                "cabecalho": {
                    "x_0": 7,
                    "y_0": 7,
                    "width": 110,
                    "height": 22,
                }
            }
        },
        "html": {
            "info_tecnica": "",
        },
        "grid": {
            "crossX": 4,
            "crossY": 4,
            "fontSize": 1.9,
            "font": QFont("Arial"),
            "fontLL": QFont("Arial"),
            "llcolor": QColor('black'),
            "linwidth_geo": 0.3,
            "linwidth_utm": 0.2,
            "linwidth_buffer_geo": 0.1,
            "linwidth_buffer_utm": 0.1,
            "geo_grid_color": QColor('black'),
            "utm_grid_color": QColor('black'),
            "geo_grid_buffer_color": QColor('white'),
            "utm_grid_buffer_color": QColor('white'),
            "masks_check": True
        }
    }
}