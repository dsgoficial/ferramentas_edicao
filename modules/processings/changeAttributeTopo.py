from qgis.core import (
    QgsProcessing,
    QgsProcessingParameterMultipleLayers,
    QgsProcessingAlgorithm,
    QgsProcessingParameterEnum,
    NULL,
    QgsProcessingMultiStepFeedback,
)
from qgis.PyQt.QtCore import QCoreApplication
from .processingUtils import ProcessingUtils
import concurrent.futures
import os


class ChangeAttributeTopo(QgsProcessingAlgorithm):

    INPUT_LAYER_LIST = "INPUT_LAYER"
    OUTPUT = "OUTPUT"
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
        multiStepFeedback = QgsProcessingMultiStepFeedback(1, feedback)
        multiStepFeedback.setCurrentStep(0)
        multiStepFeedback.setProgressText("Submetendo tarefas para as threads")
        futures = set()
        pool = concurrent.futures.ThreadPoolExecutor(max_workers=os.cpu_count() - 1)

        for current, layer in enumerate(layer_list):
            if multiStepFeedback.isCanceled():
                return {self.OUTPUT: ""}
            futures.add(pool.submit(self.process_layer, layer))
            multiStepFeedback.setProgress(current * stepSize)

        return {self.OUTPUT: ""}

    def process_layer(self, layer):

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

        for feature in layer.getFeatures():
            updated_feature = processing_function(feature, lyrCrs)
            if updated_feature:
                layer.dataProvider().changeAttributeValues(updated_feature)

        layer.endEditCommand()

    def defaultExtMineral(self, feature, lyrCrs):
        new_att = {}
        new_att[feature.fieldNameIndex("justificativa_txt")] = 1
        if feature["tipo"] == 1:
            new_att[feature.fieldNameIndex("texto_edicao")] = "Poço"
        elif feature["tipo"] == 4:
            new_att[feature.fieldNameIndex("texto_edicao")] = "Pedreira"
        elif feature["tipo"] == 5:
            new_att[feature.fieldNameIndex("texto_edicao")] = "Garimpo"
        elif feature["tipo"] == 6:
            new_att[feature.fieldNameIndex("texto_edicao")] = "Salina"
        elif feature["tipo"] == 8:
            new_att[feature.fieldNameIndex("texto_edicao")] = "Petróleo"
        return {feature.id(): new_att}

    def defaultElemnatElemHidPL(self, feature, lyrCrs):
        new_att = {}
        new_att[feature.fieldNameIndex("justificativa_txt")] = 1
        if feature["nome"] == "":
            if feature["tipo"] == 9:
                new_att[feature.fieldNameIndex("texto_edicao")] = "Cachoreira"
            elif feature["tipo"] == 10:
                new_att[feature.fieldNameIndex("texto_edicao")] = "Salto"
            elif feature["tipo"] == 11:
                new_att[feature.fieldNameIndex("texto_edicao")] = "Catarata"
            elif feature["tipo"] == 12:
                new_att[feature.fieldNameIndex("texto_edicao")] = "Corredeira"
        else:
            new_att[feature.fieldNameIndex("texto_edicao")] = feature["nome"]
        return {feature.id(): new_att}

    def defaultElemnatElemHidA(self, feature, lyrCrs):
        new_att = {}
        new_att[feature.fieldNameIndex("justificativa_txt")] = 1
        if feature["nome"] == "":
            new_att[feature.fieldNameIndex("texto_edicao")] = "Corredeira"
        else:
            new_att[feature.fieldNameIndex("texto_edicao")] = feature["nome"]
        return {feature.id(): new_att}

    def defaultIlhaP(self, feature, lyrCrs):
        new_att = {}
        new_att[feature.fieldNameIndex("texto_edicao")] = feature["nome"]
        new_att[feature.fieldNameIndex("tamanho_txt")] = 7
        new_att[feature.fieldNameIndex("justificativa_txt")] = 2
        new_att[feature.fieldNameIndex("visivel")] = 1
        return {feature.id(): new_att}

    def defaultIlhaA(self, feature, lyrCrs):
        new_att = {}
        new_att[feature.fieldNameIndex("texto_edicao")] = feature["nome"]
        new_att[feature.fieldNameIndex("justificativa_txt")] = 2
        size = ProcessingUtils.getWaterPolyLabelFontSize(feature, self.scale, lyrCrs)
        new_att[feature.fieldNameIndex("tamanho_txt")] = size
        new_att[feature.fieldNameIndex("visivel")] = 1
        return {feature.id(): new_att}

    def defaultPtoCotado(self, feature, lyrCrs):
        new_att = {}
        new_att[feature.fieldNameIndex("visivel")] = 1
        new_att[feature.fieldNameIndex("ancora_vertical")] = 1
        new_att[feature.fieldNameIndex("ancora_horizontal")] = 1
        new_att[feature.fieldNameIndex("suprimir_simbologia")] = 1
        return {feature.id(): new_att}

    def defaultElemnatTopoFisioP(self, feature, lyrCrs):
        new_att = {}
        new_att[feature.fieldNameIndex("texto_edicao")] = feature["nome"]
        new_att[feature.fieldNameIndex("justificativa_txt")] = 1
        return {feature.id(): new_att}

    def defaultElemnatTopoFisioL(self, feature, lyrCrs):
        new_att = {}
        new_att[feature.fieldNameIndex("texto_edicao")] = feature["nome"]
        return {feature.id(): new_att}

    def defaultElemnatTopoFisioA(self, feature, lyrCrs):
        new_att = {}
        new_att[feature.fieldNameIndex("texto_edicao")] = feature["nome"]
        size = ProcessingUtils.getEditPolyLabelFontSize(feature, self.scale, lyrCrs)
        new_att[feature.fieldNameIndex("tamanho_txt")] = size
        return {feature.id(): new_att}

    def defaultInfraElemEnergPA(self, feature, lyrCrs):
        new_att = {}
        new_att[feature.fieldNameIndex("visivel")] = 1
        new_att[feature.fieldNameIndex("justificativa_txt")] = 1
        new_att[feature.fieldNameIndex("texto_edicao")] = "Subestação"
        return {feature.id(): new_att}

    def defaultInfraElemEnergL(self, feature, lyrCrs):
        new_att = {}
        new_att[feature.fieldNameIndex("visivel")] = 1
        return {feature.id(): new_att}

    def defaultInfraElemInfra(self, feature, lyrCrs):
        new_att = {}
        new_att[feature.fieldNameIndex("texto_edicao")] = "Atracadouro"
        new_att[feature.fieldNameIndex("justificativa_txt")] = 1
        return {feature.id(): new_att}

    def defaultEdicao(self, feature, lyrCrs):
        new_att = {}
        new_att[feature.fieldNameIndex("exibir_rotulo_aproximado")] = 1
        return {feature.id(): new_att}

    def defaultCurvaNivel(self, feature, lyrCrs):
        new_att = {}
        new_att[feature.fieldNameIndex("visivel")] = 1
        if feature["cota"] == 0:
            new_att[feature.fieldNameIndex("texto_edicao")] = "ZERO"
        elif feature["cota"] < 0:
            new_att[feature.fieldNameIndex("texto_edicao")] = "MENOS " + feature["cota"]
        else:
            new_att[feature.fieldNameIndex("texto_edicao")] = feature["cota"]
        return {feature.id(): new_att}

    def defaultFerrovia(self, feature, lyrCrs):
        new_att = {}
        new_att[feature.fieldNameIndex("visivel")] = 1
        return {feature.id(): new_att}

    def defaultTravessiaHidroviaria(self, feature, lyrCrs):
        new_att = {}
        new_att[feature.fieldNameIndex("visivel")] = 1
        new_att[feature.fieldNameIndex("justificativa_txt")] = 1
        if feature["tipo"] == 1:
            new_att[feature.fieldNameIndex("texto_edicao")] = "Balsa"
        elif feature["tipo"] == 2:
            new_att[feature.fieldNameIndex("texto_edicao")] = "Bote transportador"

        return {feature.id(): new_att}

    def defaultDuto(self, feature, lyrCrs):
        new_att = {}
        new_att[feature.fieldNameIndex("visivel")] = 1
        return {feature.id(): new_att}

    def defaultVala(self, feature, lyrCrs):
        new_att = {}
        new_att[feature.fieldNameIndex("visivel")] = 1
        return {feature.id(): new_att}

    def defaultViaDesloc(self, feature, lyrCrs):
        new_att = {}
        new_att[feature.fieldNameIndex("visivel")] = 1
        return {feature.id(): new_att}

    def defaultAreaUsoEspecifico(self, feature, lyrCrs):
        new_att = {}
        new_att[feature.fieldNameIndex("visivel")] = 1
        new_att[feature.fieldNameIndex("texto_edicao")] = feature["nome"]
        new_att[feature.fieldNameIndex("justificativa_txt")] = 1
        return {feature.id(): new_att}

    def defaultMassaDagua(self, feature, lyrCrs):
        new_att = {}
        new_att[feature.fieldNameIndex("justificativa_txt")] = 2
        new_att[feature.fieldNameIndex("apresentar_simbologia")] = 2
        if feature["tipo"] in [3, 4, 5, 6, 7, 11]:
            new_att[feature.fieldNameIndex("texto_edicao")] = feature["nome"]
        size = ProcessingUtils.getWaterPolyLabelFontSize(feature, self.scale, lyrCrs)
        new_att[feature.fieldNameIndex("tamanho_txt")] = size
        return {feature.id(): new_att}

    def defaultPistaPouso(self, feature, lyrCrs):
        new_att = {}
        new_att[feature.fieldNameIndex("justificativa_txt")] = 2
        new_att[feature.fieldNameIndex("visivel")] = 1
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
            new_att[feature.fieldNameIndex("texto_edicao")] = "|".join(
                map(str, texto_edicao)
            )
        return {feature.id(): new_att}

    def defaultllp(self, feature, lyrCrs):
        new_att = {}
        new_att[feature.fieldNameIndex("justificativa_txt")] = 2
        new_att[feature.fieldNameIndex("texto_edicao")] = feature["nome"]
        size = ProcessingUtils.getEditPolyLabelFontSize(feature, self.scale, lyrCrs)
        new_att[feature.fieldNameIndex("tamanho_txt")] = size
        return {feature.id(): new_att}

    def defaultAreaSemDados(self, feature, lyrCrs):
        new_att = {}
        new_att[feature.fieldNameIndex("justificativa_txt")] = 2
        new_att[feature.fieldNameIndex("texto_edicao")] = "DADOS INCOMPLETOS"
        size = ProcessingUtils.getEditPolyLabelFontSize(feature, self.scale, lyrCrs)
        new_att[feature.fieldNameIndex("tamanho_txt")] = size
        return {feature.id(): new_att}

    def defaultTrechoDrenagem(self, feature, lyrCrs):
        new_att = {}
        new_att[feature.fieldNameIndex("visivel")] = 1
        if feature["situacao_em_poligono"] != 4:
            new_att[feature.fieldNameIndex("texto_edicao")] = feature["nome"]

        if feature["situacao_em_poligono"] in [2, 3]:
            new_att[feature.fieldNameIndex("posicao_rotulo")] = 1
        elif feature["situacao_em_poligono"] in [1]:
            new_att[feature.fieldNameIndex("posicao_rotulo")] = 2
        else:
            new_att[feature.fieldNameIndex("posicao_rotulo")] = 1

        return {feature.id(): new_att}

    def defaultllpLocalidade(self, feature, lyrCrs):
        new_att = {}
        new_att[feature.fieldNameIndex("justificativa_txt")] = 2
        new_att[feature.fieldNameIndex("visivel")] = 1
        new_att[feature.fieldNameIndex("texto_edicao")] = feature["nome"]
        return {feature.id(): new_att}

    def defaultDeposito(self, feature, lyrCrs):
        new_att = {}
        new_att[feature.fieldNameIndex("justificativa_txt")] = 2
        new_att[feature.fieldNameIndex("visivel")] = 1
        new_att[feature.fieldNameIndex("exibir_linha_rotulo")] = 2
        if feature["tipo"] in [109]:
            new_att[feature.fieldNameIndex("texto_edicao")] = 'Silo'
        if feature["nome"] != NULL:
            new_att[feature.fieldNameIndex("texto_edicao")] = feature["nome"]
        
        return {feature.id(): new_att}

    def defaultEdificacao(self, feature, lyrCrs):
        new_att = {}
        new_att[feature.fieldNameIndex("justificativa_txt")] = 2
        new_att[feature.fieldNameIndex("visivel")] = 1
        new_att[feature.fieldNameIndex("exibir_linha_rotulo")] = 2
        new_att[feature.fieldNameIndex("suprimir_bandeira")] = 2
        if feature["nome"] != NULL:
            new_att[feature.fieldNameIndex("texto_edicao")] = feature["nome"]
        
        return {feature.id(): new_att}

    def defaultElementoViario(self, feature, lyrCrs):
        new_att = {}
        new_att[feature.fieldNameIndex("justificativa_txt")] = 2
        new_att[feature.fieldNameIndex("visivel")] = 1
        new_att[feature.fieldNameIndex("exibir_lado_simbologia")] = 1
        new_att[feature.fieldNameIndex("exibir_ponta_simbologia")] = 1
        if feature["nome"] != NULL:
            new_att[feature.fieldNameIndex("texto_edicao")] = feature["nome"]
        
        return {feature.id(): new_att}

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
