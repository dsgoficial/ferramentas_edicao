# -*- coding: utf-8 -*-
from qgis.core import (
    QgsProcessing,
    QgsProcessingParameterVectorLayer,
)

from .baseSobreposition import BaseSobreposition


class SetSobrepositionLegalBoundary(BaseSobreposition):
    INPUT_MOLDURA = "INPUT_MOLDURA"
    INPUT_LAYER_SOBREPOSITION_LIM = "INPUT_LAYER_SOBREPOSITION_LIM"
    INPUT_LAYER_TO_CHECK_DRE = "INPUT_LAYER_TO_CHECK_DRE"
    INPUT_LAYER_TO_CHECK_VIA = "INPUT_LAYER_TO_CHECK_VIA"
    INPUT_LAYER_TO_CHECK_FER = "INPUT_LAYER_TO_CHECK_FER"

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
                self.tr("Selecionar de edicao_limite_legal"),
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

        merged = self.filterAndMergeLayers(layer_dre, layer_via, layer_fer)
        self.runCreateSpatialIndex(merged)

        moldura_linha = self.prepareMolduraLine(layer_moldura)

        line_layer_diff = self.runDifference(layer_lim, moldura_linha)
        layer_lim.startEditing()
        layer_lim.beginEditCommand("Iniciando edição.")

        intersect = self.runIntersect(line_layer_diff, merged)
        difference = self.runDifference(line_layer_diff, merged)

        layer_lim.deleteFeatures([feat.id() for feat in layer_lim.getFeatures()])
        self.populateLayerFromSobreposition(layer_lim, intersect, sobreposto_value=1)
        self.populateLayerFromSobreposition(layer_lim, difference, sobreposto_value=2)

        layer_lim.endEditCommand()
        return {}

    def createInstance(self):
        return SetSobrepositionLegalBoundary()

    def name(self):
        return "setsobrepositionlegalboundary"

    def displayName(self):
        return self.tr("Configura Sobreposição de Limite Legal")
