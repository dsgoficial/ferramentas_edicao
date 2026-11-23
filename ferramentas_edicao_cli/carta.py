#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
carta: validacao local e planejamento da exportacao de carta (PDF/GeoTIFF).

Tudo aqui e funcao pura sobre o contrato lido em plugin_contract: roda em qualquer
Python 3, sem QGIS, em milissegundos. A razao de existir e economica: uma exportacao
abre o QGIS, conecta no banco e renderiza uma folha A1 (minutos por folha, horas num
lote). Gastar 30 ms para nao gastar isso num json que ja nasceu invalido paga muito.

O criterio de gravidade espelha o que o CODIGO faz, nao o que seria bonito:
  erro:  o plugin PULA a folha (ou quebra) por causa disso;
  aviso: o plugin exporta assim mesmo, mas o resultado provavelmente esta errado.
Cada achado carrega a linha de contrato do campo culpado, tirada do schema vivo.
"""
import json
import os
import re
import time
from collections import namedtuple
from pathlib import Path

# Import plano (nao relativo): esta pasta e usada como SCRIPT (python ferramentas_edicao_cli.py),
# nao como pacote instalado, entao o diretorio do script e que esta no sys.path.
import plugin_contract as pc

Finding = namedtuple("Finding", "level message contract")

# O plugin espera ate 5 s pelo caminho do MDE (rede lenta); usar o mesmo tempo aqui
# evita reprovar um json que la passaria.
PATH_WAIT_SECONDS = 5

# caminho_imagem nem sempre e um arquivo. O getRasterLayerByType do plugin
# (factories/mapBuilderUtils.py) aceita tres formas, e so a terceira vai ao disco:
#   type=xyz&url=...  -> QgsRasterLayer(..., "wms"), tile servido pela rede
#   ...GetCapabilities -> QgsRasterLayer(..., "wms"), servico WMS
#   qualquer outra    -> Path(rasterUri), arquivo local ou UNC
# Cobrar existencia em disco das duas primeiras reprova json que o plugin exporta.
# A regex abaixo e COPIA da que o plugin usa para extrair o nome da camada xyz: se
# a uri nao casar, o getRasterLayerByType cai fora do if e devolve None, e o
# validate_rasters_against_extents quebra em None.isValid(). Dai ser erro, nao aviso.
XYZ_RE = re.compile(r"type=xyz&url=https?:\/\/(.+?)&zmax=\d{1,2}&zmin=\d{1,2}")


def remote_source(caminho):
    """Devolve 'xyz', 'wms' ou None (arquivo), espelhando getRasterLayerByType."""
    if not isinstance(caminho, str):
        return None
    if "type=xyz" in caminho:
        return "xyz"
    if "GetCapabilities" in caminho:
        return "wms"
    return None


# ---------------------------------------------------------------------------
# Leitura do schema vivo
# ---------------------------------------------------------------------------
def contract_index(fields, parent=None):
    """{caminho da chave: campo do schema} achatado, ex.: 'info_tecnica/data_criacao'."""
    index = {}
    for field in fields:
        path = field["key"] if parent is None else f"{parent}/{field['key']}"
        index[path] = field
        if field.get("children"):
            index.update(contract_index(field["children"], path))
    return index


def contract_line(field, path):
    """A linha de contrato de um campo, do jeito que vale a pena aparecer num erro."""
    kind = field.get("type", "?")
    required = "obrigatorio" if field.get("required") else "opcional"
    line = f"{path}: {kind}, {required}"
    if field.get("children"):
        line += " (filhos: " + ", ".join(c["key"] for c in field["children"]) + ")"
    return line


def contract_lines(fields, parent=None):
    index = contract_index(fields, parent)
    return [contract_line(field, path) for path, field in index.items()]


def split_choice(choice):
    """'Carta Topografica 2.0' -> ('Carta Topografica', '2.0').

    Mesma quebra do getProductType: o ULTIMO token e a versao do produto.
    """
    *rest, version = str(choice).split(" ")
    return " ".join(rest), version


def choice_for(data):
    """O -t que casa com este json, montado do proprio json."""
    tipo = data.get("tipo_produto")
    versao = data.get("versao_produto")
    if not tipo or not versao:
        return None
    return f"{tipo} {versao}"


# ---------------------------------------------------------------------------
# Espelhos das validacoes do plugin
# ---------------------------------------------------------------------------
def blocking_missing_keys(data, fields, parent=None):
    """Chaves cuja ausencia faz validate_keys reprovar, ou seja, PULA a folha.

    Espelha config/jsonStructure.validate_keys(required=True): so olha o topo e os
    filhos de dict. Filhos de LISTA nao entram porque la o plugin chama validate_keys
    sem passar o sub-schema e a checagem vira no-op (vira aviso, nao erro, aqui).
    """
    missing = set()
    if not isinstance(data, dict):
        return missing
    for field in fields:
        if not field.get("required"):
            continue
        key = field["key"]
        path = key if parent is None else f"{parent}/{key}"
        # inom e dispensado quando ha center (carta fora do recorte sistematico).
        if key == "inom" and "center" in data:
            continue
        if key not in data:
            missing.add(path)
            continue
        if field.get("type") == "dict" and field.get("children"):
            missing |= blocking_missing_keys(data[key], field["children"], path)
    return missing


def missing_required_keys(data, fields, parent=None):
    """Todas as chaves obrigatorias ausentes, incluindo dentro de listas.

    Espelha find_missing_required_keys, que e o que o plugin IMPRIME no erro, com uma
    diferenca deliberada: aqui usa-se .get. No plugin, faltar a lista inteira (um json
    sem "fases", por exemplo) levanta KeyError dentro do proprio relator de erro.
    """
    missing = set()
    if not isinstance(data, dict):
        return missing
    for field in fields:
        if not field.get("required"):
            continue
        key = field["key"]
        path = key if parent is None else f"{parent}/{key}"
        if key == "inom" and "center" in data:
            continue
        if key not in data:
            missing.add(path)
        children = field.get("children")
        if field.get("type") == "dict" and children:
            missing |= missing_required_keys(data.get(key) or {}, children, path)
        elif field.get("type") == "list" and children:
            for item in data.get(key) or []:
                missing |= missing_required_keys(item, children, path)
    return missing


def file_exists(path):
    """os.path.exists com a mesma espera do plugin (compartilhamento de rede lento)."""
    if not isinstance(path, str) or not path:
        return False
    deadline = time.time() + PATH_WAIT_SECONDS
    while True:
        if os.path.exists(path):
            return True
        if time.time() >= deadline:
            return False
        time.sleep(1)


def find_placeholders(data, parent=""):
    """Caminhos com {{PLACEHOLDER}} nao preenchido (o MODELO do lote passou batido)."""
    found = []
    if isinstance(data, dict):
        for key, value in data.items():
            found += find_placeholders(value, f"{parent}/{key}" if parent else str(key))
    elif isinstance(data, list):
        for i, value in enumerate(data):
            found += find_placeholders(value, f"{parent}[{i}]")
    elif isinstance(data, str) and "{{" in data and "}}" in data:
        found.append((parent, data))
    return found


# ---------------------------------------------------------------------------
# Nome do arquivo de saida
# ---------------------------------------------------------------------------
def sanitize_filename(name):
    """Espelha ExporterSingleton._sanitizeFilename."""
    for ch in '<>:"/\\|?*':
        name = name.replace(ch, "_")
    return name.strip()


def predicted_basename(data, contract):
    """Basename que o ExporterSingleton vai usar, ou (None, motivo).

    Reconstroi a mesma cadeia do plugin: o controller resolve mi/inom (ou "Especial"
    para carta fora do recorte) e o exportador prefixa pelo produto.
    """
    tipo = data.get("tipo_produto")
    internal = contract["internos"].get(tipo)
    if internal is None:
        return None, f"tipo_produto '{tipo}' nao mapeado pelo plugin"
    prefix = contract["prefixos"].get(internal[0])
    if prefix is None:
        return None, f"produto '{tipo}' sem prefixo de arquivo no ExporterSingleton"
    if data.get("poligono"):
        stem = str(data.get("nome") or "")
    elif data.get("inom"):
        stem = pc.mi_from_inom(data["inom"]) or data["inom"]
    elif data.get("center"):
        stem = "Especial"
    else:
        return None, "sem inom, center ou poligono: o plugin nao sabe montar a folha"
    if stem == "Especial":
        escala = data.get("escala")
        if not isinstance(escala, (int, float)) or isinstance(escala, bool):
            return None, (
                "com 'center', 'escala' precisa ser NUMERO no json (o plugin calcula "
                f"escala/1000); veio {type(escala).__name__}"
            )
        return sanitize_filename(f"{prefix}_Especial_{int(escala / 1000)}k_{data.get('nome')}"), ""
    return sanitize_filename(f"{prefix}_{stem}"), ""


def predicted_outputs(basename, tiff=False, tiff_sem_grid=False):
    """Arquivos que a exportacao vai escrever, na ordem em que o exportador escreve."""
    names = [f"{basename}.pdf"]
    if tiff:
        names.append(f"{basename}.tif")
    if tiff_sem_grid:
        names.append(f"{basename}_sem_grid.tif")
    return names


# ---------------------------------------------------------------------------
# Validacao de um json de carta
# ---------------------------------------------------------------------------
def read_carta_json(path):
    """Le o json como o plugin le (utf-8-sig, ou seja, tolerando BOM)."""
    with open(path, "r", encoding="utf-8-sig") as fh:
        return json.load(fh)


def validate_carta(path, data, contract, tipo=None, saida=None, tiff=False, tiff_sem_grid=False):
    """Valida um json de carta contra o contrato vivo, sem abrir o QGIS.

    tipo: o -t que sera usado. None significa "deduza do proprio json".
    saida: pasta de destino; havendo, checa colisao com arquivo ja existente.
    Devolve um dicionario com os achados, o -t deduzido e os arquivos previstos.
    """
    result = {
        "arquivo": str(path),
        "tipo_produto": data.get("tipo_produto") if isinstance(data, dict) else None,
        "tipo": None,
        "basename": None,
        "saidas": [],
        "existentes": [],
        "achados": [],
    }
    add = result["achados"].append

    if not isinstance(data, dict):
        add(Finding("erro", "o json de carta precisa ser um objeto JSON", None))
        return result

    produto = data.get("tipo_produto")
    if not produto:
        add(Finding("erro", "falta a chave tipo_produto (o plugin ignora a folha)", None))
        return result
    if produto not in contract["schema"]:
        add(
            Finding(
                "erro",
                f"tipo_produto '{produto}' desconhecido; o plugin quebra ao procurar o schema. "
                "Valores validos: " + ", ".join(contract["schema"]),
                None,
            )
        )
        return result

    fields = contract["schema"][produto]
    index = contract_index(fields)

    def contract_of(key_path):
        field = index.get(key_path)
        return contract_line(field, key_path) if field else None

    # 1. Chaves obrigatorias. Bloqueante no topo/dict; dentro de lista o plugin deixa passar.
    blocking = blocking_missing_keys(data, fields)
    for key_path in sorted(blocking):
        add(Finding("erro", f"falta a chave obrigatoria {key_path}", contract_of(key_path)))
    # Filho de chave ja acusada nao vira segunda linha: quem falta e o pai.
    extra = {
        p
        for p in missing_required_keys(data, fields) - blocking
        if not any(p.startswith(f"{b}/") for b in blocking)
    }
    for key_path in sorted(extra):
        add(
            Finding(
                "aviso",
                f"falta a chave obrigatoria {key_path} (dentro de lista, onde o plugin nao "
                "bloqueia, mas a folha sai incompleta)",
                contract_of(key_path),
            )
        )

    # 2. Placeholder do MODELO do lote que ninguem preencheu: a folha sai com {{NOME}} impresso.
    for key_path, value in find_placeholders(data):
        add(Finding("erro", f"placeholder nao preenchido em {key_path}: {value}", None))

    # 3. Licenca. O plugin NAO bloqueia (a checagem dele so roda para chave obrigatoria,
    #    e licenca_produto e opcional), mas o valor errado vira selo errado na folha.
    licenca = data.get("licenca_produto")
    if licenca is not None and licenca not in contract["licencas"]:
        add(
            Finding(
                "aviso",
                f"licenca_produto '{licenca}' fora dos valores aceitos "
                f"({' | '.join(contract['licencas'])})",
                contract_of("licenca_produto"),
            )
        )

    # 4. Territorio internacional (validate_international_territory: bloqueia).
    if produto in contract["somente_nacionais"] and bool(data.get("territorio_internacional")):
        add(
            Finding(
                "erro",
                f"'{produto}' nao pode ter territorio_internacional = true; so as versoes "
                "Militares podem",
                contract_of("territorio_internacional"),
            )
        )

    # 5. Caminho do MDE (validate_file_paths: bloqueia).
    mde = (data.get("mde_diagrama_elevacao") or {}).get("caminho_mde")
    if isinstance(mde, str) and mde:
        if " " in mde:
            add(
                Finding(
                    "erro",
                    f"ha espaco no caminho do MDE: {mde}",
                    contract_of("mde_diagrama_elevacao/caminho_mde"),
                )
            )
        elif not file_exists(mde):
            hint = ""
            # UNC com uma barra so e o modo de falha classico do caminho vindo do SAP.
            if mde.startswith("\\") and not mde.startswith("\\\\"):
                hint = " (parece um UNC com UMA barra; o correto e \\\\servidor\\...)"
            add(
                Finding(
                    "erro",
                    f"o MDE nao existe no caminho informado: {mde}{hint}",
                    contract_of("mde_diagrama_elevacao/caminho_mde"),
                )
            )

    # 6. Imagens: o plugin so descobre que faltam depois de subir o QGIS e pular a folha.
    for i, item in enumerate(data.get("imagens") or []):
        caminho = item.get("caminho_imagem") if isinstance(item, dict) else None
        if not isinstance(caminho, str) or not caminho:
            continue
        origem = remote_source(caminho)
        if origem == "xyz":
            # Nao ha o que checar em disco. Checa-se a FORMA da uri, que o plugin exige.
            if not XYZ_RE.search(caminho):
                add(
                    Finding(
                        "erro",
                        f"imagens[{i}].caminho_imagem tem type=xyz mas nao casa o padrao "
                        "'type=xyz&url=http(s)://...&zmax=NN&zmin=NN' que o plugin exige; "
                        "a camada nao e criada e a exportacao quebra",
                        contract_of("imagens/caminho_imagem"),
                    )
                )
            continue
        if origem == "wms":
            continue
        if not file_exists(caminho):
            add(
                Finding(
                    "erro",
                    f"imagens[{i}].caminho_imagem nao existe: {caminho}",
                    contract_of("imagens/caminho_imagem"),
                )
            )
        elif " " in caminho:
            add(
                Finding(
                    "aviso",
                    f"ha espaco em imagens[{i}].caminho_imagem: {caminho}",
                    contract_of("imagens/caminho_imagem"),
                )
            )

    # 7. Casamento com o -t. O controller compara productName com tipo_produto e
    #    productVersion com versao_produto, e PULA a folha quando difere.
    deduzido = choice_for(data)
    result["tipo"] = tipo or deduzido
    if tipo is None:
        if deduzido is None:
            add(Finding("erro", "sem versao_produto nao da para deduzir o -t/--tipo", contract_of("versao_produto")))
        elif deduzido not in contract["produtos"]:
            add(
                Finding(
                    "erro",
                    f"'{deduzido}' nao e um produto aceito pelo standalone.py; validos: "
                    + ", ".join(contract["produtos"]),
                    contract_of("versao_produto"),
                )
            )
    else:
        esperado_tipo, esperado_versao = split_choice(tipo)
        product_name = contract["internos"].get(esperado_tipo, (None, esperado_tipo))[1]
        # "Carta Especial" e o apelido interno da Carta Ortoimagem SARP: para ela o
        # controller nao compara o tipo_produto.
        if product_name != "Carta Especial" and produto != esperado_tipo:
            add(
                Finding(
                    "erro",
                    f"tipo_produto '{produto}' nao casa com -t '{tipo}' (esperado "
                    f"'{esperado_tipo}'); a folha seria ignorada",
                    contract_of("tipo_produto"),
                )
            )
        versao = data.get("versao_produto")
        if versao is not None and versao != esperado_versao:
            add(
                Finding(
                    "erro",
                    f"versao_produto '{versao}' nao casa com -t '{tipo}' (esperado "
                    f"'{esperado_versao}'); a folha seria ignorada",
                    contract_of("versao_produto"),
                )
            )

    # 8. Arquivos previstos e colisao com o que ja esta na pasta.
    basename, motivo = predicted_basename(data, contract)
    if basename is None:
        add(Finding("erro", f"nao da para prever o nome do arquivo: {motivo}", contract_of("escala")))
    else:
        result["basename"] = basename
        result["saidas"] = predicted_outputs(basename, tiff, tiff_sem_grid)
        if saida:
            result["existentes"] = [
                nome for nome in result["saidas"] if (Path(saida) / nome).exists()
            ]
    return result


def has_errors(result):
    return any(f.level == "erro" for f in result["achados"])


# ---------------------------------------------------------------------------
# Comando de exportacao
# ---------------------------------------------------------------------------
def build_export_command(setup_env, qgis_dir, tipo, saida, jsons, login, senha,
                         tiff=False, tiff_sem_grid=False, sem_mascaras=False):
    """Linha de comando do setup_env.bat, na ordem que o bat espera.

    O 1o argumento serve duas vezes (OSGEO4W_ROOT no bat e pathQgis no standalone), e
    -j fica por ultimo porque tem nargs='+' e engoliria uma flag seguinte.
    """
    cmd = [
        "cmd", "/c", str(setup_env), str(qgis_dir),
        "-t", str(tipo),
        "-ef", str(saida),
        "-l", str(login),
        "-s", str(senha),
    ]
    if tiff:
        cmd.append("-et")
    if tiff_sem_grid:
        cmd.append("-etwg")
    if sem_mascaras:
        cmd.append("-dam")
    cmd.append("-j")
    cmd += [str(j) for j in jsons]
    return cmd


def mask_command(cmd):
    """Mesma linha, com a senha trocada por ***, para poder ser impressa e logada."""
    masked = list(cmd)
    for i, token in enumerate(masked[:-1]):
        if token in ("-s", "--senha", "-ppass", "--proxyPassword"):
            masked[i + 1] = "***"
    return masked
