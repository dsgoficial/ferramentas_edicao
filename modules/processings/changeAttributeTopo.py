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
from qgis.core import (
    NULL,
    Qgis,
    QgsCoordinateReferenceSystem,
    QgsCoordinateTransformContext,
    QgsDistanceArea,
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingParameterEnum,
    QgsProcessingParameterMultipleLayers,
    QgsRectangle,
    QgsSpatialIndex,
    QgsVectorLayer,
)
from qgis.PyQt.QtCore import QCoreApplication
from .processingUtils import ProcessingUtils

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help


class ChangeAttributeTopo(QgsProcessingAlgorithm):

    INPUT_LAYER_LIST = "INPUT_LAYER"
    SCALE = "SCALE"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterMultipleLayers(
                self.INPUT_LAYER_LIST,
                self.tr("Selecione as camadas a serem alteradas."),
                QgsProcessing.TypeVectorAnyGeometry,
            )
        )
        self.addParameter(
            QgsProcessingParameterEnum(
                self.SCALE,
                self.tr("Selecione a escala de edição"),
                options=[
                    self.tr("1:5.000"),
                    self.tr("1:10.000"),
                    self.tr("1:25.000"),
                    self.tr("1:50.000"),
                    self.tr("1:100.000"),
                    self.tr("1:250.000"),
                ],
                defaultValue=2,
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        layer_list = self.parameterAsLayerList(
            parameters, self.INPUT_LAYER_LIST, context
        )
        gridScaleParam = self.parameterAsInt(parameters, self.SCALE, context)

        self.gridScaleDict = {
            0: 5000,
            1: 10000,
            2: 25000,
            3: 50000,
            4: 100000,
            5: 250000,
        }
        self.scale = self.gridScaleDict[gridScaleParam]

        if not layer_list:
            return {}
        stepSize = 100 / len(layer_list)

        for current, layer in enumerate(layer_list):
            if feedback.isCanceled():
                return {}
            processed = self.process_layer(layer, feedback)
            if processed is None:
                feedback.pushInfo(
                    self.tr("Camada sem regra de edição, ignorada: {0}").format(
                        layer.name()
                    )
                )
            else:
                feedback.pushInfo(
                    self.tr("{0}: {1} feições configuradas").format(
                        layer.name(), processed
                    )
                )
            feedback.setProgress(current * stepSize)

        return {}

    @staticmethod
    def _hasManualText(feature):
        """texto_edicao preenchido manualmente e preservado."""
        if "texto_edicao" not in feature.fields().names():
            return False
        value = feature["texto_edicao"]
        if value == NULL:
            return False
        if not isinstance(value, str):
            return True
        return value.strip() != ""

    @staticmethod
    def _isBlank(value):
        """NULL ou string vazia/espacos."""
        return value == NULL or str(value).strip() == ""

    @staticmethod
    def _wrapLabelText(texto, maxLen=15):
        """Quebra o texto em linhas de ate maxLen caracteres, so no ESPACO
        (nunca corta palavra no meio), unindo as linhas com '|' (o
        wrapChar do QGIS que a QML da camada consome para virar quebra de
        linha de verdade, ver styles/*/constr_area_uso_especifico_a.qml).
        Palavra sozinha maior que maxLen fica inteira, numa linha so."""
        palavras = texto.split(" ")
        linhas = []
        atual = ""
        for palavra in palavras:
            candidata = (atual + " " + palavra).strip() if atual else palavra
            if not atual or len(candidata) <= maxLen:
                atual = candidata
            else:
                linhas.append(atual)
                atual = palavra
        if atual:
            linhas.append(atual)
        return "|".join(linhas)

    @staticmethod
    def _abreviar(nome, abreviacoes):
        """Aplica abreviações preservando o restante do nome. A busca é
        case-insensitive; a substituição usa índices recalculados a cada
        aplicação (o código antigo usava índices do nome ORIGINAL depois de
        já ter alterado o nome, amputando o texto)."""
        for palavra, abreviacao in abreviacoes.items():
            chave = palavra.lower()
            idx = nome.lower().find(chave)
            if idx >= 0:
                nome = nome[:idx] + abreviacao + nome[idx + len(chave):]
        return nome

    def process_layer(self, layer: QgsVectorLayer, feedback=None):
        """Retorna o numero de feições configuradas, ou None se a camada nao
        tem regra de edição."""
        # fallback para o nome da camada: fontes nao-PostGIS (gpkg, memory)
        # nao expõem table() no uri
        table_name = layer.dataProvider().uri().table() or layer.name()

        if table_name in ["constr_extracao_mineral_p", "constr_extracao_mineral_a"]:
            processing_function = self.defaultExtMineral
        elif table_name in [
            "elemnat_elemento_hidrografico_p",
            "elemnat_elemento_hidrografico_l",
        ]:
            processing_function = self.defaultElemnatElemHidPL
        elif table_name in [
            "infra_elemento_viario_p",
            "infra_elemento_viario_l",
        ]:
            processing_function = self.defaultElementoViario
        elif table_name in ["elemnat_elemento_hidrografico_a"]:
            processing_function = self.defaultElemnatElemHidA
        elif table_name in ["constr_area_uso_especifico_a"]:
            processing_function = self.defaultAreaUsoEspecifico
        elif table_name in ["elemnat_ilha_p"]:
            processing_function = self.defaultIlhaP
        elif table_name in ["elemnat_ilha_a"]:
            processing_function = self.defaultIlhaA
        elif table_name in ["constr_deposito_p", "constr_deposito_a"]:
            self._siloLabelFeatureIds = self._clusterSilos(layer)
            processing_function = self.defaultDeposito
        elif table_name in ["constr_edificacao_p", "constr_edificacao_a"]:
            processing_function = self.defaultEdificacao
        elif table_name in ["elemnat_ponto_cotado_p"]:
            processing_function = self.defaultPtoCotado
        elif table_name in ["infra_vala_l"]:
            processing_function = self.defaultVala
        elif table_name in ["infra_trecho_duto_l"]:
            processing_function = self.defaultDuto
        elif table_name in ["elemnat_toponimo_fisiografico_natural_p"]:
            processing_function = self.defaultElemnatTopoFisioP
        elif table_name in ["elemnat_toponimo_fisiografico_natural_l"]:
            processing_function = self.defaultElemnatTopoFisioL
        elif table_name in ["infra_elemento_energia_p", "infra_elemento_energia_a"]:
            processing_function = self.defaultInfraElemEnergPA
        elif table_name in ["infra_elemento_energia_l"]:
            processing_function = self.defaultInfraElemEnergL
        elif table_name in [
            "infra_elemento_infraestrutura_p",
            "infra_elemento_infraestrutura_l",
            "infra_elemento_infraestrutura_a",
        ]:
            processing_function = self.defaultInfraElemInfra
        elif table_name in ["llp_limite_legal_l"]:
            processing_function = self.defaultEdicao
        elif table_name in ["elemnat_curva_nivel_l"]:
            processing_function = self.defaultCurvaNivel
        elif table_name in ["infra_barragem_l", "infra_barragem_a"]:
            processing_function = self.defaultBarragem
        elif table_name in ["infra_ferrovia_l"]:
            processing_function = self.defaultFerrovia
        elif table_name in ["infra_via_deslocamento_l"]:
            processing_function = self.defaultViaDesloc
        elif table_name in ["cobter_massa_dagua_a"]:
            processing_function = self.defaultMassaDagua
        elif table_name in [
            "infra_pista_pouso_p",
            "infra_pista_pouso_l",
            "infra_pista_pouso_a",
        ]:
            processing_function = self.defaultPistaPouso
        elif table_name in ["llp_limite_especial_a"]:
            processing_function = self.defaultllp
        elif table_name in ["llp_area_sem_dados_a"]:
            processing_function = self.defaultAreaSemDados
        elif table_name in ["elemnat_trecho_drenagem_l"]:
            processing_function = self.defaultTrechoDrenagem
        elif table_name in ["llp_localidade_p"]:
            processing_function = self.defaultllpLocalidade
        elif table_name in [
            "constr_ocupacao_solo_p",
            "constr_ocupacao_solo_l",
            "constr_ocupacao_solo_a",
        ]:
            processing_function = self.defaultOcupacaoSolo
        elif table_name in [
            "infra_travessia_hidroviaria_p",
            "infra_travessia_hidroviaria_l",
        ]:
            processing_function = self.defaultTravessiaHidroviaria
        else:
            return None

        layer.startEditing()
        layer.beginEditCommand("Atualizando atributos")
        lyrCrs = layer.dataProvider().crs()
        nFeats = 0
        for feature in layer.getFeatures():
            if feedback is not None and feedback.isCanceled():
                break
            layer.updateFeature(processing_function(feature, lyrCrs))
            nFeats += 1
        layer.endEditCommand()
        return nFeats

    # Tamanho por tipo de toponimo fisiografico (anexo H: Serra 12-18,
    # Pico/Montanha 8-10, Morro/Chapada/Macico/Planalto/Planicie 7-10;
    # Praia mantem 6 — sem faixa normativa)
    FISIO_SIZES = {1: 12, 3: 8, 17: 8, 2: 7, 4: 7, 5: 7, 6: 7, 7: 7, 12: 6}

    # Texto por tipo de elemento de energia (a versao antiga rotulava TUDO
    # que nao era torre como "Subestação" — aerogerador e usinas saiam errados)
    ENERGY_TEXT = {
        1801: "Subestação",
        1802: "Subestação",
        1701: "Aerogerador",
        1702: "Aerogeradores",
        501: "Casa de Força",
        405: "Usina Eólica",
        406: "Usina Solar",
        407: "Usina Maré-motriz",
        408: "Usina Hidrelétrica",
        409: "Usina Termelétrica",
        498: "Usina",
    }

    def defaultExtMineral(self, feature, lyrCrs):
        feature["justificativa_txt"] = 1
        feature["visivel"] = 1
        if self._hasManualText(feature):
            return feature
        if feature["tipo"] == 1:
            feature["texto_edicao"] = "Poço"
        elif feature["tipo"] == 4:
            feature["texto_edicao"] = "Pedreira"
        elif feature["tipo"] == 5:
            feature["texto_edicao"] = "Garimpo"
        elif feature["tipo"] == 6:
            feature["texto_edicao"] = "Salina"
        elif feature["tipo"] == 8:
            feature["texto_edicao"] = "Petróleo"
        return feature

    def defaultElemnatElemHidPL(self, feature, lyrCrs):
        feature["justificativa_txt"] = 1
        if self._hasManualText(feature):
            return feature
        if self._isBlank(feature["nome"]):
            if feature["tipo"] == 1:
                feature["texto_edicao"] = "Poço"
            elif feature["tipo"] == 2:
                feature["texto_edicao"] = "Poço artesiano"
            elif feature["tipo"] in (3, 4):
                feature["texto_edicao"] = "Olho d'água"
            elif feature["tipo"] == 8:
                feature["texto_edicao"] = "Rocha"
            elif feature["tipo"] in (14, 15, 16, 17):
                feature["texto_edicao"] = "Areia"
            elif feature["tipo"] in (18, 19):
                feature["texto_edicao"] = "Recife"
            elif feature["tipo"] == 9:
                feature["texto_edicao"] = "Cachoeira"
            elif feature["tipo"] == 10:
                feature["texto_edicao"] = "Salto"
            elif feature["tipo"] == 11:
                feature["texto_edicao"] = "Catarata"
            elif feature["tipo"] == 12:
                feature["texto_edicao"] = "Corredeira"
        else:
            feature["texto_edicao"] = feature["nome"]
        return feature

    def defaultElemnatElemHidA(self, feature, lyrCrs):
        feature["justificativa_txt"] = 1
        if self._hasManualText(feature):
            return feature
        if self._isBlank(feature["nome"]):
            feature["texto_edicao"] = "Corredeira"
        else:
            feature["texto_edicao"] = feature["nome"]
        return feature

    def defaultIlhaP(self, feature, lyrCrs):
        feature["tamanho_txt"] = 7
        feature["justificativa_txt"] = 2
        feature["visivel"] = 1
        if self._hasManualText(feature):
            return feature
        feature["texto_edicao"] = feature["nome"]
        return feature

    def defaultIlhaA(self, feature, lyrCrs):
        feature["justificativa_txt"] = 2
        size = ProcessingUtils.getWaterPolyLabelFontSize(feature, self.scale, lyrCrs)
        if size > 16:
            size = 16  # na MTM o tamanho maximo da fonte é 16
        feature["tamanho_txt"] = size
        feature["visivel"] = 1
        if self._hasManualText(feature):
            return feature
        feature["texto_edicao"] = feature["nome"]
        return feature

    def defaultPtoCotado(self, feature, lyrCrs):
        feature["visivel"] = 1
        feature["ancora_vertical"] = 1
        feature["ancora_horizontal"] = 1
        feature["suprimir_simbologia"] = 2  # Não: suprimir só em interseções
        if self._hasManualText(feature):
            return feature
        return feature

    def defaultElemnatTopoFisioP(self, feature, lyrCrs):
        feature["justificativa_txt"] = 1
        if "nome" in feature.fields().names() and feature["nome"] != NULL:
            size = self.FISIO_SIZES.get(feature["tipo"])
            if size is not None:
                feature["tamanho_txt"] = size
        if self._hasManualText(feature):
            return feature
        feature["texto_edicao"] = feature["nome"]
        return feature

    def defaultElemnatTopoFisioL(self, feature, lyrCrs):
        if "nome" in feature.fields().names() and feature["nome"] != NULL:
            size = self.FISIO_SIZES.get(feature["tipo"])
            if size is not None:
                feature["tamanho_txt"] = size
        if self._hasManualText(feature):
            return feature
        feature["texto_edicao"] = feature["nome"]
        return feature

    def defaultInfraElemEnergPA(self, feature, lyrCrs):
        feature["visivel"] = 1
        feature["justificativa_txt"] = 1
        if self._hasManualText(feature):
            return feature
        if feature["tipo"] == 1401:
            feature["texto_edicao"] = NULL
        elif feature["tipo"] in self.ENERGY_TEXT:
            feature["texto_edicao"] = self.ENERGY_TEXT[feature["tipo"]]
        return feature

    def defaultInfraElemEnergL(self, feature, lyrCrs):
        feature["visivel"] = 1
        return feature

    def defaultInfraElemInfra(self, feature, lyrCrs):
        feature["justificativa_txt"] = 1
        feature["visivel"] = 1
        return feature

    def defaultEdicao(self, feature, lyrCrs):
        feature["exibir_rotulo_aproximado"] = 1
        return feature

    def defaultCurvaNivel(self, feature, lyrCrs):
        feature["visivel"] = 1
        if self._hasManualText(feature):
            return feature
        if feature["cota"] == 0:
            feature["texto_edicao"] = "ZERO"
        elif feature["cota"] < 0:
            feature["texto_edicao"] = "MENOS " + str(abs(feature["cota"]))
        else:
            feature["texto_edicao"] = feature["cota"]
        return feature

    def defaultFerrovia(self, feature, lyrCrs):
        feature["visivel"] = 1
        return feature

    def defaultBarragem(self, feature, lyrCrs):
        feature["visivel"] = 1
        return feature

    def defaultTravessiaHidroviaria(self, feature, lyrCrs):
        feature["visivel"] = 1
        feature["justificativa_txt"] = 1
        if self._hasManualText(feature):
            return feature
        if feature["tipo"] == 1:
            feature["texto_edicao"] = "Balsa"
        elif feature["tipo"] == 2:
            feature["texto_edicao"] = "Bote transportador"

        return feature

    def defaultDuto(self, feature, lyrCrs):
        feature["visivel"] = 1
        if self._hasManualText(feature):
            return feature
        if feature["tipo"] == 302:
            feature["texto_edicao"] = "Óleo"
        elif feature["tipo"] == 303:
            feature["texto_edicao"] = "Gasolina"
        elif feature["tipo"] == 304:
            feature["texto_edicao"] = "Álcool"
        elif feature["tipo"] == 305:
            feature["texto_edicao"] = "Querosene"
        elif feature["tipo"] == 306:
            feature["texto_edicao"] = "Petróleo"
        elif feature["tipo"] == 307:
            feature["texto_edicao"] = "Nafta"
        elif feature["tipo"] == 308:
            feature["texto_edicao"] = "Gás"
        elif feature["tipo"] == 309:
            feature["texto_edicao"] = "Efluentes"
        elif feature["tipo"] == 310:
            feature["texto_edicao"] = "Esgoto"
        return feature

    def defaultVala(self, feature, lyrCrs):
        feature["visivel"] = 1
        return feature

    def defaultViaDesloc(self, feature, lyrCrs):
        feature["visivel"] = 1
        return feature

    def defaultAreaUsoEspecifico(self, feature, lyrCrs):
        feature["visivel"] = 1
        feature["justificativa_txt"] = 1
        if self._hasManualText(feature):
            return feature
        nome = feature["nome"]
        if self._isBlank(nome):
            feature["texto_edicao"] = nome
        else:
            feature["texto_edicao"] = self._wrapLabelText(str(nome))
        return feature

    def defaultMassaDagua(self, feature, lyrCrs):
        feature["justificativa_txt"] = 2
        size = ProcessingUtils.getWaterPolyLabelFontSize(feature, self.scale, lyrCrs)
        if feature["tipo"] == 3:
            # oceano: 8 a 18 pt (anexo H)
            size = min(max(size, 8), 18)
        elif size > 16:
            size = 16  # na MTM o tamanho maximo da fonte é 16
        feature["tamanho_txt"] = size
        if self._hasManualText(feature):
            return feature
        if feature["tipo"] in [3, 4, 5, 6, 7, 9, 10, 11]:
            feature["texto_edicao"] = feature["nome"]
        return feature

    def defaultPistaPouso(self, feature, lyrCrs):
        situacao_fisica_map = {
            0: "Desconhecida",
            1: "Abandonada",
            2: "Destruída",
            3: "Construída",
            4: "Em construção",
        }

        feature["justificativa_txt"] = 2
        feature["visivel"] = 1
        if self._hasManualText(feature):
            return feature
        if feature["tipo"] != 10:
            texto_edicao = []
            if feature["nome"] != NULL:
                texto_edicao.append(feature["nome"])
            if feature["situacao_fisica"] != 3:
                situacao = situacao_fisica_map.get(
                    feature["situacao_fisica"], "Desconhecida"
                )
                texto_edicao.append("(" + situacao.lower() + ")")

            if feature["revestimento"] == 1:
                texto_edicao.append("Rev nat")
            elif feature["revestimento"] == 2:
                texto_edicao.append("Rev prim")
            elif feature["revestimento"] in [0, 9999]:
                texto_edicao.append("Rev desc")

            if feature["altitude"] != NULL:
                texto_edicao.append(round(feature["altitude"]))
            feature["texto_edicao"] = "|".join(map(str, texto_edicao))
        return feature

    def defaultllp(self, feature, lyrCrs):
        feature["justificativa_txt"] = 2
        size = ProcessingUtils.getEditPolyLabelFontSize(feature, self.scale, lyrCrs)
        feature["tamanho_txt"] = size
        if self._hasManualText(feature):
            return feature
        nome = feature["nome"]
        if self._isBlank(nome):
            feature["texto_edicao"] = nome
        else:
            feature["texto_edicao"] = self._wrapLabelText(str(nome))
        return feature

    def defaultAreaSemDados(self, feature, lyrCrs):
        feature["justificativa_txt"] = 2
        size = ProcessingUtils.getEditPolyLabelFontSize(feature, self.scale, lyrCrs)
        feature["tamanho_txt"] = size
        if self._hasManualText(feature):
            return feature
        feature["texto_edicao"] = "DADOS INCOMPLETOS"
        return feature

    def defaultTrechoDrenagem(self, feature, lyrCrs):
        feature["visivel"] = 1

        if feature["situacao_em_poligono"] in [2, 3]:
            feature["posicao_rotulo"] = 1
        elif feature["situacao_em_poligono"] in [1]:
            feature["posicao_rotulo"] = 2
        else:
            feature["posicao_rotulo"] = 1
        if self._hasManualText(feature):
            return feature
        if feature["situacao_em_poligono"] != 4 and feature["nome"] != NULL:
            feature["texto_edicao"] = self.abreviaNomeTrechoDrenagem(feature["nome"])

        return feature

    def defaultllpLocalidade(self, feature, lyrCrs):
        feature["justificativa_txt"] = 2
        feature["visivel"] = 1
        if self._hasManualText(feature):
            return feature
        feature["texto_edicao"] = feature["nome"]
        return feature

    def _clusterSilos(self, layer):
        """Agrupa silos (tipo=109) por proximidade espacial.
        Retorna dict {feature_id: texto} onde apenas um silo por cluster
        recebe rótulo ('Silo' se isolado, 'Silos' se agrupado).
        Os demais recebem None (rótulo suprimido).
        """
        # Distância de agrupamento: 15mm de carta, na unidade do CRS da
        # camada (em CRS geografico a versao antiga usava METROS como GRAUS —
        # todos os silos da folha viravam um unico cluster)
        clusterDist = self.scale * 0.015
        if layer.crs().isGeographic():
            d = QgsDistanceArea()
            d.setSourceCrs(
                QgsCoordinateReferenceSystem("EPSG:3857"),
                QgsCoordinateTransformContext(),
            )
            clusterDist = d.convertLengthMeasurement(
                clusterDist, Qgis.DistanceUnit.Degrees
            )

        silos = {}
        for feat in layer.getFeatures():
            if feat["tipo"] == 109:
                # Pular silos que já têm texto_edicao definido
                if "texto_edicao" in feat.fields().names() and feat["texto_edicao"] != NULL:
                    if isinstance(feat["texto_edicao"], str) and feat["texto_edicao"].strip() != "":
                        continue
                silos[feat.id()] = feat.geometry()

        if not silos:
            return {}

        # Union-Find
        parent = {fid: fid for fid in silos}

        def find(x):
            while parent[x] != x:
                parent[x] = parent[parent[x]]
                x = parent[x]
            return x

        def union(a, b):
            ra, rb = find(a), find(b)
            if ra != rb:
                parent[ra] = rb

        # Índice espacial para busca eficiente
        index = QgsSpatialIndex()
        for fid, geom in silos.items():
            f = layer.getFeature(fid)
            index.addFeature(f)

        # Agrupar silos próximos
        for fid, geom in silos.items():
            pt = geom.centroid().asPoint()
            searchRect = QgsRectangle(
                pt.x() - clusterDist, pt.y() - clusterDist,
                pt.x() + clusterDist, pt.y() + clusterDist,
            )
            candidates = index.intersects(searchRect)
            for cid in candidates:
                if cid != fid and cid in silos:
                    if geom.distance(silos[cid]) <= clusterDist:
                        union(fid, cid)

        # Montar clusters
        clusters = {}
        for fid in silos:
            root = find(fid)
            clusters.setdefault(root, []).append(fid)

        # Definir rótulos: um por cluster, no silo mais CENTRAL (medoide —
        # menor soma de distâncias aos demais; antes era arbitrário)
        result = {}
        for members in clusters.values():
            label = "Silo" if len(members) == 1 else "Silos"
            central = min(
                members,
                key=lambda fid: sum(
                    silos[fid].distance(silos[other])
                    for other in members
                    if other != fid
                ),
            )
            result[central] = label
            for fid in members:
                if fid != central:
                    result[fid] = None  # suprimir rótulo
        return result

    def defaultDeposito(self, feature, lyrCrs):
        feature["justificativa_txt"] = 1
        feature["visivel"] = 1
        feature["exibir_linha_rotulo"] = 2
        if self._hasManualText(feature):
            return feature
        if feature["tipo"] in [109]:
            fid = feature.id()
            if fid in self._siloLabelFeatureIds:
                label = self._siloLabelFeatureIds[fid]
                if label is not None:
                    feature["texto_edicao"] = label
                else:
                    feature["texto_edicao"] = NULL
                    feature["visivel"] = 2
            else:
                feature["texto_edicao"] = "Silo"
        elif feature["nome"] != NULL:
            feature["texto_edicao"] = feature["nome"]

        return feature

    def defaultEdificacao(self, feature, lyrCrs):
        feature["justificativa_txt"] = 1
        feature["visivel"] = 1
        feature["exibir_linha_rotulo"] = 2
        if "suprimir_bandeira" in [field.name() for field in feature.fields()]:
            feature["suprimir_bandeira"] = 2
        if self._hasManualText(feature):
            return feature
        if feature["nome"] != NULL:
            feature["texto_edicao"] = self.abreviaNomeEdif(
                feature["nome"], feature["tipo"]
            )

        return feature

    def defaultElementoViario(self, feature, lyrCrs):
        feature["justificativa_txt"] = 1
        feature["visivel"] = 1
        feature["exibir_lado_simbologia"] = 1
        feature["exibir_ponta_simbologia"] = 1
        if self._hasManualText(feature):
            return feature
        if feature["nome"] != NULL:
            feature["texto_edicao"] = feature["nome"]

        return feature

    def defaultOcupacaoSolo(self, feature, lyrCrs):
        feature["visivel"] = 1
        feature["justificativa_txt"] = 1
        if feature["nome"] != NULL:
            feature["texto_edicao"] = self.abreviaNomeOcupacaoSolo(feature["nome"])
        elif feature["tipo"] in (301, 302, 303, 304, 305, 306, 307, 398):
            tipo_ocupacao_map = {
                301: "Pista de atletismo",
                302: "Pista de ciclismo",
                303: "Pista de motociclismo",
                304: "Pista de automobilismo",
                305: "Pista de corrida de cavalos",
                306: "Pista de bicicross",
                307: "Pista de motocross",
                398: "Pista de competição",
            }
            feature["texto_edicao"] = tipo_ocupacao_map.get(feature["tipo"])

        return feature

    def abreviaNomeEdif(self, nome, tipo):
        abreviacoes = {
            302: {"estação de tratamento de água": "ETA"},
            303: {"estação de bombeamento de água": "EBA"},
            405: {
                "estação de tratamento de esgoto": "ETE",
                "tratamento de efluentes": "Trat Efluentes",
            },
            518: {
                "escola municipal de ensino fundamental": "EMEF",
                "escola estadual de ensino fundamental": "EEEF",
            },
            519: {
                "escola municipal de ensino médio": "EMEM",
                "escola estadual de ensino médio": "EEEM",
            },
            520: {"universidade": "Univ", "faculdade": "Fac"},
            521: {"universidade": "Univ", "faculdade": "Fac"},
            522: {"universidade": "Univ", "faculdade": "Fac"},
            601: {"paróquia": "Paroq"},
            712: {"monumento": "Mon"},
            810: {"biblioteca": "Bibl"},
            1098: {"fábrica": "Fab", "Indústria": "Ind"},
            1212: {
                "fazenda": "Faz",
                "chácara": "Chac",
                "Estância": "Esta",
                "nossa senhora": "N Sra",
            },
            1308: {"câmara municipal": "CM"},
            1316: {"secretaria municipal": "SM"},
            1322: {"prefeitura": "Pref"},
            2025: {"hospital": "Hosp", "nossa senhora": "N Sra"},
            2026: {"policlínica": "Pclin", "Maternidade": "Mater"},
            2027: {"unidade básica de pronto atendimento": "UPA"},
            2028: {
                "unidade básica de saúde": "UBS",
                "unidade básica da família": "UBF",
                "policlínica": "Pclin",
                "Posto de Saúde": "P Saúde",
            },
            3001: {"delegacia": "Del"},
            3004: {"polícia rodoviária federal": "PRF"},
            3005: {"polícia militar": "PM", "brigada militar": "BM"},
            3007: {"corpo de bombeiros militar": "CBM"},
            3008: {
                "corpo de bombeiros voluntário": "CBV",
                "corpo de bombeiro civil": "CBC",
            },
        }

        if tipo in abreviacoes:
            nome = self._abreviar(nome, abreviacoes[tipo])
        return nome

    def abreviaNomeTrechoDrenagem(self, nome):
        return self._abreviar(
            nome,
            {
                "córrego": "Corr",
                "igarapé": "Ig",
                "ribeirão": "Rib",
                "arroio": "Arr",
            },
        )

    def abreviaNomeOcupacaoSolo(self, nome):
        return self._abreviar(
            nome,
            {"cemitério": "Cem", "parque": "Pq", "nossa senhora": "N Sra"},
        )

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return ChangeAttributeTopo()

    def name(self):
        return "changeattributetopo"

    def displayName(self):
        return self.tr("Configura os Atributos de Edição de Carta Topográfica")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return help().helpUrl(self.name())
