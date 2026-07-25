# Ferramentas de Edição, linha de comando (headless)

Esta pasta é a interface de linha de comando do plugin, para uso manual ou em
automações/agentes. Cobre duas coisas:

1. **rodar algoritmos de Processing** fora do QGIS (mesmo modelo do `dsgtools_cli`);
2. **validar e exportar cartas** (PDF/GeoTIFF) a partir dos json de configuração por
   folha, encapsulando o `standalone.py`/`setup_env.bat`.

Regra que vale para as duas: **nada de contrato copiado**. A lista de algoritmos e seus
parâmetros vêm do `qgis_process` consultado ao vivo; os produtos, os argumentos do
headless, as chaves do json de carta e o nome do arquivo de saída são lidos do
código-fonte do plugin instalado em tempo de execução. Não há catálogo pré-gerado nem
tabela mantida à mão (que apodrece em silêncio quando o upstream muda). O único texto
curado é o **porquê** que o código não diz: `notas-carta.md`.

---

## Comandos de Processing

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

## Comandos de exportação de carta

```
python ferramentas_edicao_cli.py contract                          # o contrato vivo
python ferramentas_edicao_cli.py contract --produto "Carta Topográfica"
python ferramentas_edicao_cli.py validate cartas/ --saida C:\saida  # sem abrir o QGIS
python ferramentas_edicao_cli.py export cartas/2965-2-NE.json --saida C:\saida --dry-run
```

| Comando | O que faz |
|---|---|
| `contract [--produto TIPO] [--json]` | Produtos aceitos, argumentos do `standalone.py`, valores de licença, regra de território internacional e as chaves do json por produto. Tudo lido do código do plugin na hora. |
| `validate CARTA.json... [--tipo T] [--saida DIR] [--json]` | Valida os json contra o contrato vivo em milissegundos, sem QGIS e sem banco. Cada achado sai com a linha de contrato do campo culpado. `erro` = o plugin pularia a folha; `aviso` = exporta assim mesmo, mas provavelmente errado. |
| `export CARTA.json... --saida DIR [...]` | Valida, mostra o plano e exporta pelo `setup_env.bat`. Aceita pasta no lugar de arquivo. |

Do `export`:

- **`--dry-run`** mostra o plano (folhas, arquivos previstos, comando com a senha
  mascarada) sem exportar nada.
- **Nada de sobrescrita silenciosa**: se um arquivo previsto já existe na pasta de saída,
  a exportação é bloqueada até vir `--sobrescrever`. Dois json que gerariam o mesmo
  arquivo também bloqueiam.
- **Validação antes da operação cara**: json inválido barra o lote (use
  `--ignorar-invalidos` para exportar só as folhas válidas).
- **`--tipo` é opcional**: sem ele, o `-t` é deduzido do próprio json (e o lote misturado
  é recusado, porque o `standalone.py` leva um `-t` por execução).
- **Credenciais** por `--login`/`--senha` ou, de preferência, pelas variáveis
  `FERRAMENTAS_EDICAO_DB_USER` e `FERRAMENTAS_EDICAO_DB_PASSWORD`.
- **Verificação folha a folha** ao final: a mensagem final do plugin só reflete o último
  json do lote, então quem confere é o disco.
- Flags de saída: `--tiff` (`-et`), `--tiff-sem-grid` (`-etwg`), `--sem-mascaras`
  (`-dam`). Para algo que o wrapper não cobre (proxy, por exemplo), o `--dry-run`
  imprime o comando do `setup_env.bat` para ajustar à mão.

A pasta do QGIS sai de `--qgis`, de `FERRAMENTAS_EDICAO_QGIS_DIR` ou da instalação mais
nova em `C:\Program Files`. Para apontar outra instalação do plugin (comparar versões),
defina `FERRAMENTAS_EDICAO_PLUGIN_ROOT`.

### Testes

```
python -m unittest discover -s tests -v
```

Rodam sem QGIS e sem banco. Parte deles lê o contrato do plugin instalado de verdade: se
o upstream mudar a forma do código (renomear `data_structure`, tirar os `choices` do
`--tipo`), a quebra aparece no teste, não depois de horas de exportação.

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
