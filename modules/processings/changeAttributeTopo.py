from qgis.core import (
    QgsProcessing,
    QgsProcessingParameterMultipleLayers,
    QgsProcessingAlgorithm,
    QgsProcessingParameterEnum,
    NULL,
    QgsProcessingMultiStepFeedback,
    QgsVectorLayer,
)
from qgis.PyQt.QtCore import QCoreApplication
from .processingUtils import ProcessingUtils
import concurrent.futures
import os


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
                    self.tr("1:25.000"),
                    self.tr("1:50.000"),
                    self.tr("1:100.000"),
                    self.tr("1:250.000"),
                ],
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        layer_list = self.parameterAsLayerList(
            parameters, self.INPUT_LAYER_LIST, context
        )
        gridScaleParam = self.parameterAsInt(parameters, self.SCALE, context)

        if gridScaleParam == 0:
            self.scale = 25000
        elif gridScaleParam == 1:
            self.scale = 50000
        elif gridScaleParam == 2:
            self.scale = 100000
        elif gridScaleParam == 3:
            self.scale = 250000

        stepSize = 100 / (len(layer_list))
        multiStepFeedback = QgsProcessingMultiStepFeedback(2, feedback)
        multiStepFeedback.setCurrentStep(0)
        # multiStepFeedback.setProgressText("Submetendo tarefas para as threads")
        # futures = set()
        # pool = concurrent.futures.ThreadPoolExecutor(max_workers=os.cpu_count() - 1)

        for current, layer in enumerate(layer_list):
            if multiStepFeedback.isCanceled():
                return {}
            self.process_layer(layer)
            # futures.add(pool.submit(self.process_layer, layer))
            multiStepFeedback.setProgress(current * stepSize)

        multiStepFeedback.setCurrentStep(1)
        multiStepFeedback.setProgressText("Avaliando os resultados")
        # for current, future in enumerate(concurrent.futures.as_completed(futures)):
        #     if multiStepFeedback.isCanceled():
        #         return {}
        #     multiStepFeedback.setProgress(current * stepSize)

        return {}

    def process_layer(self, layer: QgsVectorLayer):

        table_name = layer.dataProvider().uri().table()

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
        elif table_name in ["elemnat_toponimo_fisiografico_natural_a"]:
            processing_function = self.defaultElemnatTopoFisioA
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
        elif table_name in ["edicao_limite_legal_l"]:
            processing_function = self.defaultEdicao
        elif table_name in ["elemnat_curva_nivel_l"]:
            processing_function = self.defaultCurvaNivel
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
        elif table_name in ["edicao_area_sem_dados_a"]:
            processing_function = self.defaultAreaSemDados
        elif table_name in ["elemnat_trecho_drenagem_l"]:
            processing_function = self.defaultTrechoDrenagem
        elif table_name in ["llp_localidade_p"]:
            processing_function = self.defaultllpLocalidade
        else:
            return

        layer.startEditing()
        layer.beginEditCommand("Atualizando atributos")
        lyrCrs = layer.dataProvider().crs()
        update_func = lambda x: layer.updateFeature(processing_function(x, lyrCrs))
        list(map(update_func, layer.getFeatures()))
        layer.endEditCommand()

    def defaultExtMineral(self, feature, lyrCrs):
        feature["justificativa_txt"] = 1
        if (
            "texto_edicao" in feature.fields().names()
            and feature["texto_edicao"] != NULL
        ):
            if not isinstance(feature["texto_edicao"], str):
                return feature
            if feature["texto_edicao"].strip() != "":
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
        if (
            "texto_edicao" in feature.fields().names()
            and feature["texto_edicao"] != NULL
        ):
            if not isinstance(feature["texto_edicao"], str):
                return feature
            if feature["texto_edicao"].strip() != "":
                return feature
        if feature["nome"] == "":
            if feature["tipo"] == 9:
                feature["texto_edicao"] = "Cachoreira"
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
        if (
            "texto_edicao" in feature.fields().names()
            and feature["texto_edicao"] != NULL
        ):
            if not isinstance(feature["texto_edicao"], str):
                return feature
            if feature["texto_edicao"].strip() != "":
                return feature
        if feature["nome"] == "":
            feature["texto_edicao"] = "Corredeira"
        else:
            feature["texto_edicao"] = feature["nome"]
        return feature

    def defaultIlhaP(self, feature, lyrCrs):
        feature["tamanho_txt"] = 7
        feature["justificativa_txt"] = 2
        feature["visivel"] = 1
        if (
            "texto_edicao" in feature.fields().names()
            and feature["texto_edicao"] != NULL
        ):
            if not isinstance(feature["texto_edicao"], str):
                return feature
            if feature["texto_edicao"].strip() != "":
                return feature
        feature["texto_edicao"] = feature["nome"]
        return feature

    def defaultIlhaA(self, feature, lyrCrs):
        feature["justificativa_txt"] = 2
        size = ProcessingUtils.getWaterPolyLabelFontSize(feature, self.scale, lyrCrs)
        if size>16:
            size=16 #na MTM o tamanho maximo da fonte é 16
        feature["tamanho_txt"] = size
        feature["visivel"] = 1
        if (
            "texto_edicao" in feature.fields().names()
            and feature["texto_edicao"] != NULL
        ):
            if not isinstance(feature["texto_edicao"], str):
                return feature
            if feature["texto_edicao"].strip() != "":
                return feature
        feature["texto_edicao"] = feature["nome"]
        return feature

    def defaultPtoCotado(self, feature, lyrCrs):
        feature["visivel"] = 1
        feature["ancora_vertical"] = 1
        feature["ancora_horizontal"] = 1
        feature["suprimir_simbologia"] = 1
        if (
            "texto_edicao" in feature.fields().names()
            and feature["texto_edicao"] != NULL
        ):
            if not isinstance(feature["texto_edicao"], str):
                return feature
            if feature["texto_edicao"].strip() != "":
                return feature
        return feature

    def defaultElemnatTopoFisioP(self, feature, lyrCrs):
        feature["justificativa_txt"] = 1
        if (
            "texto_edicao" in feature.fields().names()
            and feature["texto_edicao"] != NULL
        ):
            if not isinstance(feature["texto_edicao"], str):
                return feature
            if feature["texto_edicao"].strip() != "":
                return feature
        feature["texto_edicao"] = feature["nome"]
        return feature

    def defaultElemnatTopoFisioL(self, feature, lyrCrs):
        if (
            "texto_edicao" in feature.fields().names()
            and feature["texto_edicao"] != NULL
        ):
            if not isinstance(feature["texto_edicao"], str):
                return feature
            if feature["texto_edicao"].strip() != "":
                return feature
        feature["texto_edicao"] = feature["nome"]
        return feature

    def defaultElemnatTopoFisioA(self, feature, lyrCrs):
        size = ProcessingUtils.getEditPolyLabelFontSize(feature, self.scale, lyrCrs)
        feature["tamanho_txt"] = size
        if (
            "texto_edicao" in feature.fields().names()
            and feature["texto_edicao"] != NULL
        ):
            if not isinstance(feature["texto_edicao"], str):
                return feature
            if feature["texto_edicao"].strip() != "":
                return feature
        feature["texto_edicao"] = feature["nome"]
        return feature

    def defaultInfraElemEnergPA(self, feature, lyrCrs):
        feature["visivel"] = 1
        feature["justificativa_txt"] = 1
        if (
            "texto_edicao" in feature.fields().names()
            and feature["texto_edicao"] != NULL
        ):
            if not isinstance(feature["texto_edicao"], str):
                return feature
            if feature["texto_edicao"].strip() != "":
                return feature
        feature["texto_edicao"] = "Subestação"
        return feature

    def defaultInfraElemEnergL(self, feature, lyrCrs):
        feature["visivel"] = 1
        return feature

    def defaultInfraElemInfra(self, feature, lyrCrs):
        feature["justificativa_txt"] = 1
        return feature

    def defaultEdicao(self, feature, lyrCrs):
        feature["exibir_rotulo_aproximado"] = 1
        return feature

    def defaultCurvaNivel(self, feature, lyrCrs):
        feature["visivel"] = 1
        if (
            "texto_edicao" in feature.fields().names()
            and feature["texto_edicao"] != NULL
        ):
            if not isinstance(feature["texto_edicao"], str):
                return feature
            if feature["texto_edicao"].strip() != "":
                return feature
        if feature["cota"] == 0:
            feature["texto_edicao"] = "ZERO"
        elif feature["cota"] < 0:
            feature["texto_edicao"] = "MENOS " + feature["cota"]
        else:
            feature["texto_edicao"] = feature["cota"]
        return feature

    def defaultFerrovia(self, feature, lyrCrs):
        feature["visivel"] = 1
        return feature

    def defaultTravessiaHidroviaria(self, feature, lyrCrs):
        feature["visivel"] = 1
        feature["justificativa_txt"] = 1
        if (
            "texto_edicao" in feature.fields().names()
            and feature["texto_edicao"] != NULL
        ):
            if not isinstance(feature["texto_edicao"], str):
                return feature
            if feature["texto_edicao"].strip() != "":
                return feature
        if feature["tipo"] == 1:
            feature["texto_edicao"] = "Balsa"
        elif feature["tipo"] == 2:
            feature["texto_edicao"] = "Bote transportador"

        return feature

    def defaultDuto(self, feature, lyrCrs):
        feature["visivel"] = 1
        if (
            "texto_edicao" in feature.fields().names()
            and feature["texto_edicao"] != NULL
        ):
            if not isinstance(feature["texto_edicao"], str):
                return feature
            if feature["texto_edicao"].strip() != "":
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
        if (
            "texto_edicao" in feature.fields().names()
            and feature["texto_edicao"] != NULL
        ):
            if not isinstance(feature["texto_edicao"], str):
                return feature
            if feature["texto_edicao"].strip() != "":
                return feature
        feature["texto_edicao"] = feature["nome"]
        return feature

    def defaultMassaDagua(self, feature, lyrCrs):
        feature["justificativa_txt"] = 2
        size = ProcessingUtils.getWaterPolyLabelFontSize(feature, self.scale, lyrCrs)
        if size>16:
            size=16 # na MTM o tamanho maximo da fonte é 16
        feature["tamanho_txt"] = size
        if (
            "texto_edicao" in feature.fields().names()
            and feature["texto_edicao"] != NULL
        ):
            if not isinstance(feature["texto_edicao"], str):
                return feature
            if feature["texto_edicao"].strip() != "":
                return feature
        if feature["tipo"] in [3, 4, 5, 6, 7, 11]:
            feature["texto_edicao"] = feature["nome"]
        return feature

    def defaultPistaPouso(self, feature, lyrCrs):
        feature["justificativa_txt"] = 2
        feature["visivel"] = 1
        if (
            "texto_edicao" in feature.fields().names()
            and feature["texto_edicao"] != NULL
        ):
            if not isinstance(feature["texto_edicao"], str):
                return feature
            if feature["texto_edicao"].strip() != "":
                return feature
        if feature["tipo"] != 10:
            texto_edicao = []
            if feature["nome"] != NULL:
                texto_edicao.append(feature["nome"])
            if feature["situacao_fisica"] != 3:
                texto_edicao.append("(" + feature["situacao_fisica"].lower() + ")")

            if feature["revestimento"] == 1:
                texto_edicao.append("Revestimento natural")
            elif feature["revestimento"] == 2:
                texto_edicao.append("Revestimento primário")
            elif feature["revestimento"] in [0, 9999]:
                texto_edicao.append("Revestimento desconhecido")

            if feature["altitude"] != NULL:
                texto_edicao.append(round(feature["altitude"]))
            feature["texto_edicao"] = "|".join(map(str, texto_edicao))
        return feature

    def defaultllp(self, feature, lyrCrs):
        feature["justificativa_txt"] = 2
        size = ProcessingUtils.getEditPolyLabelFontSize(feature, self.scale, lyrCrs)
        feature["tamanho_txt"] = size
        if (
            "texto_edicao" in feature.fields().names()
            and feature["texto_edicao"] != NULL
        ):
            if not isinstance(feature["texto_edicao"], str):
                return feature
            if feature["texto_edicao"].strip() != "":
                return feature
        feature["texto_edicao"] = feature["nome"]
        return feature

    def defaultAreaSemDados(self, feature, lyrCrs):
        feature["justificativa_txt"] = 2
        size = ProcessingUtils.getEditPolyLabelFontSize(feature, self.scale, lyrCrs)
        feature["tamanho_txt"] = size
        if (
            "texto_edicao" in feature.fields().names()
            and feature["texto_edicao"] != NULL
        ):
            if not isinstance(feature["texto_edicao"], str):
                return feature
            if feature["texto_edicao"].strip() != "":
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
        if (
            "texto_edicao" in feature.fields().names()
            and feature["texto_edicao"] != NULL
        ):
            if not isinstance(feature["texto_edicao"], str):
                return feature
            if feature["texto_edicao"].strip() != "":
                return feature
        if feature["situacao_em_poligono"] != 4 and feature["nome"] != NULL:
                feature["texto_edicao"] = self.abreviaNomeTrechoDrenagem(feature["nome"])

        return feature

    def defaultllpLocalidade(self, feature, lyrCrs):
        feature["justificativa_txt"] = 2
        feature["visivel"] = 1
        if (
            "texto_edicao" in feature.fields().names()
            and feature["texto_edicao"] != NULL
        ):
            if not isinstance(feature["texto_edicao"], str):
                return feature
            if feature["texto_edicao"].strip() != "":
                return feature
        feature["texto_edicao"] = feature["nome"]
        return feature

    def defaultDeposito(self, feature, lyrCrs):
        feature["justificativa_txt"] = 2
        feature["visivel"] = 1
        feature["exibir_linha_rotulo"] = 2
        if (
            "texto_edicao" in feature.fields().names()
            and feature["texto_edicao"] != NULL
        ):
            if not isinstance(feature["texto_edicao"], str):
                return feature
            if feature["texto_edicao"].strip() != "":
                return feature
        if feature["tipo"] in [109]:
            feature["texto_edicao"] = "Silo"
        if feature["nome"] != NULL:
            feature["texto_edicao"] = feature["nome"]

        return feature

    def defaultEdificacao(self, feature, lyrCrs):
        feature["justificativa_txt"] = 2
        feature["visivel"] = 1
        feature["exibir_linha_rotulo"] = 2
        if "suprimir_bandeira" in [field.name() for field in feature.fields()]:
            feature["suprimir_bandeira"] = 2
        if (
            "texto_edicao" in feature.fields().names()
            and feature["texto_edicao"] != NULL
        ):
            if not isinstance(feature["texto_edicao"], str):
                return feature
            if feature["texto_edicao"].strip() != "":
                return feature
        if feature["nome"] != NULL:
            feature["texto_edicao"] = self.abreviaNomeEdif(feature["nome"], feature["tipo"])

        return feature

    def defaultElementoViario(self, feature, lyrCrs):
        feature["justificativa_txt"] = 2
        feature["visivel"] = 1
        feature["exibir_lado_simbologia"] = 1
        feature["exibir_ponta_simbologia"] = 1
        if (
            "texto_edicao" in feature.fields().names()
            and feature["texto_edicao"] != NULL
        ):
            if not isinstance(feature["texto_edicao"], str):
                return feature
            if feature["texto_edicao"].strip() != "":
                return feature
        if feature["nome"] != NULL:
            feature["texto_edicao"] = feature["nome"]

        return feature

    def abreviaNomeEdif(self, nome, tipo):
        abreviacoes = {
            302: {"estação de tratamento de água": "ETA"},
            303: {"estação de bombeamento de água": "EBA"},
            405: {"estação de tratamento de esgoto": "ETE"},
            518: {"escola municipal de ensino fundamental": "EMEF", "escola estadual de ensino fundamental": "EEEF"},
            519: {"escola municipal de ensino médio": "EMEM", "escola estadual de ensino médio": "EEEM"},
            520: {"universidade": "Univ", "faculdade": "Fac"},
            521: {"universidade": "Univ", "faculdade": "Fac"},
            522: {"universidade": "Univ", "faculdade": "Fac"},
            601: {"paróquia": "Paroq"},
            712: {"monumento": "Mon"},
            810: {"biblioteca": "Bibl"},
            1098: {"fábrica": "Fab", "Indústria": "Ind"},
            1212: {"fazenda": "Faz", "chácara": "Chac", "Estância": "Esta", "nossa senhora": "N Sra"},
            1308: {"câmara municipal": "CM"},
            1316: {"secretaria municipal": "SM"},
            1322: {"prefeitura": "Pref"},
            2025: {"hospital": "Hosp", "nossa senhora": "N Sra"},
            2026: {"policlínica": "Pclin", "Maternidade": "Mater"},
            2027: {"unidade básica de pronto atendimento": "UPA"},
            2028: {"unidade básica de saúde": "UBS", "unidade básica da família": "UBF", "policlínica": "Pclin", "Posto de Saúde": "P Saúde"},
            3001: {"delegacia": "Del"},
            3004: {"polícia rodoviária federal": "PRF"},
            3005: {"polícia militar": "PM", "brigada militar": "BM"},
            3007: {"corpo de bombeiros militar": "CBM"},
            3008: {"corpo de bombeiros voluntário": "CBV", "corpo de bombeiro civil": "CBC"}
        }

        nome_lower = nome.lower()

        if tipo in abreviacoes:
            for palavra, abreviacao in abreviacoes[tipo].items():
                nome = nome.replace(palavra, abreviacao, 1)
                if palavra in nome_lower:
                    start_index = nome_lower.index(palavra)
                    end_index = start_index + len(palavra)
                    nome = nome[:start_index] + abreviacao + nome[end_index:]
                    nome_lower = nome.lower()

        return nome

    def abreviaNomeTrechoDrenagem(self, nome):
        nome_lower = nome.lower()
        if "córrego" in nome_lower:
            nome_abreviado = nome.replace("Córrego", "Corr")
            return nome_abreviado
        if "igarapé" in nome_lower:
            nome_abreviado = nome.replace("Igarapé", "Ig")
            return nome_abreviado
        if "ribeirão" in nome_lower:
            nome_abreviado = nome.replace("Ribeirão", "Rib")
            return nome_abreviado
        if "arroio" in nome_lower:
            nome_abreviado = nome.replace("Arroio", "Arr")
            return nome_abreviado

        return nome

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
        return self.tr(
            "O algoritmo configura os atributos default de Carta Topográfica."
        )
