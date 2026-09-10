#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
ferramentas_edicao_cli — executa algoritmos de Processing do Ferramentas de Edição
por linha de comando, de forma headless, encapsulando o utilitario oficial
`qgis_process` do QGIS.

Permite descobrir quais algoritmos o plugin expoe, inspecionar os parametros de
cada um e executa-los passando os valores, sem abrir o QGIS Desktop. Util tanto
para uso manual quanto em automacoes/scripts.

A fonte da verdade e sempre o proprio `qgis_process` (consultado ao vivo): a lista e
os parametros estao sempre corretos e escalam para os ~50 algoritmos sem nenhum
catalogo pre-gerado. O arquivo opcional `annotations.json` apenas enriquece algoritmos
especificos com conhecimento de dominio (regras e exemplos) que nao da para extrair
automaticamente do `qgis_process`.

Comandos
--------
Processing (via qgis_process):
  list                      Lista os algoritmos do Ferramentas de Edição.
  describe <alg>            Mostra os parametros de um algoritmo (resumo + anotacoes).
  run <alg> [KEY=VALUE ...] Executa um algoritmo.
  doctor                    Diagnostica o ambiente (acha o qgis_process, etc).

Exportacao de carta (via standalone.py/setup_env.bat):
  contract                  Mostra o contrato vivo (produtos, argumentos, schema do json).
  validate <carta.json ...> Valida os json de carta SEM abrir o QGIS.
  export <carta.json ...>   Valida e exporta (PDF/GeoTIFF); tem --dry-run.

Exemplos
--------
  python ferramentas_edicao_cli.py list
  python ferramentas_edicao_cli.py describe ferramentasedicao:identifylabeloverlap
  python ferramentas_edicao_cli.py run ferramentasedicao:identifylabelsintersectinggrid \\
      --params params.json
  python ferramentas_edicao_cli.py contract --produto "Carta Topográfica"
  python ferramentas_edicao_cli.py validate cartas/ --saida C:\\saida
  python ferramentas_edicao_cli.py export cartas/2965-2-NE.json --saida C:\\saida --dry-run

O id do algoritmo pode ser passado com ou sem o prefixo "ferramentasedicao:".
Requer o plugin Ferramentas de Edição instalado/habilitado no perfil do QGIS,
com hasProcessingProvider=yes no metadata.txt.

O porque das regras de dominio (o que o codigo nao diz) esta em notas-carta.md.
"""
import argparse
import glob
import json
import os
import re
import shutil
import subprocess
import sys
import time
from pathlib import Path

import carta
import plugin_contract

PROVIDER = "ferramentasedicao"
HERE = Path(__file__).resolve().parent
ANNOTATIONS_PATH = HERE / "annotations.json"

_qgis_process_path = None  # cache (apenas resultados positivos)


# ---------------------------------------------------------------------------
# qgis_process
# ---------------------------------------------------------------------------
def _version_key(path):
    """Chave de ordenacao por versao extraida do caminho, p.ex. 'QGIS 3.40.0' deve
    vir DEPOIS de 'QGIS 3.8' (a ordenacao lexicografica de string erraria isso)."""
    return tuple(int(n) for n in re.findall(r"\d+", path)[:4])


def find_qgis_process():
    """Retorna o caminho do executavel/bat do qgis_process, ou None.

    Memoiza apenas resultados positivos: se nao encontrar, volta a procurar na
    proxima chamada (evita cachear um None permanente — relevante para uso como
    modulo/testes que definem FERRAMENTAS_EDICAO_QGIS_PROCESS depois do import).
    """
    global _qgis_process_path
    if _qgis_process_path is not None:
        return _qgis_process_path

    # 1. Override explicito
    env = os.environ.get("FERRAMENTAS_EDICAO_QGIS_PROCESS")
    if env and Path(env).exists():
        _qgis_process_path = env
        return env

    # 2. PATH
    for name in ("qgis_process", "qgis_process.bin", "qgis_process-qgis.bat"):
        found = shutil.which(name)
        if found:
            _qgis_process_path = found
            return found

    # 3. Locais de instalacao mais comuns
    candidates = []
    if sys.platform.startswith("win"):
        program_dirs = {
            os.environ.get("ProgramFiles", r"C:\Program Files"),
            os.environ.get("ProgramW6432", r"C:\Program Files"),
            os.environ.get("ProgramFiles(x86)", r"C:\Program Files (x86)"),
        }
        for pf in filter(None, program_dirs):
            candidates += glob.glob(os.path.join(pf, "QGIS *", "bin", "qgis_process-qgis.bat"))
        for root in (r"C:\OSGeo4W", r"C:\OSGeo4W64"):
            candidates += glob.glob(os.path.join(root, "bin", "qgis_process*.bat"))
    elif sys.platform == "darwin":
        candidates += glob.glob("/Applications/QGIS*.app/Contents/MacOS/bin/qgis_process")
    else:
        candidates += ["/usr/bin/qgis_process", "/usr/local/bin/qgis_process"]
        candidates += glob.glob("/usr/lib/qgis/qgis_process*")

    # Prefere a versao mais nova (por numero de versao real, nao lexicografico).
    for path in sorted(set(candidates), key=_version_key, reverse=True):
        if Path(path).exists():
            _qgis_process_path = path
            return path
    return None


def _build_command(qgis_process, args):
    """Monta o comando, tratando .bat/.cmd no Windows via cmd /c."""
    if os.name == "nt" and qgis_process.lower().endswith((".bat", ".cmd")):
        return ["cmd", "/c", qgis_process, *args]
    return [qgis_process, *args]


def _qgis4_config_path():
    """Diretorio de configuracao do QGIS 4 (que contem 'profiles'), se existir.

    O qgis_process 4.0 ainda resolve o perfil legado QGIS/QGIS3 por padrao,
    enquanto o QGIS 4 Desktop usa QGIS/QGIS4 — sem redirecionar via
    QGIS_CUSTOM_CONFIG_PATH, o plugin instalado no perfil real fica invisivel
    para o qgis_process (lista vazia / provider nao carregado).
    """
    if sys.platform.startswith("win"):
        base = os.environ.get("APPDATA", "")
        cand = os.path.join(base, "QGIS", "QGIS4")
    elif sys.platform == "darwin":
        cand = os.path.expanduser("~/Library/Application Support/QGIS/QGIS4")
    else:
        cand = os.path.expanduser("~/.local/share/QGIS/QGIS4")
    return cand if os.path.isdir(os.path.join(cand, "profiles")) else None


def call_qgis_process(args, stdin_text=None):
    """Executa o qgis_process e retorna (returncode, stdout, stderr)."""
    qgis_process = find_qgis_process()
    if qgis_process is None:
        raise SystemExit(
            "ERRO: nao encontrei o 'qgis_process'.\n"
            "  - Garanta que o QGIS 4.0+ esta instalado, ou\n"
            "  - Aponte a variavel de ambiente FERRAMENTAS_EDICAO_QGIS_PROCESS para o\n"
            "    caminho do qgis_process (ex.: \"C:\\\\Program Files\\\\QGIS 4.0.0\\\\bin\\\\qgis_process-qgis.bat\").\n"
            "  Rode `ferramentas_edicao_cli.py doctor` para diagnosticar."
        )

    env = dict(os.environ)
    # Necessario para rodar sem servidor grafico (headless / servidores).
    env.setdefault("QT_QPA_PLATFORM", "offscreen")
    # Aponta o qgis_process para o perfil do QGIS 4 (ver _qgis4_config_path).
    if "QGIS_CUSTOM_CONFIG_PATH" not in env:
        cfg = _qgis4_config_path()
        if cfg:
            env["QGIS_CUSTOM_CONFIG_PATH"] = cfg

    proc = subprocess.run(
        _build_command(qgis_process, args),
        input=stdin_text,
        capture_output=True,
        text=True,
        encoding="utf-8",
        errors="replace",
        env=env,
    )
    return proc.returncode, proc.stdout or "", proc.stderr or ""


def _parse_json_stdout(stdout):
    """qgis_process imprime o JSON no stdout; o stderr leva ruido de outros plugins."""
    stdout = stdout.strip()
    if not stdout:
        return None
    try:
        return json.loads(stdout)
    except json.JSONDecodeError:
        return None


def full_id(alg):
    """Normaliza para 'ferramentasedicao:nome'."""
    alg = alg.strip()
    return alg if ":" in alg else f"{PROVIDER}:{alg}"


def _help_json(alg):
    """Retorna (help_parseado, returncode) de `qgis_process help <id> --json`."""
    code, out, _err = call_qgis_process(["help", full_id(alg), "--json"])
    return _parse_json_stdout(out), code


def load_annotations():
    """Conhecimento de dominio opcional (regras/exemplos) por id de algoritmo."""
    if not ANNOTATIONS_PATH.exists():
        return {}
    with open(ANNOTATIONS_PATH, encoding="utf-8") as fh:
        return json.load(fh)


def _summarize_help(data):
    """Reduz a saida verbosa do `qgis_process help --json` a um resumo util."""
    details = data.get("algorithm_details", {})
    params = []
    for name, p in sorted(data.get("parameters", {}).items()):
        item = {
            "name": name,
            "type": p.get("raw_definition", {}).get("parameter_type", p.get("type", {}).get("id")),
            "description": p.get("description"),
            "required": not p.get("optional", False),
            "advanced": p.get("is_advanced", False),
            "is_output": p.get("is_destination", False),
            "default": p.get("default_value"),
        }
        if "available_options" in p:
            item["options"] = p["available_options"]
            item["note"] = "passe o indice numerico da opcao (ex.: 2)"
        params.append(item)
    outputs = [
        {"name": k, "type": v.get("type"), "description": v.get("description")}
        for k, v in data.get("outputs", {}).items()
    ]
    return {
        "id": details.get("id"),
        "display_name": details.get("name"),
        "group": details.get("group"),
        "parameters": params,
        "outputs": outputs,
    }


# ---------------------------------------------------------------------------
# Comandos
# ---------------------------------------------------------------------------
def cmd_doctor(args):
    qp = find_qgis_process()
    print("ferramentas_edicao_cli doctor")
    print("-----------------------------")
    print(f"  qgis_process    : {qp or 'NAO ENCONTRADO'}")
    print(f"  annotations.json: {'ok' if ANNOTATIONS_PATH.exists() else 'ausente (opcional)'}")
    print(f"  QT_QPA_PLATFORM (sera definido como) : "
          f"{os.environ.get('QT_QPA_PLATFORM', 'offscreen')}")
    cfg = os.environ.get("QGIS_CUSTOM_CONFIG_PATH") or _qgis4_config_path()
    print(f"  QGIS_CUSTOM_CONFIG_PATH (sera definido como) : {cfg or '(padrao do qgis_process)'}")
    if qp is None:
        print("\n  Defina FERRAMENTAS_EDICAO_QGIS_PROCESS apontando para o qgis_process.")
        return 1
    code, out, err = call_qgis_process(["--version"])
    first = (out or err).strip().splitlines()
    print(f"  versao          : {first[0] if first else '??'} (exit {code})")
    # O provider so aparece se o plugin estiver habilitado no perfil e com
    # hasProcessingProvider=yes no metadata.txt.
    code, out, _err = call_qgis_process(["list", "--json"])
    data = _parse_json_stdout(out)
    has_provider = bool(
        data and data.get("providers", {}).get(PROVIDER, {}).get("algorithms")
    )
    print(f"  provider '{PROVIDER}': "
          f"{'ok' if has_provider else 'NAO CARREGADO (plugin habilitado? hasProcessingProvider=yes?)'}")
    return 0 if has_provider else 1


def cmd_list(args):
    code, out, _err = call_qgis_process(["list", "--json"])
    data = _parse_json_stdout(out)
    if data is None:
        raise SystemExit(f"Falha ao listar (exit {code}).")
    algs = data.get("providers", {}).get(PROVIDER, {}).get("algorithms", {})
    rows = sorted(algs.items())
    if args.json:
        print(json.dumps({"algorithms": [k for k, _ in rows]}, indent=2, ensure_ascii=False))
        return 0
    print(f"Algoritmos do Ferramentas de Edição — {len(rows)} disponiveis:\n")
    for alg_id, info in rows:
        print(f"  {alg_id:<60} {info.get('name', '')}")
    print("\nUse `describe <id>` para ver os parametros, ou `run <id> KEY=VALUE ...` para executar.")
    return 0


def cmd_describe(args):
    data, code = _help_json(args.algorithm)
    if data is None:
        raise SystemExit(f"Falha ao descrever {args.algorithm} (exit {code}).")
    summary = _summarize_help(data)
    # Enriquece com o conhecimento de dominio curado, se houver para este id.
    extra = load_annotations().get(summary["id"], {})
    for key in ("description", "constraints", "example"):
        if key in extra:
            summary[key] = extra[key]
    print(json.dumps(summary, indent=2, ensure_ascii=False))
    return 0


_INT_RE = re.compile(r"^-?[1-9][0-9]*$|^0$")
_FLOAT_RE = re.compile(r"^-?[0-9]+\.[0-9]+$")


def _coerce(value):
    """Converte tokens 'KEY=VALUE' em numero apenas quando e seguro; senao, string.

    So coage inteiros "limpos" (sem zero a esquerda, sem '_', sem 'inf'/'nan', sem
    notacao exponencial ou hex) e floats decimais simples — assim nao corrompe
    strings numericas como '007', '1_000', 'inf' ou identificadores. Para forcar
    um valor numerico a permanecer string, use --params/--stdin (o JSON preserva os tipos).
    """
    if _INT_RE.match(value):
        return int(value)
    if _FLOAT_RE.match(value):
        return float(value)
    return value


def _unwrap_inputs(data):
    """Aceita {"inputs": {...}} ou {...} diretamente; exige um objeto JSON (dict)."""
    if not isinstance(data, dict):
        raise SystemExit("JSON de parametros invalido: esperado um objeto JSON.")
    if "inputs" in data:
        inner = data["inputs"]
        if not isinstance(inner, dict):
            raise SystemExit('JSON de parametros invalido: a chave "inputs" deve ser um objeto.')
        return inner
    return data


def _load_json_file(path):
    try:
        with open(path, encoding="utf-8") as fh:
            return json.load(fh)
    except FileNotFoundError:
        raise SystemExit(f"Arquivo de parametros nao encontrado: {path}")
    except (OSError, json.JSONDecodeError) as exc:
        raise SystemExit(f"Falha ao ler JSON de '{path}': {exc}")


def _collect_inputs(args):
    inputs = {}
    if args.params:
        inputs.update(_unwrap_inputs(_load_json_file(args.params)))
    if args.stdin:
        try:
            data = json.load(sys.stdin)
        except json.JSONDecodeError as exc:
            raise SystemExit(f"Falha ao ler JSON do stdin: {exc}")
        inputs.update(_unwrap_inputs(data))
    for token in args.params_kv:
        if "=" not in token:
            raise SystemExit(f"Parametro invalido '{token}'. Use KEY=VALUE.")
        key, value = token.split("=", 1)
        inputs[key.strip()] = _coerce(value)
    return inputs


def cmd_run(args):
    inputs = _collect_inputs(args)
    payload = json.dumps({"inputs": inputs})
    extra = []
    if args.project:
        extra = [f"--project_path={args.project}"]
    code, out, err = call_qgis_process(
        ["run", full_id(args.algorithm), *extra, "-"], stdin_text=payload
    )
    data = _parse_json_stdout(out)

    if args.raw or data is None:
        if out:
            print(out)
        if err.strip():
            sys.stderr.write(err)
        return code

    # O returncode do qgis_process e a fonte da verdade de sucesso/falha.
    results = data.get("results")
    if results is not None:
        print(json.dumps({"results": results, "inputs": inputs}, indent=2, ensure_ascii=False))
        if code == 0:
            for key, value in results.items():
                print(f"\n[OK] {key} -> {value}", file=sys.stderr)
    else:
        # Sucesso sem 'results' (ex.: algoritmos de efeito colateral) tambem e valido.
        print(json.dumps(data, indent=2, ensure_ascii=False))
    if err.strip():
        sys.stderr.write(err)
    return code


# ---------------------------------------------------------------------------
# Exportacao de carta (standalone.py / setup_env.bat)
# ---------------------------------------------------------------------------
def _load_contract():
    try:
        return plugin_contract.load_contract()
    except plugin_contract.ContractError as exc:
        raise SystemExit(f"ERRO ao ler o contrato do plugin: {exc}")


def _collect_carta_jsons(paths):
    """Aceita arquivos e pastas; pasta vira os .json dela, em ordem estavel."""
    found = []
    for raw in paths:
        path = Path(raw)
        if path.is_dir():
            found += sorted(path.glob("*.json"))
        elif path.exists():
            found.append(path)
        else:
            raise SystemExit(f"ERRO: nao encontrei {path}")
    if not found:
        raise SystemExit("ERRO: nenhum json de carta encontrado nos caminhos informados.")
    return found


def find_qgis_dir(explicit=None):
    """Pasta de instalacao do QGIS (vira OSGEO4W_ROOT e pathQgis)."""
    if explicit:
        return Path(explicit)
    env = os.environ.get("FERRAMENTAS_EDICAO_QGIS_DIR")
    if env:
        return Path(env)
    # Se o usuario ja apontou o qgis_process, a raiz do QGIS e o avo dele (bin/..).
    qp = os.environ.get("FERRAMENTAS_EDICAO_QGIS_PROCESS")
    if qp and Path(qp).exists():
        return Path(qp).resolve().parents[1]
    # Mesma busca do standalone.getInstallationFolder.
    matches = sorted(Path("C:/Program Files").glob("QGIS*")) if sys.platform == "win32" else []
    return matches[-1] if matches else None


def _check_tipo(contract, tipo):
    """--tipo tem que ser um dos produtos que o standalone.py aceita, senao o run
    morreria no argparse dele depois de montar o ambiente inteiro."""
    if tipo and tipo not in contract["produtos"]:
        raise SystemExit(
            f"ERRO: --tipo '{tipo}' nao e aceito pelo standalone.py. Validos: "
            + "; ".join(contract["produtos"])
        )


def _validate_paths(json_paths, contract, tipo, saida, tiff, tiff_sem_grid):
    results = []
    for path in json_paths:
        try:
            data = carta.read_carta_json(path)
        except (OSError, json.JSONDecodeError) as exc:
            results.append(
                {
                    "arquivo": str(path),
                    "tipo_produto": None,
                    "tipo": None,
                    "basename": None,
                    "saidas": [],
                    "existentes": [],
                    "achados": [carta.Finding("erro", f"json ilegivel: {exc}", None)],
                }
            )
            continue
        results.append(
            carta.validate_carta(
                path, data, contract, tipo=tipo, saida=saida,
                tiff=tiff, tiff_sem_grid=tiff_sem_grid,
            )
        )
    return results


def _print_result(result):
    name = Path(result["arquivo"]).name
    status = "ERRO" if carta.has_errors(result) else "ok"
    saidas = ", ".join(result["saidas"]) or "-"
    print(f"{name}  {status}  {result['tipo'] or '?'} -> {saidas}")
    for finding in result["achados"]:
        print(f"  [{finding.level}] {finding.message}")
        if finding.contract:
            print(f"          contrato: {finding.contract}")
    for existente in result["existentes"]:
        print(f"  [aviso] {existente} JA EXISTE na pasta de saida (use --sobrescrever)")


def _results_as_json(results):
    return [
        {
            **{k: v for k, v in r.items() if k != "achados"},
            "ok": not carta.has_errors(r),
            "achados": [f._asdict() for f in r["achados"]],
        }
        for r in results
    ]


def cmd_contract(args):
    contract = _load_contract()
    if args.produto:
        produto = args.produto
        if produto not in contract["schema"]:
            raise SystemExit(
                f"ERRO: produto '{produto}' desconhecido. Validos: "
                + ", ".join(contract["schema"])
            )
        fields = contract["schema"][produto]
        if args.json:
            print(json.dumps({produto: fields}, indent=2, ensure_ascii=False))
            return 0
        print(f"{produto} (schema vivo de config/jsonStructure.py)")
        for line in carta.contract_lines(fields):
            print(f"  {line}")
        print("\n  inom e dispensado quando ha 'center' (carta fora do recorte sistematico).")
        return 0

    if args.json:
        print(json.dumps(contract, indent=2, ensure_ascii=False))
        return 0

    print(f"contrato vivo do plugin {contract['versao_plugin']} ({contract['raiz']})")
    print("\nprodutos aceitos em -t/--tipo (padrao marcado com *):")
    for produto in contract["produtos"]:
        tipo, versao = carta.split_choice(produto)
        interno = contract["internos"].get(tipo, ("?", "?"))[0]
        prefixo = contract["prefixos"].get(interno, "?")
        marca = "*" if produto == contract["produto_padrao"] else " "
        print(f"  {marca} {produto:<30} json: tipo_produto={tipo!r} versao_produto={versao!r}")
        print(f"    {'':<30} saida: {prefixo}_<MI, INOM ou nome>.pdf")
    print("\nargumentos do standalone.py:")
    for spec in contract["argumentos"]:
        flags = "/".join(spec["flags"])
        extra = []
        if spec.get("required"):
            extra.append("obrigatorio")
        if spec.get("action") == "store_true":
            extra.append("flag")
        if spec.get("nargs"):
            extra.append(f"nargs={spec['nargs']}")
        if "default" in spec and spec["default"] not in (None, []):
            extra.append(f"default={spec['default']!r}")
        if spec.get("dest"):
            extra.append(f"dest={spec['dest']}")
        print(f"  {flags:<22} {', '.join(extra)}")
    print(f"\nlicenca_produto: {' | '.join(contract['licencas'])}")
    print(
        "territorio_internacional = true so nos produtos Militares (nacionais: "
        + ", ".join(contract["somente_nacionais"])
        + ")"
    )
    print("\nchaves do json por produto: contract --produto \"<tipo_produto>\"")
    print("porque das regras (o que o codigo nao diz): notas-carta.md")
    return 0


def cmd_validate(args):
    contract = _load_contract()
    _check_tipo(contract, args.tipo)
    json_paths = _collect_carta_jsons(args.jsons)
    results = _validate_paths(
        json_paths, contract, args.tipo, args.saida, args.tiff, args.tiff_sem_grid
    )
    if args.json:
        print(json.dumps(_results_as_json(results), indent=2, ensure_ascii=False))
    else:
        for result in results:
            _print_result(result)
        com_erro = sum(1 for r in results if carta.has_errors(r))
        print(f"{len(results)} json: {len(results) - com_erro} ok, {com_erro} com erro")
    return 1 if any(carta.has_errors(r) for r in results) else 0


def referencia_de_frescor(saida):
    """Instante de inicio MEDIDO NO RELOGIO DO DESTINO, para comparar com o mtime.

    O portao que decide se a folha saiu compara o `st_mtime` do arquivo com o
    instante em que a exportacao comecou. O `st_mtime` vem do relogio de quem
    HOSPEDA o arquivo, e num share de rede ele pode estar minutos atras do
    relogio desta maquina: no share de producao da DGEO a defasagem medida foi de
    204,5 s. Com `time.time()` como referencia, todo arquivo recem-escrito la
    nasce mais velho que o inicio e o lote inteiro e reprovado com o PDF pronto
    no disco.

    Um marcador escrito e lido NA PROPRIA PASTA DE SAIDA poe as duas medidas na
    mesma base de tempo, seja o destino local ou remoto. Se a pasta nao aceitar o
    marcador, cai no relogio local, que e o comportamento antigo.
    """
    marcador = saida / f".ferramentas_edicao_inicio_{os.getpid()}"
    try:
        marcador.touch()
        try:
            return marcador.stat().st_mtime
        finally:
            marcador.unlink()
    except OSError:
        return time.time()


def cmd_export(args):
    contract = _load_contract()
    _check_tipo(contract, args.tipo)
    json_paths = _collect_carta_jsons(args.jsons)
    problemas = []

    # O .env na raiz do plugin liga o debugMode: o run gera QPT e NAO escreve PDF nem
    # GeoTIFF. Sem esta checagem, o lote roda por horas e nao entrega nada.
    if (Path(contract["raiz"]) / ".env").exists():
        problemas.append(
            f"ha um .env em {contract['raiz']}: o plugin entra em debugMode e NAO exporta "
            "PDF/GeoTIFF (so QPT). Remova o arquivo antes de exportar."
        )

    login = args.login or os.environ.get("FERRAMENTAS_EDICAO_DB_USER")
    senha = args.senha or os.environ.get("FERRAMENTAS_EDICAO_DB_PASSWORD")
    if not login or not senha:
        problemas.append(
            "faltam credenciais do banco de edicao: use --login/--senha ou as variaveis "
            "FERRAMENTAS_EDICAO_DB_USER e FERRAMENTAS_EDICAO_DB_PASSWORD (preferivel, "
            "a senha nao fica no historico do shell)."
        )

    qgis_dir = find_qgis_dir(args.qgis)
    if qgis_dir is None or not Path(qgis_dir).exists():
        problemas.append(
            "nao achei a pasta de instalacao do QGIS: passe --qgis \"C:\\Program Files\\QGIS 4.0.0\" "
            "ou defina FERRAMENTAS_EDICAO_QGIS_DIR."
        )
    setup_env = Path(contract["raiz"]) / "setup_env.bat"
    if not setup_env.exists():
        problemas.append(f"nao achei {setup_env} (entrada headless do plugin).")
    if os.name != "nt":
        problemas.append("o setup_env.bat so roda no Windows; fora dele, monte o ambiente a mao.")

    saida = Path(args.saida)
    results = _validate_paths(
        json_paths, contract, args.tipo, saida, args.tiff, args.tiff_sem_grid
    )

    # O standalone leva UM -t por execucao: lote misturado exportaria so um dos tipos.
    tipos = sorted({r["tipo"] for r in results if r["tipo"]})
    if args.tipo is None and len(tipos) > 1:
        problemas.append(
            "o lote mistura produtos (" + "; ".join(tipos) + "): rode uma vez por -t/--tipo."
        )
    tipo = args.tipo or (tipos[0] if tipos else None)

    invalidos = [r for r in results if carta.has_errors(r)]
    validos = [r for r in results if not carta.has_errors(r)]
    if invalidos and not args.ignorar_invalidos:
        problemas.append(
            f"{len(invalidos)} de {len(results)} json com erro de validacao "
            "(use --ignorar-invalidos para exportar so os validos)."
        )
    if not validos:
        problemas.append("nenhum json valido para exportar.")

    # Duas folhas com o mesmo basename escrevem por cima uma da outra em silencio.
    vistos = {}
    for r in validos:
        vistos.setdefault(r["basename"], []).append(Path(r["arquivo"]).name)
    for basename, arquivos in vistos.items():
        if len(arquivos) > 1:
            problemas.append(
                f"{len(arquivos)} json geram o mesmo arquivo {basename}: " + ", ".join(arquivos)
            )

    existentes = [(Path(r["arquivo"]).name, nome) for r in validos for nome in r["existentes"]]
    if existentes and not args.sobrescrever:
        problemas.append(
            "ja existem na pasta de saida: "
            + ", ".join(nome for _, nome in existentes)
            + " (passe --sobrescrever para escrever por cima)."
        )

    avisos = []
    # Conhecimento de dominio, nao deduzivel do codigo: ver notas-carta.md. O id interno
    # vem do contrato vivo (topoMap/militaryTopoMap), sem comparar nome de produto a mao.
    interno = contract["internos"].get(carta.split_choice(tipo)[0], ("", ""))[0] if tipo else ""
    if args.tiff and interno in ("topoMap", "militaryTopoMap"):
        avisos.append(
            "--tiff na carta topografica: o exportToImage re-renderiza a folha A1 inteira e "
            "arrasta horas. Exporte so o PDF e derive o GeoTIFF dele por GDAL (notas-carta.md)."
        )

    plano = {
        "tipo": tipo,
        "saida": str(saida),
        "qgis": str(qgis_dir) if qgis_dir else None,
        "folhas": _results_as_json(results),
        "problemas": problemas,
        "avisos": avisos,
    }

    if problemas:
        if args.json:
            print(json.dumps({**plano, "executado": False}, indent=2, ensure_ascii=False))
        else:
            for result in results:
                _print_result(result)
            print("\nexportacao BLOQUEADA:")
            for problema in problemas:
                print(f"  - {problema}")
        return 1

    cmd = carta.build_export_command(
        setup_env, qgis_dir, tipo, saida, [r["arquivo"] for r in validos], login, senha,
        tiff=args.tiff, tiff_sem_grid=args.tiff_sem_grid, sem_mascaras=args.sem_mascaras,
    )
    plano["comando"] = subprocess.list2cmdline(carta.mask_command(cmd))

    if args.dry_run:
        if args.json:
            print(json.dumps({**plano, "executado": False}, indent=2, ensure_ascii=False))
            return 0
        print(f"plano de exportacao (plugin {contract['versao_plugin']})")
        print(f"  tipo  : {tipo}")
        print(f"  saida : {saida}")
        print(f"  qgis  : {qgis_dir}")
        print(f"  folhas: {len(validos)} de {len(results)}")
        for r in validos:
            print(f"    {Path(r['arquivo']).name} -> {', '.join(r['saidas'])}")
        for aviso in avisos:
            print(f"  [aviso] {aviso}")
        print(f"  comando:\n    {plano['comando']}")
        print("dry-run: nada foi exportado.")
        return 0

    saida.mkdir(parents=True, exist_ok=True)
    for aviso in avisos:
        print(f"[aviso] {aviso}", file=sys.stderr)
    print(f"[export] {len(validos)} folha(s), tipo {tipo} -> {saida}", file=sys.stderr)
    started = referencia_de_frescor(saida)
    # Sem capture: o log do plugin (stderr) sai ao vivo, que e o unico jeito de
    # acompanhar um lote de horas.
    code = subprocess.run(cmd).returncode

    # A mensagem final do plugin reflete so o ULTIMO json do lote, entao quem diz o que
    # saiu e o disco, folha a folha.
    entregues = []
    for r in validos:
        faltando = [
            nome
            for nome in r["saidas"]
            if not (saida / nome).exists() or (saida / nome).stat().st_mtime < started - 2
        ]
        r["faltando"] = faltando
        entregues.append(not faltando)
    plano["executado"] = True
    plano["exit_code"] = code
    plano["folhas"] = _results_as_json(validos)
    if args.json:
        print(json.dumps(plano, indent=2, ensure_ascii=False))
    else:
        for r, ok in zip(validos, entregues):
            nome = Path(r["arquivo"]).name
            if ok:
                print(f"[ok]     {nome} -> {', '.join(r['saidas'])}")
            else:
                print(f"[falhou] {nome} nao gerou: {', '.join(r['faltando'])}")
        print(f"{sum(entregues)}/{len(validos)} folha(s) exportada(s) (exit {code})")
    return code if code != 0 else (0 if all(entregues) else 1)


def build_parser():
    parser = argparse.ArgumentParser(
        prog="ferramentas_edicao_cli.py",
        description="Executa algoritmos de Processing do Ferramentas de Edição por linha de comando (headless).",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog=__doc__,
    )
    sub = parser.add_subparsers(dest="command", required=True)

    p_list = sub.add_parser("list", help="Lista os algoritmos disponiveis.")
    p_list.add_argument("--json", action="store_true", help="Saida em JSON.")
    p_list.set_defaults(func=cmd_list)

    p_desc = sub.add_parser("describe", help="Mostra os parametros de um algoritmo.")
    p_desc.add_argument("algorithm", help="Id do algoritmo (com ou sem 'ferramentasedicao:').")
    p_desc.set_defaults(func=cmd_describe)

    p_run = sub.add_parser("run", help="Executa um algoritmo.")
    p_run.add_argument("algorithm", help="Id do algoritmo (com ou sem 'ferramentasedicao:').")
    p_run.add_argument("params_kv", nargs="*", metavar="KEY=VALUE", help="Parametros de entrada.")
    p_run.add_argument("--params", metavar="FILE", help="Arquivo JSON com os parametros.")
    p_run.add_argument("--stdin", action="store_true", help="Le os parametros (JSON) do stdin.")
    p_run.add_argument("--project", metavar="ARQ.qgz",
                       help="Projeto QGIS a carregar (varios algoritmos de rotulo "
                            "dependem das camadas/estilos do projeto).")
    p_run.add_argument("--raw", action="store_true", help="Imprime o JSON cru do qgis_process.")
    p_run.set_defaults(func=cmd_run)

    p_doc = sub.add_parser("doctor", help="Diagnostica o ambiente.")
    p_doc.set_defaults(func=cmd_doctor)

    p_contract = sub.add_parser(
        "contract",
        help="Mostra o contrato vivo da exportacao de carta (lido do codigo do plugin).",
    )
    p_contract.add_argument("--produto", metavar="TIPO_PRODUTO",
                            help="Mostra as chaves do json desse produto (ex.: \"Carta Topográfica\").")
    p_contract.add_argument("--json", action="store_true", help="Saida em JSON.")
    p_contract.set_defaults(func=cmd_contract)

    def add_carta_args(p, saida_required):
        p.add_argument("jsons", nargs="+", metavar="CARTA.json",
                       help="Arquivos json de carta ou pastas com eles.")
        p.add_argument("--tipo", help="Produto (-t do standalone). Sem isso, deduz do proprio json.")
        p.add_argument("--saida", required=saida_required, metavar="PASTA",
                       help="Pasta de saida (-ef do standalone).")
        p.add_argument("--tiff", action="store_true", help="Tambem gera o GeoTIFF (-et).")
        p.add_argument("--tiff-sem-grid", action="store_true",
                       dest="tiff_sem_grid", help="Tambem gera o GeoTIFF sem grid (-etwg).")
        p.add_argument("--json", action="store_true", help="Saida em JSON.")

    p_val = sub.add_parser(
        "validate",
        help="Valida json de carta contra o contrato vivo, sem abrir o QGIS.",
    )
    add_carta_args(p_val, saida_required=False)
    p_val.set_defaults(func=cmd_validate)

    p_exp = sub.add_parser(
        "export",
        help="Valida e exporta a carta (PDF/GeoTIFF) via setup_env.bat.",
    )
    add_carta_args(p_exp, saida_required=True)
    p_exp.add_argument("--qgis", metavar="PASTA",
                       help="Pasta de instalacao do QGIS (default: FERRAMENTAS_EDICAO_QGIS_DIR "
                            "ou a mais nova em C:\\Program Files).")
    p_exp.add_argument("--login", help="Usuario do banco (default: FERRAMENTAS_EDICAO_DB_USER).")
    p_exp.add_argument("--senha", help="Senha do banco (default: FERRAMENTAS_EDICAO_DB_PASSWORD).")
    p_exp.add_argument("--sem-mascaras", action="store_true", dest="sem_mascaras",
                       help="Desliga as mascaras adicionais (-dam).")
    p_exp.add_argument("--dry-run", action="store_true", dest="dry_run",
                       help="Valida e mostra o plano e o comando, sem exportar.")
    p_exp.add_argument("--sobrescrever", action="store_true",
                       help="Autoriza escrever por cima de arquivo ja existente na saida.")
    p_exp.add_argument("--ignorar-invalidos", action="store_true", dest="ignorar_invalidos",
                       help="Exporta as folhas validas mesmo havendo json com erro.")
    p_exp.set_defaults(func=cmd_export)

    return parser


def main(argv=None):
    # Garante saída UTF-8 (descrições/constraints podem ter acentos) independentemente
    # da codificação padrão do console/plataforma.
    for stream in (sys.stdout, sys.stderr):
        try:
            stream.reconfigure(encoding="utf-8")
        except (AttributeError, ValueError):
            pass
    parser = build_parser()
    args = parser.parse_args(argv)
    return args.func(args)


if __name__ == "__main__":
    sys.exit(main())
