# Ferramentas de Edição — execução de Processings por linha de comando (headless)

Esta pasta permite **rodar algoritmos de Processing do Ferramentas de Edição fora do
QGIS**, por linha de comando, de forma headless — para uso manual ou em
automações/scripts. Mesmo modelo do `dsgtools_cli` do DSGTools.

Tudo é construído sobre o utilitário **oficial `qgis_process`** que vem com o QGIS.
O `ferramentas_edicao_cli.py` é uma camada fina que: localiza o `qgis_process`,
configura o ambiente headless (incluindo o redirecionamento do perfil — ver nota
abaixo), e descobre/executa os algoritmos **consultando o `qgis_process` ao vivo**.
Não há catálogo pré-gerado: a lista e os parâmetros vêm sempre da fonte da verdade.

---

## Comandos

```
python ferramentas_edicao_cli.py list                                   # todos os algoritmos
python ferramentas_edicao_cli.py describe identifylabeloverlap          # parâmetros de um
python ferramentas_edicao_cli.py run identifylabeloverlap ...           # executar
python ferramentas_edicao_cli.py doctor                                 # diagnóstico
```

O id pode ser passado **com ou sem** o prefixo `ferramentasedicao:`.

| Comando | O que faz |
|---|---|
| `list [--json]` | Lista os algoritmos do plugin (consulta o `qgis_process`). |
| `describe <id>` | Mostra os parâmetros (resumo do `qgis_process` + anotações de domínio). |
| `run <id> [KEY=VALUE ...]` | Executa. Também aceita `--params arq.json`, `--stdin` e `--project carta.qgz`. |
| `doctor` | Diagnostica o ambiente (qgis_process, perfil, provider carregado). |

### Passando parâmetros

```bash
# a) tokens KEY=VALUE
python ferramentas_edicao_cli.py run bridgeandmanholewidth INPUT=... OUTPUT=...

# b) arquivo JSON
python ferramentas_edicao_cli.py run identifylabeloverlap --project carta.qgz --params params.json

# c) JSON via stdin (pipe)
type params.json | python ferramentas_edicao_cli.py run identifylabeloverlap --project carta.qgz --stdin
```

**`--project` é obrigatório para os algoritmos de rótulo** (`identifylabeloverlap`,
`identifylabelsintersectinggrid`, `identifylabelsoutsidegeographicboundary`): eles
renderizam o mapa off-screen e dependem das camadas/simbologia/labeling do projeto.

---

## Requisitos

- **QGIS 4.0+** instalado (traz o `qgis_process`).
- **Python 3** (qualquer um; o CLI usa só a biblioteca padrão).
- O plugin **Ferramentas de Edição instalado/habilitado** no perfil do QGIS, com
  `hasProcessingProvider=yes` no `metadata.txt` (já é o caso a partir da 2.0.12).
- Habilitar o plugin no qgis_process **uma vez** (o estado fica salvo no perfil):

```bash
python ferramentas_edicao_cli.py doctor        # diz se o provider carregou
# se nao carregou:
set QGIS_CUSTOM_CONFIG_PATH=%APPDATA%\QGIS\QGIS4
qgis_process-qgis.bat plugins enable ferramentas_edicao
```

Se o CLI não achar o `qgis_process` sozinho, aponte a variável:

```
# Windows
set FERRAMENTAS_EDICAO_QGIS_PROCESS=C:\Program Files\QGIS 4.0.0\bin\qgis_process-qgis.bat
# Linux/macOS
export FERRAMENTAS_EDICAO_QGIS_PROCESS=/usr/bin/qgis_process
```

---

## Nota: perfil QGIS4 vs QGIS3 (qgis_process 4.0)

O `qgis_process` 4.0 ainda resolve por padrão o diretório de perfis **legado**
(`%APPDATA%\QGIS\QGIS3`), enquanto o QGIS 4 Desktop usa `%APPDATA%\QGIS\QGIS4` —
sem correção, o plugin instalado no perfil real fica invisível para o
`qgis_process`. O CLI corrige isso automaticamente definindo
`QGIS_CUSTOM_CONFIG_PATH` para o diretório do QGIS 4 quando ele existe; para usar
outro perfil, defina a variável você mesmo antes de chamar o CLI.

---

## Conhecimento de domínio (`annotations.json`)

Arquivo opcional que enriquece a saída de `describe` com regras e exemplos que não
dá para extrair automaticamente do `qgis_process` (ex.: quais algoritmos exigem
`--project`, semântica das caixas por letra dos algoritmos de rótulo). Formato:

```json
{
  "ferramentasedicao:<id>": {
    "description": "...",
    "constraints": ["..."],
    "example": "..."
  }
}
```
