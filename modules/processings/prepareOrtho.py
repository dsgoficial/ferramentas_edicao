import math
import os

from qgis import processing
from qgis.core import (
    QgsCoordinateReferenceSystem,
    QgsField,
    QgsCoordinateTransformContext,
    QgsDistanceArea,
    QgsFeature,
    QgsFeatureRequest,
    QgsGeometry,
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProperty,
    QgsProcessingParameterMultipleLayers,
    QgsProcessingParameterVectorLayer,
    NULL,
    QgsUnitTypes,
    QgsProcessingParameterEnum,
    QgsProcessingParameterFeatureSink,
    QgsFeatureSink,
    QgsVectorLayer,
)
from qgis.PyQt.QtCore import QCoreApplication, QVariant

from .processingUtils import ProcessingUtils


class PrepareOrtho(QgsProcessingAlgorithm):

    INPUT_LAYERS = "INPUT_LAYERS"
    INPUT_FRAME = "INPUT_FRAME"
    SCALE = "SCALE"
    OUTPUT = "OUTPUT"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterMultipleLayers(
                self.INPUT_LAYERS,
                self.tr("Selecionar camadas:"),
                QgsProcessing.TypeVectorAnyGeometry,
            )
        )

        self.addParameter(
            QgsProcessingParameterEnum(
                self.SCALE,
                self.tr("Selecione a escala de edição:"),
                options=[
                    self.tr("1:25.000"),
                    self.tr("1:50.000"),
                    self.tr("1:100.000"),
                    self.tr("1:250.000"),
                ],
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_FRAME,
                self.tr("Selecionar camada de moldura"),
                [QgsProcessing.TypeVectorPolygon],
                optional=False,
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        layers = self.parameterAsLayerList(parameters, self.INPUT_LAYERS, context)
        gridScaleParam = self.parameterAsInt(parameters, self.SCALE, context)
        frameLayer = self.parameterAsVectorLayer(parameters, self.INPUT_FRAME, context)

        ptoCotado = [
            x
            for x in layers
            if x.dataProvider().uri().table() == "elemnat_ponto_cotado_p"
        ][0]
        self.highestSpot(ptoCotado, frameLayer)
        
        self.attrDefault(layers, gridScaleParam)
        
        lyrDict = {
            layer.dataProvider().uri().table(): layer for layer in layers
        }

        drenagem = lyrDict["elemnat_trecho_drenagem_l"]
        edicao_mil = lyrDict["edicao_area_pub_militar_l"]
        edicao_ind = lyrDict["edicao_terra_indigena_l"]
        edicao_con = lyrDict["edicao_unidade_conservacao_l"]
        pol_mil = lyrDict["llp_area_pub_militar_a"]
        pol_ind = lyrDict["llp_terra_indigena_a"]
        pol_con = lyrDict["llp_unidade_conservacao_a"]
        via_deslocamento = lyrDict["infra_via_deslocamento_l"]
        ferrovia = lyrDict["infra_ferrovia_l"]

        self.setSobreposition(frameLayer, edicao_mil, edicao_ind, edicao_con, pol_mil, pol_ind, pol_con, drenagem, via_deslocamento, ferrovia)

        self.sizeRiverLabel(drenagem, frameLayer, gridScaleParam, 0)

        energia = [
            x
            for x in layers
            if x.dataProvider().uri().table() == "infra_elemento_energia_l"
        ][0]
        energiaSymbol = [
            x
            for x in layers
            if x.dataProvider().uri().table() == "edicao_simb_torre_energia_p"
        ][0]

        self.energySymbol(energia, energiaSymbol, frameLayer, gridScaleParam)

        rodovia = [
            x
            for x in layers
            if x.dataProvider().uri().table() == "infra_via_deslocamento_l"
        ][0]
        rodoviaSymbol = [
            x
            for x in layers
            if x.dataProvider().uri().table() == "edicao_identificador_trecho_rod_p"
        ][0]

        self.idtRodSymbol(rodovia, rodoviaSymbol, frameLayer, gridScaleParam)

        return {self.OUTPUT: ""}

    def attrDefault(self, layers, scale):
        processing.run(
            "ferramentasedicao:changeattributeortho",
            {"INPUT_LAYER": layers, "SCALE": scale},
        )

    def idtRodSymbol(self, road, simbol, frame, scale):
        processing.run(
            "ferramentasedicao:insertroadmarker",
            {"ROAD": road, "MARKER": simbol, "INPUT_FRAME": frame, "SCALE": scale},
        )

    def energySymbol(self, energy, simbol, frame, scale):
        processing.run(
            "ferramentasedicao:insertEnergyTower",
            {
                "INPUT_ENERGY": energy,
                "INPUT_TOWER": simbol,
                "INPUT_FRAME": frame,
                "SCALE": scale,
            },
        )

    def setSobreposition(self, moldura, edicao_mil, edicao_ind, edicao_con, pol_mil, pol_ind, pol_con, drenagem, via_deslocamento, ferrovia):
        processing.run(
            "ferramentasedicao:setsobrepositionortho",
            {
                "INPUT_MOLDURA": moldura,
                "INPUT_LAYER_SOBREPOSITION_MIL": edicao_mil,
                "INPUT_LAYER_SOBREPOSITION_IND": edicao_ind,
                "INPUT_LAYER_SOBREPOSITION_CON": edicao_con,
                "INPUT_POLYGON_MIL": pol_mil,
                "INPUT_POLYGON_IND": pol_ind,
                "INPUT_POLYGON_CON": pol_con,
                "INPUT_LAYER_TO_CHECK_DRE": drenagem,
                "INPUT_LAYER_TO_CHECK_VIA": via_deslocamento,
                "INPUT_LAYER_TO_CHECK_FER": ferrovia,
            },
        )

    def sizeRiverLabel(self, layers, frame, scale, productType):
        processing.run(
            "ferramentasedicao:sizetextriverline",
            {
                "INPUT_LAYER_L": layers,
                "INPUT_FRAME_A": frame,
                "SCALE": scale,
                "PRODUCT": productType,
            },
        )

    def highestSpot(self, lyr, frame):
        processing.run(
            "ferramentasedicao:highestspotontheframe",
            {
                "INPUT_LAYER_P": lyr,
                "INPUT_SPOT_FIELD": "cota",
                "INPUT_HIGHEST_SPOT_FIELD": "cota_mais_alta",
                "INPUT_FRAME": frame,
            },
        )

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return PrepareOrtho()

    def name(self):
        return "prepareortho"

    def displayName(self):
        return self.tr("Prepara Carta Ortoimagem")

    def group(self):
        return self.tr("Preparo de Edição")

    def groupId(self):
        return "preparo_edicao"

    def shortHelpString(self):
        return self.tr("""O algoritmo prepara os atributos para Carta Ortoimagem:
        1. Define cota mais alta
        2. Configura atributos padrão
        3. Configura sobreposição de feições
        4. Define tamanho do texto de rio
        5. Insere identificador de elemento de energia
        6. Insere identificador de trecho rodoviário""")
