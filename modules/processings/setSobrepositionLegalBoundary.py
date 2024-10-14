from qgis.core import (
    QgsProcessing,
    QgsFeature,
    QgsProcessingAlgorithm,
    QgsProcessingParameterVectorLayer,
)
from qgis.PyQt.QtCore import QCoreApplication
from qgis import processing

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help


class SetSobrepositionLegalBoundary(QgsProcessingAlgorithm):
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
                defaultValue="edicao_limite_legal_l",
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
        # Camadas de entrada
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

        # Filtrar visivel e situacao em poligono para mergear camadas de verificação
        drenagem_filtrada = self.runExtractByExpression(
            layer_dre, expression=""" "visivel" = 1 AND "situacao_em_poligono" = 1"""
        )
        via_deslocamento_filtrada = self.runExtractByExpression(
            layer_via, expression=""" "visivel" = 1 """
        )
        ferrovia_filtrada = self.runExtractByExpression(
            layer_fer, expression=""" "visivel" = 1 """
        )
        merged = self.runMergeLayer(
            [drenagem_filtrada, via_deslocamento_filtrada, ferrovia_filtrada]
        )

        # Criar índice espacial
        self.runCreateSpatialIndex(merged)

        # Dissolver moldura e converter em linha
        moldura_dissolved = self.runDissolve(layer_moldura)
        moldura_linha = self.runPolyToLine(moldura_dissolved)

        # Percorrer as camadas de poligono e alterar o atributo "sobreposto" das camadas de edicao

        line_layer_diff = self.runDifference(layer_lim, moldura_linha)
        layer_lim.startEditing()
        layer_lim.beginEditCommand("Iniciando edição.")
        # Realiza o Intersect e o Difference
        intersect = self.runIntersect(line_layer_diff, merged)
        difference = self.runDifference(line_layer_diff, merged)
        # Deleta as feições iniciais para substituição pelas intersect.
        layer_lim.deleteFeatures([feat.id() for feat in layer_lim.getFeatures()])
        for feature in intersect.getFeatures():
            feat = QgsFeature(layer_lim.fields())
            feat.setGeometry(feature.geometry())
            for field in layer_lim.fields():
                if field.name() in ["sobreposto", "exibir_rotulo_aproximado"]:
                    continue
                feat[field.name()] = feature[field.name()]
            feat["exibir_rotulo_aproximado"] = 1
            feat["sobreposto"] = 1
            layer_lim.addFeature(feat)
        for feature in difference.getFeatures():
            feat = QgsFeature(layer_lim.fields())
            feat.setGeometry(feature.geometry())
            for field in layer_lim.fields():
                if field.name() in ["sobreposto", "exibir_rotulo_aproximado"]:
                    continue
                feat[field.name()] = feature[field.name()]
            feat["exibir_rotulo_aproximado"] = 1
            feat["sobreposto"] = 2
            layer_lim.addFeature(feat)

        layer_lim.endEditCommand()

        return {}

    def runMergeLayer(self, layers):
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

    def runDissolve(self, layer):
        dissolve = processing.run(
            "native:dissolve",
            {"INPUT": layer, "FIELD": ["nome"], "OUTPUT": "TEMPORARY_OUTPUT"},
        )
        return dissolve["OUTPUT"]

    def runPolyToLine(self, layer):
        line = processing.run(
            "native:polygonstolines", {"INPUT": layer, "OUTPUT": "TEMPORARY_OUTPUT"}
        )
        return line["OUTPUT"]

    def runIntersect(self, layer, overlaylayer):
        intersect = processing.run(
            "native:intersection",
            {"INPUT": layer, "OVERLAY": overlaylayer, "OUTPUT": "TEMPORARY_OUTPUT"},
        )
        return intersect["OUTPUT"]

    def runDifference(self, layer, overlaylayer):
        diff = processing.run(
            "native:difference",
            {"INPUT": layer, "OVERLAY": overlaylayer, "OUTPUT": "TEMPORARY_OUTPUT"},
        )
        return diff["OUTPUT"]

    def runCreateSpatialIndex(self, layer):
        output = processing.run(
            "native:createspatialindex",
            {"INPUT": layer},
            is_child_algorithm=True,
        )
        return layer

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return SetSobrepositionLegalBoundary()

    def name(self):
        return "setsobrepositionlegalboundary"

    def displayName(self):
        return self.tr("Configura Sobreposição de Limite Legal")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return self.tr(
            """A rotina altera o atributo 'sobreposto' das camadas de entrada caso essas camadas tenham interseção com uma camada a ser sobreposta.

                        As entradas são do tipo linha e o atributo a ser alterado é do tipo texto e deve ser exatamente conforme o nome do atributo a ser alterado da camada de entrada."""
        )
