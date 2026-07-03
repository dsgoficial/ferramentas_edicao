# -*- coding: utf-8 -*-
from qgis.core import (
    QgsFeature,
    QgsProcessing,
    QgsProcessingException,
    QgsProcessingMultiStepFeedback,
    QgsProcessingParameterVectorLayer,
)

from .baseSobreposition import BaseSobreposition


class SetSobrepositionOrtho(BaseSobreposition):
    INPUT_MOLDURA = "INPUT_MOLDURA"
    INPUT_LAYER_SOBREPOSITION_MIL = "INPUT_LAYER_SOBREPOSITION_MIL"
    INPUT_LAYER_SOBREPOSITION_IND = "INPUT_LAYER_SOBREPOSITION_IND"
    INPUT_LAYER_SOBREPOSITION_CON = "INPUT_LAYER_SOBREPOSITION_CON"
    INPUT_POLYGON_MIL = "INPUT_POLYGON_MIL"
    INPUT_POLYGON_IND = "INPUT_POLYGON_IND"
    INPUT_POLYGON_CON = "INPUT_POLYGON_CON"
    INPUT_LAYER_TO_CHECK_DRE = "INPUT_LAYER_TO_CHECK_DRE"
    INPUT_LAYER_TO_CHECK_VIA = "INPUT_LAYER_TO_CHECK_VIA"
    INPUT_LAYER_TO_CHECK_FER = "INPUT_LAYER_TO_CHECK_FER"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_MOLDURA,
                self.tr("Selecionar camada de edição de área pública militar linha"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="aux_moldura_a",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_SOBREPOSITION_MIL,
                self.tr("Selecionar camada de edição de área pública militar linha"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="edicao_area_pub_militar_l",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_SOBREPOSITION_IND,
                self.tr("Selecionar camada de edição terra indígena linha"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="edicao_terra_indigena_l",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_SOBREPOSITION_CON,
                self.tr("Selecionar camada de edição de unidade de conservação linha"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="edicao_unidade_conservacao_l",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_POLYGON_MIL,
                self.tr("Selecionar camada de area publica militar área"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="llp_area_pub_militar_a",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_POLYGON_IND,
                self.tr("Selecionar camada de terra indigena área"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="llp_terra_indigena_a",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_POLYGON_CON,
                self.tr("Selecionar camada de unidade de conservacao área"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="llp_unidade_conservacao_a",
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
        layer_moldura = self.parameterAsVectorLayer(
            parameters, self.INPUT_MOLDURA, context
        )
        layer_mil = self.parameterAsVectorLayer(
            parameters, self.INPUT_LAYER_SOBREPOSITION_MIL, context
        )
        layer_ind = self.parameterAsVectorLayer(
            parameters, self.INPUT_LAYER_SOBREPOSITION_IND, context
        )
        layer_con = self.parameterAsVectorLayer(
            parameters, self.INPUT_LAYER_SOBREPOSITION_CON, context
        )
        layers_sobreposition_list = [layer_mil, layer_ind, layer_con]
        layer_pol_mil = self.parameterAsVectorLayer(
            parameters, self.INPUT_POLYGON_MIL, context
        )
        layer_pol_ind = self.parameterAsVectorLayer(
            parameters, self.INPUT_POLYGON_IND, context
        )
        layer_pol_con = self.parameterAsVectorLayer(
            parameters, self.INPUT_POLYGON_CON, context
        )
        polygons_layers = [layer_pol_mil, layer_pol_ind, layer_pol_con]
        layer_dre = self.parameterAsVectorLayer(
            parameters, self.INPUT_LAYER_TO_CHECK_DRE, context
        )
        layer_via = self.parameterAsVectorLayer(
            parameters, self.INPUT_LAYER_TO_CHECK_VIA, context
        )
        layer_fer = self.parameterAsVectorLayer(
            parameters, self.INPUT_LAYER_TO_CHECK_FER, context
        )

        multiStepFeedback = QgsProcessingMultiStepFeedback(
            1 + len(polygons_layers), feedback
        )
        multiStepFeedback.setCurrentStep(0)
        multiStepFeedback.pushInfo(self.tr("Preparando referências"))
        merged = self.filterAndMergeLayers(
            layer_dre, layer_via, layer_fer, context, multiStepFeedback
        )
        self.runCreateSpatialIndex(merged, context, multiStepFeedback)

        layer_map_dict = {
            "llp_area_pub_militar_a": "edicao_area_pub_militar_l",
            "llp_terra_indigena_a": "edicao_terra_indigena_l",
            "llp_unidade_conservacao_a": "edicao_unidade_conservacao_l",
        }
        edit_layer_dict = {lyr.name(): lyr for lyr in layers_sobreposition_list}

        moldura_linha = self.prepareMolduraLine(
            layer_moldura, context, multiStepFeedback
        )

        for step, polygon_layer in enumerate(polygons_layers, start=1):
            if multiStepFeedback.isCanceled():
                return {}
            multiStepFeedback.setCurrentStep(step)
            multiStepFeedback.pushInfo(
                self.tr("Processando {0}").format(polygon_layer.name())
            )
            editName = layer_map_dict.get(polygon_layer.name())
            if editName is None or editName not in edit_layer_dict:
                raise QgsProcessingException(
                    self.tr(
                        "Sem correspondência entre a camada de polígonos '{0}' e "
                        "uma camada de edição (esperado: {1})."
                    ).format(polygon_layer.name(), layer_map_dict)
                )
            dissolved_polygon_layer = self.runDissolve(
                polygon_layer, context=context, feedback=multiStepFeedback
            )
            line_layer = self.runPolyToLine(
                dissolved_polygon_layer, context, multiStepFeedback
            )
            line_layer_diff = self.runDifference(
                line_layer, moldura_linha, context, multiStepFeedback
            )
            polygon_boundary_layer = edit_layer_dict[editName]

            intersect = self.runIntersect(
                line_layer_diff, merged, context, multiStepFeedback
            )
            difference = self.runDifference(
                line_layer_diff, merged, context, multiStepFeedback
            )
            newFeats = self.buildNewFeaturesFromLayer(
                polygon_boundary_layer, intersect, polygon_layer.name(), sobreposto=1
            )
            nSobrepostos = len(newFeats)
            newFeats += self.buildNewFeaturesFromLayer(
                polygon_boundary_layer, difference, polygon_layer.name(), sobreposto=2
            )
            # Reescreve a camada de edição (antes o processing so ADICIONAVA —
            # reexecutar duplicava todas as linhas)
            self.rewriteLayer(
                polygon_boundary_layer, newFeats, "Configurando sobreposição"
            )
            multiStepFeedback.pushInfo(
                self.tr(
                    "{0}: sobrepostos {1} | não sobrepostos {2}"
                ).format(editName, nSobrepostos, len(newFeats) - nSobrepostos)
            )

        return {}

    def buildNewFeaturesFromLayer(
        self, polygon_boundary_layer, layer, layer_name, sobreposto
    ):
        return [
            self.createNewFeat(
                polygon_boundary_layer, feature, layer_name, sobreposto=sobreposto
            )
            for feature in layer.getFeatures()
        ]

    def createNewFeat(self, polygon_boundary_layer, feature, layer_name, sobreposto=1):
        feat = QgsFeature(polygon_boundary_layer.fields())
        feat["sobreposto"] = sobreposto
        feat.setGeometry(feature.geometry())
        feat["geometria_aproximada"] = feature["geometria_aproximada"]
        feat["nome"] = feature["nome"]
        feat["exibir_rotulo_aproximado"] = 1
        feat["visivel"] = 1
        if layer_name == "llp_unidade_conservacao_a":
            feat["tipo"] = feature["tipo"]
        return feat

    def createInstance(self):
        return SetSobrepositionOrtho()

    def name(self):
        return "setsobrepositionortho"

    def displayName(self):
        return self.tr("Configura Sobreposição de Linhas Carta Orto")
