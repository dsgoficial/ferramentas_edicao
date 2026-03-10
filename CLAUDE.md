# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

**Ferramentas de Edição** — QGIS plugin for Brazilian Army (1o CGEO) cartographic map finishing. Generates and exports standardized maps (topographic, orthoimagery, military variants) following national cartographic specifications (ET-RDG). Written in Python 3 with PyQt5/PyQGIS. Requires QGIS >= 3.24.

Language: Portuguese (Brazilian). All user-facing strings, comments, and commit messages are in Portuguese.

## Development Setup

Symlink the plugin directory into QGIS plugins folder:
```bat
# Windows
.dev\setup_dev_windows.bat
# Creates: %APPDATA%\QGIS\QGIS3\profiles\default\python\plugins\ferramentas_edicao -> this repo
```

Debug mode activates when a `.env` file exists in the plugin root.

## Formatting and Linting

- **Black** (v22.6.0) via pre-commit hooks
- Pre-commit also enforces: YAML validation, trailing whitespace removal, EOL fixing
- Install hooks: `pre-commit install`

## Standalone CLI Export

Export maps without QGIS GUI via `setup_env.bat`:
```bat
setup_env.bat "C:\Program Files\QGIS 3.24.3" -t "Carta Topográfica 1.4" -j input.json -l user -s pass -ef output_dir
```
Product types: `Carta Topográfica 1.4`, `Carta Ortoimagem 2.5`, `Carta Ortoimagem OM 1.0`, `Carta Ortoimagem Militar 2.5`, `Carta Topográfica Militar 1.4`.

## Architecture

### Entry Point

`__init__.py` → `classFactory(iface)` → `EditionPlugin` (in `editionPlugin.py`). This is the standard QGIS plugin entry point.

### MVC + Factory Pattern

```
editionPlugin.py          # Main plugin class: GUI, toolbar, dialogs, processing provider registration
controllers/
  mapBuilderController.py # Central controller — orchestrates map building pipeline
factories/
  topoMapBuilder.py       # Topographic map builder
  orthoMapBuilder.py      # Orthoimagery map builder
  omMapbuilder.py         # OM orthoimagery builder
  military*.py            # Military variants (wrap topo/ortho with military specifics)
  mapBuilderUtils.py      # Shared builder utilities
  *Singleton.py           # Composition, connection, exporter singletons
interfaces/
  iMapBuilder.py          # ABC interface — all builders implement `run()`
  iComponent.py           # Component interface
```

All map builders implement `IMapBuilder.run()`. The controller selects the correct factory based on product type.

### Modules

**`modules/mapBuilder/`** — Core map building engine. 22 component builders (Map, Grid, Legend, QRCode, Articulation, Division, ElevationDiagram, etc.) compose the final print layout. Product templates and QML styles live in `modules/mapBuilder/resources/products/` organized by product type (`topoMap/`, `orthoMap/`, `omMap/`, `common/`).

**`modules/processings/`** — ~50 QGIS Processing algorithms registered via `Provider`. Covers: grid generation, label management, building/infrastructure symbols, river processing, rotation calculations, masking, style management. Each file is a self-contained `QgsProcessingAlgorithm` subclass.

**`modules/tools/`** — 25+ map editing buttons (toolbar tools). Each button in `buttons/` is a specialized tool for cartographic editing tasks (label cycling, symbol placement, visibility toggling, etc.).

**`modules/gridGenerator/`** — UTM and lat/lon grid generation with label formatting. Separate from Processing algorithms.

**`modules/expressionFunctions/`** — Custom QGIS expression functions (`longNumber`, `shortNumber`) for grid numbering.

**`modules/qrcode/`** — Embedded QR code generation library (has its own tests in `modules/qrcode/tests/`).

### Resources and Configuration

- `resources/` — UI dialogs (`.ui` files), icons
- `config/configDefaults.py` — Default configuration values
- `Help/` — HTML help pages for buttons and processing algorithms, linked via `links_dictionary.json`
- Product configuration uses JSON files defining layer ordering, styles, and export parameters
- QML style files in `modules/mapBuilder/resources/products/` define layer symbology per product type

### Key Dependencies

- **DsgTools** — Brazilian Army cartographic tools plugin (must be installed in QGIS)
- **QGIS Processing framework** — For algorithm registration and execution
- **PIL/Pillow** — Optional, for QR code image generation

## Conventions

- File naming: camelCase (e.g., `mapBuilderController.py`, `placeBuildingSymbol.py`)
- Plugin version tracked in `metadata.txt` (`version=`) and `CHANGELOG.md`
- Qt resources compiled to `resources.py` from `resources.qrc`
- i18n translations in `i18n/` directory

## QGIS 4 Migration

The `.claude/` directory contains an agent (`qgis4-migrator`) and 3 phase skills for migrating this plugin to QGIS 4.0/Qt6. Use `/migrate-qgis4` to run the full migration pipeline. Phases: imports → enum qualification → deprecated API replacement.
