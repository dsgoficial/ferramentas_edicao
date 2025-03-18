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

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help


class ChangeAttributeOrtho(QgsProcessingAlgorithm):

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
                defaultValue=2
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
        elif table_name in ["elemnat_elemento_hidrografico_a"]:
            processing_function = self.defaultElemnatElemHidA
        elif table_name in ["elemnat_ilha_p"]:
            processing_function = self.defaultIlhaP
        elif table_name in ["elemnat_ilha_a"]:
            processing_function = self.defaultIlhaA
        elif table_name in ["elemnat_ponto_cotado_p"]:
            processing_function = self.defaultPtoCotado
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
        elif table_name in ["elemnat_terreno_sujeito_inundacao_a"]:
            processing_function = self.defaultTSI
        elif table_name in ["llp_limite_legal_l"]:
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
        elif table_name in [
            "llp_area_pub_militar_a",
            "llp_terra_indigena_a",
            "llp_unidade_conservacao_a",
        ]:
            processing_function = self.defaultllp
        elif table_name in ["llp_area_sem_dados_a"]:
            processing_function = self.defaultAreaSemDados
        elif table_name in ["elemnat_trecho_drenagem_l"]:
            processing_function = self.defaultTrechoDrenagem
        elif table_name in [
            "llp_aglomerado_rural_p",
            "llp_localidade_p",
            "llp_nome_local_p",
        ]:
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
        feature["visivel"] = 1
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
            size=16 # na MTM o tamanho maximo da fonte é 16
        feature["tamanho_txt"] = size if size > 6 else 7
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
        return feature

    def defaultTSI(self, feature, lyrCrs):
        feature["visivel"] = 1
        return feature

    def defaultElemnatTopoFisioP(self, feature, lyrCrs):
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

    def defaultElemnatTopoFisioL(self, feature, lyrCrs):
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

    def defaultElemnatTopoFisioA(self, feature, lyrCrs):
        size = ProcessingUtils.getEditPolyLabelFontSize(feature, self.scale, lyrCrs)
        feature["tamanho_txt"] = size if size > 6 else 7
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
        feature["visivel"] = 1
        if (
            "texto_edicao" in feature.fields().names()
            and feature["texto_edicao"] != NULL
        ):
            if not isinstance(feature["texto_edicao"], str):
                return feature
            if feature["texto_edicao"].strip() != "":
                return feature
        feature["texto_edicao"] = "Atracadouro"
        return feature

    def defaultEdicao(self, feature, lyrCrs):
        feature["visivel"] = 1
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

    def defaultViaDesloc(self, feature, lyrCrs):
        feature["visivel"] = 1
        return feature

    def defaultMassaDagua(self, feature, lyrCrs):
        feature["justificativa_txt"] = 2
        feature["apresentar_simbologia"] = 2
        size = ProcessingUtils.getWaterPolyLabelFontSize(feature, self.scale, lyrCrs)
        if size>16:
            size=16 # na MTM o tamanho maximo da fonte é 16
        feature["tamanho_txt"] = size if size > 6 else 7
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
        situacao_fisica_map = {
            0: "Desconhecida",
            1: "Abandonada",
            2: "Destruída",
            3: "Construída",
            4: "Em construção"
        }

        feature["justificativa_txt"] = 2
        if feature["tipo"] != 10:
            feature["visivel"] = 1
            if (
                feature["texto_edicao"] != NULL
                and feature["texto_edicao"].strip() != ""
            ):
                return feature
            texto_edicao = []
            if feature["nome"] != NULL:
                texto_edicao.append(feature["nome"])
            if feature["situacao_fisica"] != 3:
                situacao = situacao_fisica_map.get(feature["situacao_fisica"], "Desconhecida")
                texto_edicao.append("(" + situacao.lower() + ")")

            if feature["revestimento"] == 1:
                texto_edicao.append("Revestimento natural")
            elif feature["revestimento"] == 2:
                texto_edicao.append("Revestimento primário")
            elif feature["revestimento"] in [0, 9999]:
                texto_edicao.append("Revestimento desconhecido")

            if feature["altitude"] != NULL:
                texto_edicao.append(round(feature["altitude"]))

            feature["texto_edicao"] = "|".join(map(str, texto_edicao))
        else:
            feature["visivel"] = 2
        return feature

    def defaultllp(self, feature, lyrCrs):
        feature["visivel"] = 1
        feature["justificativa_txt"] = 2
        size = ProcessingUtils.getEditPolyLabelFontSize(feature, self.scale, lyrCrs)
        feature["tamanho_txt"] = size if size > 6 else 7
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
        feature["tamanho_txt"] = size if size > 6 else 7
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
        if (
            "texto_edicao" in feature.fields().names()
            and feature["texto_edicao"] != NULL
        ):
            if not isinstance(feature["texto_edicao"], str):
                return feature
            if feature["texto_edicao"].strip() != "":
                return feature
        if feature["situacao_em_poligono"] != 4 or feature["situacao_em_poligono"] != 3:
            feature["texto_edicao"] = feature["nome"]
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

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return ChangeAttributeOrtho()

    def name(self):
        return "changeattributeortho"

    def displayName(self):
        return self.tr("Configura os Atributos de Edição de Carta Ortoimagem")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return  help().helpUrl(self.name())