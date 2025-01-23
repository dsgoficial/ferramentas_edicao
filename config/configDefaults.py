from PyQt5.QtGui import QFont, QColor
from dataclasses import dataclass, field
from pathlib import Path


@dataclass
class ConfigDefaults:
    header: Path = (
        Path(__file__).parent.parent
        / "modules"
        / "mapBuilder"
        / "resources"
        / "products"
        / "common"
        / "header.qpt"
    )
    project: Path = (
        Path(__file__).parent.parent
        / "modules"
        / "mapBuilder"
        / "resources"
        / "products"
        / "common"
        / "creditsDSG.qpt"
    )
    bdgexAcessInfo: Path = (
        Path(__file__).parent.parent
        / "modules"
        / "mapBuilder"
        / "resources"
        / "products"
        / "common"
        / "bdgexAcessInfo.qpt"
    )
    reproductionRights: Path = (
        Path(__file__).parent.parent
        / "modules"
        / "mapBuilder"
        / "resources"
        / "products"
        / "common"
        / "reproductionRights.qpt"
    )
    orthoMandatoryClasses: set = field(
        default_factory=lambda: set(
            [
                "edicao_grid_numerico_p",
                "edicao_grid_edicao_l",
                "llp_localidade_p",
                "infra_via_deslocamento_l",
                "edicao_identificador_trecho_rod_p",
                "infra_ferrovia_l",
                "cobter_massa_dagua_a",
                "elemnat_trecho_drenagem_l",
                "llp_area_sem_dados_a",
                "edicao_texto_generico_p",
                "edicao_texto_generico_l",
            ]
        )
    )
    orthoOptionalClasses: set = field(
        default_factory=lambda: set(
            [
                "infra_elemento_energia_l",
                "infra_elemento_energia_p",
                "infra_elemento_energia_a",
                "constr_extracao_mineral_a",
                "constr_extracao_mineral_p",
                "elemnat_terreno_sujeito_inundacao_a",
                "llp_unidade_federacao_a",
                "elemnat_curva_nivel_l",
                "elemnat_ponto_cotado_p",
                "infra_pista_pouso_p",
                "infra_pista_pouso_l",
                "infra_pista_pouso_a",
                "infra_elemento_infraestrutura_p",
                "infra_elemento_infraestrutura_l",
                "infra_elemento_infraestrutura_a",
                "elemnat_elemento_hidrografico_p",
                "elemnat_elemento_hidrografico_l",
                "elemnat_elemento_hidrografico_a",
                "elemnat_toponimo_fisiografico_natural_p",
                "elemnat_toponimo_fisiografico_natural_l",
                "elemnat_ilha_p",
                "elemnat_ilha_a",
                "llp_nome_local_p",
                "llp_aglomerado_rural_p",
                "llp_area_pub_militar_a",
                "llp_terra_indigena_a",
                "llp_unidade_conservacao_a",
            ]
        )
    )
    scaleBasedStyleTopo: set = field(default_factory=lambda: set(["llp_localidade_p"]))
    scaleBasedStyleOrtho: set = field(default_factory=lambda: set(["llp_localidade_p"]))

    topoMap: dict = field(
        default_factory=lambda: {
            "name": "Carta Topográfica",
            "grid": {
                "crossX": 4,
                "crossY": 4,
                "fontSize": 1.9,
                "font": QFont("Noto Sans"),
                "fontLL": QFont("Noto Sans"),
                "llcolor": QColor("black"),
                "linwidth_geo": 0.07,
                "linwidth_utm": 0.0,
                "linwidth_buffer_geo": 0,
                "linwidth_buffer_utm": 0,
                "geo_grid_color": QColor(36, 31, 33),
                "utm_grid_color": QColor(0, 0, 0, 0),
                "geo_grid_buffer_color": QColor(36, 31, 33),
                "utm_grid_buffer_color": QColor(36, 31, 33),
                "masks_check": True,
            },
            "qpt": {
                25: {
                    "project": {
                        "x_0": 7,
                        "y_0": 487,
                        "width": 110,
                        "height": 70,
                    },
                    "header": {
                        "x_0": 7,
                        "y_0": 7,
                        "width": 110,
                        "height": 22,
                    },
                    "classified": {"x_0": 7, "y_0": 175, "width": 110, "height": 20},
                    "reproductionRights": {
                        "x_0": 7,
                        "y_0": 555,
                        "width": 110,
                        "height": 20,
                    },
                },
                50: {
                    "project": {
                        "x_0": 7,
                        "y_0": 487,
                        "width": 110,
                        "height": 70,
                    },
                    "header": {
                        "x_0": 7,
                        "y_0": 7,
                        "width": 110,
                        "height": 22,
                    },
                    "classified": {"x_0": 7, "y_0": 175, "width": 110, "height": 20},
                    "reproductionRights": {
                        "x_0": 7,
                        "y_0": 555,
                        "width": 110,
                        "height": 20,
                    },
                },
                100: {
                    "project": {
                        "x_0": 7,
                        "y_0": 487,
                        "width": 110,
                        "height": 70,
                    },
                    "header": {
                        "x_0": 7,
                        "y_0": 7,
                        "width": 110,
                        "height": 22,
                    },
                    "classified": {"x_0": 7, "y_0": 180, "width": 120, "height": 20},
                    "reproductionRights": {
                        "x_0": 7,
                        "y_0": 555,
                        "width": 110,
                        "height": 20,
                    },
                },
                250: {
                    "header": {
                        "x_0": 7,
                        "y_0": 7,
                        "width": 110,
                        "height": 22,
                    },
                    "classified": {"x_0": 7, "y_0": 180, "width": 120, "height": 20},
                    "project": {
                        "x_0": 721,
                        "y_0": 478.56,
                        "width": 110,
                        "height": 70,
                    },
                    "reproductionRights": {
                        "x_0": 721,
                        "y_0": 552,
                        "width": 110,
                        "height": 20,
                    },
                },
            },
        }
    )

    orthoMap: dict = field(
        default_factory=lambda: {
            "name": "Carta Ortoimagem",
            "qpt": {
                25: {
                    "project": {
                        "x_0": 7,
                        "y_0": 487,
                        "width": 110,
                        "height": 70,
                    },
                    "header": {
                        "x_0": 7,
                        "y_0": 7,
                        "width": 110,
                        "height": 22,
                    },
                    "classified": {"x_0": 7, "y_0": 180, "width": 120, "height": 20},
                    "bdgexAcessInfo": {
                        "x_0": 727,
                        "y_0": 450,
                        "width": 105,
                        "height": 100,
                    },
                    "reproductionRights": {
                        "x_0": 7,
                        "y_0": 555,
                        "width": 110,
                        "height": 20,
                    },
                },
                50: {
                    "project": {
                        "x_0": 7,
                        "y_0": 487,
                        "width": 110,
                        "height": 70,
                    },
                    "header": {
                        "x_0": 7,
                        "y_0": 7,
                        "width": 110,
                        "height": 22,
                    },
                    "classified": {"x_0": 7, "y_0": 180, "width": 120, "height": 20},
                    "bdgexAcessInfo": {
                        "x_0": 727,
                        "y_0": 450,
                        "width": 105,
                        "height": 100,
                    },
                    "reproductionRights": {
                        "x_0": 7,
                        "y_0": 555,
                        "width": 110,
                        "height": 20,
                    },
                },
                100: {
                    "project": {
                        "x_0": 7,
                        "y_0": 487,
                        "width": 110,
                        "height": 70,
                    },
                    "header": {
                        "x_0": 7,
                        "y_0": 7,
                        "width": 110,
                        "height": 22,
                    },
                    "classified": {"x_0": 7, "y_0": 180, "width": 120, "height": 20},
                    "bdgexAcessInfo": {
                        "x_0": 727,
                        "y_0": 450,
                        "width": 105,
                        "height": 100,
                    },
                    "reproductionRights": {
                        "x_0": 7,
                        "y_0": 555,
                        "width": 110,
                        "height": 20,
                    },
                },
                250: {
                    "header": {
                        "x_0": 7,
                        "y_0": 7,
                        "width": 110,
                        "height": 22,
                    },
                    "classified": {"x_0": 7, "y_0": 180, "width": 120, "height": 20},
                    "bdgexAcessInfo": {
                        "x_0": 852,
                        "y_0": 380,
                        "width": 105,
                        "height": 100,
                    },
                    "project": {
                        "x_0": 721,
                        "y_0": 478.56,
                        "width": 110,
                        "height": 70,
                    },
                    "reproductionRights": {
                        "x_0": 721,
                        "y_0": 552,
                        "width": 110,
                        "height": 20,
                    },
                },
            },
            "grid": {
                "crossX": 4,
                "crossY": 4,
                "fontSize": 1.9,
                "font": QFont("Noto Sans"),
                "fontLL": QFont("Noto Sans"),
                "llcolor": QColor("black"),
                "linwidth_geo": 0.3,
                "linwidth_utm": 0.0,
                "linwidth_buffer_geo": 0.1,
                "linwidth_buffer_utm": 0.0,
                "geo_grid_color": QColor(227, 227, 227),
                "utm_grid_color": QColor(0, 0, 0, 0),
                "geo_grid_buffer_color": QColor(36, 31, 33),
                "utm_grid_buffer_color": QColor(0, 0, 0, 0),
                "masks_check": True,
            },
            "html": {
                "info_tecnica": "",
            },
        }
    )

    omMap: dict = field(
        default_factory=lambda: {
            "name": "Carta Especial",
            "qpt": {
                1: {
                    #'headerPath': Path(__file__).parent.parent / 'modules' / 'mapBuilder' / 'resources' / 'products' / 'omMap' / 'qpts' / 'header.qpt',
                    #'projectPath': Path(__file__).parent.parent / 'modules' / 'mapBuilder' / 'resources' / 'products' / 'omMap' / 'qpts' / 'project.qpt',
                    # 'reproductionRightsPath': Path(__file__).parent.parent / 'modules' / 'mapBuilder' / 'resources' / 'products' / 'omMap' / 'qpts' / 'reproductionRights.qpt',
                    "header": {
                        "x_0": 7,
                        "y_0": 7,
                        "width": 165,
                        "height": 40,
                    },
                    "classified": {"x_0": 7, "y_0": 440, "width": 120, "height": 20},
                    "bdgexAcessInfo": {
                        "x_0": 8,
                        "y_0": 640,
                        "width": 105,
                        "height": 100,
                    },
                    "project": {
                        "x_0": 7,
                        "y_0": 790,
                        "width": 110,
                        "height": 70,
                    },
                    "reproductionRights": {
                        "x_0": 7,
                        "y_0": 880,
                        "width": 110,
                        "height": 20,
                    },
                },
                2: {
                    #'headerPath': Path(__file__).parent.parent / 'modules' / 'mapBuilder' / 'resources' / 'products' / 'omMap' / 'qpts' / 'header.qpt',
                    #'projectPath': Path(__file__).parent.parent / 'modules' / 'mapBuilder' / 'resources' / 'products' / 'omMap' / 'qpts' / 'project.qpt',
                    "header": {
                        "x_0": 7,
                        "y_0": 7,
                        "width": 110,
                        "height": 22,
                    },
                    "classified": {"x_0": 7, "y_0": 180, "width": 120, "height": 20},
                    "project": {
                        "x_0": 7,
                        "y_0": 450,
                        "width": 110,
                        "height": 70,
                    },
                    "reproductionRights": {
                        "x_0": 7,
                        "y_0": 580,
                        "width": 110,
                        "height": 20,
                    },
                    "bdgexAcessInfo": {
                        "x_0": 723,
                        "y_0": 175,
                        "width": 105,
                        "height": 100,
                    },
                },
                "html": {
                    "info_tecnica": "",
                },
            },
        }
    )

    militaryOrthoMap: dict = field(
        default_factory=lambda: {
            "name": "Carta Ortoimagem Militar",
            "projectPath": Path(__file__).parent.parent
            / "modules"
            / "mapBuilder"
            / "resources"
            / "products"
            / "common"
            / "creditsDSG.qpt",
            "qpt": {
                25: {
                    "project": {
                        "x_0": 7,
                        "y_0": 487,
                        "width": 110,
                        "height": 70,
                    },
                    "header": {
                        "x_0": 7,
                        "y_0": 7,
                        "width": 110,
                        "height": 22,
                    },
                    "classified": {"x_0": 7, "y_0": 180, "width": 120, "height": 20},
                    "bdgexAcessInfo": {
                        "x_0": 727,
                        "y_0": 450,
                        "width": 105,
                        "height": 100,
                    },
                    "reproductionRights": {
                        "x_0": 7,
                        "y_0": 555,
                        "width": 110,
                        "height": 20,
                    },
                },
                50: {
                    "project": {
                        "x_0": 7,
                        "y_0": 487,
                        "width": 110,
                        "height": 70,
                    },
                    "header": {
                        "x_0": 7,
                        "y_0": 7,
                        "width": 110,
                        "height": 22,
                    },
                    "classified": {"x_0": 7, "y_0": 180, "width": 120, "height": 20},
                    "bdgexAcessInfo": {
                        "x_0": 727,
                        "y_0": 450,
                        "width": 105,
                        "height": 100,
                    },
                    "reproductionRights": {
                        "x_0": 7,
                        "y_0": 555,
                        "width": 110,
                        "height": 20,
                    },
                },
                100: {
                    "project": {
                        "x_0": 7,
                        "y_0": 487,
                        "width": 110,
                        "height": 70,
                    },
                    "header": {
                        "x_0": 7,
                        "y_0": 7,
                        "width": 110,
                        "height": 22,
                    },
                    "classified": {"x_0": 7, "y_0": 180, "width": 120, "height": 20},
                    "bdgexAcessInfo": {
                        "x_0": 727,
                        "y_0": 450,
                        "width": 105,
                        "height": 100,
                    },
                    "reproductionRights": {
                        "x_0": 7,
                        "y_0": 555,
                        "width": 110,
                        "height": 20,
                    },
                },
                250: {
                    "header": {
                        "x_0": 7,
                        "y_0": 7,
                        "width": 110,
                        "height": 22,
                    },
                    "classified": {"x_0": 7, "y_0": 180, "width": 120, "height": 20},
                    "bdgexAcessInfo": {
                        "x_0": 852,
                        "y_0": 380,
                        "width": 105,
                        "height": 100,
                    },
                    "project": {
                        "x_0": 721,
                        "y_0": 482,
                        "width": 110,
                        "height": 70,
                    },
                    "reproductionRights": {
                        "x_0": 721,
                        "y_0": 561,
                        "width": 110,
                        "height": 20,
                    },
                },
            },
            "grid": {
                "crossX": 4,
                "crossY": 4,
                "fontSize": 1.9,
                "font": QFont("Noto Sans"),
                "fontLL": QFont("Noto Sans"),
                "llcolor": QColor("black"),
                "linwidth_geo": 0.3,
                "linwidth_utm": 0.2,
                "linwidth_buffer_geo": 0.1,
                "linwidth_buffer_utm": 0.1,
                "geo_grid_color": QColor(227, 227, 227),
                "utm_grid_color": QColor(227, 227, 227),
                "geo_grid_buffer_color": QColor(36, 31, 33),
                "utm_grid_buffer_color": QColor(36, 31, 33),
                "masks_check": True,
            },
            "html": {
                "info_tecnica": "",
            },
        }
    )

    militaryTopoMap: dict = field(
        default_factory=lambda: {
            "name": "Carta Topográfica Militar",
            "projectPath": Path(__file__).parent.parent
            / "modules"
            / "mapBuilder"
            / "resources"
            / "products"
            / "common"
            / "creditsDSG.qpt",
            "grid": {
                "crossX": 4,
                "crossY": 4,
                "fontSize": 1.9,
                "font": QFont("Noto Sans"),
                "fontLL": QFont("Noto Sans"),
                "llcolor": QColor("black"),
                "linwidth_geo": 0.07,
                "linwidth_utm": 0.05,
                "linwidth_buffer_geo": 0,
                "linwidth_buffer_utm": 0,
                "geo_grid_color": QColor(36, 31, 33),
                "utm_grid_color": QColor(36, 31, 33),
                "geo_grid_buffer_color": QColor(36, 31, 33),
                "utm_grid_buffer_color": QColor(36, 31, 33),
                "masks_check": True,
            },
            "qpt": {
                25: {
                    "project": {
                        "x_0": 7,
                        "y_0": 487,
                        "width": 110,
                        "height": 70,
                    },
                    "header": {
                        "x_0": 7,
                        "y_0": 7,
                        "width": 110,
                        "height": 22,
                    },
                    "classified": {"x_0": 7, "y_0": 175, "width": 110, "height": 20},
                    "reproductionRights": {
                        "x_0": 7,
                        "y_0": 555,
                        "width": 110,
                        "height": 20,
                    },
                },
                50: {
                    "project": {
                        "x_0": 7,
                        "y_0": 487,
                        "width": 110,
                        "height": 70,
                    },
                    "header": {
                        "x_0": 7,
                        "y_0": 7,
                        "width": 110,
                        "height": 22,
                    },
                    "classified": {"x_0": 7, "y_0": 175, "width": 110, "height": 20},
                    "reproductionRights": {
                        "x_0": 7,
                        "y_0": 555,
                        "width": 110,
                        "height": 20,
                    },
                },
                100: {
                    "project": {
                        "x_0": 7,
                        "y_0": 487,
                        "width": 110,
                        "height": 70,
                    },
                    "header": {
                        "x_0": 7,
                        "y_0": 7,
                        "width": 110,
                        "height": 22,
                    },
                    "classified": {"x_0": 7, "y_0": 180, "width": 120, "height": 20},
                    "reproductionRights": {
                        "x_0": 7,
                        "y_0": 555,
                        "width": 110,
                        "height": 20,
                    },
                },
                250: {
                    "header": {
                        "x_0": 7,
                        "y_0": 7,
                        "width": 110,
                        "height": 22,
                    },
                    "classified": {"x_0": 7, "y_0": 180, "width": 120, "height": 20},
                    "project": {
                        "x_0": 721,
                        "y_0": 482,
                        "width": 110,
                        "height": 70,
                    },
                    "reproductionRights": {
                        "x_0": 721,
                        "y_0": 561,
                        "width": 110,
                        "height": 20,
                    },
                },
            },
        }
    )
