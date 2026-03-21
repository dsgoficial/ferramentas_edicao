# -*- coding: utf-8 -*-
from qgis.core import (
    QgsProcessing,
    QgsFeature,
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

        merged = self.filterAndMergeLayers(layer_dre, layer_via, layer_fer)

        moldura_merged = self.runDissolve(moldura)
        polygon_layer = self.runDissolve(polygon_layer)
        polygon_cliped = self.runClip(polygon_layer, moldura_merged)

        moldura_linha = self.runPolyToLine(moldura_merged)
        line_layer = self.runDifference(self.runPolyToLine(polygon_cliped), moldura_linha)

        layer.startEditing()
        layer.beginEditCommand("Iniciando edição.")
        intersect = self.runIntersect(line_layer, merged)
        difference = self.runDifference(line_layer, merged)

        layer.deleteFeatures([feat.id() for feat in layer.getFeatures()])
        self.populateLayerFromSobreposition(layer, intersect, sobreposto_value=1)
        self.populateLayerFromSobreposition(layer, difference, sobreposto_value=2)

        layer.endEditCommand()
        return {}

    def createInstance(self):
        return SetSobrepositionTopo()

    def name(self):
        return "setsobrepositiontopo"

    def displayName(self):
        return self.tr("Configura Sobreposição de Linhas Carta Topo")
