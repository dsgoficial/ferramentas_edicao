# -*- coding: utf-8 -*-

from qgis.PyQt.QtCore import QCoreApplication
from qgis.core import (
    QgsProcessing,
    QgsFeatureSink,
    QgsProcessingAlgorithm,
    QgsProcessingParameterFeatureSink,
    QgsCoordinateReferenceSystem,
    QgsProcessingParameterMultipleLayers,
    QgsFeature,
    QgsProcessingParameterVectorLayer,
    QgsFields,
    QgsFeatureRequest,
    QgsProcessingParameterNumber,
    QgsGeometry,
    QgsPointXY,
)
from qgis import processing
from qgis import core, gui
from qgis.utils import iface
import math


class DamWidth(QgsProcessingAlgorithm):

    INPUT_DAM = "INPUT_DAM"
    INPUT_HIGHWAY = "INPUT_HIGHWAY"
    INPUT_FIELDS = "INPUT_FIELDS"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_DAM,
                self.tr("Selecionar camada de barragem"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="infra_barragem_l",
            )
        )
        self.addParameter(
            core.QgsProcessingParameterField(
                self.INPUT_FIELDS,
                self.tr("Selecionar o atributo de largura"),
                type=core.QgsProcessingParameterField.Any,
                parentLayerParameterName=self.INPUT_DAM,
                allowMultiple=False,
                defaultValue="largura_simbologia",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_HIGHWAY,
                self.tr("Selecionar camada de rodovia"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="infra_via_deslocamento_l",
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        damLayer = self.parameterAsVectorLayer(parameters, self.INPUT_DAM, context)
        widthField = self.parameterAsFields(parameters, self.INPUT_FIELDS, context)[0]
        highwayLayer = self.parameterAsVectorLayer(
            parameters, self.INPUT_HIGHWAY, context
        )
        for damFeature in damLayer.getFeatures():
            damGeometry = damFeature.geometry()
            request = QgsFeatureRequest().setFilterRect(damGeometry.boundingBox())
            for highwayFeature in highwayLayer.getFeatures(request):
                highwayFeatureGeometry = highwayFeature.geometry()
                if not (highwayFeatureGeometry.intersects(damGeometry)):
                    continue
                intersections = highwayFeatureGeometry.intersection(damGeometry)
                if not (intersections.type() == core.QgsWkbTypes.LineGeometry):
                    continue
                damFeature[widthField] = self.getSymbolWidth(highwayFeature)
                self.updateLayerFeature(damLayer, damFeature)
        return {}

    def updateLayerFeature(self, layer, feature):
        layer.startEditing()
        layer.updateFeature(feature)

    def getSymbolWidth(self, highwayFeature):
        tipo = highwayFeature["tipo"]
        situacao_fisica = highwayFeature["situacao_fisica"]
        canteiro_divisorio = highwayFeature["canteiro_divisorio"]
        revestimento = highwayFeature["revestimento"]
        trafego = highwayFeature["trafego"]
        nr_faixas = (
            int(highwayFeature["nr_faixas"]) if highwayFeature["nr_faixas"] else False
        )
        jurisdicao = highwayFeature["jurisdicao"]
        if tipo in [2, 4] and situacao_fisica in [0, 3] and canteiro_divisorio == 1:
            return 1.1
        elif (
            tipo in [2, 4]
            and situacao_fisica in [0, 3]
            and canteiro_divisorio == 2
            and revestimento == 3
            and trafego == 1
            and nr_faixas >= 4
        ):
            return 0.9
        elif (
            tipo in [2, 4]
            and situacao_fisica in [0, 3]
            and canteiro_divisorio == 2
            and revestimento == 3
            and jurisdicao == 1
            and (nr_faixas in [2, 3] or nr_faixas is None)
        ):
            return 0.7
        elif (
            tipo in [2, 4]
            and situacao_fisica in [0, 3]
            and canteiro_divisorio == 2
            and revestimento == 3
            and trafego == 1
            and nr_faixas == 1
        ):
            return 0.5
        elif (
            tipo in [2, 4]
            and situacao_fisica in [0, 3]
            and canteiro_divisorio == 2
            and revestimento == 3
            and trafego in [2, 4]
            and nr_faixas >= 4
        ):
            return 0.9
        elif (
            tipo in [2, 4]
            and situacao_fisica in [0, 3]
            and canteiro_divisorio == 2
            and revestimento == 3
            and jurisdicao in [0, 2]
            and (nr_faixas in [2, 3] or nr_faixas is None)
        ):
            return 0.7
        elif (
            tipo in [2, 4]
            and situacao_fisica in [0, 3]
            and canteiro_divisorio == 2
            and revestimento == 3
            and jurisdicao in [0, 2]
            and nr_faixas == 1
        ):
            return 0.5
        elif (
            tipo in [2, 4]
            and situacao_fisica in [0, 3]
            and canteiro_divisorio == 2
            and revestimento != 3
            and trafego == 1
            and jurisdicao == 1
            and nr_faixas >= 4
        ):
            return 0.9
        elif (
            tipo in [2, 4]
            and situacao_fisica in [0, 3]
            and canteiro_divisorio == 2
            and revestimento != 3
            and trafego == 1
            and jurisdicao == 1
            and (nr_faixas in [2, 3] or nr_faixas is None)
        ):
            return 0.7
        elif (
            tipo in [2, 4]
            and situacao_fisica in [0, 3]
            and canteiro_divisorio == 2
            and revestimento != 3
            and trafego == 1
            and jurisdicao == 1
            and nr_faixas == 1
        ):
            return 0.5
        elif (
            tipo in [2, 4]
            and situacao_fisica in [0, 3]
            and canteiro_divisorio == 2
            and revestimento != 3
            and trafego == 1
            and jurisdicao in [0, 2]
            and nr_faixas >= 4
        ):
            return 0.9
        elif (
            tipo in [2, 4]
            and situacao_fisica in [0, 3]
            and canteiro_divisorio == 2
            and revestimento != 3
            and trafego == 1
            and jurisdicao in [0, 2]
            and (nr_faixas in [2, 3] or nr_faixas is None)
        ):
            return 0.7
        elif (
            tipo in [2, 4]
            and situacao_fisica in [0, 3]
            and canteiro_divisorio == 2
            and revestimento != 3
            and trafego == 1
            and jurisdicao in [0, 2]
            and nr_faixas == 1
        ):
            return 0.5
        elif (
            tipo in [2, 4]
            and situacao_fisica in [0, 3]
            and canteiro_divisorio == 2
            and revestimento != 3
            and trafego != 1
        ):
            return 0.5
        elif (
            tipo in [2, 4]
            and not (situacao_fisica in [0, 3])
            and canteiro_divisorio == 1
        ):
            return 1.1
        elif (
            tipo in [2, 4]
            and not (situacao_fisica in [0, 3])
            and canteiro_divisorio == 2
        ):
            return 0.7
        elif tipo in [3]:
            return 0.25
        elif tipo in [6]:
            return 0.2
        elif tipo in [5] and situacao_fisica in [0, 3] and revestimento == 3:
            return 0.5
        elif tipo in [5] and situacao_fisica in [0, 3] and revestimento != 3:
            return 0.3
        elif tipo in [5] and not (situacao_fisica in [0, 3]):
            return 0.7
        return 0

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return DamWidth()

    def name(self):
        return "damWidth"

    def displayName(self):
        return self.tr("Definir largura de barragem")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return self.tr(
        """Este algoritmo calcula e define a largura de feições de barragem em uma camada de linha com base na interseção com rodovias próximas.

        Ele compara a geometria das barragens com a das rodovias para determinar a largura adequada de acordo com critérios específicos, como tipo de via, situação física, revestimento, número de faixas, entre outros atributos.

        O usuário deve selecionar as camadas de barragem e rodovia, além do campo de atributo onde a largura será definida."""
        )
