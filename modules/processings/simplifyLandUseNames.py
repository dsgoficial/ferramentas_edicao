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
import difflib
import re
import unicodedata

from qgis.core import (
    NULL,
    QgsFeatureRequest,
    QgsGeometry,
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingParameterBoolean,
    QgsProcessingParameterVectorLayer,
)
from qgis.PyQt.QtCore import QCoreApplication


class SimplifyCadastralNames(QgsProcessingAlgorithm):
    """Simplifica nome/texto_edicao de camadas cadastradas a partir de
    fontes verbosas (INCRA, FUNAI, MMA): constr_area_uso_especifico_a
    (imovel rural) e llp_limite_especial_a (assentamento, terra indigena,
    unidade de conservacao). Corrige capitalizacao, remove qualificador de
    subdivisao sem valor cartografico (Parte, Parcela, Gleba, Lote,
    Matricula etc, vocabulario POR CAMADA em LAYER_NOISE_WORDS), expande
    sigla em nome completo onde a camada pede (PA -> Projeto de
    Assentamento, APA -> Area de Protecao Ambiental, ver LAYER_EXPANSIONS),
    e deixa UM SO rotulo por grupo de feicoes que compartilham o mesmo
    nome-base (ex.: 30 parcelas da mesma fazenda -> 1 rotulo, na feicao
    mais central). ALTERA 'nome' (fonte de proveniencia) E 'texto_edicao'
    (decisao explicita do chefe, 2026-08-07: sobrescreve o texto bruto da
    fonte no banco de EDICAO; o banco de EXTRACAO com o dado original
    intocado e quem preserva a proveniencia, nao mais esta camada). O
    'nome' de cada feicao recebe a propria versao simplificada, SEM sofrer
    a supressao do agrupamento (essa so vale para texto_edicao: a feicao
    suprimida continua com nome individual, so fica sem rotulo visivel).
    NUNCA apaga geometria/visibilidade: as demais feicoes do grupo
    continuam desenhadas, so ficam sem texto."""

    INPUT_LAYER = "INPUT_LAYER"
    DRY_RUN = "DRY_RUN"

    # Vocabulario de qualificadores de subdivisao sem valor cartografico.
    # Base confirmada em 7 bancos extra_pit2026_* (2026-08-07) mais o
    # universo de 130.863 nomes do INCRA em edgv_oficial_br (2026-08-07,
    # dump edgv_oficial_br_20260719.dump restaurado local para auditoria).
    # So entra aqui termo puramente institucional/administrativo, nunca
    # palavra que apareceu como parte de nome proprio real (santa, sao,
    # boa, vista, rio, serra etc. ficam de fora de proposito).
    NOISE_WORDS = {
        "parte",
        "partes",
        "parcela",
        "parcelas",
        "parc",
        "gleba",
        "glebas",
        "area",
        "areas",
        "desmembrada",
        "desmembrado",
        "desmembramento",
        "remanescente",
        "remanecente",  # erro de grafia real na fonte INCRA (falta o 's')
        "sub",
        "subarea",
        "etapa",
        "et",
        "lote",
        "lotes",
        "mat",
        "matricula",
        "loteamento",
        "assentamento",
        "projeto",
        "pa",
        "p.a",
        "unica",
        "unico",
        "perimetro",
        "fls",
        "fl",
        "gl",
        "lotº",
        "lot",
        "lot°",
        "imovel",
        "reserva",
        "legal",
        "nº",
        "n°",
        "no",
    }

    # Preposicoes que so se strippam na BORDA de um segmento (edge-strip),
    # nunca no meio: "Gleba 05 DO Eng. Bento Velho" -> o "do" some junto
    # com "Gleba 05" porque esta entre ruido e o nome real.
    CONNECTOR_WORDS = {"de", "da", "do", "das", "dos"}

    # Preposicoes/artigos que ficam minusculos no Title Case, exceto na
    # primeira palavra do segmento.
    LOWER_WORDS_PT = {"de", "da", "do", "das", "dos", "e"}

    # Abreviacao de palavra-tipo (Fazenda/Engenho/Chacara/Santo/Santa) usada
    # SO para a chave de comparacao (duplicata/quase-duplicata), nunca para
    # decidir se um segmento e ruido: "Faz." NAO e descartado como ruido
    # (e tipo de propriedade, informacao real), mas "Faz. Margarida" tem
    # que casar com "Fazenda Margarida" na hora de deduplicar.
    ABBREV_SYNONYMS = {
        "faz": "fazenda",
        "eng": "engenho",
        "cha": "chacara",
        "chac": "chacara",
        "sto": "santo",
        "sta": "santa",
    }

    # Expansao por CAMADA: sigla que vira o nome completo no texto exibido
    # (nao so na chave de comparacao), aplicada ao primeiro token de um
    # segmento. Chave = table_name (layer.dataProvider().uri().table()).
    # llp_limite_especial_a: siglas de projeto de assentamento (INCRA) e de
    # unidade de conservacao, esta ultima com o nome completo tirado
    # LITERAL de dominios.tipo_limite_especial (edgv_topo_20.sql), fonte
    # primaria, nao inferido do codigo. "PAR" (Parque) fica de fora: 3
    # letras, risco de colisao, e nao observado na amostra.
    LAYER_EXPANSIONS = {
        "llp_limite_especial_a": {
            "pa": "Projeto de Assentamento",
            "pae": "Projeto de Assentamento Extrativista",
            "pds": "Projeto de Desenvolvimento Sustentável",
            "paf": "Projeto de Assentamento Florestal",
            "paq": "Projeto de Assentamento Quilombola",
            "pic": "Projeto Integrado de Colonização",
            "apa": "Área de Proteção Ambiental",
            "arie": "Área de Relevante Interesse Ecológico",
            "rppn": "Reserva Particular do Patrimônio Natural",
            "resex": "Reserva Extrativista",
            "rds": "Reserva de Desenvolvimento Sustentável",
            "rebio": "Reserva Biológica",
            "rvs": "Refúgio de Vida Silvestre",
            "esec": "Estação Ecológica",
            "mona": "Monumento Natural",
            "refau": "Reserva de Fauna",
            "flo": "Floresta",
        },
    }

    # llp_limite_especial_a: "area", "reserva", "projeto" e "assentamento"
    # sao PARTE DO NOME REAL aqui ("Area de Protecao Ambiental", "Reserva
    # Biologica", "Projeto de Assentamento") -- o OPOSTO do papel que tem em
    # constr_area_uso_especifico_a, onde sao ruido de subdivisao. "pa"/"p.a"
    # tambem saem daqui porque essa camada tem a propria expansao (ver
    # LAYER_EXPANSIONS), nao faz sentido tratar como ruido a descartar.
    # Perfil reduzido = NOISE_WORDS menos essas oito palavras.
    LAYER_NOISE_WORDS = {
        "llp_limite_especial_a": NOISE_WORDS
        - {"area", "areas", "reserva", "legal", "projeto", "assentamento", "pa", "p.a"},
    }

    # Segmento so vira aviso (nao mexe) se a razao de similaridade ao
    # nome-base estiver nessa faixa: parecido o bastante para suspeitar de
    # typo da fonte, mas nao igual (senao seria dedup automatico).
    NEAR_DUP_THRESHOLD = 0.85

    # Grupo com casco convexo muito maior que a soma das areas das feicoes
    # sugere nomes iguais em imoveis SEM relacao espacial: so aviso.
    SPATIAL_COHERENCE_RATIO = 3.0

    _ID_TOKEN_RE = re.compile(r"^\d+([./\-]\d+)*[a-zA-Z]?$")
    # Sufixo de sub-bloco letra-primeiro (E-2, D-2, A-1): identificador,
    # nao nome. So dígitos depois do hífen, senao "L-4-D" (identificador
    # REAL de lote em 3 partes) tambem cairia aqui.
    _ID_TOKEN_LETTER_FIRST_RE = re.compile(r"^[A-Za-z]-\d+(-\d+)*$")
    # "/" com espaco dos DOIS lados junta lista de elementos (Paz / Santana
    # -> Paz e Santana). Sem espaco (83/2) e fracao de lote, nao lista.
    _SLASH_LIST_RE = re.compile(r"\s+/\s+")
    # Gramatica valida de numeral romano (I, II, III, IV, ..., MCMXCIX...).
    # Mais restrito que "so letras I/V/X/L/C/D/M" para nao pegar palavras
    # reais formadas por essas letras (ex.: CIVIL).
    _ROMAN_RE = re.compile(
        r"^M{0,4}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$"
    )
    # Abreviacao pontuada (P.A, P.A., N.S): exige PELO MENOS um ponto interno,
    # senao uma letra solta (ex.: "E" de "Lotes 18 E 19") bateria aqui antes
    # de cair na regra de preposicao minuscula.
    _ABBR_RE = re.compile(r"^[A-Za-z](\.[A-Za-z])+\.?$")

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER,
                self.tr("Camada (nome/texto_edicao)"),
                types=[QgsProcessing.TypeVectorPolygon],
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.DRY_RUN,
                self.tr(
                    "Modo simulacao (so relatorio, nao grava no texto_edicao)"
                ),
                defaultValue=True,
            )
        )

    # ------------------------------------------------------------------
    # Utilidades de texto
    # ------------------------------------------------------------------

    @staticmethod
    def _strip_accents(s):
        return "".join(
            c
            for c in unicodedata.normalize("NFD", s)
            if unicodedata.category(c) != "Mn"
        )

    @classmethod
    def _norm_key(cls, s):
        """Chave de comparacao: sem acento, minuscula, espacos colapsados."""
        return re.sub(r"\s+", " ", cls._strip_accents(s).lower()).strip()

    @classmethod
    def _canon_key(cls, s):
        """Chave de IDENTIDADE: como _norm_key, mais abreviacao de tipo
        canonicalizada (faz -> fazenda), para "Faz. Margarida" reconhecer
        "Fazenda Margarida" como o MESMO nome na deduplicacao/agrupamento."""
        out = []
        for tok in s.split():
            key = cls._strip_accents(tok).lower().strip(".,()")
            out.append(cls.ABBREV_SYNONYMS.get(key, key))
        return " ".join(out)

    @staticmethod
    def _normalize_whitespace(s):
        return re.sub(r"\s+", " ", s).strip()

    @staticmethod
    def _normalize_dash(s):
        # So unifica um traco em separador de segmento se ele tem espaco
        # nos dois lados no texto original. Traco colado num identificador
        # (ex.: "12-A", "02-01", "83/2") NAO e separador, e sobrevive
        # dentro do segmento.
        return re.sub(r"\s+[-–—]\s+", " - ", s)

    @staticmethod
    def _is_all_caps(s):
        letters = [c for c in s if c.isalpha()]
        return bool(letters) and all(c.isupper() for c in letters)

    @staticmethod
    def _split_edge_punct(w):
        """Separa pontuacao de borda ('(LOTE' -> '(', 'LOTE', '') do NUCLEO
        alfanumerico, para capitalizar o nucleo sem perder a letra colada
        na pontuacao (bug: "(LOTE".capitalize() vira "(lote", porque
        capitalize() so maiuscula o PRIMEIRO CARACTERE da string inteira)."""
        start, end = 0, len(w)
        while start < end and not w[start].isalnum():
            start += 1
        while end > start and not w[end - 1].isalnum():
            end -= 1
        return w[:start], w[start:end], w[end:]

    @classmethod
    def _case_one_word(cls, w, is_first_word):
        lead, core, trail = cls._split_edge_punct(w)
        if not core:
            return w
        if any(c.isdigit() for c in core):
            # identificador alfanumerico (317-D, 42-A-4, 13E): preserva
            # como veio da fonte, nao recapitaliza.
            return w
        if cls._ROMAN_RE.match(core.upper()) and core.upper() == core:
            return lead + core.upper() + trail
        if cls._ABBR_RE.match(core):
            return lead + core.upper() + trail
        key = cls._strip_accents(core).lower()
        if key in cls.LOWER_WORDS_PT and not is_first_word:
            return lead + core.lower() + trail
        return lead + core.capitalize() + trail

    @classmethod
    def _title_case_pt(cls, s):
        words = s.split(" ")
        out = []
        for i, w in enumerate(words):
            if "/" in w:
                # '/' colado sem espaco (CONCÓRDIA/SANTA): capitaliza CADA
                # lado, senao "w.capitalize()" trata a palavra inteira como
                # UMA string e derruba a segunda metade para minuscula
                # (bug identico ao de pontuacao de borda, so que no meio).
                frags = w.split("/")
                out.append(
                    "/".join(cls._case_one_word(f, i == 0) for f in frags)
                )
                continue
            out.append(cls._case_one_word(w, i == 0))
        return " ".join(out)

    @classmethod
    def _is_id_token(cls, token):
        t = token.strip().strip(".,()")
        if not t:
            return False
        if len(t) == 1 and t.isalpha():
            return True
        if cls._ID_TOKEN_LETTER_FIRST_RE.match(t):
            return True
        t2 = re.sub(r"^[nN][ºo°.]?\s*", "", t)
        return bool(cls._ID_TOKEN_RE.match(t2))

    @classmethod
    def _noise_words_for(cls, table_name):
        """Vocabulario de ruido da camada. Perfil reduzido cadastrado em
        LAYER_NOISE_WORDS, senao o padrao NOISE_WORDS."""
        return cls.LAYER_NOISE_WORDS.get(table_name, cls.NOISE_WORDS)

    @classmethod
    def _is_noise_word(cls, token, noise_words):
        t = cls._strip_accents(token).lower().strip("().,")
        return t in noise_words

    @classmethod
    def _is_connector(cls, token):
        t = cls._strip_accents(token).lower().strip("().,")
        return t in cls.CONNECTOR_WORDS

    @staticmethod
    def _is_punct_only(token):
        return not any(c.isalnum() for c in token)

    @classmethod
    def _is_strippable(cls, token, noise_words):
        """Token descartavel na BORDA de um segmento: ruido, id puro,
        preposicao de ligacao, ou pontuacao solta (traco/barra sem par)."""
        return (
            cls._is_punct_only(token)
            or cls._is_noise_word(token, noise_words)
            or cls._is_id_token(token)
            or cls._is_connector(token)
        )

    @classmethod
    def _strip_noise_edges(cls, tokens, noise_words):
        """Apara token descartavel do INICIO e do FIM da lista, preservando
        tudo que sobrar no meio (inclusive pontuacao real, tipo o '/' de
        'Paz / Santana'). Segmento 100% ruido volta lista vazia."""
        start, end = 0, len(tokens)
        while start < end and cls._is_strippable(tokens[start], noise_words):
            start += 1
        while end > start and cls._is_strippable(tokens[end - 1], noise_words):
            end -= 1
        return tokens[start:end]

    @classmethod
    def _join_slash_list(cls, text):
        """'Paz / Santana' -> 'Paz e Santana'; 'A / B / C' -> 'A, B e C'.
        So dispara com espaco dos dois lados do '/' (lista de elementos),
        nunca em fracao de lote sem espaco tipo '83/2'."""
        if not cls._SLASH_LIST_RE.search(text):
            return text
        parts = [p.strip() for p in cls._SLASH_LIST_RE.split(text) if p.strip()]
        if len(parts) <= 1:
            return text
        if len(parts) == 2:
            return parts[0] + " e " + parts[1]
        return ", ".join(parts[:-1]) + " e " + parts[-1]

    @classmethod
    def _match_expansion(cls, token, expansions):
        """Retorna a expansao completa da sigla (ex.: "Projeto de
        Assentamento") se o token bater com uma cadastrada, senao None."""
        if not expansions:
            return None
        key = cls._strip_accents(token.strip().strip(".,()")).lower()
        return expansions.get(key)

    @classmethod
    def _process_segment_text(cls, seg_raw, expansions=None, noise_words=None):
        """Apara ruido da borda de UM segmento (base ou nao) e recapitaliza
        se era caixa alta. Retorna None se o segmento inteiro era ruido.

        Sigla expansivel (PA -> Projeto de Assentamento) e tratada A PARTE:
        o RESTO do segmento decide sozinho se era caixa alta (senao
        "Projeto de Assentamento" com acento minusculo derrubaria o teste
        de is_all_caps do segmento INTEIRO e "MANAQUIRI II" ficaria sem
        recapitalizar). A expansao em si nunca e reavaliada por maiuscula
        nem entra no apara-ruido (e conteudo real, sempre)."""
        if noise_words is None:
            noise_words = cls.NOISE_WORDS
        raw_tokens = seg_raw.split()
        expansion_phrase = None
        if raw_tokens:
            expansion_phrase = cls._match_expansion(raw_tokens[0], expansions)

        if expansion_phrase is not None:
            rest_tokens = cls._strip_noise_edges(raw_tokens[1:], noise_words)
            rest_text = " ".join(rest_tokens).strip(" -–—")
            if rest_text and cls._is_all_caps(rest_text):
                rest_text = cls._title_case_pt(rest_text)
            text = expansion_phrase + (" " + rest_text if rest_text else "")
            return cls._join_slash_list(text)

        tokens = cls._strip_noise_edges(raw_tokens, noise_words)
        if not tokens:
            return None
        text = " ".join(tokens).strip(" -–—")
        if not text:
            return None
        if cls._is_all_caps(text):
            text = cls._title_case_pt(text)
        text = cls._join_slash_list(text)
        return text

    @classmethod
    def simplify_nome(cls, nome, expansions=None, noise_words=None):
        """Retorna (texto_simplificado_ou_None, segmentos_descartados,
        avisos_quase_dup, primeiro_segmento_era_ruido).

        texto_simplificado None significa que o nome INTEIRO era ruido
        administrativo (ex.: "Lote 110 - Parte 1"): a chamadora deve
        gravar texto_edicao como NULL, nao um texto vazio.

        O nome-base nunca e sagrado: se o primeiro segmento e so ruido
        (ex.: "Gleba C" antes de "Engenho Moreno"), ele e descartado como
        qualquer outro e o proximo segmento com conteudo real vira a base
        efetiva para fins de deduplicacao.

        expansions: dict de sigla -> nome completo, especifico da camada
        (ver LAYER_EXPANSIONS), aplicado ao primeiro token de CADA
        segmento (ex.: "PA" -> "Projeto de Assentamento").
        noise_words: vocabulario de ruido da camada (ver LAYER_NOISE_WORDS),
        default NOISE_WORDS se omitido."""
        if noise_words is None:
            noise_words = cls.NOISE_WORDS
        normalized = cls._normalize_whitespace(cls._normalize_dash(nome))
        raw_segments = [s.strip() for s in normalized.split(" - ") if s.strip()]
        if not raw_segments:
            return None, [], [], False

        kept = []
        seen_keys = set()
        dropped = []
        warnings = []
        base_key = None
        first_segment_was_noise = False

        for i, seg in enumerate(raw_segments):
            text = cls._process_segment_text(seg, expansions, noise_words)
            if text is None:
                dropped.append(seg)
                if i == 0:
                    first_segment_was_noise = True
                continue

            key = cls._canon_key(text)
            if base_key is None:
                kept.append(text)
                seen_keys.add(key)
                base_key = key
                continue
            if key in seen_keys:
                dropped.append(seg)
                continue

            ratio = difflib.SequenceMatcher(None, key, base_key).ratio()
            if ratio >= cls.NEAR_DUP_THRESHOLD:
                warnings.append(seg)

            kept.append(text)
            seen_keys.add(key)

        if not kept:
            return None, dropped, warnings, first_segment_was_noise

        return " - ".join(kept), dropped, warnings, first_segment_was_noise

    # ------------------------------------------------------------------
    # Guarda de texto manual
    # ------------------------------------------------------------------
    #
    # NAO reusa o "_hasManualText" do changeAttributeTopo.py (so vazio/nao
    # vazio) porque aquele roda ANTES do default (defaultAreaUsoEspecifico)
    # preencher texto_edicao=nome; aqui este algoritmo roda DEPOIS, quando
    # texto_edicao NUNCA esta vazio (e sempre igual a nome no fluxo padrao).
    # A guarda certa e comparar contra 'nome': igual = ainda e o default
    # automatico, elegivel; diferente e nao-vazio = foi editado (a mao, ou
    # por uma rodada anterior deste mesmo algoritmo), preserva.

    @staticmethod
    def _hasManualText(feature):
        if "texto_edicao" not in feature.fields().names():
            return False
        value = feature["texto_edicao"]
        if value == NULL or not isinstance(value, str) or value.strip() == "":
            return False
        nome = feature["nome"] if "nome" in feature.fields().names() else NULL
        nomeStr = nome if isinstance(nome, str) else ""
        return value.strip() != nomeStr.strip()

    # ------------------------------------------------------------------
    # Algoritmo
    # ------------------------------------------------------------------

    def processAlgorithm(self, parameters, context, feedback):
        layer = self.parameterAsVectorLayer(parameters, self.INPUT_LAYER, context)
        dryRun = self.parameterAsBoolean(parameters, self.DRY_RUN, context)

        fieldNames = layer.fields().names()
        if "nome" not in fieldNames or "texto_edicao" not in fieldNames:
            feedback.reportError(
                self.tr(
                    "A camada precisa ter os campos 'nome' e 'texto_edicao'."
                )
            )
            return {}

        # fallback para o nome da camada: fontes nao-PostGIS (gpkg, memory)
        # nao expoem table() no uri (mesmo padrao do changeAttributeTopo.py)
        tableName = layer.dataProvider().uri().table() or layer.name()
        expansions = self.LAYER_EXPANSIONS.get(tableName)
        noiseWords = self._noise_words_for(tableName)
        if expansions:
            feedback.pushInfo(
                self.tr("Camada '{0}': expandindo siglas ({1}).").format(
                    tableName, ", ".join(sorted(expansions))
                )
            )

        proposals = {}
        nSkippedManual = 0
        nSemNome = 0

        for feature in layer.getFeatures():
            if feedback.isCanceled():
                return {}
            if self._hasManualText(feature):
                nSkippedManual += 1
                continue
            nome = feature["nome"]
            if nome == NULL or not str(nome).strip():
                nSemNome += 1
                continue

            simplificado, dropped, nearDupWarnings, firstSegmentNoise = self.simplify_nome(
                str(nome), expansions, noiseWords
            )
            proposals[feature.id()] = {
                "nome": str(nome),
                "texto_atual": feature["texto_edicao"],
                "simplificado": simplificado,
                "dropped": dropped,
                "near_dup_warnings": nearDupWarnings,
                "first_segment_noise": firstSegmentNoise,
                "geometry": QgsGeometry(feature.geometry()),
            }

        finalText = {}
        # 'nome' e a IDENTIDADE da feicao: recebe a versao simplificada
        # INDIVIDUAL de cada uma, sem sofrer a supressao do agrupamento
        # (essa so vale para o texto_edicao exibido). Uma feicao suprimida
        # continua com o proprio nome simplificado em 'nome', so fica sem
        # rotulo em texto_edicao.
        finalNome = {
            fid: info["simplificado"] for fid, info in proposals.items()
        }
        groupReports = []
        nVirouNulo = 0

        # --- Nome inteiro era ruido administrativo: 'nome' E texto_edicao
        # viram NULL (nao ha nome real para gravar), nunca entra no
        # agrupamento por nome (todo None e o MESMO grupo falso, o que
        # juntaria feicoes sem nenhuma relacao real). ---
        for fid, info in proposals.items():
            if info["simplificado"] is None:
                finalText[fid] = None
                nVirouNulo += 1
                feedback.reportError(
                    self.tr(
                        "[{0}] AVISO nome inteiro e ruido administrativo, 'nome' e "
                        "texto_edicao viram NULL: \"{1}\""
                    ).format(fid, info["nome"]),
                    fatalError=False,
                )

        # --- Agrupa por nome-base resultante, escolhe UM rotulo por grupo ---
        groups = {}
        for fid, info in proposals.items():
            if info["simplificado"] is None:
                continue
            key = self._canon_key(info["simplificado"])
            groups.setdefault(key, []).append(fid)

        for key, fids in groups.items():
            if len(fids) == 1:
                fid = fids[0]
                finalText[fid] = proposals[fid]["simplificado"]
                continue

            geoms = {fid: proposals[fid]["geometry"] for fid in fids}
            union = QgsGeometry.unaryUnion(list(geoms.values()))
            hullArea = union.convexHull().area() if union else 0
            sumArea = sum(g.area() for g in geoms.values())
            coherenceWarning = None
            if sumArea > 0 and hullArea > 0:
                ratio = hullArea / sumArea
                if ratio > self.SPATIAL_COHERENCE_RATIO:
                    coherenceWarning = self.tr(
                        "grupo '{0}' ({1} feicoes): casco convexo e {2}x a soma "
                        "das areas, confirme se sao o mesmo imovel"
                    ).format(proposals[fids[0]]["simplificado"], len(fids), round(ratio, 1))

            centroids = {fid: geoms[fid].centroid().asPoint() for fid in fids}

            def sumDist(fid, centroids=centroids, fids=fids):
                p = centroids[fid]
                return sum(
                    p.distance(centroids[other]) for other in fids if other != fid
                )

            medoid = min(fids, key=sumDist)
            for fid in fids:
                finalText[fid] = proposals[fid]["simplificado"] if fid == medoid else None

            groupReports.append(
                (proposals[fids[0]]["simplificado"], len(fids), medoid, coherenceWarning)
            )

        # --- Relatorio ---
        nAlterados = 0
        nNomeAlterado = 0
        nSuprimidosGrupo = 0
        for fid, texto in finalText.items():
            info = proposals[fid]
            if info["simplificado"] is None:
                continue  # ja reportado acima (nome inteiro virou ruido)
            atual = info["texto_atual"]
            atualStr = atual if isinstance(atual, str) else ""
            nomeOriginal = info["nome"]
            nomeNovo = finalNome[fid]
            if nomeNovo != nomeOriginal:
                nNomeAlterado += 1
                feedback.pushInfo(
                    self.tr('[{0}] nome: "{1}" -> "{2}"').format(fid, nomeOriginal, nomeNovo)
                )
            if texto is None:
                nSuprimidosGrupo += 1
                feedback.pushInfo(
                    self.tr("[{0}] SUPRIME texto_edicao (rotulo do grupo fica em outra feicao, 'nome' continua individual): \"{1}\"").format(
                        fid, atualStr
                    )
                )
                continue
            if texto != atualStr:
                nAlterados += 1
                feedback.pushInfo(
                    self.tr('[{0}] texto_edicao: "{1}" -> "{2}"').format(fid, nomeOriginal, texto)
                )
            for seg in info["near_dup_warnings"]:
                feedback.reportError(
                    self.tr(
                        "[{0}] AVISO quase-duplicata (possivel typo na fonte), nao alterado: '{1}' proximo do nome-base em \"{2}\""
                    ).format(fid, seg, info["nome"]),
                    fatalError=False,
                )
            if info["first_segment_noise"]:
                feedback.pushInfo(
                    self.tr(
                        "[{0}] nome-base original era so termo generico, rotulo final veio "
                        "de outro segmento: \"{1}\" -> \"{2}\""
                    ).format(fid, info["nome"], texto)
                )

        for baseNome, tamanho, medoidFid, coherenceWarning in groupReports:
            feedback.pushInfo(
                self.tr("Grupo \"{0}\": {1} feicoes, rotulo mantido na feicao {2}").format(
                    baseNome, tamanho, medoidFid
                )
            )
            if coherenceWarning:
                feedback.reportError(coherenceWarning, fatalError=False)

        feedback.pushInfo(
            self.tr(
                "Total: {0} feicoes avaliadas, {1} com 'nome' alterado, {2} com "
                "texto_edicao alterado, {3} suprimidas em texto_edicao por "
                "agrupamento, {4} viraram NULL em 'nome' e texto_edicao (nome "
                "inteiro era ruido), {5} com texto manual preservado, {6} sem nome."
            ).format(
                len(proposals),
                nNomeAlterado,
                nAlterados,
                nSuprimidosGrupo,
                nVirouNulo,
                nSkippedManual,
                nSemNome,
            )
        )

        if dryRun:
            feedback.pushInfo(
                self.tr("Modo simulacao: nada foi gravado. Rode de novo com DRY_RUN desmarcado para aplicar.")
            )
            return {}

        layer.startEditing()
        layer.beginEditCommand(self.tr("Simplificando nomes cadastrais"))
        for fid, texto in finalText.items():
            feature = layer.getFeature(fid)
            changed = False

            currentNome = feature["nome"]
            currentNomeStr = currentNome if isinstance(currentNome, str) else ""
            novoNome = finalNome[fid]
            novoNomeStr = novoNome if novoNome is not None else ""
            if currentNomeStr != novoNomeStr:
                feature["nome"] = novoNome if novoNome is not None else NULL
                changed = True

            currentValue = feature["texto_edicao"]
            currentStr = currentValue if isinstance(currentValue, str) else ""
            newValue = texto if texto is not None else NULL
            newStr = texto if texto is not None else ""
            if currentStr != newStr:
                feature["texto_edicao"] = newValue
                changed = True

            if changed:
                layer.updateFeature(feature)
        layer.endEditCommand()

        return {}

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return SimplifyCadastralNames()

    def name(self):
        return "simplifycadastralnames"

    def displayName(self):
        return self.tr("Simplifica Nomes Cadastrais Verbosos (INCRA/FUNAI/MMA)")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return self.tr(
            "Simplifica 'nome' E 'texto_edicao' de camadas cadastradas a "
            "partir de fonte verbosa (INCRA, FUNAI, MMA). SOBRESCREVE o "
            "texto bruto da fonte no banco de EDICAO (decisao explicita do "
            "chefe; o banco de EXTRACAO preserva o original). Cobre hoje "
            "constr_area_uso_especifico_a (imovel rural: normaliza "
            "capitalizacao e traco, remove qualificador de subdivisao sem "
            "valor cartografico como Parte, Parcela, Gleba, Lote, "
            "Matricula, Desmembrada, Remanescente) e llp_limite_especial_a "
            "(assentamento, terra indigena, unidade de conservacao: expande "
            "sigla em nome completo, ex. PA -> Projeto de Assentamento, "
            "APA -> Area de Protecao Ambiental). Em ambas, 'nome' recebe a "
            "versao simplificada INDIVIDUAL de cada feicao (nunca suprimido), "
            "e 'texto_edicao' deixa um so rotulo visivel por grupo de "
            "feicoes com o mesmo nome-base (na feicao mais central; as "
            "demais continuam desenhadas, so perdem o texto_edicao, nao o "
            "nome). Nome inteiro ruido (~2% dos casos) vira NULL nos dois "
            "campos. Nunca altera o texto editado manualmente. Roda em modo "
            "simulacao por padrao."
        )

    def helpUrl(self):
        return ""
