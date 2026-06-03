# CLAUDE.md - Ferramentas de Edição

## Overview

Plugin QGIS para edição e geração de cartas topográficas e ortoimagens seguindo normas cartográficas brasileiras. Desenvolvido pelo 1º CGEO (Exército Brasileiro).

- **Versão atual:** 1.3.32
- **QGIS mínimo:** 4.0 (Qt6)
- **Repositório:** https://github.com/dsgoficial/ferramentas_edicao
- **Branch principal:** master | **Branch desenvolvimento QGIS4:** qgis4

## Estrutura do Projeto

```
ferramentas_edicao/
├── __init__.py              # Entry point (classFactory)
├── editionPlugin.py         # Classe principal do plugin
├── standalone.py            # Modo CLI
├── config/                  # Configurações e defaults
├── controllers/             # Orquestração (mapBuilderController)
├── factories/               # Singletons e builders de mapas
├── interfaces/              # Interfaces (IComponent, IMapBuilder)
├── modules/
│   ├── expressionFunctions/ # Extensões de expressões QGIS
│   ├── gridGenerator/       # Grades UTM e Lat/Lon
│   ├── labelTools/          # Posicionamento de rótulos
│   ├── mapBuilder/          # Componentes de composição (20+)
│   ├── processings/         # 52 algoritmos Processing
│   ├── tools/               # Ferramentas de toolbar (25+)
│   └── qrcode/              # Geração QR code
├── resources/               # Diálogos e UI
└── Help/                    # Sistema de ajuda HTML
```

## Convenções de Código

- **Classes:** PascalCase (`MapBuilderController`)
- **Funções/métodos:** camelCase (`buildElevationDiagram()`)
- **Métodos privados:** prefixo underscore (`_setupUI()`)
- **Constantes:** UPPER_CASE
- **Formatação:** Black (v22.6.0)
- **Idioma do código:** inglês para nomes de classes/funções, português para strings de UI

## Padrões Arquiteturais

- **Singleton:** CompositionSingleton, ConnectionSingleton, ExporterSingleton
- **Factory:** MapBuilder factories para cada tipo de produto
- **Strategy:** Builders diferentes (TopoMapBuilder, OrthoMapBuilder, OmMapBuilder)
- **Composition:** Componentes implementam IComponent (build(), updateComposition())
- **Configuração via JSON:** Definições de produto em `modules/mapBuilder/resources/products/`

## Dependências

- **QGIS API** (qgis.core, qgis.gui, qgis.PyQt)
- **DsgTools** (plugin obrigatório - DbFactory, AlgRunner, LayerHandler)
- **Python stdlib** (json, os, pathlib, dataclasses, abc)

## Comandos Úteis

```bash
# Pre-commit hooks
pre-commit run --all-files

# Formatar código
black .
```

## Produtos Suportados

| Produto | Versão | Diretório |
|---------|--------|-----------|
| Carta Topográfica | 1.4 | `modules/mapBuilder/resources/products/topoMap/1_4/` |
| Carta Ortoimagem | 2.5 | `modules/mapBuilder/resources/products/orthoMap/2_5/` |
| Carta OM | 1.0 | `modules/mapBuilder/resources/products/omMap/1_0/` |

## Notas Importantes

- Sem framework de testes automatizados
- Sem CI/CD configurado
- Recursos incluem limites municipais IBGE 2025, estilos QML, templates QPT
- O plugin é instalado diretamente no diretório de plugins do QGIS
