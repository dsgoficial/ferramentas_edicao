# -*- coding: utf-8 -*-
from qgis.core import (
    QgsProcessing,
    QgsProcessingMultiStepFeedback,
    QgsProcessingOutputNumber,
    QgsProcessingParameterVectorLayer,
)

from .baseSobreposition import BaseSobreposition


class SetSobrepositionLegalBoundary(BaseSobreposition):
    INPUT_MOLDURA = "INPUT_MOLDURA"
    INPUT_LAYER_SOBREPOSITION_LIM = "INPUT_LAYER_SOBREPOSITION_LIM"
    INPUT_LAYER_TO_CHECK_DRE = "INPUT_LAYER_TO_CHECK_DRE"
    INPUT_LAYER_TO_CHECK_VIA = "INPUT_LAYER_TO_CHECK_VIA"
    INPUT_LAYER_TO_CHECK_FER = "INPUT_LAYER_TO_CHECK_FER"
    SOBREPOSTOS = "SOBREPOSTOS"
    NAO_SOBREPOSTOS = "NAO_SOBREPOSTOS"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_MOLDURA,
                self.tr("Selecionar a camada de moldura"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="aux_moldura_a",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_SOBREPOSITION_LIM,
                self.tr(
                    "Selecionar camada de limite legal (transformada in-place)"
                ),
                [QgsProcessing.TypeVectorLine],
                defaultValue="llp_limite_legal_l",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_TO_CHECK_DRE,
                self.tr("Selecione a camada de trecho de drenagem."),
                [QgsProcessing.TypeVectorLine],
                defaultValue="elemnat_trecho_drenagem_l",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_TO_CHECK_VIA,
                self.tr("Selecione a camada de via de deslocamento."),
                [QgsProcessing.TypeVectorLine],
                defaultValue="infra_via_deslocamento_l",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_TO_CHECK_FER,
                self.tr("Selecione a camada de ferrovia."),
                [QgsProcessing.TypeVectorLine],
                defaultValue="infra_ferrovia_l",
            )
        )
        self.addOutput(
            QgsProcessingOutputNumber(
                self.SOBREPOSTOS, self.tr("Trechos sobrepostos (1)")
            )
        )
        self.addOutput(
            QgsProcessingOutputNumber(
                self.NAO_SOBREPOSTOS, self.tr("Trechos não sobrepostos (2)")
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        layer_moldura = self.parameterAsVectorLayer(
            parameters, self.INPUT_MOLDURA, context
        )
        layer_lim = self.parameterAsVectorLayer(
            parameters, self.INPUT_LAYER_SOBREPOSITION_LIM, context
        )
        layer_dre = self.parameterAsVectorLayer(
            parameters, self.INPUT_LAYER_TO_CHECK_DRE, context
        )
        layer_via = self.parameterAsVectorLayer(
            parameters, self.INPUT_LAYER_TO_CHECK_VIA, context
        )
        layer_fer = self.parameterAsVectorLayer(
            parameters, self.INPUT_LAYER_TO_CHECK_FER, context
        )

        multiStepFeedback = QgsProcessingMultiStepFeedback(4, feedback)
        multiStepFeedback.setCurrentStep(0)
        multiStepFeedback.pushInfo(self.tr("Preparando referências"))
        merged = self.filterAndMergeLayers(
            layer_dre, layer_via, layer_fer, context, multiStepFeedback
        )
        self.runCreateSpatialIndex(merged, context, multiStepFeedback)
        moldura_linha = self.prepareMolduraLine(
            layer_moldura, context, multiStepFeedback
        )

        multiStepFeedback.setCurrentStep(1)
        multiStepFeedback.pushInfo(self.tr("Removendo trechos na moldura"))
        line_layer_diff = self.runDifference(
            layer_lim, moldura_linha, context, multiStepFeedback
        )

        multiStepFeedback.setCurrentStep(2)
        multiStepFeedback.pushInfo(self.tr("Classificando sobreposição"))
        intersect = self.runIntersect(
            line_layer_diff, merged, context, multiStepFeedback
        )
        difference = self.runDifference(
            line_layer_diff, merged, context, multiStepFeedback
        )
        if multiStepFeedback.isCanceled():
            return {self.SOBREPOSTOS: 0, self.NAO_SOBREPOSTOS: 0}

        # As novas feições ficam prontas ANTES de apagar as antigas — um erro
        # no meio não deixa a camada de limite legal (fonte!) pela metade.
        newFeats = self.buildFeaturesFromSobreposition(
            layer_lim, intersect, sobreposto_value=1
        )
        nSobrepostos = len(newFeats)
        newFeats += self.buildFeaturesFromSobreposition(
            layer_lim, difference, sobreposto_value=2
        )

        multiStepFeedback.setCurrentStep(3)
        multiStepFeedback.pushInfo(self.tr("Gravando saída"))
        self.rewriteLayer(layer_lim, newFeats, "Configurando sobreposição")

        multiStepFeedback.pushInfo(
            self.tr("Trechos sobrepostos: {0} | não sobrepostos: {1}").format(
                nSobrepostos, len(newFeats) - nSobrepostos
            )
        )
        return {
            self.SOBREPOSTOS: nSobrepostos,
            self.NAO_SOBREPOSTOS: len(newFeats) - nSobrepostos,
        }

    def createInstance(self):
        return SetSobrepositionLegalBoundary()

    def name(self):
        return "setsobrepositionlegalboundary"

    def displayName(self):
        return self.tr("Configura Sobreposição de Limite Legal")
