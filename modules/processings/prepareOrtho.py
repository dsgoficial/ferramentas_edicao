from qgis import processing
from qgis.core import (
    QgsFeature,
    QgsField,
    QgsFields,
    QgsVectorLayer,
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingParameterMultipleLayers,
    QgsProcessingParameterVectorLayer,
    QgsProcessingParameterEnum,
    QgsFeatureSink,
    QgsProcessingParameterFeatureSink,
    QgsWkbTypes,
    QgsProcessingMultiStepFeedback,
)
from qgis.PyQt.QtCore import QCoreApplication, QVariant

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help


class PrepareOrtho(QgsProcessingAlgorithm):

    INPUT_LAYERS = "INPUT_LAYERS"
    INPUT_FRAME = "INPUT_FRAME"
    SCALE = "SCALE"
    OUTPUT_LINES = "OUTPUT_LINES"

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
                    self.tr("1:5.000"),
                    self.tr("1:10.000"),
                    self.tr("1:25.000"),
                    self.tr("1:50.000"),
                    self.tr("1:100.000"),
                    self.tr("1:250.000"),
                ],
                defaultValue=2,
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

        self.addParameter(
            QgsProcessingParameterFeatureSink(
                self.OUTPUT_LINES, self.tr("Flags Prepara Orto")
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        layers = self.parameterAsLayerList(parameters, self.INPUT_LAYERS, context)
        gridScaleParam = self.parameterAsInt(parameters, self.SCALE, context)
        frameLayer = self.parameterAsVectorLayer(parameters, self.INPUT_FRAME, context)
        fields = QgsFields()
        fields.append(QgsField("id", QVariant.String))
        fields.append(QgsField("descricao", QVariant.String))
        (feats_sink_l, feats_sink_l_id) = self.parameterAsSink(
            parameters,
            self.OUTPUT_LINES,
            context,
            fields,
            QgsWkbTypes.MultiLineString,
            layers[0].crs(),
        )

        lyrDict = {layer.dataProvider().uri().table(): layer for layer in layers}

        ptoCotado = lyrDict["elemnat_ponto_cotado_p"]

        multiStepFeedback = QgsProcessingMultiStepFeedback(7, feedback)
        multiStepFeedback.setCurrentStep(0)

        self.highestSpot(ptoCotado, frameLayer)
        multiStepFeedback.setCurrentStep(1)
        self.attrDefault(layers, gridScaleParam)

        drenagem = lyrDict["elemnat_trecho_drenagem_l"]
        edicao_mil = lyrDict["edicao_area_pub_militar_l"]
        edicao_ind = lyrDict["edicao_terra_indigena_l"]
        edicao_con = lyrDict["edicao_unidade_conservacao_l"]
        pol_mil = lyrDict["llp_area_pub_militar_a"]
        pol_ind = lyrDict["llp_terra_indigena_a"]
        pol_con = lyrDict["llp_unidade_conservacao_a"]
        via_deslocamento = lyrDict["infra_via_deslocamento_l"]
        ferrovia = lyrDict["infra_ferrovia_l"]
        multiStepFeedback.setCurrentStep(2)
        self.setSobreposition(
            frameLayer,
            edicao_mil,
            edicao_ind,
            edicao_con,
            pol_mil,
            pol_ind,
            pol_con,
            drenagem,
            via_deslocamento,
            ferrovia,
        )
        multiStepFeedback.setCurrentStep(3)
        self.sizeRiverLabel(drenagem, frameLayer, gridScaleParam, 1)

        energia = lyrDict["infra_elemento_energia_l"]
        energiaSymbol = lyrDict["edicao_simb_torre_energia_p"]
        multiStepFeedback.setCurrentStep(4)
        self.energySymbol(energia, energiaSymbol, frameLayer, gridScaleParam)

        rodovia = lyrDict["infra_via_deslocamento_l"]
        rodoviaSymbol = lyrDict["edicao_identificador_trecho_rod_p"]
        multiStepFeedback.setCurrentStep(5)
        self.idtRodSymbol(rodovia, rodoviaSymbol, frameLayer, gridScaleParam)

        pointOfChangeLayer = lyrDict["edicao_ponto_mudanca_p"]
        multiStepFeedback.setCurrentStep(6)
        flagsToAddSet = self.pointOfChangeSymbol(
            gridScaleParam, frameLayer, fields, rodovia, pointOfChangeLayer
        )

        list(
            map(
                lambda x: feats_sink_l.addFeature(x, QgsFeatureSink.FastInsert),
                flagsToAddSet,
            )
        )

        return {self.OUTPUT_LINES: feats_sink_l_id}

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

    def pointOfChange(
        self, road, scale, pointOfChange, frameLayer=None, tolerance=6, output=None
    ) -> QgsVectorLayer:
        output = "memory:" if output is None else output
        p = processing.run(
            "ferramentasedicao:placepointofchange",
            {
                "INPUT": road,
                "FRAME_LAYER": frameLayer,
                "SYMBOL_LAYER": pointOfChange,
                "SCALE": scale,
                "TOLERANCE": tolerance,
                "OUTPUT": output,
                "PRODUCT_TYPE": 1,
            },
        )
        return p["OUTPUT"]

    def energySymbol(self, energy, simbol, frame, scale):
        processing.run(
            "ferramentasedicao:insertEnergyTower",
            {
                "INPUT_ENERGY": energy,
                "INPUT_TOWER": simbol,
                "INPUT_FRAME": frame,
                "MIN_DISTANCE_FROM_FRAME": 0.003,
                "SCALE": scale,
            },
        )

    def setSobreposition(
        self,
        moldura,
        edicao_mil,
        edicao_ind,
        edicao_con,
        pol_mil,
        pol_ind,
        pol_con,
        drenagem,
        via_deslocamento,
        ferrovia,
    ):
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

    def pointOfChangeSymbol(
        self, gridScaleParam, frameLayer, fields, rodovia, pointOfChangeLayer
    ):
        pointOfChange = self.pointOfChange(
            rodovia,
            gridScaleParam,
            pointOfChangeLayer,
            frameLayer=frameLayer,
            tolerance=6,
        )
        featsToAddSet = set()

        for feat in pointOfChange.getFeatures():
            featToAdd = QgsFeature()
            featToAdd.setFields(fields)
            featToAdd[
                "descricao"
            ] = "Feicao de edicao_texto_generico_l fora ou muito proxima à moldura"
            featToAdd["id"] = feat["id"]
            featToAdd.setGeometry(feat.geometry())
            featsToAddSet.add(featToAdd)
        return featsToAddSet

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
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return help().helpUrl(self.name())
