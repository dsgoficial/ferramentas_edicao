from qgis import processing
from qgis.core import (
    QgsField,
    QgsFields,
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingParameterMultipleLayers,
    QgsProcessingParameterVectorLayer,
    QgsProcessingParameterEnum,
    QgsWkbTypes,
    QgsFeature,
    QgsFeatureSink,
    QgsVectorLayer,
    QgsProcessingParameterFeatureSink,
)
from qgis.PyQt.QtCore import QCoreApplication, QVariant


class PrepareTopo(QgsProcessingAlgorithm):
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

        self.addParameter(
            QgsProcessingParameterFeatureSink(
                self.OUTPUT_LINES, self.tr("Flags Prepara Topo")
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

        ptoCotado = [
            x
            for x in layers
            if x.dataProvider().uri().table() == "elemnat_ponto_cotado_p"
        ][0]
        self.highestSpot(ptoCotado, frameLayer)

        layersNameToCalculateSobreposition = [
            "edicao_area_pub_militar_l",
            "edicao_terra_indigena_l",
            "edicao_unidade_conservacao_l",
        ]
        layersNameToCheckSobreposition = [
            "elemnat_trecho_drenagem_l",
            "infra_via_deslocamento_l",
            "infra_ferrovia_l",
        ]
        polygonToLine = [
            "llp_area_pub_militar_a",
            "llp_terra_indigena_a",
            "llp_unidade_conservacao_a",
        ]

        layersToCalculateSobreposition = [
            x
            for x in layers
            if x.dataProvider().uri().table() in layersNameToCalculateSobreposition
        ]
        layersToCheckSobreposition = [
            x
            for x in layers
            if x.dataProvider().uri().table() in layersNameToCheckSobreposition
        ]
        layersToConvertLine = [
            x for x in layers if x.dataProvider().uri().table() in polygonToLine
        ]

        lyrDict = {layer.dataProvider().uri().table(): layer for layer in layers}

        drenagem = lyrDict["elemnat_trecho_drenagem_l"]
        edicao_limite_esp = lyrDict["edicao_limite_especial_l"]
        llp_limite_esp = lyrDict["llp_limite_especial_a"]
        via_deslocamento = lyrDict["infra_via_deslocamento_l"]
        ferrovia = lyrDict["infra_ferrovia_l"]
        self.setSobreposition(
            frameLayer,
            edicao_limite_esp,
            llp_limite_esp,
            drenagem,
            via_deslocamento,
            ferrovia,
        )

        self.attrDefault(layers, gridScaleParam)

        drenagem = [
            x
            for x in layers
            if x.dataProvider().uri().table() == "elemnat_trecho_drenagem_l"
        ][0]
        self.sizeRiverLabel(drenagem, frameLayer, gridScaleParam, 1)

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
        pointOfChangeSymbol = [
            x
            for x in layers
            if x.dataProvider().uri().table() == "edicao_ponto_mudanca_p"
        ][0]

        self.idtRodSymbol(rodovia, rodoviaSymbol, frameLayer, gridScaleParam)
        pointOfChange = self.pointOfChange(
            rodovia,
            gridScaleParam,
            pointOfChangeSymbol,
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
        list(
            map(
                lambda x: feats_sink_l.addFeature(x, QgsFeatureSink.FastInsert),
                featsToAddSet,
            )
        )

        return {self.OUTPUT_LINES: feats_sink_l_id}

    def attrDefault(self, layers, scale):
        processing.run(
            "ferramentasedicao:changeattributetopo",
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
                "SCALE": scale,
            },
        )

    def setSobreposition(
        self,
        moldura,
        edicao_limite_esp,
        llp_limite_esp,
        drenagem,
        via_deslocamento,
        ferrovia,
    ):
        processing.run(
            "ferramentasedicao:setsobrepositiontopo",
            {
                "INPUT_MOLDURA": moldura,
                "INPUT_LAYER_SOBREPOSITION": edicao_limite_esp,
                "INPUT_POLYGONS": llp_limite_esp,
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
        return PrepareTopo()

    def name(self):
        return "preparetopo"

    def displayName(self):
        return self.tr("Prepara carta topográfica")

    def group(self):
        return self.tr("Preparo de Edição")

    def groupId(self):
        return "preparo_edicao"

    def shortHelpString(self):
        return self.tr("O algoritmo prepara os atributos para carta topográfica")
