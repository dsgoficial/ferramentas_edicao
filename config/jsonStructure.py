import os
import time
from typing import List, Dict, Tuple
from qgis.core import QgsFileUtils

data_structure = {
    "Carta Ortoimagem": [
        {"key": "tipo_produto", "type": str, "children": None, "required": True},
        {"key": "versao_produto", "type": str, "children": None, "required": False},
        {"key": "inom", "type": str, "children": None, "required": True},
        {"key": "edicao_produto", "type": str, "children": None, "required": False},
        {"key": "escala", "type": str, "children": None, "required": False},
        {
            "key": "mde_diagrama_elevacao",
            "type": dict,
            "children": [
                {"key": "caminho_mde", "type": str, "children": None, "required": True},
                {"key": "epsg", "type": str, "children": None, "required": True},
            ],
            "required": True,
        },
        {
            "key": "param_diagrama_elevacao",
            "type": dict,
            "children": [
                {
                    "key": "min_pixel_group_size",
                    "type": int,
                    "children": None,
                    "required": False,
                },
                {
                    "key": "smoothing_parameter",
                    "type": float,
                    "children": None,
                    "required": False,
                },
            ],
            "required": False,
        },
        {
            "key": "center",
            "type": dict,
            "children": [
                {"key": "latitude", "type": float, "children": None, "required": True},
                {"key": "longitude", "type": float, "children": None, "required": True},
            ],
            "required": False,
        },
        {"key": "nome", "type": str, "children": None, "required": True},
        {"key": "cabecalho", "type": str, "children": None, "required": False},
        {"key": "projeto", "type": str, "children": None, "required": False},
        {
            "key": "direitos_reproducao",
            "type": str,
            "children": None,
            "required": False,
        },
        {
            "key": "licenca_produto",
            "type": str,
            "children": None,
            "required": False,
        },
        {"key": "acesso_informacao", "type": str, "children": None, "required": False},
        {
            "key": "territorio_internacional",
            "type": bool,
            "children": None,
            "required": False,
        },
        {
            "key": "classes_complementares",
            "type": list,
            "children": None,
            "required": False,
        },
        {
            "key": "imagens",
            "type": list,
            "children": [
                {
                    "key": "caminho_imagem",
                    "type": str,
                    "children": None,
                    "required": True,
                },
                {
                    "key": "caminho_estilo",
                    "type": str,
                    "children": None,
                    "required": False,
                },
                {"key": "epsg", "type": str, "children": None, "required": True},
            ],
            "required": True,
        },
        {"key": "dpi", "type": int, "children": None, "required": False},
        {
            "key": "banco",
            "type": dict,
            "children": [
                {"key": "servidor", "type": str, "children": None, "required": True},
                {"key": "porta", "type": int, "children": None, "required": True},
                {"key": "nome", "type": str, "children": None, "required": True},
            ],
            "required": True,
        },
        {
            "key": "fases",
            "type": list,
            "children": [
                {"key": "nome", "type": str, "children": None, "required": True},
                {
                    "key": "executantes",
                    "type": list,
                    "children": [
                        {
                            "key": "nome",
                            "type": str,
                            "children": None,
                            "required": True,
                        },
                        {"key": "ano", "type": str, "children": None, "required": True},
                    ],
                    "required": True,
                },
            ],
            "required": True,
        },
        {
            "key": "sensores",
            "type": list,
            "children": [
                {"key": "tipo", "type": str, "children": None, "required": True},
                {"key": "plataforma", "type": str, "children": None, "required": True},
                {"key": "nome", "type": str, "children": None, "required": True},
                {"key": "resolucao", "type": str, "children": None, "required": True},
                {"key": "bandas", "type": str, "children": None, "required": True},
                {
                    "key": "nivel_produto",
                    "type": str,
                    "children": None,
                    "required": True,
                },
            ],
            "required": True,
        },
        {
            "key": "info_tecnica",
            "type": dict,
            "children": [
                {
                    "key": "data_criacao",
                    "type": str,
                    "children": None,
                    "required": True,
                },
                {
                    "key": "pec_planimetrico",
                    "type": str,
                    "children": None,
                    "required": True,
                },
                {
                    "key": "pec_altimetrico",
                    "type": str,
                    "children": None,
                    "required": True,
                },
                {
                    "key": "datum_vertical",
                    "type": str,
                    "children": None,
                    "required": True,
                },
                {
                    "key": "origem_dados_altimetricos",
                    "type": str,
                    "children": None,
                    "required": True,
                },
                {
                    "key": "especificacao_representacao",
                    "type": str,
                    "children": None,
                    "required": False,
                },
                {
                    "key": "dados_terceiros",
                    "type": list,
                    "children": None,
                    "required": True,
                },
                {
                    "key": "observacao_homologacao",
                    "type": str,
                    "children": None,
                    "required": False,
                },
                {
                    "key": "exibir_curva_auxiliar",
                    "type": str,
                    "children": None,
                    "required": False,
                },
                {
                    "key": "equidistancia_personalizada",
                    "type": str,
                    "children": None,
                    "required": False,
                },
            ],
            "required": True,
        },
    ],
    "Carta Topográfica": [
        {"key": "tipo_produto", "type": str, "children": None, "required": True},
        {"key": "versao_produto", "type": str, "children": None, "required": False},
        {"key": "inom", "type": str, "children": None, "required": True},
        {"key": "edicao_produto", "type": str, "children": None, "required": False},
        {"key": "escala", "type": str, "children": None, "required": False},
        {
            "key": "mde_diagrama_elevacao",
            "type": dict,
            "children": [
                {"key": "caminho_mde", "type": str, "children": None, "required": True},
                {"key": "epsg", "type": str, "children": None, "required": True},
            ],
            "required": True,
        },
        {
            "key": "param_diagrama_elevacao",
            "type": dict,
            "children": [
                {
                    "key": "min_pixel_group_size",
                    "type": int,
                    "children": None,
                    "required": False,
                },
                {
                    "key": "smoothing_parameter",
                    "type": float,
                    "children": None,
                    "required": False,
                },
            ],
            "required": False,
        },
        {
            "key": "center",
            "type": dict,
            "children": [
                {"key": "latitude", "type": float, "children": None, "required": True},
                {"key": "longitude", "type": float, "children": None, "required": True},
            ],
            "required": False,
        },
        {"key": "nome", "type": str, "children": None, "required": True},
        {"key": "cabecalho", "type": str, "children": None, "required": False},
        {"key": "projeto", "type": str, "children": None, "required": False},
        {
            "key": "direitos_reproducao",
            "type": str,
            "children": None,
            "required": False,
        },
        {
            "key": "licenca_produto",
            "type": str,
            "children": None,
            "required": False,
        },
        {"key": "acesso_restrito", "type": str, "children": None, "required": False},
        {
            "key": "territorio_internacional",
            "type": bool,
            "children": None,
            "required": False,
        },
        {"key": "dpi", "type": int, "children": None, "required": False},
        {
            "key": "banco",
            "type": dict,
            "children": [
                {"key": "servidor", "type": str, "children": None, "required": True},
                {"key": "porta", "type": int, "children": None, "required": True},
                {"key": "nome", "type": str, "children": None, "required": True},
            ],
            "required": True,
        },
        {
            "key": "fases",
            "type": list,
            "children": [
                {"key": "nome", "type": str, "children": None, "required": True},
                {
                    "key": "executantes",
                    "type": list,
                    "children": [
                        {
                            "key": "nome",
                            "type": str,
                            "children": None,
                            "required": True,
                        },
                        {"key": "ano", "type": str, "children": None, "required": True},
                    ],
                    "required": True,
                },
            ],
            "required": True,
        },
        {
            "key": "info_tecnica",
            "type": dict,
            "children": [
                {
                    "key": "data_criacao",
                    "type": str,
                    "children": None,
                    "required": True,
                },
                {
                    "key": "pec_planimetrico",
                    "type": str,
                    "children": None,
                    "required": True,
                },
                {
                    "key": "pec_altimetrico",
                    "type": str,
                    "children": None,
                    "required": True,
                },
                {
                    "key": "datum_vertical",
                    "type": str,
                    "children": None,
                    "required": True,
                },
                {
                    "key": "origem_dados_altimetricos",
                    "type": str,
                    "children": None,
                    "required": True,
                },
                {
                    "key": "especificacao_representacao",
                    "type": str,
                    "children": None,
                    "required": False,
                },
                {
                    "key": "dados_terceiros",
                    "type": list,
                    "children": None,
                    "required": True,
                },
                {
                    "key": "observacao_homologacao",
                    "type": str,
                    "children": None,
                    "required": False,
                },
            ],
            "required": True,
        },
    ],
    "Carta Ortoimagem OM": [
        {"key": "tipo_produto", "type": str, "children": None, "required": True},
        {"key": "versao_produto", "type": str, "children": None, "required": False},
        {"key": "poligono", "type": str, "children": None, "required": True},
        {"key": "nome", "type": str, "children": None, "required": True},
        {"key": "imagemOM", "type": str, "children": None, "required": True},
        {"key": "imagemSubordinacao", "type": str, "children": None, "required": True},
        {"key": "subordinacao1", "type": str, "children": None, "required": False},
        {"key": "subordinacao2", "type": str, "children": None, "required": False},
        {"key": "endereco", "type": str, "children": None, "required": True},
        {"key": "altitude", "type": str, "children": None, "required": True},
        {
            "key": "fases",
            "type": list,
            "children": [
                {"key": "nome", "type": str, "children": None, "required": True},
                {
                    "key": "executantes",
                    "type": list,
                    "children": [
                        {
                            "key": "nome",
                            "type": str,
                            "children": None,
                            "required": True,
                        },
                        {"key": "ano", "type": str, "children": None, "required": True},
                    ],
                    "required": True,
                },
            ],
            "required": True,
        },
        {
            "key": "imagens",
            "type": list,
            "children": [
                {
                    "key": "caminho_imagem",
                    "type": str,
                    "children": None,
                    "required": True,
                },
                {
                    "key": "caminho_estilo",
                    "type": str,
                    "children": None,
                    "required": False,
                },
                {"key": "epsg", "type": str, "children": None, "required": True},
            ],
            "required": True,
        },
        {
            "key": "info_tecnica",
            "type": dict,
            "children": [
                {
                    "key": "data_criacao",
                    "type": str,
                    "children": None,
                    "required": True,
                },
                {
                    "key": "pec_planimetrico",
                    "type": str,
                    "children": None,
                    "required": False,
                },
                {
                    "key": "pec_altimetrico",
                    "type": str,
                    "children": None,
                    "required": False,
                },
                {
                    "key": "datum_vertical",
                    "type": str,
                    "children": None,
                    "required": False,
                },
                {
                    "key": "origem_dados_altimetricos",
                    "type": str,
                    "children": None,
                    "required": False,
                },
                {
                    "key": "dados_terceiros",
                    "type": list,
                    "children": None,
                    "required": False,
                },
            ],
            "required": True,
        },
        {
            "key": "sensores",
            "type": list,
            "children": [
                {"key": "tipo", "type": str, "children": None, "required": True},
                {"key": "plataforma", "type": str, "children": None, "required": True},
                {"key": "nome", "type": str, "children": None, "required": True},
                {"key": "resolucao", "type": str, "children": None, "required": True},
                {"key": "bandas", "type": str, "children": None, "required": True},
                {
                    "key": "nivel_produto",
                    "type": str,
                    "children": None,
                    "required": True,
                },
            ],
            "required": True,
        },
    ],
    "Carta Ortoimagem Militar": [
        {"key": "tipo_produto", "type": str, "children": None, "required": True},
        {"key": "versao_produto", "type": str, "children": None, "required": False},
        {"key": "inom", "type": str, "children": None, "required": True},
        {"key": "edicao_produto", "type": str, "children": None, "required": False},
        {"key": "escala", "type": str, "children": None, "required": False},
        {
            "key": "mde_diagrama_elevacao",
            "type": dict,
            "children": [
                {"key": "caminho_mde", "type": str, "children": None, "required": True},
                {"key": "epsg", "type": str, "children": None, "required": True},
            ],
            "required": True,
        },
        {
            "key": "param_diagrama_elevacao",
            "type": dict,
            "children": [
                {
                    "key": "min_pixel_group_size",
                    "type": int,
                    "children": None,
                    "required": False,
                },
                {
                    "key": "smoothing_parameter",
                    "type": float,
                    "children": None,
                    "required": False,
                },
            ],
            "required": False,
        },
        {
            "key": "center",
            "type": dict,
            "children": [
                {"key": "latitude", "type": float, "children": None, "required": True},
                {"key": "longitude", "type": float, "children": None, "required": True},
            ],
            "required": False,
        },
        {"key": "nome", "type": str, "children": None, "required": True},
        {"key": "cabecalho", "type": str, "children": None, "required": False},
        {"key": "projeto", "type": str, "children": None, "required": False},
        {
            "key": "direitos_reproducao",
            "type": str,
            "children": None,
            "required": False,
        },
        {"key": "acesso_informacao", "type": str, "children": None, "required": False},
        {"key": "acesso_restrito", "type": str, "children": None, "required": False},
        {
            "key": "territorio_internacional",
            "type": bool,
            "children": None,
            "required": False,
        },
        {
            "key": "classes_complementares",
            "type": list,
            "children": None,
            "required": False,
        },
        {
            "key": "imagens",
            "type": list,
            "children": [
                {
                    "key": "caminho_imagem",
                    "type": str,
                    "children": None,
                    "required": True,
                },
                {
                    "key": "caminho_estilo",
                    "type": str,
                    "children": None,
                    "required": False,
                },
                {"key": "epsg", "type": str, "children": None, "required": True},
            ],
            "required": True,
        },
        {"key": "dpi", "type": int, "children": None, "required": False},
        {
            "key": "banco",
            "type": dict,
            "children": [
                {"key": "servidor", "type": str, "children": None, "required": True},
                {"key": "porta", "type": int, "children": None, "required": True},
                {"key": "nome", "type": str, "children": None, "required": True},
            ],
            "required": True,
        },
        {
            "key": "fases",
            "type": list,
            "children": [
                {"key": "nome", "type": str, "children": None, "required": True},
                {
                    "key": "executantes",
                    "type": list,
                    "children": [
                        {
                            "key": "nome",
                            "type": str,
                            "children": None,
                            "required": True,
                        },
                        {"key": "ano", "type": str, "children": None, "required": True},
                    ],
                    "required": True,
                },
            ],
            "required": True,
        },
        {
            "key": "sensores",
            "type": list,
            "children": [
                {"key": "tipo", "type": str, "children": None, "required": True},
                {"key": "plataforma", "type": str, "children": None, "required": True},
                {"key": "nome", "type": str, "children": None, "required": True},
                {"key": "resolucao", "type": str, "children": None, "required": True},
                {"key": "bandas", "type": str, "children": None, "required": True},
                {
                    "key": "nivel_produto",
                    "type": str,
                    "children": None,
                    "required": True,
                },
            ],
            "required": True,
        },
        {
            "key": "info_tecnica",
            "type": dict,
            "children": [
                {
                    "key": "data_criacao",
                    "type": str,
                    "children": None,
                    "required": True,
                },
                {
                    "key": "pec_planimetrico",
                    "type": str,
                    "children": None,
                    "required": True,
                },
                {
                    "key": "pec_altimetrico",
                    "type": str,
                    "children": None,
                    "required": True,
                },
                {
                    "key": "datum_vertical",
                    "type": str,
                    "children": None,
                    "required": True,
                },
                {
                    "key": "origem_dados_altimetricos",
                    "type": str,
                    "children": None,
                    "required": True,
                },
                {
                    "key": "especificacao_representacao",
                    "type": str,
                    "children": None,
                    "required": False,
                },
                {
                    "key": "dados_terceiros",
                    "type": list,
                    "children": None,
                    "required": True,
                },
                {
                    "key": "observacao_homologacao",
                    "type": str,
                    "children": None,
                    "required": False,
                },
                {
                    "key": "exibir_curva_auxiliar",
                    "type": str,
                    "children": None,
                    "required": False,
                },
                {
                    "key": "equidistancia_personalizada",
                    "type": str,
                    "children": None,
                    "required": False,
                },
            ],
            "required": True,
        },
    ],
    "Carta Topográfica Militar": [
        {"key": "tipo_produto", "type": str, "children": None, "required": True},
        {"key": "versao_produto", "type": str, "children": None, "required": False},
        {"key": "inom", "type": str, "children": None, "required": True},
        {"key": "edicao_produto", "type": str, "children": None, "required": False},
        {"key": "escala", "type": str, "children": None, "required": False},
        {
            "key": "mde_diagrama_elevacao",
            "type": dict,
            "children": [
                {"key": "caminho_mde", "type": str, "children": None, "required": True},
                {"key": "epsg", "type": str, "children": None, "required": True},
            ],
            "required": True,
        },
        {
            "key": "param_diagrama_elevacao",
            "type": dict,
            "children": [
                {
                    "key": "min_pixel_group_size",
                    "type": int,
                    "children": None,
                    "required": False,
                },
                {
                    "key": "smoothing_parameter",
                    "type": float,
                    "children": None,
                    "required": False,
                },
            ],
            "required": False,
        },
        {
            "key": "center",
            "type": dict,
            "children": [
                {"key": "latitude", "type": float, "children": None, "required": True},
                {"key": "longitude", "type": float, "children": None, "required": True},
            ],
            "required": False,
        },
        {"key": "nome", "type": str, "children": None, "required": True},
        {"key": "cabecalho", "type": str, "children": None, "required": False},
        {"key": "projeto", "type": str, "children": None, "required": False},
        {
            "key": "direitos_reproducao",
            "type": str,
            "children": None,
            "required": False,
        },
        {"key": "acesso_restrito", "type": str, "children": None, "required": False},
        {
            "key": "territorio_internacional",
            "type": bool,
            "children": None,
            "required": False,
        },
        {"key": "dpi", "type": int, "children": None, "required": False},
        {
            "key": "banco",
            "type": dict,
            "children": [
                {"key": "servidor", "type": str, "children": None, "required": True},
                {"key": "porta", "type": int, "children": None, "required": True},
                {"key": "nome", "type": str, "children": None, "required": True},
            ],
            "required": True,
        },
        {
            "key": "fases",
            "type": list,
            "children": [
                {"key": "nome", "type": str, "children": None, "required": True},
                {
                    "key": "executantes",
                    "type": list,
                    "children": [
                        {
                            "key": "nome",
                            "type": str,
                            "children": None,
                            "required": True,
                        },
                        {"key": "ano", "type": str, "children": None, "required": True},
                    ],
                    "required": True,
                },
            ],
            "required": True,
        },
        {
            "key": "info_tecnica",
            "type": dict,
            "children": [
                {
                    "key": "data_criacao",
                    "type": str,
                    "children": None,
                    "required": True,
                },
                {
                    "key": "pec_planimetrico",
                    "type": str,
                    "children": None,
                    "required": True,
                },
                {
                    "key": "pec_altimetrico",
                    "type": str,
                    "children": None,
                    "required": True,
                },
                {
                    "key": "datum_vertical",
                    "type": str,
                    "children": None,
                    "required": True,
                },
                {
                    "key": "origem_dados_altimetricos",
                    "type": str,
                    "children": None,
                    "required": True,
                },
                {
                    "key": "especificacao_representacao",
                    "type": str,
                    "children": None,
                    "required": False,
                },
                {
                    "key": "dados_terceiros",
                    "type": list,
                    "children": None,
                    "required": True,
                },
                {
                    "key": "observacao_homologacao",
                    "type": str,
                    "children": None,
                    "required": False,
                },
            ],
            "required": True,
        },
    ],
}


def validate_dict(input_dict: dict, product_type: str) -> bool:
    # fizemos somente a validação das chaves obrigatórias, as opcionais ficarão para outro momento
    return validate_keys(
        input_dict=input_dict,
        required=True,
        reference_schema=data_structure[product_type],
    )


def find_missing_required_keys_on_dict(input_dict: dict, product_type: str):
    return find_missing_required_keys(
        input_dict=input_dict, reference_schema=data_structure[product_type]
    )


def find_missing_required_keys(
    input_dict: dict, reference_schema=None, parent_key=None
):
    reference_schema = data_structure if reference_schema is None else reference_schema
    missing_key_set = set()
    for item in filter(lambda x: x.get("required", None) is True, reference_schema):
        key = item["key"]
        if key not in input_dict:
            missing_key = key if parent_key is None else f"{parent_key}/{key}"
            missing_key_set.add(missing_key)
        if item["type"] == dict:
            missing_children_set = find_missing_required_keys(
                input_dict=input_dict[key] if key in input_dict else {},
                reference_schema=item["children"],
                parent_key=key,
            )
            missing_key_set.update(missing_children_set)
        elif item["type"] == list and item["children"] is not None:
            for i in input_dict[key]:
                missing_children_set = find_missing_required_keys(
                    input_dict=i, reference_schema=item["children"], parent_key=key
                )
                missing_key_set.update(missing_children_set)
    if "center" in input_dict and "inom" in missing_key_set:
        missing_key_set.remove("inom")
    return missing_key_set


def validate_keys(input_dict: dict, required=True, reference_schema=None) -> bool:
    reference_schema = data_structure if reference_schema is None else reference_schema
    for item in filter(
        lambda x: isinstance(x, dict) and x.get("required", None) is required,
        reference_schema,
    ):
        key = item["key"]
        if key == "inom" and "center" in input_dict:
            continue
        if key not in input_dict:
            return False
        if key == "licenca_produto" and item[key] not in ["CC-BY-SA 4.0", "CC-BY-NC-SA 4.0"]:
            return False
        if item["type"] not in (dict, list):
            continue
        dict_item = next(filter(lambda x: x[0] == key, input_dict.items()), None)
        if dict_item is None:
            return False
        if item["type"] == dict:
            children_validation = validate_keys(
                input_dict=input_dict[key],
                required=required,
                reference_schema=item["children"],
            )
            if not children_validation:
                return False
        elif item["type"] == list:
            if not all(validate_keys(v) for v in input_dict[key]):
                return False
    return True


def file_exists(path: str, timeout=5) -> bool:
    start = time.time()
    f_exists = os.path.exists(path)
    while not f_exists:
        time.sleep(1)
        f_exists = os.path.exists(path)
        if f_exists:
            return True
        elapsed = time.time() - start
        if elapsed >= timeout:
            break
    return f_exists


def validate_file_paths(input_dict: dict) -> str:
    if "mde_diagrama_elevacao" not in input_dict:
        return ""
    if not file_exists(input_dict["mde_diagrama_elevacao"]["caminho_mde"]):
        return f'O arquivo {input_dict["mde_diagrama_elevacao"]["caminho_mde"]} não foi encontrado. \nCorrija o json ou coloque o arquivo em um caminho acessível (verifique a localização do arquivo ou sua conexão de rede) e tente novamente.'
    if " " in input_dict["mde_diagrama_elevacao"]["caminho_mde"]:
        return f'Há espaços no caminho do arquivo {input_dict["mde_diagrama_elevacao"]["caminho_mde"]}. \nInforme outro caminho sem espaços e tente novamente.'
    return ""
