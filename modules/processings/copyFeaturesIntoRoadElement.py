# -*- coding: utf-8 -*-
"""
/***************************************************************************
 ferramentas_edicao
                                 A QGIS plugin
 Brazilian Army Cartographic Finishing Tools
                              -------------------
 ***************************************************************************/
/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/
"""

from qgis.core import (
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingParameterVectorLayer,
    QgsFeatureRequest,
    QgsVectorLayerUtils,
    QgsProcessingMultiStepFeedback,
)
from qgis.PyQt.QtCore import QCoreApplication

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help


class CopyFeaturesIntoRoadElement(QgsProcessingAlgorithm):

    INPUT_ROADS = "INPUT_ROADS"
    INPUT_RAILWAYS = "INPUT_RAILWAYS"
    INPUT_DITCHES = "INPUT_DITCHES"
    INPUT_DRAINAGE = "INPUT_DRAINAGE"
    OUTPUT_ROAD_ELEMENT = "OUTPUT_ROAD_ELEMENT"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_ROADS,
                self.tr("Selecionar camada de rodovias"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="infra_via_deslocamento_l",
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_RAILWAYS,
                self.tr("Selecionar camada de ferrovias"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="infra_ferrovia_l",
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_DITCHES,
                self.tr("Selecionar camada de vala"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="infra_vala_l",
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_DRAINAGE,
                self.tr("Selecionar camada de trecho de drenagem"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="elemnat_trecho_drenagem_l",
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.OUTPUT_ROAD_ELEMENT,
                self.tr("Selecionar camada de elemento viário"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="infra_elemento_viario_l",
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        # Criar feedback de múltiplas etapas
        multiStepFeedback = QgsProcessingMultiStepFeedback(4, feedback)

        # Obtém as camadas de entrada
        roads_layer = self.parameterAsVectorLayer(parameters, self.INPUT_ROADS, context)
        railways_layer = self.parameterAsVectorLayer(
            parameters, self.INPUT_RAILWAYS, context
        )
        ditches_layer = self.parameterAsVectorLayer(
            parameters, self.INPUT_DITCHES, context
        )
        drainage_layer = self.parameterAsVectorLayer(
            parameters, self.INPUT_DRAINAGE, context
        )
        road_element_layer = self.parameterAsVectorLayer(
            parameters, self.OUTPUT_ROAD_ELEMENT, context
        )

        # Inicia a edição da camada de destino sem fazer commit das alterações
        road_element_layer.startEditing()

        # Etapa 1: Processar Rodovias
        currentStep = 0
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo(self.tr("Processando rodovias..."))
        self.process_roads(roads_layer, road_element_layer, multiStepFeedback)

        # Etapa 2: Processar Ferrovias
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo(self.tr("Processando ferrovias..."))
        self.process_railways(railways_layer, road_element_layer, multiStepFeedback)

        # Etapa 3: Processar Valas
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo(self.tr("Processando valas..."))
        self.process_ditches(ditches_layer, road_element_layer, multiStepFeedback)

        # Etapa 4: Processar Trechos de Drenagem
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo(self.tr("Processando trechos de drenagem..."))
        self.process_drainage(drainage_layer, road_element_layer, multiStepFeedback)

        return {}

    def process_roads(self, layer, target_layer, feedback):
        try:
            # Filtrar feições onde tipo_elemento_viario é diferente de 97 e 9999
            request = QgsFeatureRequest().setFilterExpression(
                '"tipo_elemento_viario" <> 97 AND "tipo_elemento_viario" <> 9999'
            )

            # Contar feições para relatório
            features = list(layer.getFeatures(request))
            total = len(features)

            if total == 0:
                feedback.pushInfo(
                    self.tr("Nenhuma feição de rodovia encontrada para copiar.")
                )
                return

            feedback.pushInfo(self.tr(f"Copiando {total} feições de rodovias..."))

            # Armazenar novas feições
            new_features = []

            # Criar novas feições
            for current, feature in enumerate(features):
                if feedback.isCanceled():
                    break

                # Criar uma nova feição
                new_feature = QgsVectorLayerUtils.createFeature(
                    target_layer, feature.geometry()
                )

                # Mapear atributos
                fields = feature.fields().names()

                if "tipo_elemento_viario" in fields:
                    new_feature["tipo"] = feature["tipo_elemento_viario"]

                if "nome_elemento_viario" in fields:
                    new_feature["nome"] = feature["nome_elemento_viario"]

                if "posicao_pista_elemento_viario" in fields:
                    new_feature["posicao_pista"] = feature[
                        "posicao_pista_elemento_viario"
                    ]

                if "material_construcao_elemento_viario" in fields:
                    new_feature["material_construcao"] = feature[
                        "material_construcao_elemento_viario"
                    ]

                # Definir valores fixos
                new_feature["modal_uso"] = 4
                new_feature["situacao_fisica"] = 3

                new_features.append(new_feature)

                # Atualizar progresso
                feedback.setProgress((current + 1) * 100 / total)

            # Adicionar todas as feições de uma vez para melhor desempenho
            target_layer.addFeatures(new_features)

            feedback.pushInfo(
                self.tr(f"Adicionadas {len(new_features)} feições de rodovias.")
            )

        except Exception as e:
            feedback.reportError(self.tr(f"Erro ao processar rodovias: {str(e)}"))

    def process_railways(self, layer, target_layer, feedback):
        try:
            # Filtrar feições onde tipo_elemento_viario é diferente de 97 e 9999
            request = QgsFeatureRequest().setFilterExpression(
                '"tipo_elemento_viario" <> 97 AND "tipo_elemento_viario" <> 9999'
            )

            # Contar feições para relatório
            features = list(layer.getFeatures(request))
            total = len(features)

            if total == 0:
                feedback.pushInfo(
                    self.tr("Nenhuma feição de ferrovia encontrada para copiar.")
                )
                return

            feedback.pushInfo(self.tr(f"Copiando {total} feições de ferrovias..."))

            # Armazenar novas feições
            new_features = []

            # Criar novas feições
            for current, feature in enumerate(features):
                if feedback.isCanceled():
                    break

                # Criar uma nova feição
                new_feature = QgsVectorLayerUtils.createFeature(
                    target_layer, feature.geometry()
                )

                # Mapear atributos
                fields = feature.fields().names()

                if "tipo_elemento_viario" in fields:
                    new_feature["tipo"] = feature["tipo_elemento_viario"]

                if "nome_elemento_viario" in fields:
                    new_feature["nome"] = feature["nome_elemento_viario"]

                if "posicao_pista_elemento_viario" in fields:
                    new_feature["posicao_pista"] = feature[
                        "posicao_pista_elemento_viario"
                    ]

                if "material_construcao_elemento_viario" in fields:
                    new_feature["material_construcao"] = feature[
                        "material_construcao_elemento_viario"
                    ]

                # Definir valores fixos
                new_feature["modal_uso"] = 5
                new_feature["situacao_fisica"] = 3

                new_features.append(new_feature)

                # Atualizar progresso
                feedback.setProgress((current + 1) * 100 / total)

            # Adicionar todas as feições de uma vez para melhor desempenho
            target_layer.addFeatures(new_features)

            feedback.pushInfo(
                self.tr(f"Adicionadas {len(new_features)} feições de ferrovias.")
            )

        except Exception as e:
            feedback.reportError(self.tr(f"Erro ao processar ferrovias: {str(e)}"))

    def process_ditches(self, layer, target_layer, feedback):
        try:
            # Filtrar feições onde em_galeria_bueiro é igual a 1
            request = QgsFeatureRequest().setFilterExpression('"em_galeria_bueiro" = 1')

            # Contar feições para relatório
            features = list(layer.getFeatures(request))
            total = len(features)

            if total == 0:
                feedback.pushInfo(
                    self.tr("Nenhuma feição de vala encontrada para copiar.")
                )
                return

            feedback.pushInfo(self.tr(f"Copiando {total} feições de valas..."))

            # Armazenar novas feições
            new_features = []

            # Criar novas feições
            for current, feature in enumerate(features):
                if feedback.isCanceled():
                    break

                # Criar uma nova feição
                new_feature = QgsVectorLayerUtils.createFeature(
                    target_layer, feature.geometry()
                )

                # Definir atributos fixos
                new_feature["tipo"] = 501
                new_feature["material_construcao"] = 0
                new_feature["modal_uso"] = 4
                new_feature["situacao_fisica"] = 3
                new_feature["posicao_pista"] = 97

                new_features.append(new_feature)

                # Atualizar progresso
                feedback.setProgress((current + 1) * 100 / total)

            # Adicionar todas as feições de uma vez para melhor desempenho
            target_layer.addFeatures(new_features)

            feedback.pushInfo(
                self.tr(f"Adicionadas {len(new_features)} feições de valas.")
            )

        except Exception as e:
            feedback.reportError(self.tr(f"Erro ao processar valas: {str(e)}"))

    def process_drainage(self, layer, target_layer, feedback):
        try:
            # Filtrar feições onde em_galeria_bueiro é igual a 1
            request = QgsFeatureRequest().setFilterExpression('"em_galeria_bueiro" = 1')

            # Contar feições para relatório
            features = list(layer.getFeatures(request))
            total = len(features)

            if total == 0:
                feedback.pushInfo(
                    self.tr(
                        "Nenhuma feição de trecho de drenagem encontrada para copiar."
                    )
                )
                return

            feedback.pushInfo(
                self.tr(f"Copiando {total} feições de trechos de drenagem...")
            )

            # Armazenar novas feições
            new_features = []

            # Criar novas feições
            for current, feature in enumerate(features):
                if feedback.isCanceled():
                    break

                # Criar uma nova feição
                new_feature = QgsVectorLayerUtils.createFeature(
                    target_layer, feature.geometry()
                )

                # Definir atributos fixos
                new_feature["tipo"] = 501
                new_feature["material_construcao"] = 0
                new_feature["modal_uso"] = 4
                new_feature["situacao_fisica"] = 3
                new_feature["posicao_pista"] = 97

                new_features.append(new_feature)

                # Atualizar progresso
                feedback.setProgress((current + 1) * 100 / total)

            # Adicionar todas as feições de uma vez para melhor desempenho
            target_layer.addFeatures(new_features)

            feedback.pushInfo(
                self.tr(
                    f"Adicionadas {len(new_features)} feições de trechos de drenagem."
                )
            )

        except Exception as e:
            feedback.reportError(
                self.tr(f"Erro ao processar trechos de drenagem: {str(e)}")
            )

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return CopyFeaturesIntoRoadElement()

    def name(self):
        return "copyfeaturesintoroadelement"

    def displayName(self):
        return self.tr("Copiar feições para elemento viário")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return help().helpUrl(self.name())
