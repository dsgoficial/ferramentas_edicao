# -*- coding: utf-8 -*-
"""
Builder do JSON de exportacao (o JSON que o formulario "Criar Arquivo JSON" gera).

Logica pura, sem dependencia de Qt nem de qgis, para poder ser testada
isoladamente. O schema de verdade fica em config/jsonStructure.py; este modulo
apenas monta um JSON consistente com aquele schema para os cinco tipos de
produto, com as chaves e os tipos corretos.

Os tres pontos que este modulo garante (e que o codigo antigo errava):
- tipo_produto e sempre a STRING do produto (nao um booleano).
- versao_produto e preenchida; quando nao informada, usa a versao ativa do
  produto (tem que casar com a versao escolhida na interface de exportacao,
  senao o controller ignora o produto).
- licenca_produto e a chave correta (a engine ignora licenciamento_produto).
- center e um objeto {latitude, longitude} com floats; escala e dpi sao int.
"""

# Versoes ativas de cada produto (devem acompanhar as ofertadas em standalone.py
# e no combo de exportacao; hoje topo 2.0 / orto 3.0 / OM 1.0).
PRODUCT_VERSIONS = {
    "Carta Topográfica": "2.0",
    "Carta Ortoimagem": "3.0",
    "Carta Ortoimagem OM": "1.0",
    "Carta Ortoimagem Militar": "3.0",
    "Carta Topográfica Militar": "2.0",
}

ORTHO_LIKE = {"Carta Ortoimagem", "Carta Ortoimagem Militar"}
TOPO_LIKE = {"Carta Topográfica", "Carta Topográfica Militar"}
OM_TYPE = "Carta Ortoimagem OM"

VALID_PRODUCTS = set(PRODUCT_VERSIONS.keys())

# Campos escalares de info_tecnica (alem de dados_terceiros/observacoes, que sao listas).
_INFO_TECNICA_SCALARS = [
    "data_criacao",
    "datum_vertical",
    "origem_dados_altimetricos",
    "pec_planimetrico",
    "pec_altimetrico",
    "especificacao_representacao",
    "observacao_homologacao",
    "equidistancia_personalizada",
]


def _clean(value):
    """Normaliza um escalar de texto: strip; devolve None se vazio."""
    if value is None:
        return None
    if isinstance(value, str):
        value = value.strip()
        return value or None
    return value


def _to_float(value):
    value = _clean(value)
    if value is None:
        return None
    if isinstance(value, (int, float)):
        return float(value)
    try:
        return float(str(value).replace(",", "."))
    except (TypeError, ValueError):
        return value  # mantem o original; melhor nao perder o dado


def _to_int(value):
    value = _clean(value)
    if value is None:
        return None
    if isinstance(value, bool):
        return value
    if isinstance(value, int):
        return value
    try:
        return int(float(str(value).replace(",", ".")))
    except (TypeError, ValueError):
        return value


def _add(dictionary, key, value):
    """Adiciona key->value so se value nao for vazio/None."""
    if value in (None, "", [], {}):
        return
    dictionary[key] = value


def _build_info_tecnica(fields, dados_terceiros_required):
    info = {}
    for key in _INFO_TECNICA_SCALARS:
        _add(info, key, _clean(fields.get(key)))
    exibir = fields.get("exibir_curva_auxiliar")
    if exibir not in (None, ""):
        # o schema declara str; a engine faz int(...). Gravamos como string "0"/"1".
        info["exibir_curva_auxiliar"] = str(_to_int(exibir))
    dados = [d for d in (fields.get("dados_terceiros") or []) if str(d).strip()]
    observacoes = [o for o in (fields.get("observacoes") or []) if str(o).strip()]
    # dados_terceiros e obrigatorio nos produtos SCN; sempre presente (lista).
    if dados or dados_terceiros_required:
        info["dados_terceiros"] = dados
    _add(info, "observacoes", observacoes)
    return info


def _build_mde(fields):
    mde = {}
    _add(mde, "caminho_mde", _clean(fields.get("caminho_mde")))
    _add(mde, "epsg", _clean(fields.get("epsg")))
    param = {}
    _add(param, "min_pixel_group_size", _to_int(fields.get("min_pixel_group_size")))
    _add(param, "smoothing_parameter", _to_float(fields.get("smoothing_parameter")))
    return mde, param


def _build_banco(fields):
    banco = {}
    _add(banco, "servidor", _clean(fields.get("banco_servidor")))
    _add(banco, "porta", _clean(fields.get("banco_porta")))
    _add(banco, "nome", _clean(fields.get("banco_nome")))
    return banco


def _build_fases(fields):
    """fields['fases'] = lista de {nome, executante_nome, executante_ano}."""
    fases = []
    for row in fields.get("fases") or []:
        nome = _clean(row.get("nome"))
        exec_nome = _clean(row.get("executante_nome"))
        exec_ano = _clean(row.get("executante_ano"))
        if nome and exec_nome and exec_ano:
            fases.append(
                {"nome": nome, "executantes": [{"nome": exec_nome, "ano": exec_ano}]}
            )
    return fases


def _build_imagens(fields):
    imagens = []
    for row in fields.get("imagens") or []:
        caminho = _clean(row.get("caminho_imagem"))
        epsg = _clean(row.get("epsg"))
        if not caminho or not epsg:
            continue
        img = {"caminho_imagem": caminho, "epsg": epsg}
        _add(img, "caminho_estilo", _clean(row.get("caminho_estilo")))
        imagens.append(img)
    return imagens


def _build_sensores(fields):
    sensores = []
    for row in fields.get("sensores") or []:
        sensor = {}
        for key in ("tipo", "plataforma", "nome", "resolucao", "bandas", "nivel_produto"):
            _add(sensor, key, _clean(row.get(key)))
        if sensor:
            sensores.append(sensor)
    return sensores


def _build_scn(js, fields, ortho):
    _add(js, "inom", _clean(fields.get("inom")))
    if "inom" not in js:
        lat = _to_float(fields.get("latitude"))
        lon = _to_float(fields.get("longitude"))
        if lat is not None and lon is not None:
            js["center"] = {"latitude": lat, "longitude": lon}
            _add(js, "escala", _to_int(fields.get("escala")))
    _add(js, "edicao_produto", _clean(fields.get("edicao_produto")))
    _add(js, "licenca_produto", _clean(fields.get("licenca_produto")))
    _add(js, "nome", _clean(fields.get("nome")))
    _add(js, "cabecalho", _clean(fields.get("cabecalho")))
    _add(js, "projeto", _clean(fields.get("projeto")))
    _add(js, "direitos_reproducao", _clean(fields.get("direitos_reproducao")))
    _add(js, "acesso_informacao", _clean(fields.get("acesso_informacao")))
    if fields.get("territorio_internacional") is not None:
        js["territorio_internacional"] = bool(fields.get("territorio_internacional"))
    if fields.get("acesso_restrito") is not None:
        js["acesso_restrito"] = bool(fields.get("acesso_restrito"))
    _add(js, "dpi", _to_int(fields.get("dpi")))

    mde, param = _build_mde(fields)
    _add(js, "mde_diagrama_elevacao", mde)
    _add(js, "param_diagrama_elevacao", param)

    if ortho:
        _add(js, "classes_complementares", fields.get("classes_complementares") or [])
        _add(js, "imagens", _build_imagens(fields))

    _add(js, "banco", _build_banco(fields))
    js["fases"] = _build_fases(fields)

    if ortho:
        js["sensores"] = _build_sensores(fields)

    js["info_tecnica"] = _build_info_tecnica(fields, dados_terceiros_required=True)


def _build_om(js, fields):
    _add(js, "poligono", _clean(fields.get("poligono")))
    _add(js, "nome", _clean(fields.get("nome")))
    _add(js, "imagemOM", _clean(fields.get("imagemOM")))
    _add(js, "imagemSubordinacao", _clean(fields.get("imagemSubordinacao")))
    _add(js, "subordinacao1", _clean(fields.get("subordinacao1")))
    _add(js, "subordinacao2", _clean(fields.get("subordinacao2")))
    _add(js, "endereco", _clean(fields.get("endereco")))
    _add(js, "altitude", _clean(fields.get("altitude")))
    js["fases"] = _build_fases(fields)
    _add(js, "imagens", _build_imagens(fields))
    js["sensores"] = _build_sensores(fields)
    js["info_tecnica"] = _build_info_tecnica(fields, dados_terceiros_required=False)


def build_export_json(fields):
    """Monta o dict do JSON de exportacao a partir de um dict normalizado de campos.

    fields['tipo_produto'] tem que ser uma das strings de VALID_PRODUCTS.
    Demais campos sao opcionais; o que estiver presente entra com a chave e o
    tipo corretos. A validacao de obrigatoriedade fica em validate_fields().
    """
    tipo = _clean(fields.get("tipo_produto")) or ""
    js = {"tipo_produto": tipo}
    versao = _clean(fields.get("versao_produto")) or PRODUCT_VERSIONS.get(tipo)
    _add(js, "versao_produto", versao)
    if tipo == OM_TYPE:
        _build_om(js, fields)
    else:
        _build_scn(js, fields, ortho=tipo in ORTHO_LIKE)
    return js


def validate_fields(fields):
    """Retorna (ok, lista_de_rotulos_faltando) para os campos obrigatorios minimos.

    Mensagem amigavel para a UI; o gate final continua sendo a validacao do
    motor em jsonStructure.find_missing_required_keys_on_dict.
    """
    tipo = _clean(fields.get("tipo_produto")) or ""
    missing = []
    if tipo not in VALID_PRODUCTS:
        return False, ["Tipo de Produto"]

    def need(label, value):
        if value in (None, "", [], {}):
            missing.append(label)

    need("Nome", _clean(fields.get("nome")))

    if tipo == OM_TYPE:
        need("Polígono (WKT)", _clean(fields.get("poligono")))
        need("Imagem da OM", _clean(fields.get("imagemOM")))
        need("Imagem de Subordinação", _clean(fields.get("imagemSubordinacao")))
        need("Endereço", _clean(fields.get("endereco")))
        need("Altitude", _clean(fields.get("altitude")))
        need("Imagens", _build_imagens(fields))
        need("Sensores", _build_sensores(fields))
        need("Fases", _build_fases(fields))
        need("Data de Criação", _clean(fields.get("data_criacao")))
        return (len(missing) == 0), missing

    # Produtos SCN (topo/orto e militares)
    has_inom = bool(_clean(fields.get("inom")))
    has_center = (
        _to_float(fields.get("latitude")) is not None
        and _to_float(fields.get("longitude")) is not None
    )
    if not has_inom and not has_center:
        missing.append("INOM (ou Latitude+Longitude para Não-SCN)")
    if not has_inom and has_center:
        need("Escala", _clean(fields.get("escala")))
    need("Caminho do MDE", _clean(fields.get("caminho_mde")))
    need("EPSG do MDE", _clean(fields.get("epsg")))
    need("Banco: servidor", _clean(fields.get("banco_servidor")))
    need("Banco: porta", _clean(fields.get("banco_porta")))
    need("Banco: nome", _clean(fields.get("banco_nome")))
    need("Fases", _build_fases(fields))
    for label, key in (
        ("Data de Criação", "data_criacao"),
        ("PEC Planimétrico", "pec_planimetrico"),
        ("PEC Altimétrico", "pec_altimetrico"),
        ("Datum Vertical", "datum_vertical"),
        ("Origem dos Dados Altimétricos", "origem_dados_altimetricos"),
    ):
        need(label, _clean(fields.get(key)))
    if tipo in ORTHO_LIKE:
        need("Imagens", _build_imagens(fields))
        need("Sensores", _build_sensores(fields))
    return (len(missing) == 0), missing


# ---------------------------------------------------------------------------
# Glue de UI (duck-typed; nao importa Qt). Le os widgets do formulario carregado
# de Help/export/src/exportjson.ui. Tolera widgets ausentes (getattr) para nao
# quebrar com .ui antigo.
# ---------------------------------------------------------------------------

# Produtos que mostram cada grupo de widgets (usado por apply_product_visibility).
_IMAGE_WIDGETS = ["imagensTable", "add_imagem_button", "rm_imagem_button", "label_imagens"]
_SENSOR_WIDGETS = ["sensoresTable", "add_sensor_button", "rm_sensor_button", "label_sensores"]
# imagens e sensores aparecem na Ortoimagem (e militar) E na OM; classes complementares so na Ortoimagem.
_IMAGE_SENSOR = _IMAGE_WIDGETS + _SENSOR_WIDGETS
_CLASSES_ONLY = ["input_classes_complementares", "label_classes_complementares"]
_SCN_ONLY = [
    "input_inom", "label_inom",
    "input_escala", "label_escala",
    "input_latitude", "label_latitude",
    "input_longitude", "label_longitude",
    "input_mde_diagrama", "label_mde_diagrama", "browse_mde_button",
    "input_epsg", "label_epsg",
    "bancoTable", "label_banco_configuracao",
]
_OM_ONLY = [
    "input_poligono", "label_poligono",
    "input_imagemOM", "label_imagemOM",
    "input_imagemSubordinacao", "label_imagemSubordinacao",
    "input_subordinacao1", "label_subordinacao1",
    "input_subordinacao2", "label_subordinacao2",
    "input_endereco", "label_endereco",
    "input_altitude", "label_altitude",
]


def _widget_text(form, name):
    w = getattr(form, name, None)
    if w is None:
        return ""
    if hasattr(w, "text"):
        return w.text()
    if hasattr(w, "toPlainText"):
        return w.toPlainText()
    if hasattr(w, "currentText"):
        return w.currentText()
    return ""


def _combo_bool(form, name):
    w = getattr(form, name, None)
    if w is None or not hasattr(w, "currentText"):
        return None
    return w.currentText() == "True"


def _read_table(form, name):
    table = getattr(form, name, None)
    if table is None:
        return []
    rows = []
    for r in range(table.rowCount()):
        cells = []
        for c in range(table.columnCount()):
            item = table.item(r, c)
            cells.append(item.text().strip() if item and item.text() else "")
        rows.append(cells)
    return rows


def collect_export_form_fields(form):
    """Le o formulario (exportjson.ui) e devolve o dict normalizado de campos."""
    fields = {
        "tipo_produto": _widget_text(form, "input_produto").strip(),
        "versao_produto": _widget_text(form, "input_versao").strip(),
        "nome": _widget_text(form, "input_nome").strip(),
        "inom": _widget_text(form, "input_inom").strip(),
        "escala": _widget_text(form, "input_escala").strip(),
        "latitude": _widget_text(form, "input_latitude").strip(),
        "longitude": _widget_text(form, "input_longitude").strip(),
        "edicao_produto": _widget_text(form, "input_edicao").strip(),
        "licenca_produto": _widget_text(form, "input_licenciamento").strip(),
        "projeto": _widget_text(form, "input_creditos").strip(),
        "cabecalho": _widget_text(form, "input_cabecalho").strip(),
        "direitos_reproducao": _widget_text(form, "input_direitos_reproducao").strip(),
        "acesso_informacao": _widget_text(form, "input_acesso_informacao").strip(),
        "territorio_internacional": _combo_bool(form, "input_territorio_internacional"),
        "acesso_restrito": _combo_bool(form, "input_acesso_restrito"),
        "dpi": _widget_text(form, "input_dpi").strip(),
        "caminho_mde": _widget_text(form, "input_mde_diagrama").strip().replace("/", "\\"),
        "epsg": _widget_text(form, "input_epsg").strip(),
        # info_tecnica
        "data_criacao": _widget_text(form, "input_data_criacao").strip(),
        "datum_vertical": _widget_text(form, "input_datum_vertical").strip(),
        "origem_dados_altimetricos": _widget_text(form, "input_origem_dados_altimetricos").strip(),
        "pec_planimetrico": _widget_text(form, "input_pec_planimetrico").strip(),
        "pec_altimetrico": _widget_text(form, "input_pec_altimetrico").strip(),
        "especificacao_representacao": _widget_text(form, "input_especificacao_representacao").strip(),
        # OM
        "poligono": _widget_text(form, "input_poligono").strip(),
        "imagemOM": _widget_text(form, "input_imagemOM").strip(),
        "imagemSubordinacao": _widget_text(form, "input_imagemSubordinacao").strip(),
        "subordinacao1": _widget_text(form, "input_subordinacao1").strip(),
        "subordinacao2": _widget_text(form, "input_subordinacao2").strip(),
        "endereco": _widget_text(form, "input_endereco").strip(),
        "altitude": _widget_text(form, "input_altitude").strip(),
    }

    classes = _widget_text(form, "input_classes_complementares").strip()
    fields["classes_complementares"] = [
        c.strip() for c in classes.split(",") if c.strip()
    ]

    banco_rows = _read_table(form, "bancoTable")
    if banco_rows:
        cols = banco_rows[0] + ["", "", ""]
        fields["banco_servidor"], fields["banco_porta"], fields["banco_nome"] = (
            cols[0], cols[1], cols[2]
        )

    fields["fases"] = [
        {"nome": row[0], "executante_nome": row[1], "executante_ano": row[2]}
        for row in _read_table(form, "fasesTable")
        if len(row) >= 3
    ]

    fields["dados_terceiros"] = [
        f"{row[0]}: {row[1]}"
        for row in _read_table(form, "dadosTerceirosTable")
        if len(row) >= 2 and row[0] and row[1]
    ]

    fields["observacoes"] = [
        row[0] for row in _read_table(form, "observacoesTable") if row and row[0]
    ]

    fields["imagens"] = [
        {"caminho_imagem": row[0].replace("/", "\\"), "epsg": row[1],
         "caminho_estilo": (row[2].replace("/", "\\") if len(row) > 2 else "")}
        for row in _read_table(form, "imagensTable")
        if len(row) >= 2 and row[0] and row[1]
    ]

    fields["sensores"] = [
        {"tipo": row[0], "plataforma": row[1], "nome": row[2], "resolucao": row[3],
         "bandas": row[4], "nivel_produto": row[5]}
        for row in _read_table(form, "sensoresTable")
        if len(row) >= 6
    ]
    return fields


def apply_product_visibility(form, tipo_produto):
    """Mostra/oculta os grupos de widgets conforme o tipo de produto."""
    def set_visible(names, visible):
        for name in names:
            w = getattr(form, name, None)
            if w is not None and hasattr(w, "setVisible"):
                w.setVisible(visible)

    is_om = tipo_produto == OM_TYPE
    is_ortho = tipo_produto in ORTHO_LIKE
    set_visible(_SCN_ONLY, not is_om)
    set_visible(_IMAGE_SENSOR, is_ortho or is_om)
    set_visible(_CLASSES_ONLY, is_ortho)
    set_visible(_OM_ONLY, is_om)


def wire_export_form(form, on_browse_file, on_add_row, on_remove_row, on_generate):
    """Conecta os botoes do formulario (exportjson.ui) aos callbacks dados.

    Tolera botoes ausentes (getattr): funciona com .ui antigo ou novo. Os
    callbacks recebem o widget alvo (on_browse_file(line_edit), on_add_row(table),
    on_remove_row(table)); on_generate nao recebe argumento.
    """
    def connect(name, signal, handler):
        widget = getattr(form, name, None)
        if widget is not None and hasattr(widget, signal):
            getattr(widget, signal).connect(handler)

    def with_widget(name, callback):
        return lambda *_: (
            callback(getattr(form, name)) if getattr(form, name, None) is not None else None
        )

    connect("browse_mde_button", "clicked", with_widget("input_mde_diagrama", on_browse_file))
    connect("browse_project_button", "clicked", with_widget("input_creditos", on_browse_file))
    for add_btn, table in (
        ("add_fase_button", "fasesTable"),
        ("add_dado_terceiro_button", "dadosTerceirosTable"),
        ("add_imagem_button", "imagensTable"),
        ("add_sensor_button", "sensoresTable"),
        ("add_observacao_button", "observacoesTable"),
    ):
        connect(add_btn, "clicked", with_widget(table, on_add_row))
    for rm_btn, table in (
        ("rm_fase_button", "fasesTable"),
        ("rm_dado_terceiro_button", "dadosTerceirosTable"),
        ("rm_imagem_button", "imagensTable"),
        ("rm_sensor_button", "sensoresTable"),
        ("rm_observacao_button", "observacoesTable"),
    ):
        connect(rm_btn, "clicked", with_widget(table, on_remove_row))
    connect("generate_button", "clicked", lambda *_: on_generate())

    combo = getattr(form, "input_produto", None)
    if combo is not None and hasattr(combo, "currentTextChanged"):
        combo.currentTextChanged.connect(
            lambda *_: apply_product_visibility(form, combo.currentText())
        )
        apply_product_visibility(form, combo.currentText())
