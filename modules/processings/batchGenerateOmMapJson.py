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

import json
import re
import unicodedata
from datetime import datetime
from pathlib import Path

from qgis.core import (
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingParameterFeatureSource,
    QgsProcessingParameterField,
    QgsProcessingParameterString,
    QgsProcessingParameterFolderDestination,
    QgsProcessingException,
    QgsProcessingMultiStepFeedback,
    QgsCoordinateTransform,
    QgsCoordinateReferenceSystem,
    QgsProject,
    NULL,
)
from qgis.PyQt.QtCore import QCoreApplication

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help
from ...config.jsonStructure import find_missing_required_keys_on_dict


class BatchGenerateOmMapJson(QgsProcessingAlgorithm):

    INPUT_LAYER = "INPUT_LAYER"

    # Campos obrigatórios por feição
    FIELD_FILENAME = "FIELD_FILENAME"
    FIELD_NOME = "FIELD_NOME"
    FIELD_IMAGEM_OM = "FIELD_IMAGEM_OM"
    FIELD_IMAGEM_SUBORDINACAO = "FIELD_IMAGEM_SUBORDINACAO"
    FIELD_ALTITUDE = "FIELD_ALTITUDE"
    FIELD_ENDERECO = "FIELD_ENDERECO"
    FIELD_IMAGEM_ORTO = "FIELD_IMAGEM_ORTO"

    # Campos opcionais por feição
    FIELD_SUBORDINACAO1 = "FIELD_SUBORDINACAO1"
    FIELD_SUBORDINACAO2 = "FIELD_SUBORDINACAO2"
    FIELD_EPSG_ORTO = "FIELD_EPSG_ORTO"

    # Dados comuns a todas as OMs
    BING_URL = "BING_URL"
    EPSG_ORTO_DEFAULT = "EPSG_ORTO_DEFAULT"
    EXECUTOR_NOME = "EXECUTOR_NOME"
    ANO_IMAGEAMENTO = "ANO_IMAGEAMENTO"
    ANO_PDI = "ANO_PDI"
    ANO_EDICAO = "ANO_EDICAO"
    SENSORES_JSON = "SENSORES_JSON"
    DATA_CRIACAO = "DATA_CRIACAO"
    PEC_PLANIMETRICO = "PEC_PLANIMETRICO"
    PEC_ALTIMETRICO = "PEC_ALTIMETRICO"
    DATUM_VERTICAL = "DATUM_VERTICAL"
    ORIGEM_DADOS_ALTIMETRICOS = "ORIGEM_DADOS_ALTIMETRICOS"
    DADOS_TERCEIROS = "DADOS_TERCEIROS"

    OUTPUT_FOLDER = "OUTPUT_FOLDER"

    _BING_DEFAULT = (
        "type=xyz&url=http://ecn.t3.tiles.virtualearth.net/tiles/"
        "a%7Bq%7D.jpeg?g%3D0%26dir%3Ddir_n&zmax=18&zmin=0"
    )
    _SENSORES_DEFAULT = json.dumps(
        [
            {
                "tipo": "Multiespectral",
                "plataforma": "Orbital",
                "nome": "WorldView-2",
                "resolucao": "0,50 m",
                "bandas": "5-3-2",
                "nivel_produto": "Standard",
            },
            {
                "tipo": "Multiespectral",
                "plataforma": "RPA",
                "nome": "CMOS 1''",
                "resolucao": "0,03 m",
                "bandas": "1-2-3",
                "nivel_produto": "Standard",
            },
        ],
        ensure_ascii=False,
        indent=4,
    )

    def initAlgorithm(self, config=None):
        ano_atual = str(datetime.now().year)
        ano_anterior = str(datetime.now().year - 1)

        # --- Camada ---
        self.addParameter(
            QgsProcessingParameterFeatureSource(
                self.INPUT_LAYER,
                self.tr("Camada com os polígonos das OMs"),
                types=[QgsProcessing.TypeVectorPolygon],
            )
        )

        # --- Campos obrigatórios por feição ---
        self.addParameter(
            QgsProcessingParameterField(
                self.FIELD_FILENAME,
                self.tr("Campo: Nome do arquivo de saída (sem extensão)"),
                parentLayerParameterName=self.INPUT_LAYER,
            )
        )
        self.addParameter(
            QgsProcessingParameterField(
                self.FIELD_NOME,
                self.tr("Campo: Nome da OM"),
                parentLayerParameterName=self.INPUT_LAYER,
            )
        )
        self.addParameter(
            QgsProcessingParameterField(
                self.FIELD_IMAGEM_OM,
                self.tr("Campo: Caminho da imagem do brasão da OM"),
                parentLayerParameterName=self.INPUT_LAYER,
            )
        )
        self.addParameter(
            QgsProcessingParameterField(
                self.FIELD_IMAGEM_SUBORDINACAO,
                self.tr("Campo: Caminho da imagem do brasão da subordinação"),
                parentLayerParameterName=self.INPUT_LAYER,
            )
        )
        self.addParameter(
            QgsProcessingParameterField(
                self.FIELD_ALTITUDE,
                self.tr("Campo: Altitude (ex: 9 m)"),
                parentLayerParameterName=self.INPUT_LAYER,
            )
        )
        self.addParameter(
            QgsProcessingParameterField(
                self.FIELD_ENDERECO,
                self.tr("Campo: Endereço"),
                parentLayerParameterName=self.INPUT_LAYER,
            )
        )
        self.addParameter(
            QgsProcessingParameterField(
                self.FIELD_IMAGEM_ORTO,
                self.tr("Campo: Caminho da ortoimagem (.tif)"),
                parentLayerParameterName=self.INPUT_LAYER,
            )
        )

        # --- Campos opcionais por feição ---
        self.addParameter(
            QgsProcessingParameterField(
                self.FIELD_SUBORDINACAO1,
                self.tr("Campo: Subordinação 1 (opcional)"),
                parentLayerParameterName=self.INPUT_LAYER,
                optional=True,
            )
        )
        self.addParameter(
            QgsProcessingParameterField(
                self.FIELD_SUBORDINACAO2,
                self.tr("Campo: Subordinação 2 (opcional)"),
                parentLayerParameterName=self.INPUT_LAYER,
                optional=True,
            )
        )
        self.addParameter(
            QgsProcessingParameterField(
                self.FIELD_EPSG_ORTO,
                self.tr("Campo: EPSG da ortoimagem (opcional, usa padrão abaixo se vazio)"),
                parentLayerParameterName=self.INPUT_LAYER,
                optional=True,
            )
        )

        # --- Dados comuns ---
        self.addParameter(
            QgsProcessingParameterString(
                self.BING_URL,
                self.tr("URL da imagem de fundo (Bing/XYZ)"),
                defaultValue=self._BING_DEFAULT,
            )
        )
        self.addParameter(
            QgsProcessingParameterString(
                self.EPSG_ORTO_DEFAULT,
                self.tr("EPSG padrão da ortoimagem"),
                defaultValue="4326",
            )
        )
        self.addParameter(
            QgsProcessingParameterString(
                self.EXECUTOR_NOME,
                self.tr("Nome do executor das fases"),
                defaultValue="Diretoria de Serviço Geográfico - 1º CGEO",
            )
        )
        self.addParameter(
            QgsProcessingParameterString(
                self.ANO_IMAGEAMENTO,
                self.tr("Ano do Imageamento"),
                defaultValue=ano_anterior,
            )
        )
        self.addParameter(
            QgsProcessingParameterString(
                self.ANO_PDI,
                self.tr("Ano do Processamento Digital de Imagens"),
                defaultValue=ano_anterior,
            )
        )
        self.addParameter(
            QgsProcessingParameterString(
                self.ANO_EDICAO,
                self.tr("Ano da Edição"),
                defaultValue=ano_atual,
            )
        )
        self.addParameter(
            QgsProcessingParameterString(
                self.SENSORES_JSON,
                self.tr("Sensores (JSON)"),
                multiLine=True,
                defaultValue=self._SENSORES_DEFAULT,
            )
        )
        self.addParameter(
            QgsProcessingParameterString(
                self.DATA_CRIACAO,
                self.tr("Data de criação (DD/MM/AAAA)"),
                defaultValue=datetime.now().strftime("%d/%m/%Y"),
            )
        )
        self.addParameter(
            QgsProcessingParameterString(
                self.PEC_PLANIMETRICO,
                self.tr("PEC Planimétrico"),
                defaultValue="A***",
                optional=True,
            )
        )
        self.addParameter(
            QgsProcessingParameterString(
                self.PEC_ALTIMETRICO,
                self.tr("PEC Altimétrico"),
                defaultValue="A***",
                optional=True,
            )
        )
        self.addParameter(
            QgsProcessingParameterString(
                self.DATUM_VERTICAL,
                self.tr("Datum vertical"),
                defaultValue="Imbituba - Santa Catarina",
                optional=True,
            )
        )
        self.addParameter(
            QgsProcessingParameterString(
                self.ORIGEM_DADOS_ALTIMETRICOS,
                self.tr("Origem dos dados altimétricos"),
                defaultValue="GLO-30 com correção do efeito do dossel vegetativo",
                optional=True,
            )
        )
        self.addParameter(
            QgsProcessingParameterString(
                self.DADOS_TERCEIROS,
                self.tr("Dados de terceiros (JSON array de strings)"),
                multiLine=True,
                defaultValue='["Modelo geoidal: MAPGEO2015 - IBGE"]',
                optional=True,
            )
        )

        # --- Saída ---
        self.addParameter(
            QgsProcessingParameterFolderDestination(
                self.OUTPUT_FOLDER,
                self.tr("Pasta de saída dos arquivos JSON"),
            )
        )

    @staticmethod
    def _normalize_filename(name: str) -> str:
        """Remove acentos, substitui espaços e caracteres especiais por _ e converte para minúsculas."""
        normalized = unicodedata.normalize("NFD", name)
        ascii_name = normalized.encode("ascii", "ignore").decode("ascii")
        safe = re.sub(r"[^\w]", "_", ascii_name)
        safe = re.sub(r"_+", "_", safe).strip("_")
        return safe.lower()

    @staticmethod
    def _field_value(feat, field_name):
        """Retorna o valor do campo como string, ou None se nulo/vazio."""
        if not field_name:
            return None
        val = feat[field_name]
        if val is None or val == NULL:
            return None
        return str(val)

    def processAlgorithm(self, parameters, context, feedback):
        source = self.parameterAsSource(parameters, self.INPUT_LAYER, context)
        if source is None:
            raise QgsProcessingException(
                self.invalidSourceError(parameters, self.INPUT_LAYER)
            )

        features = list(source.getFeatures())
        if not features:
            raise QgsProcessingException(self.tr("A camada não possui feições."))

        # Nomes dos campos por feição
        field_filename = self.parameterAsString(parameters, self.FIELD_FILENAME, context)
        field_nome = self.parameterAsString(parameters, self.FIELD_NOME, context)
        field_imagem_om = self.parameterAsString(parameters, self.FIELD_IMAGEM_OM, context)
        field_imagem_sub = self.parameterAsString(parameters, self.FIELD_IMAGEM_SUBORDINACAO, context)
        field_altitude = self.parameterAsString(parameters, self.FIELD_ALTITUDE, context)
        field_endereco = self.parameterAsString(parameters, self.FIELD_ENDERECO, context)
        field_imagem_orto = self.parameterAsString(parameters, self.FIELD_IMAGEM_ORTO, context)
        field_subordinacao1 = self.parameterAsString(parameters, self.FIELD_SUBORDINACAO1, context)
        field_subordinacao2 = self.parameterAsString(parameters, self.FIELD_SUBORDINACAO2, context)
        field_epsg_orto = self.parameterAsString(parameters, self.FIELD_EPSG_ORTO, context)

        # Dados comuns
        bing_url = self.parameterAsString(parameters, self.BING_URL, context)
        epsg_orto_default = self.parameterAsString(parameters, self.EPSG_ORTO_DEFAULT, context)
        executor_nome = self.parameterAsString(parameters, self.EXECUTOR_NOME, context)
        ano_imageamento = self.parameterAsString(parameters, self.ANO_IMAGEAMENTO, context)
        ano_pdi = self.parameterAsString(parameters, self.ANO_PDI, context)
        ano_edicao = self.parameterAsString(parameters, self.ANO_EDICAO, context)
        sensores_str = self.parameterAsString(parameters, self.SENSORES_JSON, context)
        data_criacao = self.parameterAsString(parameters, self.DATA_CRIACAO, context)
        pec_plan = self.parameterAsString(parameters, self.PEC_PLANIMETRICO, context)
        pec_alt = self.parameterAsString(parameters, self.PEC_ALTIMETRICO, context)
        datum_vertical = self.parameterAsString(parameters, self.DATUM_VERTICAL, context)
        origem_dados = self.parameterAsString(parameters, self.ORIGEM_DADOS_ALTIMETRICOS, context)
        dados_terceiros_str = self.parameterAsString(parameters, self.DADOS_TERCEIROS, context)
        output_folder = self.parameterAsString(parameters, self.OUTPUT_FOLDER, context)

        try:
            sensores = json.loads(sensores_str)
        except json.JSONDecodeError as e:
            raise QgsProcessingException(
                self.tr(f"Erro ao interpretar o JSON de sensores: {e}")
            )

        dados_terceiros = []
        if dados_terceiros_str:
            try:
                dados_terceiros = json.loads(dados_terceiros_str)
            except json.JSONDecodeError as e:
                raise QgsProcessingException(
                    self.tr(f"Erro ao interpretar o JSON de dados de terceiros: {e}")
                )

        fases = [
            {
                "nome": "Imageamento",
                "executantes": [{"nome": executor_nome, "ano": ano_imageamento}],
            },
            {
                "nome": "Processamento Digital de Imagens",
                "executantes": [{"nome": executor_nome, "ano": ano_pdi}],
            },
            {
                "nome": "Edição",
                "executantes": [{"nome": executor_nome, "ano": ano_edicao}],
            },
        ]

        info_tecnica = {"data_criacao": data_criacao}
        if pec_plan:
            info_tecnica["pec_planimetrico"] = pec_plan
        if pec_alt:
            info_tecnica["pec_altimetrico"] = pec_alt
        if datum_vertical:
            info_tecnica["datum_vertical"] = datum_vertical
        if origem_dados:
            info_tecnica["origem_dados_altimetricos"] = origem_dados
        if dados_terceiros:
            info_tecnica["dados_terceiros"] = dados_terceiros

        crs_4326 = QgsCoordinateReferenceSystem("EPSG:4326")
        needs_transform = source.sourceCrs() != crs_4326
        if needs_transform:
            transform = QgsCoordinateTransform(
                source.sourceCrs(), crs_4326, QgsProject.instance()
            )

        Path(output_folder).mkdir(parents=True, exist_ok=True)

        multiStepFeedback = QgsProcessingMultiStepFeedback(len(features), feedback)
        errors = []

        for current, feat in enumerate(features):
            if multiStepFeedback.isCanceled():
                break
            multiStepFeedback.setCurrentStep(current)

            filename = self._field_value(feat, field_filename)
            nome = self._field_value(feat, field_nome)
            imagem_om = self._field_value(feat, field_imagem_om)
            imagem_sub = self._field_value(feat, field_imagem_sub)
            altitude = self._field_value(feat, field_altitude)
            endereco = self._field_value(feat, field_endereco)
            imagem_orto = self._field_value(feat, field_imagem_orto)
            subordinacao1 = self._field_value(feat, field_subordinacao1)
            subordinacao2 = self._field_value(feat, field_subordinacao2)
            epsg_orto_field = self._field_value(feat, field_epsg_orto)
            epsg_orto = epsg_orto_field if epsg_orto_field else epsg_orto_default

            # Valida campos obrigatórios por feição
            missing = [
                label
                for label, val in [
                    ("nome do arquivo", filename),
                    ("nome da OM", nome),
                    ("imagem da OM", imagem_om),
                    ("imagem da subordinação", imagem_sub),
                    ("altitude", altitude),
                    ("endereço", endereco),
                    ("ortoimagem", imagem_orto),
                ]
                if not val
            ]
            if missing:
                msg = self.tr(
                    f"Feição {feat.id()}: campos obrigatórios ausentes ou nulos — "
                    + ", ".join(missing)
                    + ". Feição ignorada."
                )
                multiStepFeedback.pushWarning(msg)
                errors.append(msg)
                continue

            geom = feat.geometry()
            if needs_transform:
                geom.transform(transform)
            wkt = geom.asWkt()

            result = {
                "tipo_produto": "Carta Ortoimagem OM",
                "poligono": wkt,
                "nome": nome,
                "imagemOM": imagem_om,
                "imagemSubordinacao": imagem_sub,
                "altitude": altitude,
                "endereco": endereco,
                "imagens": [
                    {"caminho_imagem": bing_url, "epsg": "3857"},
                    {"caminho_imagem": imagem_orto, "epsg": epsg_orto},
                ],
                "fases": fases,
                "sensores": sensores,
                "info_tecnica": info_tecnica,
            }

            if subordinacao1:
                result["subordinacao1"] = subordinacao1
            if subordinacao2:
                result["subordinacao2"] = subordinacao2

            missing = find_missing_required_keys_on_dict(result, "Carta Ortoimagem OM")
            if missing:
                msg = self.tr(
                    f"Feição {feat.id()} ({nome}): JSON inválido — campos obrigatórios ausentes: "
                    + ", ".join(sorted(missing))
                    + ". Feição ignorada."
                )
                multiStepFeedback.pushWarning(msg)
                errors.append(msg)
                continue

            safe_filename = self._normalize_filename(filename) + ".json"
            output_path = Path(output_folder) / safe_filename

            with open(output_path, "w", encoding="utf-8") as f:
                json.dump(result, f, ensure_ascii=False, indent=4)

            multiStepFeedback.pushInfo(self.tr(f"JSON gerado: {output_path}"))

        total = len(features)
        skipped = len(errors)
        generated = total - skipped
        feedback.pushInfo(
            self.tr(
                f"\nConcluído: {generated} de {total} JSONs gerados com sucesso"
                + (f" ({skipped} feições ignoradas por dados ausentes)." if skipped else ".")
            )
        )

        return {self.OUTPUT_FOLDER: output_folder}

    def name(self):
        return "batchgenerateommapjson"

    def displayName(self):
        return self.tr("Gerar JSONs em Lote")

    def group(self):
        return self.tr("Ortoimagem de OM")

    def groupId(self):
        return "ortoimagem_om"

    def tr(self, string):
        return QCoreApplication.translate("BatchGenerateOmMapJson", string)

    def createInstance(self):
        return BatchGenerateOmMapJson()

    def shortHelpString(self):
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return help().helpUrl(self.name())
