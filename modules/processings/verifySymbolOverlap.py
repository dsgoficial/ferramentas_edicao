# -*- coding: utf-8 -*-

from typing import Set
import processing
from qgis.core import (
    QgsField,
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingMultiStepFeedback,
    QgsProcessingParameterVectorLayer,
    QgsGeometry,
    QgsFeature,
    QgsPointXY,
    QgsVectorLayer,
    QgsFeatureSink,
    QgsProcessingParameterEnum,
    QgsRenderContext,
    QgsFields,
    QgsProcessingParameterNumber,
    QgsProcessingParameterFeatureSink,
    QgsMarkerSymbol,
    QgsLineSymbol,
    QgsSvgMarkerSymbolLayer,
    QgsRectangle,
    QgsProperty,
    QgsSimpleMarkerSymbolLayer,
    QgsWkbTypes,
    QgsFontMarkerSymbolLayer,
    QgsMarkerLineSymbolLayer,
    QgsProcessingException,
    NULL,
)
from DsgTools.core.DSGToolsProcessingAlgs.algRunner import AlgRunner
from qgis.PyQt.QtCore import QCoreApplication, QVariant

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help


class VerifySymbolOverlap(QgsProcessingAlgorithm):

    INPUT_VIA = "INPUT_VIA"
    INPUT_EDIF_P = "INPUT_EDIF_P"
    INPUT_EDICAO_SIMB_AREA = "INPUT_EDICAO_SIMB_AREA"
    INPUT_MASSA_DAGUA = "INPUT_MASSA_DAGUA"
    INPUT_DEPOSITO_P = "INPUT_DEPOSITO_P"
    INPUT_EXT_MIN_P = "INPUT_EXT_MIN_P"
    INPUT_OCUP_SOLO_P = "INPUT_OCUP_SOLO_P"
    INPUT_IDENT_TRECHO_ROD = "INPUT_IDENT_TRECHO_ROD"
    INPUT_SIMB_TORRE_ENERGIA = "INPUT_SIMB_TORRE_ENERGIA"
    INPUT_SIMB_DIRECAO_CORRENTE = "INPUT_SIMB_DIRECAO_CORRENTE"
    INPUT_PONTO_COTADO = "INPUT_PONTO_COTADO"
    INPUT_ELEM_ENERGIA_P = "INPUT_ELEM_ENERGIA_P"
    INPUT_ELEM_INFRA_P = "INPUT_ELEM_INFRA_P"
    INPUT_PISTA_POUSO_P = "INPUT_PISTA_POUSO_P"
    INPUT_OCUP_SOLO_L = "INPUT_OCUP_SOLO_L"
    INPUT_PISTA_POUSO_L = "INPUT_PISTA_POUSO_L"
    INPUT_DEPOSITO_A = "INPUT_DEPOSITO_A"
    INPUT_EDIF_A = "INPUT_EDIF_A"
    INPUT_EXT_MIN_A = "INPUT_EXT_MIN_A"
    INPUT_OCUP_SOLO_A = "INPUT_OCUP_SOLO_A"
    INPUT_ELEM_ENERGIA_A = "INPUT_ELEM_ENERGIA_A"
    INPUT_ELEM_INFRA_A = "INPUT_ELEM_INFRA_A"
    INPUT_PISTA_POUSO_A = "INPUT_PISTA_POUSO_A"
    INPUT_ELEMENTO_VIARIO_L = "INPUT_ELEMENTO_VIARIO_L"
    INPUT_ELEMENTO_VIARIO_P = "INPUT_ELEMENTO_VIARIO_P"
    INPUT_TRECHO_DRENAGEM = "INPUT_TRECHO_DRENAGEM"
    INPUT_FERROVIA = "INPUT_FERROVIA"
    INPUT_ = "INPUT"
    FRAME_LAYER = "FRAME_LAYER"
    SCALE = "SCALE"
    OUTPUT = "OUTPUT"
    MIN_AREA = "MIN_AREA"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_VIA,
                self.tr("Selecionar camada de via de deslocamento"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="infra_via_deslocamento_l",
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_EDIF_P,
                self.tr("Selecionar camada de edificação ponto"),
                [QgsProcessing.TypeVectorPoint],
                defaultValue="constr_edificacao_p",
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_EDICAO_SIMB_AREA,
                self.tr("Selecionar camada de simbolo de área"),
                [QgsProcessing.TypeVectorPoint],
                defaultValue="edicao_simb_area_p",
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_MASSA_DAGUA,
                self.tr("Selecionar camada de massa d'água"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="cobter_massa_dagua_a",
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_DEPOSITO_P,
                self.tr("Selecionar camada de depósito ponto"),
                [QgsProcessing.TypeVectorPoint],
                defaultValue="constr_deposito_p",
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_EXT_MIN_P,
                self.tr("Selecionar camada de extração mineral ponto"),
                [QgsProcessing.TypeVectorPoint],
                defaultValue="constr_extracao_mineral_p",
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_OCUP_SOLO_P,
                self.tr("Selecionar camada de ocupação do solo ponto"),
                [QgsProcessing.TypeVectorPoint],
                defaultValue="constr_ocupacao_solo_p",
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_IDENT_TRECHO_ROD,
                self.tr("Selecionar camada de identificador de trecho rodoviário"),
                [QgsProcessing.TypeVectorPoint],
                defaultValue="edicao_identificador_trecho_rod_p",
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_SIMB_TORRE_ENERGIA,
                self.tr("Selecionar camada de simbolo de torre de energia"),
                [QgsProcessing.TypeVectorPoint],
                defaultValue="edicao_simb_torre_energia_p",
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_SIMB_DIRECAO_CORRENTE,
                self.tr("Selecionar camada de simbolo de direção de corrente"),
                [QgsProcessing.TypeVectorPoint],
                defaultValue="edicao_simb_direcao_corrente_p",
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_PONTO_COTADO,
                self.tr("Selecionar camada de ponto cotado"),
                [QgsProcessing.TypeVectorPoint],
                defaultValue="elemnat_ponto_cotado_p",
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_ELEM_ENERGIA_P,
                self.tr("Selecionar camada de elemento de energia ponto"),
                [QgsProcessing.TypeVectorPoint],
                defaultValue="infra_elemento_energia_p",
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_ELEM_INFRA_P,
                self.tr("Selecionar camada de elemento de infraestrutura ponto"),
                [QgsProcessing.TypeVectorPoint],
                defaultValue="infra_elemento_infraestrutura_p",
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_PISTA_POUSO_P,
                self.tr("Selecionar camada de pista de pouso ponto"),
                [QgsProcessing.TypeVectorPoint],
                defaultValue="infra_pista_pouso_p",
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_OCUP_SOLO_L,
                self.tr("Selecionar camada de ocupacao do solo linha"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="constr_ocupacao_solo_l",
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_PISTA_POUSO_L,
                self.tr("Selecionar camada de pista de pouso linha"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="infra_pista_pouso_l",
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_DEPOSITO_A,
                self.tr("Selecionar camada de depósito área"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="constr_deposito_a",
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_EDIF_A,
                self.tr("Selecionar camada de edificação área"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="constr_edificacao_a",
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_EXT_MIN_A,
                self.tr("Selecionar camada de extração mineral área"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="constr_extracao_mineral_a",
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_OCUP_SOLO_A,
                self.tr("Selecionar camada de ocupação do solo área"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="constr_ocupacao_solo_a",
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_ELEM_ENERGIA_A,
                self.tr("Selecionar camada de elemento de energia área"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="infra_elemento_energia_a",
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_ELEM_INFRA_A,
                self.tr("Selecionar camada de elemento de infraestrutura área"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="infra_elemento_infraestrutura_a",
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_PISTA_POUSO_A,
                self.tr("Selecionar camada de pista de pouso área"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="infra_pista_pouso_a",
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_ELEMENTO_VIARIO_L,
                self.tr("Selecionar camada de elemento viário linha"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="infra_elemento_viario_l",
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_ELEMENTO_VIARIO_P,
                self.tr("Selecionar camada de elemento viário ponto"),
                [QgsProcessing.TypeVectorPoint],
                defaultValue="infra_elemento_viario_p",
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_TRECHO_DRENAGEM,
                self.tr("Selecionar camada de trecho de drenagem"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="elemnat_trecho_drenagem_l",
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_FERROVIA,
                self.tr("Selecionar camada de ferrovia"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="infra_ferrovia_l",
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.FRAME_LAYER,
                self.tr("Selecionar camada de MOLDURA"),
                [QgsProcessing.TypeVectorPolygon],
                optional=True,
            )
        )
        self.scales = [
            "1:10.000",
            "1:25.000",
            "1:50.000",
            "1:100.000",
            "1:250.000",
        ]
        self.addParameter(
            QgsProcessingParameterEnum(
                self.SCALE,
                self.tr("Escala"),
                options=self.scales,
                defaultValue=0,
            )
        )
        self.addParameter(
            QgsProcessingParameterNumber(
                self.MIN_AREA,
                self.tr(
                    "Área mínima (interseções menores que isso não serão consideradas)"
                ),
                type=QgsProcessingParameterNumber.Double,
                defaultValue=40,
            )
        )
        self.addParameter(
            QgsProcessingParameterFeatureSink(
                self.OUTPUT, self.tr("Flags Sobreposição de Simbologia")
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        # Os estilos ja estão carregados
        # Banco de edição tem que ser UTM
        self.algRunner = AlgRunner()
        frameLyrPre = self.parameterAsVectorLayer(parameters, self.FRAME_LAYER, context)
        scaleIdx = self.parameterAsEnum(parameters, self.SCALE, context)
        min_area = self.parameterAsDouble(parameters, self.MIN_AREA, context)
        scaleDict = {
            "1:10.000": 10000,
            "1:25.000": 25000,
            "1:50.000": 50000,
            "1:100.000": 100000,
            "1:250.000": 250000,
        }
        scale = scaleDict[self.scales[scaleIdx]]
        multiStepFeedback = QgsProcessingMultiStepFeedback(3, feedback)
        multiStepFeedback.pushInfo(self.tr("Verificando as camadas."))
        multiStepFeedback.setCurrentStep(0)
        allLayers = []
        infra_via_deslocamento_l = self.parameterAsVectorLayer(
            parameters, self.INPUT_VIA, context
        )
        if infra_via_deslocamento_l is not None:
            allLayers.append(infra_via_deslocamento_l)
        constr_edificacao_p = self.parameterAsVectorLayer(
            parameters, self.INPUT_EDIF_P, context
        )
        if constr_edificacao_p is not None:
            allLayers.append(constr_edificacao_p)
        edicao_simb_area_p = self.parameterAsVectorLayer(
            parameters, self.INPUT_EDICAO_SIMB_AREA, context
        )
        if edicao_simb_area_p is not None:
            allLayers.append(edicao_simb_area_p)
        cobter_massa_dagua_a = self.parameterAsVectorLayer(
            parameters, self.INPUT_MASSA_DAGUA, context
        )
        if cobter_massa_dagua_a is not None:
            allLayers.append(cobter_massa_dagua_a)
        constr_deposito_p = self.parameterAsVectorLayer(
            parameters, self.INPUT_DEPOSITO_P, context
        )
        if constr_deposito_p is not None:
            allLayers.append(constr_deposito_p)
        constr_extracao_mineral_p = self.parameterAsVectorLayer(
            parameters, self.INPUT_EXT_MIN_P, context
        )
        if constr_extracao_mineral_p is not None:
            allLayers.append(constr_extracao_mineral_p)
        constr_ocupacao_solo_p = self.parameterAsVectorLayer(
            parameters, self.INPUT_OCUP_SOLO_P, context
        )
        if constr_ocupacao_solo_p is not None:
            allLayers.append(constr_ocupacao_solo_p)
        edicao_identificador_trecho_rod_p = self.parameterAsVectorLayer(
            parameters, self.INPUT_IDENT_TRECHO_ROD, context
        )
        if edicao_identificador_trecho_rod_p is not None:
            allLayers.append(edicao_identificador_trecho_rod_p)
        edicao_simb_torre_energia_p = self.parameterAsVectorLayer(
            parameters, self.INPUT_SIMB_TORRE_ENERGIA, context
        )
        if edicao_simb_torre_energia_p is not None:
            allLayers.append(edicao_simb_torre_energia_p)
        edicao_simb_direcao_corrente_p = self.parameterAsVectorLayer(
            parameters, self.INPUT_SIMB_DIRECAO_CORRENTE, context
        )
        if edicao_simb_direcao_corrente_p is not None:
            allLayers.append(edicao_simb_direcao_corrente_p)
        elemnat_ponto_cotado_p = self.parameterAsVectorLayer(
            parameters, self.INPUT_PONTO_COTADO, context
        )
        if elemnat_ponto_cotado_p is not None:
            allLayers.append(elemnat_ponto_cotado_p)
        infra_elemento_energia_p = self.parameterAsVectorLayer(
            parameters, self.INPUT_ELEM_ENERGIA_P, context
        )
        if infra_elemento_energia_p is not None:
            allLayers.append(infra_elemento_energia_p)
        infra_elemento_infraestrutura_p = self.parameterAsVectorLayer(
            parameters, self.INPUT_ELEM_INFRA_P, context
        )
        if infra_elemento_infraestrutura_p is not None:
            allLayers.append(infra_elemento_infraestrutura_p)
        infra_pista_pouso_p = self.parameterAsVectorLayer(
            parameters, self.INPUT_PISTA_POUSO_P, context
        )
        if infra_pista_pouso_p is not None:
            allLayers.append(infra_pista_pouso_p)
        constr_ocupacao_solo_l = self.parameterAsVectorLayer(
            parameters, self.INPUT_OCUP_SOLO_L, context
        )
        if constr_ocupacao_solo_l is not None:
            allLayers.append(constr_ocupacao_solo_l)
        infra_pista_pouso_l = self.parameterAsVectorLayer(
            parameters, self.INPUT_PISTA_POUSO_L, context
        )
        if infra_pista_pouso_l is not None:
            allLayers.append(infra_pista_pouso_l)
        constr_deposito_a = self.parameterAsVectorLayer(
            parameters, self.INPUT_DEPOSITO_A, context
        )
        if constr_deposito_a is not None:
            allLayers.append(constr_deposito_a)
        constr_edificacao_a = self.parameterAsVectorLayer(
            parameters, self.INPUT_EDIF_A, context
        )
        if constr_edificacao_a is not None:
            allLayers.append(constr_edificacao_a)
        constr_extracao_mineral_a = self.parameterAsVectorLayer(
            parameters, self.INPUT_EXT_MIN_A, context
        )
        if constr_extracao_mineral_a is not None:
            allLayers.append(constr_extracao_mineral_a)
        constr_ocupacao_solo_a = self.parameterAsVectorLayer(
            parameters, self.INPUT_OCUP_SOLO_A, context
        )
        if constr_ocupacao_solo_a is not None:
            allLayers.append(constr_ocupacao_solo_a)
        infra_elemento_energia_a = self.parameterAsVectorLayer(
            parameters, self.INPUT_ELEM_ENERGIA_A, context
        )
        if infra_elemento_energia_a is not None:
            allLayers.append(infra_elemento_energia_a)
        infra_elemento_infraestrutura_a = self.parameterAsVectorLayer(
            parameters, self.INPUT_ELEM_INFRA_A, context
        )
        if infra_elemento_infraestrutura_a is not None:
            allLayers.append(infra_elemento_infraestrutura_a)
        infra_pista_pouso_a = self.parameterAsVectorLayer(
            parameters, self.INPUT_PISTA_POUSO_A, context
        )
        if infra_pista_pouso_a is not None:
            allLayers.append(infra_pista_pouso_a)
        infra_elemento_viario_l = self.parameterAsVectorLayer(
            parameters, self.INPUT_ELEMENTO_VIARIO_L, context
        )
        if infra_elemento_viario_l is not None:
            allLayers.append(infra_elemento_viario_l)
        infra_elemento_viario_p = self.parameterAsVectorLayer(
            parameters, self.INPUT_ELEMENTO_VIARIO_P, context
        )
        if infra_elemento_viario_p is not None:
            allLayers.append(infra_elemento_viario_p)
        elemnat_trecho_drenagem_l = self.parameterAsVectorLayer(
            parameters, self.INPUT_TRECHO_DRENAGEM, context
        )
        if elemnat_trecho_drenagem_l is not None:
            allLayers.append(elemnat_trecho_drenagem_l)
        infra_ferrovia_l = self.parameterAsVectorLayer(
            parameters, self.INPUT_FERROVIA, context
        )
        if infra_ferrovia_l is not None:
            allLayers.append(infra_ferrovia_l)
        exceptions = [
            {infra_via_deslocamento_l, cobter_massa_dagua_a},
            {infra_via_deslocamento_l, infra_via_deslocamento_l},
            {infra_via_deslocamento_l, edicao_identificador_trecho_rod_p},
            {infra_via_deslocamento_l, edicao_simb_torre_energia_p},
            {infra_elemento_viario_l, infra_via_deslocamento_l},
            {infra_elemento_viario_l, cobter_massa_dagua_a},
            {infra_elemento_viario_l, infra_ferrovia_l},
            {infra_elemento_viario_l, elemnat_trecho_drenagem_l},
            {infra_elemento_viario_p, infra_via_deslocamento_l},
            {infra_elemento_viario_p, cobter_massa_dagua_a},
            {infra_elemento_viario_p, infra_ferrovia_l},
            {infra_elemento_viario_p, elemnat_trecho_drenagem_l},
            {elemnat_trecho_drenagem_l, infra_via_deslocamento_l},
            {elemnat_trecho_drenagem_l, cobter_massa_dagua_a},
            {elemnat_trecho_drenagem_l, infra_ferrovia_l},
            {elemnat_trecho_drenagem_l, edicao_simb_torre_energia_p},
            {elemnat_trecho_drenagem_l, elemnat_trecho_drenagem_l},
            {infra_ferrovia_l, infra_via_deslocamento_l},
            {infra_ferrovia_l, cobter_massa_dagua_a},
            {infra_ferrovia_l, edicao_simb_torre_energia_p},
            {infra_ferrovia_l, infra_ferrovia_l},
        ]
        layersSet = self.generateLayerSet(allLayers)
        verifyList = [layerSet for layerSet in layersSet if layerSet not in exceptions]
        if len(allLayers) == 0:
            return
        crs = allLayers[0].crs()
        if crs.isGeographic():
            raise QgsProcessingException(
                "Verificar sobreposição não pode ser feito em lat/long"
            )
        frameLyr = (
            self.algRunner.runDissolve(
                inputLyr=frameLyrPre,
                feedback=multiStepFeedback,
                context=context,
                is_child_algorithm=False,
            )
            if frameLyrPre
            else None
        )

        fields = QgsFields()
        fields.append(QgsField("id", QVariant.String))
        fields.append(QgsField("camada_1", QVariant.String))
        fields.append(QgsField("camada_2", QVariant.String))
        (feats_sink, feats_sink_id) = self.parameterAsSink(
            parameters,
            self.OUTPUT,
            context,
            fields,
            QgsWkbTypes.MultiPolygon,
            crs,
        )
        multiStepFeedback.setCurrentStep(1)
        multiStepFeedback.pushInfo(self.tr("Calculando as interseções."))
        featSet = self.calculateIntersections(
            verifyList, scale, fields, context, feedback=multiStepFeedback
        )
        multiStepFeedback.setCurrentStep(2)
        featSet = self.removeOutputFeatures(
            featSet, frameLyr, min_area, context, multiStepFeedback
        )
        list(
            map(
                lambda x: feats_sink.addFeature(x, QgsFeatureSink.FastInsert),
                featSet,
            )
        )

        return {self.OUTPUT: feats_sink_id}

    def generateLayerSet(self, lst):
        setList = []
        for i in range(len(lst)):
            for j in range(i, len(lst)):
                setList.append({lst[i], lst[j]})
        return setList

    def calculateIntersections(self, layersList, scale, fields, context, feedback=None):
        featSet = set()
        if feedback is not None:
            multiStepFeedback = QgsProcessingMultiStepFeedback(
                5 * len(layersList), feedback
            )
            multiStepFeedback.setCurrentStep(0)
        else:
            multiStepFeedback = None
        for step, layerSet in enumerate(layersList):
            layerList = list(layerSet)
            if len(layerList) == 1:
                a = b = layerList[0]
            else:
                a, b = layerList
            if feedback is not None and feedback.isCanceled():
                return
            if feedback is not None:
                multiStepFeedback.setCurrentStep(step * 5)
            layer_pre_a = self.prepareInputLayer(a, context, None)
            if feedback is not None:
                multiStepFeedback.setCurrentStep(step * 5 + 1)
            layer_a = self.polygonLayer(layer_pre_a, a, scale, context, feedback=None)
            if a == b:
                layer_pre_b = layer_pre_a
                layer_b = layer_a
            else:
                if feedback is not None:
                    multiStepFeedback.setCurrentStep(step * 5 + 2)
                layer_pre_b = self.prepareInputLayer(b, context, feedback=None)
                if feedback is not None:
                    multiStepFeedback.setCurrentStep(step * 5 + 3)
                layer_b = self.polygonLayer(
                    layer_pre_b, b, scale, context, feedback=multiStepFeedback
                )
            if feedback is not None:
                multiStepFeedback.setCurrentStep(step * 5 + 4)
            featSet_a_b = self.getIntersectionsFeats(
                layer_a,
                layer_pre_a,
                layer_b,
                layer_pre_b,
                fields,
                context,
                feedback=multiStepFeedback,
            )
            featSet = featSet.union(featSet_a_b)
        return featSet

    def prepareInputLayer(self, lyr, context, feedback=None) -> QgsVectorLayer:
        if feedback is not None:
            multiStepFeedback = QgsProcessingMultiStepFeedback(4, feedback)
            multiStepFeedback.setCurrentStep(0)
        else:
            multiStepFeedback = None
        lyr_name = self.algRunner.runCreateFieldWithExpression(
            inputLyr=lyr,
            expression="@layer_name",
            fieldType=2,
            fieldName="nome_camada",
            feedback=multiStepFeedback,
            context=context,
            is_child_algorithm=True,
        )
        if feedback is not None:
            multiStepFeedback.setCurrentStep(1)
        lyr_x = self.algRunner.runCreateFieldWithExpression(
            inputLyr=lyr_name,
            expression="$x",
            fieldType=0,
            fieldName="x",
            feedback=multiStepFeedback,
            context=context,
            is_child_algorithm=True,
        )
        if feedback is not None:
            multiStepFeedback.setCurrentStep(2)
        lyr_xy = self.algRunner.runCreateFieldWithExpression(
            inputLyr=lyr_x,
            expression="$y",
            fieldType=0,
            fieldName="y",
            feedback=multiStepFeedback,
            context=context,
            is_child_algorithm=False,
        )
        lyr_xy.startEditing()
        lyr_xy.dataProvider().addAttributes(
            [
                QgsField("height", QVariant.Double),
                QgsField("width", QVariant.Double),
                QgsField("offset_x", QVariant.Double),
                QgsField("offset_y", QVariant.Double),
            ]
        )
        lyr_xy.updateFields()
        lyr_xy.commitChanges()
        if feedback is not None:
            multiStepFeedback.setCurrentStep(3)
        layer = self.addIdField(lyr_xy.clone(), "new_id", context, multiStepFeedback)
        return layer

    def addIdField(
        self, layer: QgsVectorLayer, fieldName, context, feedback
    ) -> QgsVectorLayer:
        newLayer = self.algRunner.runCreateFieldWithExpression(
            inputLyr=layer,
            expression="$id",
            fieldType=0,
            fieldName=fieldName,
            feedback=feedback,
            context=context,
            is_child_algorithm=False,
        )
        return newLayer

    def polygonLayer(
        self,
        layer_pre: QgsVectorLayer,
        layer_orig: QgsVectorLayer,
        scale,
        context,
        feedback=None,
    ) -> QgsVectorLayer:
        if feedback is not None:
            multiStepFeedback = QgsProcessingMultiStepFeedback(4, feedback)
            multiStepFeedback.setCurrentStep(0)
        else:
            multiStepFeedback = None
        layer = self.removeInvisibleFeatures(layer_pre, context)
        layerGeomType = layer.geometryType()
        if feedback is not None:
            multiStepFeedback.setCurrentStep(1)
        if layerGeomType == QgsWkbTypes.PolygonGeometry:
            return layer
        if feedback is not None:
            multiStepFeedback.setCurrentStep(2)
        layer_buffered = self.getBufferedLayerWithAttributes(
            layer, layer_orig, scale, context, multiStepFeedback
        )
        if feedback is not None:
            multiStepFeedback.setCurrentStep(3)
        if layerGeomType == QgsWkbTypes.PointGeometry:
            self.updateGeometries(layer_buffered, multiStepFeedback)
        return layer_buffered

    def removeInvisibleFeatures(self, layer: QgsVectorLayer, context) -> QgsVectorLayer:
        if layer.fields().indexFromName("visivel") == -1:
            return layer
        newLayer = self.algRunner.runFilterExpression(layer, '"visivel" !=2', context)
        return newLayer

    def getBufferedLayerWithAttributes(
        self,
        layer: QgsVectorLayer,
        layer_orig: QgsVectorLayer,
        scale,
        context,
        feedback=None,
    ) -> QgsVectorLayer:
        id_field = "newidfield"
        layer_with_id_field = self.addIdField(layer.clone(), id_field, context, None)
        renderer = layer_orig.renderer().clone()
        renderContext = QgsRenderContext()
        renderer.startRender(renderContext, layer_with_id_field.fields())
        layer_with_id_field.startEditing()
        updateFeats = {}
        endCap = 0  # Round
        if feedback is not None:
            multiStepFeedback = QgsProcessingMultiStepFeedback(2, feedback)
            multiStepFeedback.setCurrentStep(0)
        else:
            multiStepFeedback = None
        if feedback is not None and layer_with_id_field.featureCount() != 0:
            progressStep = 100 / layer_with_id_field.featureCount()
        toDelete = set()
        for step, feat in enumerate(layer_with_id_field.getFeatures()):
            # Precisa refatorar: filtrar casos
            # exceção caixa d'água (constr_deposito_p, tipo = 202), removendo para não verificar
            if layer_orig.name() == "constr_deposito_p" and feat["tipo"] == 202:
                toDelete.add(feat[id_field])
            # torre de energia (infra_elemento_energia_p, tipo = 1401) não tem simbologia, removendo para não gerar polígono inválido (altura e largura sera 0)
            if layer_orig.name() == "infra_elemento_energia_p" and feat["tipo"] == 1401:
                toDelete.add(feat[id_field])
            # ponto cotado nao visivel (elemnat_ponto_cotado_p, suprimir_simbologia = 1) não tem simbologia (na verdade tem tamanho, mas é invisível), removendo para não verificar
            if layer_orig.name() == "elemnat_ponto_cotado_p":
                if (
                    "suprimir_simbologia"
                    in [field.name() for field in layer_orig.fields()]
                    and feat["suprimir_simbologia"] == 1
                ):
                    toDelete.add(feat[id_field])
            if feedback is not None and feedback.isCanceled():
                return
            if multiStepFeedback is not None:
                multiStepFeedback.setProgress(progressStep * step)
            symbolsFeat = renderer.symbolsForFeature(feat, renderContext)
            width_mm = 1e-13  # default, cannot be null (buffer)
            if len(symbolsFeat) == 0:
                newAttributes = {
                    feat.fieldNameIndex("width"): scale * (width_mm / 1000),
                    feat.fieldNameIndex("height"): 0,
                    feat.fieldNameIndex("offset_x"): 0,
                    feat.fieldNameIndex("offset_y"): 0,
                }
                updateFeats[feat.id()] = newAttributes
                continue
            symbolFeat = symbolsFeat[0]
            if isinstance(symbolFeat, QgsMarkerSymbol):
                height_mm = width_mm = symbolFeat.size(renderContext)
                for symbolLyr in symbolFeat.symbolLayers():
                    if isinstance(symbolLyr, QgsFontMarkerSymbolLayer):
                        if symbolFeat.symbolLayerCount() == 1:
                            toDelete.add(feat[id_field])
                        continue
                    if (
                        isinstance(symbolLyr, QgsSimpleMarkerSymbolLayer)
                        and symbolLyr.size() >= width_mm
                    ):
                        height_mm = width_mm = (
                            symbolLyr.size() + symbolLyr.strokeWidth()
                        )
                        offset_x_mm, offset_y_mm = self.calcOffset(symbolLyr)
                    elif (
                        isinstance(symbolLyr, QgsSvgMarkerSymbolLayer)
                        and symbolLyr.size() >= width_mm
                    ):
                        ratio = symbolLyr.defaultAspectRatio()
                        height_mm = width_mm * ratio
                        offset_x_mm, offset_y_mm = self.calcOffset(symbolLyr)
                    elif symbolLyr.size() >= width_mm:
                        offset_x_mm, offset_y_mm = self.calcOffset(symbolLyr)
                if not feat[id_field] in toDelete:
                    newAttributes = {
                        feat.fieldNameIndex("width"): scale * ((width_mm) / 1000),
                        feat.fieldNameIndex("height"): scale * ((height_mm) / 1000),
                        feat.fieldNameIndex("offset_x"): scale * (offset_x_mm / 1000),
                        feat.fieldNameIndex("offset_y"): scale * (offset_y_mm / 1000),
                    }
                    updateFeats[feat.id()] = newAttributes
            elif isinstance(symbolFeat, QgsLineSymbol):
                endCap = 1  # Flat
                for symbolLyr in symbolFeat.symbolLayers():
                    if feedback is not None and feedback.isCanceled():
                        return
                    if isinstance(symbolLyr, QgsMarkerLineSymbolLayer):
                        continue
                    offset = symbolLyr.offset()
                    strokeWidth = symbolLyr.width()
                    newWidth = abs(offset) + strokeWidth / 2
                    width_mm = 2 * newWidth if 2 * newWidth > width_mm else width_mm
                newAttributes = {
                    feat.fieldNameIndex("width"): scale * ((width_mm) / 1000)
                }
                updateFeats[feat.id()] = newAttributes
        if feedback is not None:
            multiStepFeedback.setCurrentStep(1)
        renderer.stopRender(renderContext)
        dp = layer_with_id_field.dataProvider()
        dp.changeAttributeValues(updateFeats)
        # if len(toDelete) != 0:
        #     dp.deleteFeatures(list(toDelete))
        layer_with_id_field.commitChanges(),
        filtro = (
            f'"{id_field}" not in ({",".join(map(str, toDelete))})'
            if len(toDelete) != 0
            else "true"
        )
        newLayer = self.algRunner.runFilterExpression(
            layer_with_id_field, filtro, context
        )
        layer_buffered = self.algRunner.runBuffer(
            inputLayer=newLayer,
            distance=QgsProperty.fromExpression('"width"/2'),
            context=context,
            endCapStyle=endCap,
            feedback=None,
        )
        return layer_buffered

    def calcOffset(self, symbolLyr):
        offset_geom = QgsGeometry()
        offset_geom = offset_geom.fromQPointF(symbolLyr.offset())
        offset = offset_geom.asPoint()
        offset_x_mm = offset.x()
        offset_y_mm = offset.y()
        return offset_x_mm, offset_y_mm

    def updateGeometries(self, layer: QgsVectorLayer, feedback=None):
        simbRotIndex = layer.fields().indexFromName("simb_rot")
        updateGeom = {}
        if feedback is not None:
            multiStepFeedback = QgsProcessingMultiStepFeedback(1, feedback)
            multiStepFeedback.setCurrentStep(0)
        if feedback is not None:
            progressStep = layer.featureCount()
        for step, feat in enumerate(layer.getFeatures()):
            if feedback is not None and feedback.isCanceled():
                return
            if feedback is not None:
                multiStepFeedback.setProgress(progressStep * step)
            x = feat["x"]
            width = feat["width"]
            offset_x = feat["offset_x"]
            y = feat["y"]
            height = feat["height"]
            offset_y = feat["offset_y"]
            rect = QgsRectangle(
                x - width / 2 + offset_x,
                y - height / 2 - offset_y,
                x + width / 2 + offset_x,
                y + height / 2 - offset_y,
            )
            newGeom = QgsGeometry()
            newGeom = newGeom.fromRect(rect)
            newGeom.convertToMultiType()
            if simbRotIndex != -1:
                simb_rot = feat["simb_rot"] if feat["simb_rot"] != NULL else 0
                pxy = QgsPointXY(x, y)
                newGeom.rotate(simb_rot, pxy)
            updateGeom[feat.id()] = newGeom
        layer.startEditing()
        dp = layer.dataProvider()
        dp.changeGeometryValues(updateGeom)
        layer.commitChanges()

    def getIntersectionsFeats(
        self,
        layer1: QgsVectorLayer,
        layer1_pre: QgsVectorLayer,
        layer2: QgsVectorLayer,
        layer2_pre: QgsVectorLayer,
        fields,
        context,
        frameLyr=None,
        feedback=None,
    ) -> Set[QgsFeature]:
        features = set()
        if feedback is not None:
            multiStepFeedback = QgsProcessingMultiStepFeedback(6, feedback)
            multiStepFeedback.setCurrentStep(0)
        else:
            multiStepFeedback = None
        newlayer1 = self.addIdField(layer1.clone(), "id_pol", context, None)
        if feedback is not None:
            multiStepFeedback.setCurrentStep(1)
        newlayer2 = self.addIdField(layer2.clone(), "id_pol", context, None)
        if feedback is not None:
            multiStepFeedback.setCurrentStep(2)
        self.algRunner.runCreateSpatialIndex(newlayer1, context, None)
        if feedback is not None:
            multiStepFeedback.setCurrentStep(3)
        self.algRunner.runCreateSpatialIndex(newlayer2, context, None)
        if feedback is not None:
            multiStepFeedback.setCurrentStep(4)
        interLayer = self.algRunner.runJoinAttributesByLocation(
            inputLyr=newlayer1, joinLyr=newlayer2, context=context
        )
        if feedback is not None:
            multiStepFeedback.setCurrentStep(5)
            nSteps = interLayer.featureCount()
            progressStep = 100 / nSteps if nSteps != 0 else 0
        alreadyVerify = []
        for step, feat in enumerate(interLayer.getFeatures()):
            if feedback is not None and feedback.isCanceled():
                return
            if {feat["id"], feat["id_2"]} in alreadyVerify:
                continue
            alreadyVerify.append({feat["id"], feat["id_2"]})
            if feat["id"] == feat["id_2"]:
                continue
            feat1_orig = layer1_pre.getFeature(feat["new_id"])
            feat2_orig = layer2_pre.getFeature(feat["new_id_2"])
            if feat1_orig.geometry().intersects(feat2_orig.geometry()):
                continue
            feat1 = layer1.getFeature(feat["id_pol"])
            feat2 = layer2.getFeature(feat["id_pol_2"])
            intersection = feat1.geometry().intersection(feat2.geometry())
            if intersection.isEmpty() or (
                not intersection.wkbType() == QgsWkbTypes.Polygon
                and not intersection.wkbType() == QgsWkbTypes.MultiPolygon
            ):
                continue
            if frameLyr is not None:
                if not self.geomInLayer(intersection, frameLyr, multiStepFeedback):
                    continue
            intersection.convertToMultiType()
            newFeat = QgsFeature(fields)
            newFeat.setGeometry(intersection)
            id1 = feat["id"] if feat["id"] is not None else "NULL"
            id2 = feat["id_2"] if feat["id_2"] is not None else "NULL"
            newFeat["id"] = id1 + "_" + id2
            newFeat["camada_1"] = feat1["nome_camada"]
            newFeat["camada_2"] = feat2["nome_camada"]
            features.add(newFeat)
            if feedback is not None:
                multiStepFeedback.setProgress(progressStep * step)
        return features

    def removeNullGeometries(
        self, inputLayer, context, feedback=None, outputLyr=None, removeEmpty=False
    ):
        outputLyr = "memory:" if outputLyr is None else outputLyr
        parameters = {
            "INPUT": inputLayer,
            "REMOVE_EMPTY": removeEmpty,
            "OUTPUT": outputLyr,
        }
        output = processing.run(
            "native:removenullgeometries",
            parameters,
            context=context,
            feedback=feedback,
        )
        return output["OUTPUT"]

    def geomInLayer(
        self, geom: QgsGeometry, lyr: QgsVectorLayer, feedback=None
    ) -> bool:
        for feat in lyr.getFeatures():
            if feedback is not None and feedback.isCanceled():
                return
            if geom.within(feat.geometry()):
                return True
        return False

    def removeOutputFeatures(
        self,
        feats: Set[QgsFeature],
        frameLyr: QgsVectorLayer,
        areaInput,
        context,
        feedback=None,
    ):
        featsToRemove = set()
        if feedback is not None:
            progressStep = 100 / len(feats)
        for step, feat in enumerate(feats):
            if feedback is not None and feedback.isCanceled():
                return
            if feedback is not None:
                feedback.setProgress(progressStep * step)
            geom = feat.geometry()
            if geom.area() < areaInput:
                featsToRemove.add(feat)
        featsToKeep = feats - featsToRemove
        if frameLyr is None:
            return featsToKeep
        dissolvedFrame = self.algRunner.runDissolve(frameLyr, context)
        for feat in dissolvedFrame.getFeatures():
            dissolved_geom = feat.geometry()
            break
        for feat in featsToKeep:
            feat_geom = feat.geometry()
            if not feat_geom.intersects(dissolved_geom):
                featsToKeep.remove(feat)
        return featsToKeep

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return VerifySymbolOverlap()

    def name(self):
        return "verifysymboloverlap"

    def displayName(self):
        return self.tr("Verifica Sobreposição de Símbolos")

    def group(self):
        return self.tr("Edicao")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return self.tr(
            "O algoritmo verifica se alguma simbologia sobrepõe outra dentre as camadas pre-definidas"
        )
