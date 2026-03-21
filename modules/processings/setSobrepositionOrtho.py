# -*- coding: utf-8 -*-
from qgis.core import (
    QgsProcessing,
    QgsFeature,
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

        merged = self.filterAndMergeLayers(layer_dre, layer_via, layer_fer)
        self.runCreateSpatialIndex(merged)

        layer_map_dict = {
            "llp_area_pub_militar_a": "edicao_area_pub_militar_l",
            "llp_terra_indigena_a": "edicao_terra_indigena_l",
            "llp_unidade_conservacao_a": "edicao_unidade_conservacao_l",
        }
        edit_layer_dict = {lyr.name(): lyr for lyr in layers_sobreposition_list}

        moldura_linha = self.prepareMolduraLine(layer_moldura)

        for polygon_layer in polygons_layers:
            dissolved_polygon_layer = self.runDissolve(polygon_layer)
            line_layer = self.runPolyToLine(dissolved_polygon_layer)
            line_layer_diff = self.runDifference(line_layer, moldura_linha)
            polygon_boundary_layer = edit_layer_dict[
                layer_map_dict[polygon_layer.name()]
            ]
            polygon_boundary_layer.startEditing()
            polygon_boundary_layer.beginEditCommand("Iniciando edição.")

            intersect = self.runIntersect(line_layer_diff, merged)
            self.createNewFeaturesFromLayer(
                polygon_boundary_layer, intersect, polygon_layer.name(), sobreposto=1
            )
            difference = self.runDifference(line_layer_diff, merged)
            self.createNewFeaturesFromLayer(
                polygon_boundary_layer, difference, polygon_layer.name(), sobreposto=2
            )
            polygon_boundary_layer.endEditCommand()

        return {}

    def createNewFeaturesFromLayer(
        self, polygon_boundary_layer, layer, layer_name, sobreposto
    ):
        featList = [
            self.createNewFeat(
                polygon_boundary_layer, feature, layer_name, sobreposto=sobreposto
            )
            for feature in layer.getFeatures()
        ]
        polygon_boundary_layer.addFeatures(featList)

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
