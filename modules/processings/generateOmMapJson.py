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
from datetime import datetime
from pathlib import Path

from qgis.core import (
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingParameterFeatureSource,
    QgsProcessingParameterField,
    QgsProcessingParameterString,
    QgsProcessingParameterFile,
    QgsProcessingParameterFileDestination,
    QgsProcessingException,
    QgsCoordinateTransform,
    QgsCoordinateReferenceSystem,
    QgsProject,
    NULL,
)
from qgis.PyQt.QtCore import QCoreApplication

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help
from ...config.jsonStructure import find_missing_required_keys_on_dict


class GenerateOmMapJson(QgsProcessingAlgorithm):

    INPUT_LAYER = "INPUT_LAYER"

    # Atributos — valor digitado
    NOME = "NOME"
    IMAGEM_OM = "IMAGEM_OM"
    IMAGEM_SUBORDINACAO = "IMAGEM_SUBORDINACAO"
    SUBORDINACAO1 = "SUBORDINACAO1"
    SUBORDINACAO2 = "SUBORDINACAO2"
    ALTITUDE = "ALTITUDE"
    ENDERECO = "ENDERECO"
    IMAGEM_ORTO = "IMAGEM_ORTO"

    # Atributos — campo da tabela de atributos (opcional, sobrepõe o valor digitado)
    FIELD_NOME = "FIELD_NOME"
    FIELD_IMAGEM_OM = "FIELD_IMAGEM_OM"
    FIELD_IMAGEM_SUBORDINACAO = "FIELD_IMAGEM_SUBORDINACAO"
    FIELD_SUBORDINACAO1 = "FIELD_SUBORDINACAO1"
    FIELD_SUBORDINACAO2 = "FIELD_SUBORDINACAO2"
    FIELD_ALTITUDE = "FIELD_ALTITUDE"
    FIELD_ENDERECO = "FIELD_ENDERECO"
    FIELD_IMAGEM_ORTO = "FIELD_IMAGEM_ORTO"

    # Imagens
    BING_URL = "BING_URL"
    EPSG_ORTO = "EPSG_ORTO"

    # Fases
    EXECUTOR_NOME = "EXECUTOR_NOME"
    ANO_IMAGEAMENTO = "ANO_IMAGEAMENTO"
    ANO_PDI = "ANO_PDI"
    ANO_EDICAO = "ANO_EDICAO"

    # Sensores
    SENSORES_JSON = "SENSORES_JSON"

    # Info técnica
    DATA_CRIACAO = "DATA_CRIACAO"
    PEC_PLANIMETRICO = "PEC_PLANIMETRICO"
    PEC_ALTIMETRICO = "PEC_ALTIMETRICO"
    DATUM_VERTICAL = "DATUM_VERTICAL"
    ORIGEM_DADOS_ALTIMETRICOS = "ORIGEM_DADOS_ALTIMETRICOS"
    DADOS_TERCEIROS = "DADOS_TERCEIROS"

    # Saída
    OUTPUT_JSON = "OUTPUT_JSON"

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

        # --- Polígono ---
        self.addParameter(
            QgsProcessingParameterFeatureSource(
                self.INPUT_LAYER,
                self.tr("Camada com o polígono da OM"),
                types=[QgsProcessing.TypeVectorPolygon],
            )
        )

        # --- Identificação ---
        self.addParameter(
            QgsProcessingParameterString(
                self.NOME,
                self.tr("Nome da OM"),
            )
        )
        self.addParameter(
            QgsProcessingParameterField(
                self.FIELD_NOME,
                self.tr("↳ ou campo: Nome da OM"),
                parentLayerParameterName=self.INPUT_LAYER,
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterFile(
                self.IMAGEM_OM,
                self.tr("Imagem do brasão da OM (imagemOM)"),
                behavior=QgsProcessingParameterFile.File,
                fileFilter=self.tr("Imagens (*.png *.jpg *.jpeg)"),
            )
        )
        self.addParameter(
            QgsProcessingParameterField(
                self.FIELD_IMAGEM_OM,
                self.tr("↳ ou campo: caminho da imagem do brasão da OM"),
                parentLayerParameterName=self.INPUT_LAYER,
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterFile(
                self.IMAGEM_SUBORDINACAO,
                self.tr("Imagem do brasão da subordinação (imagemSubordinacao)"),
                behavior=QgsProcessingParameterFile.File,
                fileFilter=self.tr("Imagens (*.png *.jpg *.jpeg)"),
            )
        )
        self.addParameter(
            QgsProcessingParameterField(
                self.FIELD_IMAGEM_SUBORDINACAO,
                self.tr("↳ ou campo: caminho da imagem do brasão da subordinação"),
                parentLayerParameterName=self.INPUT_LAYER,
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterString(
                self.SUBORDINACAO1,
                self.tr("Subordinação 1 (ex: 5ª Divisão de Exército)"),
                optional=True,
            )
        )
        self.addParameter(
            QgsProcessingParameterField(
                self.FIELD_SUBORDINACAO1,
                self.tr("↳ ou campo: Subordinação 1"),
                parentLayerParameterName=self.INPUT_LAYER,
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterString(
                self.SUBORDINACAO2,
                self.tr("Subordinação 2 (ex: 14ª Brigada de Infantaria Motorizada)"),
                optional=True,
            )
        )
        self.addParameter(
            QgsProcessingParameterField(
                self.FIELD_SUBORDINACAO2,
                self.tr("↳ ou campo: Subordinação 2"),
                parentLayerParameterName=self.INPUT_LAYER,
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterString(
                self.ALTITUDE,
                self.tr("Altitude (ex: 9 m)"),
            )
        )
        self.addParameter(
            QgsProcessingParameterField(
                self.FIELD_ALTITUDE,
                self.tr("↳ ou campo: Altitude"),
                parentLayerParameterName=self.INPUT_LAYER,
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterString(
                self.ENDERECO,
                self.tr("Endereço da OM"),
            )
        )
        self.addParameter(
            QgsProcessingParameterField(
                self.FIELD_ENDERECO,
                self.tr("↳ ou campo: Endereço"),
                parentLayerParameterName=self.INPUT_LAYER,
                optional=True,
            )
        )

        # --- Imagens ---
        self.addParameter(
            QgsProcessingParameterString(
                self.BING_URL,
                self.tr("URL da imagem de fundo (Bing/XYZ)"),
                defaultValue=self._BING_DEFAULT,
            )
        )

        self.addParameter(
            QgsProcessingParameterFile(
                self.IMAGEM_ORTO,
                self.tr("Ortoimagem (.tif)"),
                behavior=QgsProcessingParameterFile.File,
                fileFilter=self.tr("Rasters (*.tif *.tiff *.img)"),
            )
        )
        self.addParameter(
            QgsProcessingParameterField(
                self.FIELD_IMAGEM_ORTO,
                self.tr("↳ ou campo: caminho da ortoimagem"),
                parentLayerParameterName=self.INPUT_LAYER,
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterString(
                self.EPSG_ORTO,
                self.tr("EPSG da ortoimagem"),
                defaultValue="4326",
            )
        )

        # --- Fases ---
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

        # --- Sensores ---
        self.addParameter(
            QgsProcessingParameterString(
                self.SENSORES_JSON,
                self.tr("Sensores (JSON)"),
                multiLine=True,
                defaultValue=self._SENSORES_DEFAULT,
            )
        )

        # --- Info técnica ---
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
            QgsProcessingParameterFileDestination(
                self.OUTPUT_JSON,
                self.tr("Arquivo JSON de saída"),
                fileFilter=self.tr("JSON (*.json)"),
            )
        )

    _FILE_PARAMS = {"IMAGEM_OM", "IMAGEM_SUBORDINACAO", "IMAGEM_ORTO"}

    def _attr_or_field(self, parameters, context, feat, param_id, field_param_id):
        """Retorna o valor do campo da feição se mapeado, senão o valor do parâmetro."""
        field_name = self.parameterAsString(parameters, field_param_id, context)
        if field_name:
            val = feat[field_name]
            if val is not None and val != NULL:
                return str(val)
        if param_id in self._FILE_PARAMS:
            return self.parameterAsFile(parameters, param_id, context)
        return self.parameterAsString(parameters, param_id, context)

    def processAlgorithm(self, parameters, context, feedback):
        source = self.parameterAsSource(parameters, self.INPUT_LAYER, context)
        if source is None:
            raise QgsProcessingException(
                self.invalidSourceError(parameters, self.INPUT_LAYER)
            )

        features = list(source.getFeatures())
        if not features:
            raise QgsProcessingException(self.tr("A camada não possui feições."))
        if len(features) > 1:
            feedback.pushWarning(
                self.tr(
                    f"{len(features)} feições encontradas — apenas a primeira será usada. "
                    "Use 'Feições selecionadas' para escolher uma feição específica."
                )
            )

        feat = features[0]

        # Geometria → WKT em EPSG:4326
        geom = feat.geometry()
        crs_4326 = QgsCoordinateReferenceSystem("EPSG:4326")
        if source.sourceCrs() != crs_4326:
            transform = QgsCoordinateTransform(
                source.sourceCrs(), crs_4326, QgsProject.instance()
            )
            geom.transform(transform)
        wkt = geom.asWkt()

        # Atributos — campo tem prioridade sobre texto digitado
        nome = self._attr_or_field(parameters, context, feat, self.NOME, self.FIELD_NOME)
        imagem_om = self._attr_or_field(
            parameters, context, feat, self.IMAGEM_OM, self.FIELD_IMAGEM_OM
        )
        imagem_sub = self._attr_or_field(
            parameters, context, feat, self.IMAGEM_SUBORDINACAO, self.FIELD_IMAGEM_SUBORDINACAO
        )
        subordinacao1 = self._attr_or_field(
            parameters, context, feat, self.SUBORDINACAO1, self.FIELD_SUBORDINACAO1
        )
        subordinacao2 = self._attr_or_field(
            parameters, context, feat, self.SUBORDINACAO2, self.FIELD_SUBORDINACAO2
        )
        altitude = self._attr_or_field(
            parameters, context, feat, self.ALTITUDE, self.FIELD_ALTITUDE
        )
        endereco = self._attr_or_field(
            parameters, context, feat, self.ENDERECO, self.FIELD_ENDERECO
        )
        imagem_orto = self._attr_or_field(
            parameters, context, feat, self.IMAGEM_ORTO, self.FIELD_IMAGEM_ORTO
        )

        bing_url = self.parameterAsString(parameters, self.BING_URL, context)
        epsg_orto = self.parameterAsString(parameters, self.EPSG_ORTO, context)
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
        output_path = self.parameterAsFileOutput(parameters, self.OUTPUT_JSON, context)

        # Validações obrigatórias
        for label, valor in [
            ("Nome da OM", nome),
            ("imagemOM", imagem_om),
            ("imagemSubordinacao", imagem_sub),
            ("Altitude", altitude),
            ("Endereço", endereco),
            ("Caminho da ortoimagem", imagem_orto),
        ]:
            if not valor:
                raise QgsProcessingException(
                    self.tr(
                        f"O campo '{label}' é obrigatório. "
                        "Preencha o valor ou mapeie um campo da camada."
                    )
                )

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

        result = {
            "tipo_produto": "Carta Ortoimagem SARP",
            "configuracao_carta": "om",
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
            "fases": [
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
            ],
            "sensores": sensores,
            "info_tecnica": {"data_criacao": data_criacao},
        }

        if subordinacao1:
            result["subordinacao1"] = subordinacao1
        if subordinacao2:
            result["subordinacao2"] = subordinacao2
        if pec_plan:
            result["info_tecnica"]["pec_planimetrico"] = pec_plan
        if pec_alt:
            result["info_tecnica"]["pec_altimetrico"] = pec_alt
        if datum_vertical:
            result["info_tecnica"]["datum_vertical"] = datum_vertical
        if origem_dados:
            result["info_tecnica"]["origem_dados_altimetricos"] = origem_dados
        if dados_terceiros:
            result["info_tecnica"]["dados_terceiros"] = dados_terceiros

        missing = find_missing_required_keys_on_dict(result, "Carta Ortoimagem SARP")
        if missing:
            raise QgsProcessingException(
                self.tr(
                    "O JSON gerado está incompleto. Campos obrigatórios ausentes: "
                    + ", ".join(sorted(missing))
                )
            )

        output_path_obj = Path(output_path)
        if output_path_obj.suffix.lower() != ".json":
            output_path = str(output_path_obj.with_suffix(".json"))

        with open(output_path, "w", encoding="utf-8") as f:
            json.dump(result, f, ensure_ascii=False, indent=4)

        feedback.pushInfo(self.tr(f"JSON gerado com sucesso: {output_path}"))
        return {self.OUTPUT_JSON: output_path}

    def name(self):
        return "generateommapjson"

    def displayName(self):
        return self.tr("Gerar JSON")

    def group(self):
        return self.tr("Ortoimagem SARP")

    def groupId(self):
        return "ortoimagem_om"

    def tr(self, string):
        return QCoreApplication.translate("GenerateOmMapJson", string)

    def createInstance(self):
        return GenerateOmMapJson()

    def shortHelpString(self):
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return help().helpUrl(self.name())
