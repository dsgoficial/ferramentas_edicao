"""
Debug de máscaras — cole no Console Python do QGIS com o projeto aberto.

Uso:
    exec(open(r"C:\\Users\\diniz\\AppData\\Roaming\\QGIS\\QGIS4\\profiles\\default\\python\\plugins\\ferramentas_edicao\\.dev\\debug_masks.py", encoding="utf-8").read())
    diagnose_masks()          # mismatches JSON × rules do projeto
    dump_project_rules()      # lista rules do projeto atual
    test_resolve_refs()       # resolve (key, path) do JSON contra renderers atuais
    check_applied_state()     # pós-LoadMasks: estado real de QgsTextMask
    inspect_symbol_tree(tbl)  # árvore de symbols/symbolLayers de uma camada
    suggest_rename_map()      # gera mapa heurístico de renomeio
"""
import json
import unicodedata

DEFAULT_MASKS_JSON = r"C:\Users\diniz\AppData\Roaming\QGIS\QGIS4\profiles\default\python\plugins\ferramentas_edicao\modules\mapBuilder\resources\products\topoMap\1_4\masks.json"
from qgis.core import (
    QgsProject,
    QgsVectorLayerSimpleLabeling,
    QgsRuleBasedLabeling,
    QgsMapLayer,
    QgsSingleSymbolRenderer,
    QgsCategorizedSymbolRenderer,
    QgsRuleBasedRenderer,
    QgsGraduatedSymbolRenderer,
)
from qgis.PyQt import sip

try:
    from qgis.core import QgsMergedFeatureRenderer
except ImportError:
    QgsMergedFeatureRenderer = None
try:
    from qgis.core import QgsInvertedPolygonRenderer
except ImportError:
    QgsInvertedPolygonRenderer = None


_RENDERER_CLASS_BY_TYPE = {
    "singleSymbol": QgsSingleSymbolRenderer,
    "categorizedSymbol": QgsCategorizedSymbolRenderer,
    "graduatedSymbol": QgsGraduatedSymbolRenderer,
    "RuleRenderer": QgsRuleBasedRenderer,
}
if QgsMergedFeatureRenderer is not None:
    _RENDERER_CLASS_BY_TYPE["mergedFeatureRenderer"] = QgsMergedFeatureRenderer
if QgsInvertedPolygonRenderer is not None:
    _RENDERER_CLASS_BY_TYPE["invertedPolygonRenderer"] = QgsInvertedPolygonRenderer

_EMBEDDING_RENDERER_TYPES = {"mergedFeatureRenderer", "invertedPolygonRenderer"}


def _downcast_renderer(renderer):
    """Faz downcast do renderer para a subclasse concreta via sip.cast + type()."""
    if renderer is None:
        return None
    t = renderer.type() if hasattr(renderer, "type") else None
    cls = _RENDERER_CLASS_BY_TYPE.get(t)
    if cls is not None and not isinstance(renderer, cls):
        try:
            return sip.cast(renderer, cls)
        except Exception:
            return renderer
    return renderer


def _unwrap_renderer(renderer, max_depth=4):
    """Descasca wrappers (merged/inverted) retornando o renderer concreto interno."""
    for _ in range(max_depth):
        renderer = _downcast_renderer(renderer)
        if renderer is None:
            return None
        t = renderer.type() if hasattr(renderer, "type") else None
        if t not in _EMBEDDING_RENDERER_TYPES:
            return renderer
        if not hasattr(renderer, "embeddedRenderer"):
            return renderer
        inner = renderer.embeddedRenderer()
        if inner is None or inner is renderer:
            return renderer
        renderer = inner
    return renderer


def _norm(s):
    """Normaliza texto: remove acentos, lower, strip, colapsa espaços."""
    if s is None:
        return ""
    s = unicodedata.normalize("NFD", s)
    s = "".join(c for c in s if unicodedata.category(c) != "Mn")
    return " ".join(s.lower().split())


def _layers_by_table():
    out = {}
    for lyr in QgsProject.instance().mapLayers().values():
        if lyr.type() != QgsMapLayer.LayerType.VectorLayer:
            continue
        try:
            table = lyr.dataProvider().uri().table()
        except Exception:
            continue
        out.setdefault(table, []).append(lyr)
    return out


def _iter_all_rules(rule):
    """Yields all descendants of `rule` (excluding the root itself), depth-first."""
    for child in rule.children():
        yield child
        yield from _iter_all_rules(child)


def _rule_descriptions(layer):
    labels = layer.labeling()
    if labels is None:
        return ("NO_LABELING", [], [])
    if isinstance(labels, QgsVectorLayerSimpleLabeling):
        return ("SIMPLE", [], [])
    if isinstance(labels, QgsRuleBasedLabeling):
        all_rules = list(_iter_all_rules(labels.rootRule()))
        leaves = [r for r in all_rules if not r.children()]
        return (
            "RULE_BASED",
            [r.description() for r in all_rules],
            [r.description() for r in leaves],
        )
    return (type(labels).__name__, [], [])


def dump_project_rules():
    """Imprime todas as descrições de rules de labeling presentes no projeto."""
    tables = _layers_by_table()
    print(f"=== {len(tables)} tabelas vetoriais no projeto ===")
    for table in sorted(tables):
        for lyr in tables[table]:
            kind, descs, leaves = _rule_descriptions(lyr)
            print(f"[{table}] {kind}  (leaves: {len(leaves)})")
            for d in descs:
                print(f"    - {d!r}")


def diagnose_masks(json_path=None):
    """Compara descrições de rules no JSON vs projeto, apontando mismatches."""
    json_path = json_path or DEFAULT_MASKS_JSON
    print(f"Lendo: {json_path}")
    with open(json_path, encoding="utf-8") as f:
        mask_dict = json.load(f)
    tables = _layers_by_table()

    missingLayers = []
    noLabeling = []
    missingRules = []  # (table, json_provider, candidates)
    exactMatches = 0
    fuzzyMatches = []  # (table, json_provider, matched_proj_desc)
    orderFallback = []  # (table, json_provider, matched_leaf_desc, entries)
    entriesTotal = 0
    entriesUnmatched = 0
    entriesOrderFallback = 0

    for table, providers in mask_dict.items():
        entries_in_table = sum(len(v) for v in providers.values())
        entriesTotal += entries_in_table
        if table not in tables:
            missingLayers.append((table, entries_in_table))
            entriesUnmatched += entries_in_table
            continue
        lyr = tables[table][0]
        kind, descs, leaves = _rule_descriptions(lyr)
        if kind == "NO_LABELING":
            noLabeling.append((table, entries_in_table))
            entriesUnmatched += entries_in_table
            continue
        # Matching é contra LEAVES (rules sem filhos) — wrappers top-level
        # como "Visível" filtram visibilidade e não carregam máscaras.
        normProj = {_norm(d): d for d in leaves}

        # Pass 1: exact + fuzzy contra leaves. Collect unmatched.
        unmatchedProviders = []  # (provider, entries_count)
        usedDescs = set()
        for provider, entries in providers.items():
            if provider == "--SINGLE--RULE--":
                if kind == "SIMPLE":
                    exactMatches += len(entries)
                else:
                    missingRules.append((table, provider, descs))
                    entriesUnmatched += len(entries)
                continue
            if provider in leaves and provider not in usedDescs:
                exactMatches += len(entries)
                usedDescs.add(provider)
                continue
            n = _norm(provider)
            if n in normProj and normProj[n] not in usedDescs:
                fuzzyMatches.append((table, provider, normProj[n], len(entries)))
                usedDescs.add(normProj[n])
                continue
            unmatchedProviders.append((provider, len(entries)))

        # Pass 2: among unmatched and leaves not yet consumed, match by order or single.
        remainingLeaves = [d for d in leaves if d not in usedDescs]
        if unmatchedProviders and remainingLeaves:
            if len(unmatchedProviders) == len(remainingLeaves):
                for (p, n), d in zip(unmatchedProviders, remainingLeaves):
                    orderFallback.append((table, p, d, n))
                    entriesOrderFallback += n
                unmatchedProviders = []
            elif len(remainingLeaves) == 1:
                for p, n in unmatchedProviders:
                    orderFallback.append((table, p, remainingLeaves[0], n))
                    entriesOrderFallback += n
                unmatchedProviders = []
        for p, n in unmatchedProviders:
            missingRules.append((table, p, descs))
            entriesUnmatched += n

    print(f"\n=== Resumo ===")
    print(f"Entradas totais no JSON:           {entriesTotal}")
    print(f"Match exato:                       {exactMatches}")
    print(f"Match por normalização:            {sum(m[3] for m in fuzzyMatches)} ({len(fuzzyMatches)} rules)")
    print(f"Fallback por ordem/folha única:    {entriesOrderFallback} ({len(orderFallback)} rules)")
    print(f"Não resolvidas (ambíguas):         {entriesUnmatched}")
    print(f"Layers do JSON ausentes:           {len(missingLayers)}")
    print(f"Layers sem labeling:               {len(noLabeling)}")
    print(f"Rules realmente sem match:         {len(missingRules)}")

    if missingLayers:
        print(f"\n--- Layers ausentes no projeto ---")
        for t, n in missingLayers[:20]:
            print(f"  {t} ({n} entradas)")
        if len(missingLayers) > 20:
            print(f"  ... +{len(missingLayers) - 20}")

    if fuzzyMatches:
        print(f"\n--- Rules que casam por normalização (acentos/caixa) ---")
        for t, json_p, proj_p, n in fuzzyMatches[:30]:
            print(f"  [{t}] JSON={json_p!r}  →  projeto={proj_p!r}  ({n} entradas)")
        if len(fuzzyMatches) > 30:
            print(f"  ... +{len(fuzzyMatches) - 30}")

    if orderFallback:
        print(f"\n--- Recuperadas pelo fallback ordem/folha única ---")
        for t, p, d, n in orderFallback[:30]:
            print(f"  [{t}] JSON={p!r}  →  folha={d!r}  ({n} entradas)")
        if len(orderFallback) > 30:
            print(f"  ... +{len(orderFallback) - 30}")

    if missingRules:
        print(f"\n--- Rules ambíguas (sem match, múltiplas rules no alvo) ---")
        for t, json_p, descs in missingRules[:30]:
            print(f"  [{t}] JSON={json_p!r}")
            print(f"    projeto tem: {descs}")
        if len(missingRules) > 30:
            print(f"  ... +{len(missingRules) - 30}")

    return {
        "missingLayers": missingLayers,
        "noLabeling": noLabeling,
        "missingRules": missingRules,
        "fuzzyMatches": fuzzyMatches,
        "exactMatches": exactMatches,
        "entriesTotal": entriesTotal,
        "entriesUnmatched": entriesUnmatched,
    }


def simulate_single_rule_recovery(json_path=None):
    """Estima quantas máscaras seriam recuperadas pela estratégia 'auto-merge em single rule'.

    Para cada rule não resolvida, se o layer-alvo tiver EXATAMENTE 1 rule,
    consideramos que a máscara pode ser auto-aplicada àquela rule única.
    """
    json_path = json_path or DEFAULT_MASKS_JSON
    with open(json_path, encoding="utf-8") as f:
        mask_dict = json.load(f)
    tables = _layers_by_table()

    recoverable = 0
    ambiguous = 0
    byTargetRuleCount = {}
    ambiguousSamples = []
    for table, providers in mask_dict.items():
        if table not in tables:
            continue
        lyr = tables[table][0]
        kind, descs, _ = _rule_descriptions(lyr)
        if kind != "RULE_BASED":
            continue
        for provider, entries in providers.items():
            if provider == "--SINGLE--RULE--" or provider in descs:
                continue
            n = len(descs)
            byTargetRuleCount[n] = byTargetRuleCount.get(n, 0) + len(entries)
            if n == 1:
                recoverable += len(entries)
            else:
                ambiguous += len(entries)
                if len(ambiguousSamples) < 20:
                    ambiguousSamples.append((table, provider, descs, len(entries)))

    print(f"\n=== Simulação: auto-merge em single-rule ===")
    print(f"Recuperáveis (layer tem 1 rule só):     {recoverable}")
    print(f"Ambíguos   (layer tem N>1 rules):       {ambiguous}")
    print(f"\nDistribuição por # de rules no alvo:")
    for n, count in sorted(byTargetRuleCount.items()):
        print(f"  {n} rule(s) no alvo: {count} entradas")
    if ambiguousSamples:
        print(f"\nCasos ambíguos (primeiros 20):")
        for t, p, d, n in ambiguousSamples:
            print(f"  [{t}] JSON={p!r}  projeto tem {len(d)} rules: {d}  ({n} entradas)")
    return {"recoverable": recoverable, "ambiguous": ambiguous}


def _walk_index_path(symbol, index_path):
    """Dada uma QgsSymbol, caminha `index_path` descendo via subSymbol quando necessário.
    Retorna o QgsSymbolLayer final ou None."""
    if symbol is None or not index_path:
        return None
    current = symbol
    for i, idx in enumerate(index_path):
        if not hasattr(current, "symbolLayer"):
            return None
        try:
            sl = current.symbolLayer(idx)
        except Exception:
            return None
        if sl is None:
            return None
        if i == len(index_path) - 1:
            return sl
        sub = sl.subSymbol() if hasattr(sl, "subSymbol") else None
        if sub is None:
            return None
        current = sub
    return None


def _all_symbols(renderer):
    """Yields (symbol_key, symbol) for every symbol produced by a renderer."""
    if isinstance(renderer, QgsSingleSymbolRenderer):
        yield ("", renderer.symbol())
    elif isinstance(renderer, QgsCategorizedSymbolRenderer):
        for cat in renderer.categories():
            yield (str(cat.value()), cat.symbol())
    elif isinstance(renderer, QgsGraduatedSymbolRenderer):
        for r in renderer.ranges():
            yield (r.label(), r.symbol())
    elif isinstance(renderer, QgsRuleBasedRenderer):
        def walk(rule):
            for child in rule.children():
                if child.symbol() is not None:
                    yield (child.ruleKey(), child.symbol())
                yield from walk(child)
        yield from walk(renderer.rootRule())


def _resolve_symbol(renderer, symbol_key, index_path, allow_key_fallback=True):
    """Tenta localizar um QgsSymbolLayer no renderer via (symbol_key, index_path).
    Se `allow_key_fallback`, tenta o `index_path` em qualquer symbol quando a key não bate.
    Retorna (symbol_layer, renderer_type, reason_str)."""
    outer_type = renderer.type() if (renderer is not None and hasattr(renderer, "type")) else None
    renderer = _unwrap_renderer(renderer)
    if renderer is None:
        return (None, "none", "no_renderer")
    rt = renderer.type() if hasattr(renderer, "type") else type(renderer).__name__
    if outer_type in _EMBEDDING_RENDERER_TYPES:
        rt = f"{outer_type}→{rt}"

    exact_symbols = []
    all_syms = list(_all_symbols(renderer))
    if not all_syms:
        return (None, rt, "renderer_type_unsupported")

    for k, sym in all_syms:
        if k == symbol_key:
            exact_symbols.append(sym)

    # Pass 1: exact key match
    for sym in exact_symbols:
        sl = _walk_index_path(sym, index_path)
        if sl is not None:
            return (sl, rt, "ok")

    if not allow_key_fallback:
        if not exact_symbols:
            return (None, rt, "key_not_found")
        return (None, rt, "index_path_invalid")

    # Pass 2: key mismatch, try index_path against any symbol
    for k, sym in all_syms:
        sl = _walk_index_path(sym, index_path)
        if sl is not None:
            return (sl, rt, f"ok_via_fallback_key_mismatch(had={symbol_key!r}, used={k!r})")
    return (None, rt, "index_path_invalid_any_symbol")


def test_resolve_refs(json_path=None, show_ok_samples=False, allow_key_fallback=True):
    """Para cada entrada do JSON, tenta resolver (key, path) no renderer do target.
    Imprime quantas resolveram e por quais motivos falharam.

    allow_key_fallback: se True, aceita bater apenas o `index_path` quando a key
    não resolve (mostra como 'ok_via_fallback_...')."""
    json_path = json_path or DEFAULT_MASKS_JSON
    with open(json_path, encoding="utf-8") as f:
        mask_dict = json.load(f)
    tables = _layers_by_table()

    resolved = 0
    byReason = {}
    samplesByReason = {}
    okSamples = []

    for source_table, providers in mask_dict.items():
        for provider, entries in providers.items():
            for entry in entries:
                if len(entry) < 3:
                    continue
                target_table, key, path = entry[0], entry[1], entry[2]
                if target_table not in tables:
                    byReason["target_not_in_project"] = byReason.get("target_not_in_project", 0) + 1
                    samplesByReason.setdefault("target_not_in_project", []).append((source_table, target_table, key, path))
                    continue
                target = tables[target_table][0]
                sl, rt, reason = _resolve_symbol(target.renderer(), key, path, allow_key_fallback)
                if sl is not None:
                    resolved += 1
                    bucket = f"{reason} [{rt}]"
                    byReason[bucket] = byReason.get(bucket, 0) + 1
                    if show_ok_samples and reason.startswith("ok_via_fallback"):
                        if len(samplesByReason.get(bucket, [])) < 3:
                            samplesByReason.setdefault(bucket, []).append((source_table, target_table, key, path))
                else:
                    bucket = f"{reason} [{rt}]"
                    byReason[bucket] = byReason.get(bucket, 0) + 1
                    samplesByReason.setdefault(bucket, []).append((source_table, target_table, key, path))

    print(f"\n=== Resolução de (symbol_key, index_path) contra renderer atual ===")
    print(f"Referências resolvidas:       {resolved}")
    unresolved = sum(n for r, n in byReason.items() if not r.startswith("ok"))
    print(f"Referências NÃO resolvidas:   {unresolved}")
    print(f"\nDetalhamento por motivo:")
    for reason, n in sorted(byReason.items(), key=lambda x: -x[1]):
        print(f"  [{n:>5}] {reason}")
        for s in samplesByReason.get(reason, [])[:3]:
            src, tgt, k, p = s
            print(f"         ex: src={src}  target={tgt}  key={k!r}  path={p}")
    return {"resolved": resolved, "byReason": byReason}


def check_applied_state():
    """Pós-LoadMasks: verifica estado real de mask.enabled() e maskedSymbolLayers em cada rule."""
    totalEnabledWithRefs = 0
    totalEnabledEmpty = 0
    totalDisabledWithRefs = 0
    totalDisabledEmpty = 0
    enabledSamples = []
    mismatchSamples = []
    tables = _layers_by_table()

    for table, layers in tables.items():
        lyr = layers[0]
        labels = lyr.labeling()
        if labels is None:
            continue
        items = []
        if isinstance(labels, QgsVectorLayerSimpleLabeling):
            items.append(("(single)", None, labels.settings()))
        elif isinstance(labels, QgsRuleBasedLabeling):
            for rule in _iter_all_rules(labels.rootRule()):
                if rule.children():
                    continue
                items.append((rule.description() or "(empty)", rule.ruleKey(), labels.settings(rule.ruleKey())))
        for desc, ruleKey, settings in items:
            mask = settings.format().mask()
            n_refs = len(mask.maskedSymbolLayers())
            enabled = mask.enabled()
            if enabled and n_refs > 0:
                totalEnabledWithRefs += 1
                if len(enabledSamples) < 5:
                    enabledSamples.append((table, desc, n_refs))
            elif enabled and n_refs == 0:
                totalEnabledEmpty += 1
            elif not enabled and n_refs > 0:
                totalDisabledWithRefs += 1
                if len(mismatchSamples) < 5:
                    mismatchSamples.append((table, desc, n_refs))
            else:
                totalDisabledEmpty += 1

    print(f"\n=== Estado pós-LoadMasks de QgsTextMask por rule/leaf ===")
    print(f"Enabled  + com refs :  {totalEnabledWithRefs}    <- funcionando")
    print(f"Enabled  + sem refs :  {totalEnabledEmpty}       <- mask ativa mas vazia (ruim)")
    print(f"Disabled + com refs :  {totalDisabledWithRefs}    <- refs setadas mas mask OFF (ruim)")
    print(f"Disabled + sem refs :  {totalDisabledEmpty}      <- neutro")
    if enabledSamples:
        print(f"\nAmostras OK (enabled + com refs):")
        for t, d, n in enabledSamples:
            print(f"  [{t}]  rule={d!r}  refs={n}")
    if mismatchSamples:
        print(f"\nAmostras ruins (disabled + com refs):")
        for t, d, n in mismatchSamples:
            print(f"  [{t}]  rule={d!r}  refs={n}")


def inspect_symbol_tree(table_name):
    """Imprime a árvore de symbols/symbolLayers do renderer de uma camada."""
    tables = _layers_by_table()
    if table_name not in tables:
        print(f"Camada '{table_name}' não encontrada.")
        return
    lyr = tables[table_name][0]
    r = _unwrap_renderer(lyr.renderer())
    print(f"[{table_name}] outer={lyr.renderer().type()}  unwrapped={r.type() if r else 'None'}")
    for k, sym in _all_symbols(r):
        print(f"  symbol key={k!r}  type={type(sym).__name__}  layers={sym.symbolLayerCount()}")
        for i in range(sym.symbolLayerCount()):
            sl = sym.symbolLayer(i)
            sub = sl.subSymbol() if hasattr(sl, "subSymbol") else None
            sub_desc = ""
            if sub is not None:
                sub_desc = f"  subSymbol.layers={sub.symbolLayerCount()}"
                for j in range(sub.symbolLayerCount()):
                    sub_desc += f" [{j}]={type(sub.symbolLayer(j)).__name__}"
            print(f"    [{i}] {type(sl).__name__}{sub_desc}")


def suggest_rename_map(json_path=None):
    """Gera dict {json_provider: proj_description} para rules resolvíveis por normalização."""
    result = diagnose_masks(json_path or DEFAULT_MASKS_JSON)
    renames = {}
    for t, json_p, proj_p, _ in result["fuzzyMatches"]:
        renames.setdefault(t, {})[json_p] = proj_p
    print(f"\n=== Rename map ({sum(len(v) for v in renames.values())} rules em {len(renames)} tabelas) ===")
    print(json.dumps(renames, ensure_ascii=False, indent=2))
    return renames
