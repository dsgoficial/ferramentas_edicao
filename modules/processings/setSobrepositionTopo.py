# -*- coding: utf-8 -*-
from qgis.core import (
    QgsProcessing,
    QgsProcessingMultiStepFeedback,
    QgsProcessingOutputNumber,
    QgsProcessingParameterVectorLayer,
)

from .baseSobreposition import BaseSobreposition


class SetSobrepositionTopo(BaseSobreposition):
    INPUT_LAYER_SOBREPOSITION = "INPUT_LAYER_SOBREPOSITION"
    INPUT_POLYGON = "INPUT_POLYGONS"
    INPUT_MOLDURA = "INPUT_MOLDURA"
    INPUT_LAYER_TO_CHECK_DRE = "INPUT_LAYER_TO_CHECK_DRE"
    INPUT_LAYER_TO_CHECK_VIA = "INPUT_LAYER_TO_CHECK_VIA"
    INPUT_LAYER_TO_CHECK_FER = "INPUT_LAYER_TO_CHECK_FER"
    SOBREPOSTOS = "SOBREPOSTOS"
    NAO_SOBREPOSTOS = "NAO_SOBREPOSTOS"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_MOLDURA,
                self.tr("Selecionar camada de moldura"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="aux_moldura_a",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_SOBREPOSITION,
                self.tr("Selecionar camada de edição de limite especial linha"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="edicao_limite_especial_l",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_POLYGON,
                self.tr("Selecionar camada de limite especial área"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="llp_limite_especial_a",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_TO_CHECK_DRE,
                self.tr("Selecione a camada de trecho de drenagem linha."),
                [QgsProcessing.TypeVectorLine],
                defaultValue="elemnat_trecho_drenagem_l",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_TO_CHECK_VIA,
                self.tr("Selecione a a camada via deslocamento linha."),
                [QgsProcessing.TypeVectorLine],
                defaultValue="infra_via_deslocamento_l",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_TO_CHECK_FER,
                self.tr("Selecione a camada infra ferrovia linha."),
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
        layer = self.parameterAsVectorLayer(
            parameters, self.INPUT_LAYER_SOBREPOSITION, context
        )
        polygon_layer = self.parameterAsVectorLayer(
            parameters, self.INPUT_POLYGON, context
        )
        moldura = self.parameterAsVectorLayer(parameters, self.INPUT_MOLDURA, context)
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
        # moldura dissolvida TOTALMENTE: bordas internas entre folhas nao
        # devem apagar limites
        moldura_merged = self.runDissolve(
            moldura, fields=[], context=context, feedback=multiStepFeedback
        )
        moldura_linha = self.runPolyToLine(moldura_merged, context, multiStepFeedback)

        multiStepFeedback.setCurrentStep(1)
        multiStepFeedback.pushInfo(self.tr("Derivando contorno dos limites"))
        polygon_layer = self.runDissolve(
            polygon_layer, context=context, feedback=multiStepFeedback
        )
        polygon_cliped = self.runClip(
            polygon_layer, moldura_merged, context, multiStepFeedback
        )
        line_layer = self.runDifference(
            self.runPolyToLine(polygon_cliped, context, multiStepFeedback),
            moldura_linha,
            context,
            multiStepFeedback,
        )

        multiStepFeedback.setCurrentStep(2)
        multiStepFeedback.pushInfo(self.tr("Classificando sobreposição"))
        intersect = self.runIntersect(line_layer, merged, context, multiStepFeedback)
        difference = self.runDifference(line_layer, merged, context, multiStepFeedback)
        if multiStepFeedback.isCanceled():
            return {self.SOBREPOSTOS: 0, self.NAO_SOBREPOSTOS: 0}

        newFeats = self.buildFeaturesFromSobreposition(
            layer, intersect, sobreposto_value=1
        )
        nSobrepostos = len(newFeats)
        newFeats += self.buildFeaturesFromSobreposition(
            layer, difference, sobreposto_value=2
        )

        multiStepFeedback.setCurrentStep(3)
        multiStepFeedback.pushInfo(self.tr("Gravando saída"))
        self.rewriteLayer(layer, newFeats, "Configurando sobreposição")

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
        return SetSobrepositionTopo()

    def name(self):
        return "setsobrepositiontopo"

    def displayName(self):
        return self.tr("Configura Sobreposição de Linhas Carta Topo")
