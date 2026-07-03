# -*- coding: utf-8 -*-
from qgis.core import QgsFeature, QgsProcessingAlgorithm
from qgis.PyQt.QtCore import QCoreApplication
from qgis import processing

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help


class BaseSobreposition(QgsProcessingAlgorithm):
    """Base class for sobreposition algorithms with shared processing utilities."""

    def filterAndMergeLayers(self, layer_dre, layer_via, layer_fer,
                             context=None, feedback=None):
        """Filters visible features and merges drainage, roads and railways."""
        drenagem_filtrada = self.runExtractByExpression(
            layer_dre,
            expression=""" "visivel" = 1 AND "situacao_em_poligono" = 1""",
            context=context,
            feedback=feedback,
        )
        via_deslocamento_filtrada = self.runExtractByExpression(
            layer_via, expression=""" "visivel" = 1 """, context=context,
            feedback=feedback,
        )
        ferrovia_filtrada = self.runExtractByExpression(
            layer_fer, expression=""" "visivel" = 1 """, context=context,
            feedback=feedback,
        )
        return self.runMergeLayer(
            [drenagem_filtrada, via_deslocamento_filtrada, ferrovia_filtrada],
            context=context,
            feedback=feedback,
        )

    def prepareMolduraLine(self, moldura_layer, context=None, feedback=None):
        """Dissolves moldura (TOTALMENTE — as bordas internas entre folhas nao
        devem apagar limites) and converts to lines."""
        dissolved = self.runDissolve(
            moldura_layer, fields=[], context=context, feedback=feedback
        )
        return self.runPolyToLine(dissolved, context=context, feedback=feedback)

    def buildFeaturesFromSobreposition(
        self, target_layer, source_layer, sobreposto_value, extra_fields=None
    ):
        """Builds (without adding) features from source_layer with the
        sobreposto attribute set."""
        feats = []
        for feature in source_layer.getFeatures():
            feat = QgsFeature(target_layer.fields())
            feat.setGeometry(feature.geometry())
            for field in target_layer.fields():
                if field.name() in ["sobreposto", "exibir_rotulo_aproximado"]:
                    continue
                if feature.fields().lookupField(field.name()) != -1:
                    feat[field.name()] = feature[field.name()]
            feat["sobreposto"] = sobreposto_value
            feat["exibir_rotulo_aproximado"] = 1
            if extra_fields:
                for k, v in extra_fields.items():
                    feat[k] = v
            feats.append(feat)
        return feats

    def rewriteLayer(self, target_layer, newFeats, editText):
        """Substitui TODAS as feições da camada-alvo pelas novas, num único
        edit command. As novas feições já estão prontas ANTES do delete — em
        caso de erro o comando é destruído e nada é perdido."""
        target_layer.startEditing()
        target_layer.beginEditCommand(editText)
        try:
            target_layer.deleteFeatures(
                [feat.id() for feat in target_layer.getFeatures()]
            )
            target_layer.addFeatures(newFeats)
        except Exception:
            target_layer.destroyEditCommand()
            raise
        target_layer.endEditCommand()

    # --- Processing wrappers ---

    def runMergeLayer(self, layers, context=None, feedback=None):
        m = processing.run(
            "native:mergevectorlayers",
            {"LAYERS": layers, "OUTPUT": "TEMPORARY_OUTPUT"},
            context=context,
            feedback=feedback,
        )
        return m["OUTPUT"]

    def runExtractByExpression(self, layer, expression, context=None, feedback=None):
        result = processing.run(
            "native:extractbyexpression",
            {"INPUT": layer, "EXPRESSION": expression, "OUTPUT": "TEMPORARY_OUTPUT"},
            context=context,
            feedback=feedback,
        )
        return result["OUTPUT"]

    def runDissolve(self, layer, fields=["nome"], context=None, feedback=None):
        result = processing.run(
            "native:dissolve",
            {"INPUT": layer, "FIELD": fields, "OUTPUT": "TEMPORARY_OUTPUT"},
            context=context,
            feedback=feedback,
        )
        return result["OUTPUT"]

    def runPolyToLine(self, layer, context=None, feedback=None):
        result = processing.run(
            "native:polygonstolines",
            {"INPUT": layer, "OUTPUT": "TEMPORARY_OUTPUT"},
            context=context,
            feedback=feedback,
        )
        return result["OUTPUT"]

    def runIntersect(self, layer, overlaylayer, context=None, feedback=None):
        result = processing.run(
            "native:intersection",
            {"INPUT": layer, "OVERLAY": overlaylayer, "OUTPUT": "TEMPORARY_OUTPUT"},
            context=context,
            feedback=feedback,
        )
        return result["OUTPUT"]

    def runDifference(self, layer, overlaylayer, context=None, feedback=None):
        result = processing.run(
            "native:difference",
            {"INPUT": layer, "OVERLAY": overlaylayer, "OUTPUT": "TEMPORARY_OUTPUT"},
            context=context,
            feedback=feedback,
        )
        return result["OUTPUT"]

    def runClip(self, layer, clip_layer, context=None, feedback=None):
        result = processing.run(
            "native:clip",
            {"INPUT": layer, "OVERLAY": clip_layer, "OUTPUT": "TEMPORARY_OUTPUT"},
            context=context,
            feedback=feedback,
        )
        return result["OUTPUT"]

    def runCreateSpatialIndex(self, layer, context=None, feedback=None):
        processing.run(
            "native:createspatialindex",
            {"INPUT": layer},
            is_child_algorithm=True,
            context=context,
            feedback=feedback,
        )
        return layer

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return help().helpUrl(self.name())
