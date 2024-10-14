# -*- coding: utf-8 -*-

from qgis.PyQt.QtCore import QCoreApplication
from qgis.core import (
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingParameterVectorLayer,
    QgsFeatureRequest,
    QgsProcessingMultiStepFeedback,
    QgsProcessingParameterBoolean,
)
from qgis import core

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help


class BridgeAndManholeWidth(QgsProcessingAlgorithm):

    INPUT_LAYER_P = "INPUT_LAYER_P"
    INPUT_FIELD_LAYER_P = "INPUT_FIELD_LAYER_P"
    INPUT_LAYER_L = "INPUT_LAYER_L"
    INPUT_FIELD_LAYER_L = "INPUT_FIELD_LAYER_L"
    INPUT_HIGHWAY = "INPUT_HIGHWAY"
    ONLY_SELECTED_P = "ONLY_SELECTED_P"
    ONLY_SELECTED_L = "ONLY_SELECTED_L"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_P,
                self.tr("Selecionar camada de elemento viário (Ponto)"),
                [QgsProcessing.TypeVectorPoint],
                defaultValue="infra_elemento_viario_p",
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.ONLY_SELECTED_P,
                self.tr("Executar somente nas feições ponto selecionadas"),
            )
        )
        self.addParameter(
            core.QgsProcessingParameterField(
                self.INPUT_FIELD_LAYER_P,
                self.tr("Selecionar o atributo de largura"),
                type=core.QgsProcessingParameterField.Any,
                parentLayerParameterName=self.INPUT_LAYER_P,
                allowMultiple=False,
                defaultValue="largura_simbologia",
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_L,
                self.tr("Selecionar camada de elemento viário (Linha)"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="infra_elemento_viario_l",
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.ONLY_SELECTED_L,
                self.tr("Executar somente nas feições linha selecionadas"),
            )
        )
        self.addParameter(
            core.QgsProcessingParameterField(
                self.INPUT_FIELD_LAYER_L,
                self.tr("Selecionar o atributo de largura"),
                type=core.QgsProcessingParameterField.Any,
                parentLayerParameterName=self.INPUT_LAYER_L,
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
        pointLayer = self.parameterAsVectorLayer(
            parameters, self.INPUT_LAYER_P, context
        )
        onlySelectedP = self.parameterAsBool(parameters, self.ONLY_SELECTED_P, context)
        pointWidthField = self.parameterAsFields(
            parameters, self.INPUT_FIELD_LAYER_P, context
        )[0]
        lineLayer = self.parameterAsVectorLayer(parameters, self.INPUT_LAYER_L, context)
        onlySelectedL = self.parameterAsBool(parameters, self.ONLY_SELECTED_L, context)
        lineWidthField = self.parameterAsFields(
            parameters, self.INPUT_FIELD_LAYER_L, context
        )[0]
        highwayLayer = self.parameterAsVectorLayer(
            parameters, self.INPUT_HIGHWAY, context
        )

        multiStepFeedback = QgsProcessingMultiStepFeedback(2, feedback)
        multiStepFeedback.setCurrentStep(0)
        self.setWidthFieldOnLayer(
            pointLayer,
            onlySelectedP,
            pointWidthField,
            highwayLayer,
            [201, 202, 203, 204, 501, 302],
            feedback=multiStepFeedback,
        )
        multiStepFeedback.setCurrentStep(1)
        self.setWidthFieldOnLayer(
            lineLayer,
            onlySelectedL,
            lineWidthField,
            highwayLayer,
            [201, 202, 203, 204, 302],
            feedback=multiStepFeedback,
        )
        return {}

    def setWidthFieldOnLayer(
        self, layer, onlySelected, widthField, highwayLayer, filterType, feedback
    ):
        nFeats = (
            layer.featureCount() if not onlySelected else layer.selectedFeatureCount()
        )
        iterator = (
            layer.getFeatures() if not onlySelected else layer.getSelectedFeatures()
        )
        if nFeats == 0:
            return
        stepSize = 100 / nFeats
        for current, layerFeature in enumerate(iterator):
            if feedback.isCanceled():
                break
            if not (layerFeature["tipo"] in filterType):
                continue
            layerGeometry = layerFeature.geometry()
            request = QgsFeatureRequest().setFilterRect(layerGeometry.boundingBox())
            width = 0
            for highwayFeature in highwayLayer.getFeatures(request):
                highwayFeatureGeometry = highwayFeature.geometry()
                if not (highwayFeatureGeometry.intersects(layerGeometry)):
                    continue
                intersection = highwayFeatureGeometry.intersection(layerGeometry)
                if not (intersection.type() == layer.geometryType()):
                    continue
                newWidth = self.getSymbolWidth(highwayFeature)
                if newWidth > width:
                    width = newWidth
            if width != 0 and width != layerFeature[widthField]:
                layerFeature[widthField] = width
                self.updateLayerFeature(layer, layerFeature)
            feedback.setProgress(current * stepSize)

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
        return BridgeAndManholeWidth()

    def name(self):
        return "bridgeandmanholewidth"

    def displayName(self):
        return self.tr("Definir largura de elemento viário")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return self.tr(
        """Este algoritmo ajusta a largura de elementos viários (pontes, bueiros, etc.) em camadas de pontos e linhas.

        Ele compara a geometria desses elementos com as rodovias próximas para determinar a largura adequada com base em critérios específicos, como tipo de via, situação física, número de faixas, entre outros.

        O usuário pode optar por aplicar a operação somente nas feições selecionadas ou em todas as feições.

        As camadas de elementos viários (ponto e linha) e a camada de rodovias devem ser fornecidas pelo usuário."""
        )

