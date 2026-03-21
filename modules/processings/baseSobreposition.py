# -*- coding: utf-8 -*-
from qgis.core import QgsFeature, QgsProcessingAlgorithm
from qgis.PyQt.QtCore import QCoreApplication
from qgis import processing

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help


class BaseSobreposition(QgsProcessingAlgorithm):
    """Base class for sobreposition algorithms with shared processing utilities."""

    def filterAndMergeLayers(self, layer_dre, layer_via, layer_fer):
        """Filters visible features and merges drainage, roads and railways."""
        drenagem_filtrada = self.runExtractByExpression(
            layer_dre, expression=""" "visivel" = 1 AND "situacao_em_poligono" = 1"""
        )
        via_deslocamento_filtrada = self.runExtractByExpression(
            layer_via, expression=""" "visivel" = 1 """
        )
        ferrovia_filtrada = self.runExtractByExpression(
            layer_fer, expression=""" "visivel" = 1 """
        )
        return self.runMergeLayer(
            [drenagem_filtrada, via_deslocamento_filtrada, ferrovia_filtrada]
        )

    def prepareMolduraLine(self, moldura_layer):
        """Dissolves moldura and converts to lines."""
        dissolved = self.runDissolve(moldura_layer)
        return self.runPolyToLine(dissolved)

    def populateLayerFromSobreposition(
        self, target_layer, source_layer, sobreposto_value, extra_fields=None
    ):
        """Creates features from source_layer into target_layer with sobreposto attribute."""
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
            target_layer.addFeature(feat)

    # --- Processing wrappers ---

    def runMergeLayer(self, layers):
        m = processing.run(
            "native:mergevectorlayers", {"LAYERS": layers, "OUTPUT": "TEMPORARY_OUTPUT"}
        )
        return m["OUTPUT"]

    def runExtractByExpression(self, layer, expression):
        result = processing.run(
            "native:extractbyexpression",
            {"INPUT": layer, "EXPRESSION": expression, "OUTPUT": "TEMPORARY_OUTPUT"},
        )
        return result["OUTPUT"]

    def runDissolve(self, layer):
        result = processing.run(
            "native:dissolve",
            {"INPUT": layer, "FIELD": ["nome"], "OUTPUT": "TEMPORARY_OUTPUT"},
        )
        return result["OUTPUT"]

    def runPolyToLine(self, layer):
        result = processing.run(
            "native:polygonstolines", {"INPUT": layer, "OUTPUT": "TEMPORARY_OUTPUT"}
        )
        return result["OUTPUT"]

    def runIntersect(self, layer, overlaylayer):
        result = processing.run(
            "native:intersection",
            {"INPUT": layer, "OVERLAY": overlaylayer, "OUTPUT": "TEMPORARY_OUTPUT"},
        )
        return result["OUTPUT"]

    def runDifference(self, layer, overlaylayer):
        result = processing.run(
            "native:difference",
            {"INPUT": layer, "OVERLAY": overlaylayer, "OUTPUT": "TEMPORARY_OUTPUT"},
        )
        return result["OUTPUT"]

    def runClip(self, layer, clip_layer):
        result = processing.run(
            "native:clip",
            {"INPUT": layer, "OVERLAY": clip_layer, "OUTPUT": "TEMPORARY_OUTPUT"},
        )
        return result["OUTPUT"]

    def runCreateSpatialIndex(self, layer):
        processing.run(
            "native:createspatialindex",
            {"INPUT": layer},
            is_child_algorithm=True,
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
