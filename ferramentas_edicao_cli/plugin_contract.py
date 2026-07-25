#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
plugin_contract: le o contrato da exportacao de carta direto da FONTE VIVA, isto
e, do proprio codigo do plugin instalado, sem catalogo pre-gerado e sem copia a mao.

O que sai daqui:
  - os produtos aceitos (choices de -t/--tipo do standalone.py);
  - os argumentos do standalone.py (flags, default, obrigatoriedade);
  - o schema do json de carta por tipo_produto (config/jsonStructure.py);
  - os valores validos de licenca_produto e a regra de territorio internacional;
  - o prefixo do nome do arquivo exportado por produto (factories/exporterSingleton.py);
  - o MI/MIR de um INOM (os CSV do gridFactory).

Por que `ast` e nao `import`: standalone.py, config/jsonStructure.py e
factories/exporterSingleton.py importam `qgis.core` no topo, que so existe dentro do
ambiente do QGIS; esta CLI roda em qualquer Python 3 e em milissegundos. Ler o .py com
`ast` mantem a propriedade que interessa (mudou o codigo, mudou a saida) sem pagar o
boot do QGIS.

Quando um literal esperado some (refatoracao la em cima), cada leitor levanta
ContractError dizendo ONDE procurou. E de proposito: um fallback copiado apodreceria
em silencio, que e exatamente o modo de falha que este modulo existe para evitar.
"""
import ast
import csv
import os
from pathlib import Path

HERE = Path(__file__).resolve().parent

JSON_STRUCTURE_SRC = ("config", "jsonStructure.py")
STANDALONE_SRC = ("standalone.py",)
EXPORTER_SRC = ("factories", "exporterSingleton.py")
CONTROLLER_SRC = ("controllers", "mapBuilderController.py")
GRID_DIR = ("modules", "mapBuilder", "factories", "gridFactory")

# Nomes de classe que aparecem como VALOR no schema do plugin (type: str, type: dict...).
_TYPE_NAMES = {"str", "int", "float", "bool", "dict", "list", "tuple", "set", "bytes"}

_tree_cache = {}
_csv_cache = {}


class ContractError(RuntimeError):
    """A fonte viva mudou de forma e o contrato nao pode mais ser lido de la."""


# ---------------------------------------------------------------------------
# Acesso ao codigo-fonte do plugin
# ---------------------------------------------------------------------------
def plugin_root():
    """Raiz do plugin. Esta CLI mora dentro dele, entao o padrao e a pasta de cima;
    FERRAMENTAS_EDICAO_PLUGIN_ROOT permite apontar outra instalacao (comparar duas
    versoes, por exemplo)."""
    env = os.environ.get("FERRAMENTAS_EDICAO_PLUGIN_ROOT")
    return Path(env).resolve() if env else HERE.parent


def source_path(*parts):
    path = plugin_root().joinpath(*parts)
    if not path.exists():
        raise ContractError(
            f"nao encontrei {path}: o contrato e lido do codigo do plugin. "
            "Rode a CLI de dentro da pasta do plugin instalado ou aponte "
            "FERRAMENTAS_EDICAO_PLUGIN_ROOT para a raiz dele."
        )
    return path


def _tree(*parts):
    path = source_path(*parts)
    # A chave inclui o mtime: editar o fonte do plugin invalida o cache na hora,
    # senao um processo longo continuaria respondendo pelo contrato antigo.
    key = (str(path), path.stat().st_mtime_ns)
    if key not in _tree_cache:
        _tree_cache.clear()
        _tree_cache[key] = ast.parse(path.read_text(encoding="utf-8"), filename=str(path))
    return _tree_cache[key]


def _literal(node, where):
    """Converte um no de literal em valor Python.

    Nome de tipo (str, int, dict...) vira a string do nome: no schema do plugin a
    CLASSE e o valor da chave "type", e quem consome aqui quer exibir/comparar, nao
    instanciar.
    """
    if isinstance(node, ast.Constant):
        return node.value
    if isinstance(node, ast.Dict):
        return {
            _literal(k, where): _literal(v, where)
            for k, v in zip(node.keys, node.values)
        }
    if isinstance(node, (ast.List, ast.Set)):
        return [_literal(e, where) for e in node.elts]
    if isinstance(node, ast.Tuple):
        return tuple(_literal(e, where) for e in node.elts)
    if isinstance(node, ast.Name) and node.id in _TYPE_NAMES:
        return node.id
    if isinstance(node, ast.UnaryOp) and isinstance(node.op, ast.USub):
        return -_literal(node.operand, where)
    raise ContractError(f"nao consegui ler o literal de {where} (linha {node.lineno})")


def _module_assign(tree, name, where):
    for node in tree.body:
        if isinstance(node, ast.Assign) and any(
            isinstance(t, ast.Name) and t.id == name for t in node.targets
        ):
            return node.value
    raise ContractError(f"nao achei a atribuicao '{name}' em {where}")


# ---------------------------------------------------------------------------
# Contrato do json de carta
# ---------------------------------------------------------------------------
def json_schema():
    """{tipo_produto: [{key, type, required, children}, ...]} do data_structure."""
    where = "config/jsonStructure.py:data_structure"
    schema = _literal(_module_assign(_tree(*JSON_STRUCTURE_SRC), "data_structure", where), where)
    if not isinstance(schema, dict) or not schema:
        raise ContractError(f"{where} nao e um dicionario de produtos")
    return schema


def national_only_products():
    """Produtos que, por doutrina, nao podem ter territorio_internacional = true."""
    where = "config/jsonStructure.py:PRODUCTS_NATIONAL_ONLY"
    return list(_literal(_module_assign(_tree(*JSON_STRUCTURE_SRC), "PRODUCTS_NATIONAL_ONLY", where), where))


def license_values():
    """Valores aceitos de licenca_produto, extraidos do proprio teste que os usa."""
    where = "config/jsonStructure.py:validate_keys"
    for node in ast.walk(_tree(*JSON_STRUCTURE_SRC)):
        if not isinstance(node, ast.If):
            continue
        marks = {c.value for c in ast.walk(node.test) if isinstance(c, ast.Constant)}
        if "licenca_produto" not in marks:
            continue
        for cmp_node in ast.walk(node.test):
            if isinstance(cmp_node, ast.Compare) and any(
                isinstance(op, ast.NotIn) for op in cmp_node.ops
            ):
                values = _literal(cmp_node.comparators[0], where)
                if isinstance(values, list) and all(isinstance(v, str) for v in values):
                    return values
    raise ContractError(f"nao achei a lista de licencas validas em {where}")


# ---------------------------------------------------------------------------
# Contrato da linha de comando (standalone.py)
# ---------------------------------------------------------------------------
def standalone_arguments():
    """Um dict por add_argument do standalone.py: {flags, default, choices, ...}.

    Keyword cujo valor nao e literal (default calculado, por exemplo) vira
    '<dinamico>': o que importa e nao mentir sobre o que esta escrito la.
    """
    where = "standalone.py:setupArgparser"
    fn = next(
        (
            n
            for n in ast.walk(_tree(*STANDALONE_SRC))
            if isinstance(n, ast.FunctionDef) and n.name == "setupArgparser"
        ),
        None,
    )
    if fn is None:
        raise ContractError(f"nao achei a funcao setupArgparser em {where}")
    arguments = []
    for call in ast.walk(fn):
        if not (
            isinstance(call, ast.Call)
            and isinstance(call.func, ast.Attribute)
            and call.func.attr == "add_argument"
        ):
            continue
        spec = {"flags": [_literal(a, where) for a in call.args]}
        for kw in call.keywords:
            try:
                spec[kw.arg] = _literal(kw.value, where)
            except ContractError:
                spec[kw.arg] = "<dinamico>"
        arguments.append(spec)
    if not arguments:
        raise ContractError(f"nenhum add_argument encontrado em {where}")
    return arguments


def product_choices():
    """(produtos aceitos em -t/--tipo, produto padrao)."""
    for spec in standalone_arguments():
        if "--tipo" in spec["flags"] or "-t" in spec["flags"]:
            choices = spec.get("choices")
            if not choices:
                raise ContractError("o argumento --tipo do standalone.py nao declara choices")
            return list(choices), spec.get("default")
    raise ContractError("nao achei o argumento --tipo em standalone.py")


# ---------------------------------------------------------------------------
# Contrato do nome do arquivo exportado
# ---------------------------------------------------------------------------
def export_name_prefixes():
    """{id interno do produto: prefixo do arquivo}, do ExporterSingleton."""
    where = "factories/exporterSingleton.py:ExporterSingleton.exportNameDict"
    for node in ast.walk(_tree(*EXPORTER_SRC)):
        if isinstance(node, ast.ClassDef) and node.name == "ExporterSingleton":
            for stmt in node.body:
                if isinstance(stmt, ast.Assign) and any(
                    isinstance(t, ast.Name) and t.id == "exportNameDict" for t in stmt.targets
                ):
                    return _literal(stmt.value, where)
    raise ContractError(f"nao achei {where}")


def product_internal_names():
    """{tipo_produto: (id interno, productName)} lido do getProductType do controller.

    O productName importa por causa da Carta Ortoimagem OM, que vira "Carta Especial" e
    por isso escapa da comparacao entre o -t escolhido e o tipo_produto do json.
    """
    where = "controllers/mapBuilderController.py:getProductType"
    fn = next(
        (
            n
            for n in ast.walk(_tree(*CONTROLLER_SRC))
            if isinstance(n, ast.FunctionDef) and n.name == "getProductType"
        ),
        None,
    )
    if fn is None:
        raise ContractError(f"nao achei a funcao getProductType em {where}")
    mapping = {}
    for node in ast.walk(fn):
        if not isinstance(node, ast.If):
            continue
        display = next(
            (c.value for c in ast.walk(node.test) if isinstance(c, ast.Constant) and isinstance(c.value, str)),
            None,
        )
        ret = next((s for s in node.body if isinstance(s, ast.Return)), None)
        if display is None or ret is None or not isinstance(ret.value, ast.Tuple):
            continue
        elts = ret.value.elts
        if len(elts) < 2 or not isinstance(elts[0], ast.Constant):
            continue
        internal = elts[0].value
        product_name = elts[1].value if isinstance(elts[1], ast.Constant) else display
        mapping[display] = (internal, product_name)
    if not mapping:
        raise ContractError(f"nenhum produto mapeado em {where}")
    return mapping


# ---------------------------------------------------------------------------
# MI/MIR a partir do INOM (mesmos CSV que o gridFactory usa)
# ---------------------------------------------------------------------------
def _mi_index(file_name):
    """{inom da folha 100k/250k: MI}. O CSV vem como 'inom;mi' com BOM."""
    if file_name not in _csv_cache:
        path = source_path(*GRID_DIR, file_name)
        index = {}
        with open(path, encoding="utf-8-sig", newline="") as fh:
            for row in csv.reader(fh, delimiter=";"):
                if len(row) == 2 and row[1] != "mi":
                    index[row[0]] = row[1]
        _csv_cache[file_name] = index
    return _csv_cache[file_name]


def _mi_exceptions():
    """Folhas fora da numeracao MI (o exportador cai no INOM nesses casos)."""
    if "exceptions" not in _csv_cache:
        exceptions = set()
        for name in ("exclusionList25k.csv", "exclusionList50k.csv"):
            with open(source_path(*GRID_DIR, name), encoding="utf-8-sig", newline="") as fh:
                for row in csv.reader(fh):
                    if row and row[0] != "inom":
                        exceptions.add(row[0])
        _csv_cache["exceptions"] = exceptions
    return _csv_cache["exceptions"]


def mi_from_inom(inom):
    """MI (ou MIR, na 250k) da folha, ou None quando nao ha.

    Espelha gridFactory.get_MI_MIR_from_inom: excecao (a propria folha ou a de nivel
    acima) devolve None, e o exportador usa o INOM no nome do arquivo.
    """
    if not isinstance(inom, str) or not inom:
        return None
    exceptions = _mi_exceptions()
    if inom in exceptions or "-".join(inom.split("-")[:-1]) in exceptions:
        return None
    parts = inom.split("-")
    index, cut = (
        (_mi_index("MI100.csv"), 5) if len(parts) > 4 else (_mi_index("MIR250.csv"), 4)
    )
    mi = index.get("-".join(parts[:cut]))
    return None if mi is None else "-".join([mi] + parts[cut:])


# ---------------------------------------------------------------------------
def plugin_version():
    """Versao do plugin instalado (metadata.txt); '?' se o campo sumir."""
    for line in source_path("metadata.txt").read_text(encoding="utf-8").splitlines():
        if line.strip().startswith("version="):
            return line.split("=", 1)[1].strip()
    return "?"


def load_contract():
    """Junta num dicionario tudo que a exportacao de carta precisa saber do plugin."""
    products, default_product = product_choices()
    return {
        "raiz": str(plugin_root()),
        "versao_plugin": plugin_version(),
        "produtos": products,
        "produto_padrao": default_product,
        "argumentos": standalone_arguments(),
        "schema": json_schema(),
        "licencas": license_values(),
        "somente_nacionais": national_only_products(),
        "prefixos": export_name_prefixes(),
        "internos": product_internal_names(),
    }
