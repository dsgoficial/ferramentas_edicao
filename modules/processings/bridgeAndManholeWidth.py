# -*- coding: utf-8 -*-

from qgis.PyQt.QtCore import QCoreApplication
from qgis.core import (
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingParameterVectorLayer,
    QgsFeatureRequest,
    QgsProcessingMultiStepFeedback,
    QgsProcessingParameterBoolean,
    QgsDistanceArea,
    QgsWkbTypes
)
from qgis import core


class BridgeAndManholeWidth(QgsProcessingAlgorithm):

    INPUT_LAYER_P = "INPUT_LAYER_P"
    INPUT_FIELD_LAYER_P = "INPUT_FIELD_LAYER_P"
    INPUT_LAYER_L = "INPUT_LAYER_L"
    INPUT_FIELD_LAYER_L = "INPUT_FIELD_LAYER_L"
    INPUT_HIGHWAY = "INPUT_HIGHWAY"
    INPUT_RAILWAY = "INPUT_RAILWAY"
    ONLY_SELECTED_P = "ONLY_SELECTED_P"
    ONLY_SELECTED_L = "ONLY_SELECTED_L"

    POINT_FILTER_TYPES = [201, 202, 203, 204, 501, 302]
    LINE_FILTER_TYPES = [201, 202, 203, 204, 302]

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_P,
                self.tr("Selecionar camada de elemento viário (Ponto)"),
                [QgsProcessing.TypeVectorPoint],
                defaultValue="infra_elemento_viario_p",
                optional=True
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
                self.tr("Selecionar o atributo de largura (Ponto)"),
                type=core.QgsProcessingParameterField.Any,
                parentLayerParameterName=self.INPUT_LAYER_P,
                allowMultiple=False,
                defaultValue="largura_simbologia",
                optional=True
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
                self.tr("Selecionar o atributo de largura (Linha)"),
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

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_RAILWAY,
                self.tr("Selecionar camada de ferrovia"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="infra_ferrovia_l",
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        pointLayer = self.parameterAsVectorLayer(
            parameters, self.INPUT_LAYER_P, context
        )
        onlySelectedP = self.parameterAsBool(parameters, self.ONLY_SELECTED_P, context)
        pointWidthField = None
        if pointLayer:
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
        railwayLayer = self.parameterAsVectorLayer(
            parameters, "INPUT_RAILWAY", context
        )

        has_length_config = 'config_comprimento_simb' in lineLayer.fields().names()

        steps = 1 if not pointLayer else 2
        multiStepFeedback = QgsProcessingMultiStepFeedback(steps, feedback)
        
        current_step = 0

        if pointLayer:
            multiStepFeedback.setCurrentStep(current_step)
            self.setWidthFieldOnLayer(
                pointLayer,
                onlySelectedP,
                pointWidthField,
                highwayLayer,
                railwayLayer,
                self.POINT_FILTER_TYPES,
                feedback=multiStepFeedback,
            )
            current_step += 1

        multiStepFeedback.setCurrentStep(current_step)

        self.setWidthFieldOnLayer(
            lineLayer,
            onlySelectedL,
            lineWidthField,
            highwayLayer,
            railwayLayer,
            self.LINE_FILTER_TYPES,
            feedback=multiStepFeedback,
            check_length=has_length_config
        )
        return {}

    def setWidthFieldOnLayer(
        self, layer, onlySelected, widthField, highwayLayer, railwayLayer, filterType, feedback, check_length=False
    ):

        features = layer.getSelectedFeatures() if onlySelected else layer.getFeatures()
        feature_count = layer.selectedFeatureCount() if onlySelected else layer.featureCount()
        
        if feature_count == 0:
            return
            
        distance_calculator = None
        if check_length:
            distance_calculator = QgsDistanceArea()
            distance_calculator.setEllipsoid('WGS84')
        
        step_size = 100 / feature_count
        
        layer.startEditing()
        
        for current, feature in enumerate(features):
            if feedback.isCanceled():
                break
                
            if feature["tipo"] not in filterType:
                continue
                
            self._process_single_feature(
                feature=feature,
                layer=layer,
                widthField=widthField,
                highwayLayer=highwayLayer,
                railwayLayer=railwayLayer,
                distance_calculator=distance_calculator,
                check_length=check_length
            )
                
            feedback.setProgress(current * step_size)

    def _process_single_feature(self, feature, layer, widthField, highwayLayer, railwayLayer, distance_calculator=None, check_length=False):

        feature_geometry = feature.geometry()
        
        # Encontra a maior largura das rodovias que intersectam
        max_width = self._find_max_intersection_width(feature_geometry, highwayLayer, railwayLayer, layer.geometryType())
        
        # Se não encontrou largura ou a largura é a mesma, não precisa atualizar
        if max_width == 0 or max_width == feature[widthField]:
            return
            
        feature[widthField] = max_width
        
        # Se necessário, calcula e atualiza o comprimento
        if check_length and layer.geometryType() == QgsWkbTypes.LineGeometry:
            length = distance_calculator.measureLength(feature_geometry)
            feature['config_comprimento_simb'] = 1 if length < 20 else 2
        
        # Atualiza a feature
        layer.updateFeature(feature)

    def _find_max_intersection_width(self, feature_geometry, highwayLayer, railwayLayer, geometry_type):
        max_width = 0
        
        # Verifica intersecções com rodovias
        request = QgsFeatureRequest().setFilterRect(feature_geometry.boundingBox())
        
        for highway in highwayLayer.getFeatures(request):
            highway_geometry = highway.geometry()
            
            if not highway_geometry.intersects(feature_geometry):
                continue
                
            intersection = highway_geometry.intersection(feature_geometry)
            if intersection.type() != geometry_type:
                continue
                
            width = self.getSymbolWidth(highway)
            max_width = max(max_width, width)
        
        # Verifica intersecções com ferrovias
        for railway in railwayLayer.getFeatures(request):
            railway_geometry = railway.geometry()
            
            if not railway_geometry.intersects(feature_geometry):
                continue
                
            intersection = railway_geometry.intersection(feature_geometry)
            if intersection.type() != geometry_type:
                continue
                
            # Largura fixa para ferrovias
            railway_width = 0.5
            max_width = max(max_width, railway_width)
        
        return max_width

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
        """Este algoritmo ajusta a largura de elementos viários (pontes, bueiros, etc.) em camadas de pontos (opcional) e linhas.

        Ele compara a geometria desses elementos com as rodovias próximas para determinar a largura adequada com base em critérios específicos, como tipo de via, situação física, número de faixas, entre outros.

        Para elementos lineares, se existir o campo 'config_comprimento_simb', ele será preenchido com:
        - 1: se o comprimento for menor que 20 metros
        - 2: se o comprimento for maior ou igual a 20 metros

        O usuário pode optar por aplicar a operação somente nas feições selecionadas ou em todas as feições.

        A camada de elementos viários (ponto) é opcional. A camada de elementos viários (linha) e a camada de rodovias são obrigatórias."""
        )

