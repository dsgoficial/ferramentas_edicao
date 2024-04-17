from qgis.core import (
    QgsProcessing,
    QgsFeature,
    QgsProcessingParameterVectorLayer,
    QgsProcessingAlgorithm,
    QgsVectorLayer,
)
from qgis.PyQt.QtCore import QCoreApplication
from qgis import processing


class SetSobrepositionTopo(QgsProcessingAlgorithm):
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
                self.tr("Selecione as camadas de conferência."),
                [QgsProcessing.TypeVectorLine],
                defaultValue="elemnat_trecho_drenagem_l",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_TO_CHECK_VIA,
                self.tr("Selecione as camadas de conferência."),
                [QgsProcessing.TypeVectorLine],
                defaultValue="infra_via_deslocamento_l",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_TO_CHECK_FER,
                self.tr("Selecione as camadas de conferência."),
                [QgsProcessing.TypeVectorLine],
                defaultValue="infra_ferrovia_l",
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        # Camadas de entrada
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

        # Filtrar visivel e situacao em poligono para mergear
        drenagem_filtrada = self.runExtractByExpression(
            layer_dre, expression=""" "visivel" = 1 AND "situacao_em_poligono" = 1"""
        )
        via_deslocamento_filtrada = self.runExtractByExpression(
            layer_via, expression=""" "visivel" = 1 """
        )
        ferrovia_filtrada = self.runExtractByExpression(
            layer_fer, expression=""" "visivel" = 1 """
        )
        merged = self.runMergeLayer([drenagem_filtrada, via_deslocamento_filtrada, ferrovia_filtrada])

        # Dissolver a moldura e clipar o poligono
        moldura_merged = self.dissolve(moldura)
        # layers_to_check = self.parameterAsLayerList(
        #     parameters, self.INPUT_LAYER_TO_CHECK, context
        # )

        layer = self.parameterAsVectorLayer(
            parameters, self.INPUT_LAYER_SOBREPOSITION, context
        )
        polygon_layer = self.parameterAsVectorLayer(
            parameters, self.INPUT_POLYGON, context
        )

        # merged = self.mergelayer([layer_dre, layer_via, layer_fer])
        polygon_layer = self.dissolve(polygon_layer)
        polygon_cliped = self.runClip(polygon_layer, moldura_merged)

        # Conveter a moldura em linha e realizar o difference
        moldura_linha = self.polytoline(moldura_merged)
        line_layer = self.difference(self.polytoline(polygon_cliped), moldura_linha)

        # Processo de edicao de camada
        layer.startEditing()
        layer.beginEditCommand("Iniciando edição.")
        intersect = self.intersect(line_layer, merged)
        difference = self.difference(line_layer, merged)
        
        layer.deleteFeatures([feat.id() for feat in layer.getFeatures()])

        for feature in intersect.getFeatures():
            feat = QgsFeature(layer.fields())
            feat["sobreposto"] = 1
            feat["exibir_rotulo_aproximado"] = 1
            feat.setGeometry(feature.geometry())

            for field in layer.fields():
                if field.name() in ["sobreposto", "exibir_rotulo_aproximado"]:
                    continue
                feat[field.name()]=feature[field.name()]
            
            layer.addFeature(feat) 

        for feature in difference.getFeatures():
            feat = QgsFeature(layer.fields())
            feat["sobreposto"] = 2
            feat["exibir_rotulo_aproximado"] = 1
            feat.setGeometry(feature.geometry())

            for field in layer.fields():
                if field.name() in ["sobreposto", "exibir_rotulo_aproximado"]:
                    continue
                feat[field.name()]=feature[field.name()]

            layer.addFeature(feat)

        layer.endEditCommand()
        return {}

    def runClip(self, layer_entrada, clip):
        clipado = processing.run(
            "native:clip",
            {"INPUT": layer_entrada, "OVERLAY": clip, "OUTPUT": "TEMPORARY_OUTPUT"},
        )
        return clipado["OUTPUT"]

    def mergelayer(self, layers) -> QgsVectorLayer:
        m = processing.run(
            "native:mergevectorlayers", {"LAYERS": layers, "OUTPUT": "TEMPORARY_OUTPUT"}
        )
        return m["OUTPUT"]

    def runExtractByExpression(self, layer, expression):
        extractbyexpression = processing.run(
            "native:extractbyexpression",
            {"INPUT": layer, "EXPRESSION": expression, "OUTPUT": "TEMPORARY_OUTPUT"},
        )
        return extractbyexpression["OUTPUT"]

    def dissolve(self, layer):
        dissolve = processing.run(
            "native:dissolve",
            {"INPUT": layer, "FIELD": ["nome"], "OUTPUT": "TEMPORARY_OUTPUT"},
        )
        return dissolve["OUTPUT"]

    def polytoline(self, layer):
        line = processing.run(
            "native:polygonstolines", {"INPUT": layer, "OUTPUT": "TEMPORARY_OUTPUT"}
        )
        return line["OUTPUT"]

    def intersect(self, layer, overlaylayer):
        intersect = processing.run(
            "native:intersection",
            {"INPUT": layer, "OVERLAY": overlaylayer, "OUTPUT": "TEMPORARY_OUTPUT"},
        )
        return intersect["OUTPUT"]

    def difference(self, layer, overlaylayer):
        diff = processing.run(
            "native:difference",
            {"INPUT": layer, "OVERLAY": overlaylayer, "OUTPUT": "TEMPORARY_OUTPUT"},
        )
        return diff["OUTPUT"]

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return SetSobrepositionTopo()

    def name(self):
        return "setsobrepositiontopo"

    def displayName(self):
        return self.tr("Configura Sobreposição de Linhas Carta Topo")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return self.tr(
            """A rotina altera o atributo 'sobreposto' das camadas de entrada caso essas camadas tenham interseção com uma camada a ser sobreposta.

                       As entradas são do tipo linha e o atributo a ser alterado é do tipo texto e deve ser exatamente conforme o nome do atributo a ser alterado da camada de entrada."""
        )
