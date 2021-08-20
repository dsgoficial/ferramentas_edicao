from PyQt5.QtGui import QFont, QColor
from dataclasses import dataclass, field
from pathlib import Path

@dataclass
class Defaults:
    header: Path = Path(__file__).parent.parent / 'produtos' / 'common' / 'header.qpt'
    footer: Path = Path(__file__).parent.parent / 'produtos' / 'common' / 'creditsDSG.qpt'
    bdgexAcessInfo: Path = Path(__file__).parent.parent / 'produtos' / 'common' / 'bdgexAcessInfo.qpt'
    orthoMandatoryClasses: set = field(default_factory=lambda: set([
        'llp_localidade_p', 'infra_via_deslocamento_l', 'edicao_identificador_trecho_rod_p', 'infra_ferrovia_l', 
        'cobter_massa_dagua_a', 'elemnat_trecho_drenagem_l', 'aux_area_sem_dados_a'
    ]))
    orthoOptionalClasses: set = field(default_factory=lambda: set([
        'infra_elemento_energia_l', 'infra_elemento_energia_p', 'infra_elemento_energia_a', 'constr_extracao_mineral_a',
        'constr_extracao_mineral_p', 'elemnat_terreno_sujeito_inundacao_a',
        'llp_limite_legal_l', 'elemnat_curva_nivel_l', 'elemnat_ponto_cotado_p',
        'infra_pista_pouso_p', 'infra_pista_pouso_l', 'infra_pista_pouso_a', 'infra_elemento_infraestrutura_p',
        'infra_obstaculo_vertical_p', 'elemnat_elemento_hidrografico_p',
        'elemnat_elemento_hidrografico_l', 'elemnat_elemento_hidrografico_a', 'elemnat_toponimo_fisiografico_natural_p',
        'elemnat_toponimo_fisiografico_natural_l', 'elemnat_ilha_p', 'elemnat_ilha_a', 'llp_nome_local_p',
        'llp_aglomerado_rural_p', 'llp_area_pub_militar_l', 
        'llp_area_pub_militar_a', 'llp_terra_indigena_l', 'llp_terra_indigena_a', 'llp_unidade_conservacao_l',
        'llp_unidade_conservacao_a'
    ]))
    scaleBasedStyleTopo: set = field(default_factory=lambda: set(['llp_localidade_p']))
    scaleBasedStyleOrtho: set = field(default_factory=lambda: set(['llp_localidade_p']))

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
            25: {
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
            50: {
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
            25: {
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
                },
                "bdgexAcessInfo":{
                    "x_0": 729,
                    "y_0": 440,
                    "width": 105,
                    "height": 100,
                }
            },
            50: {
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
                },
                "bdgexAcessInfo":{
                    "x_0": 729,
                    "y_0": 440,
                    "width": 105,
                    "height": 100,
                }
            },
            100: {
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
            250: {
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