# -*- coding: utf-8 -*-

import processing

from qgis import core
from qgis.core import (
    QgsFeatureRequest,
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingMultiStepFeedback,
    QgsProcessingParameterVectorLayer,
    QgsProcessingParameterBoolean,
    QgsProcessingParameterEnum,
    QgsDistanceArea,
    QgsCoordinateReferenceSystem,
    QgsProcessingFeatureSourceDefinition,
    QgsVectorLayerUtils,
)
from qgis.PyQt.QtCore import QCoreApplication


class PlaceAllAreaPointSymbols(QgsProcessingAlgorithm):

    INPUT_AREA_BUILDINGS = "INPUT_AREA_BUILDINGS"
    INPUT_LAND_USE = "INPUT_LAND_USE"
    INPUT_POWER_PLANT = "INPUT_POWER_PLANT"
    INPUT_MINERAL_EXTRACTION = "INPUT_MINERAL_EXTRACTION"
    ONLY_SELECTED = "ONLY_SELECTED"
    HIDE_FEATS = "HIDE_FEATS"
    SCALE = "SCALE"
    INPUT_SYMBOL_LAYER = "INPUT_SYMBOL_LAYER"
    OUTPUT = "OUTPUT"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_AREA_BUILDINGS,
                self.tr("Selecionar camada de edificações área"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="constr_edificacao_a",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAND_USE,
                self.tr("Selecionar camada de ocupação do solo"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="constr_ocupacao_solo_a",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_POWER_PLANT,
                self.tr("Selecionar camada de elemento energia"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="infra_elemento_energia_a",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_MINERAL_EXTRACTION,
                self.tr("Selecionar camada de extração mineral"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="constr_extracao_mineral_a",
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.ONLY_SELECTED,
                self.tr(
                    "Executar somente nas feições selecionadas de todas as camadas de entrada"
                ),
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.HIDE_FEATS,
                self.tr("Ocultar feições que não tem tamanho suficiente"),
                defaultValue=False,
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
        self.sizesDict = {
            0: 25000,
            1: 50000,
            2: 100000,
            3: 250000,
        }
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_SYMBOL_LAYER,
                self.tr("Selecionar camada de camada de edição"),
                [QgsProcessing.TypeVectorPoint],
                defaultValue="edicao_simb_area_p",
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        inputAreaBuildingsLyr = self.parameterAsVectorLayer(
            parameters, self.INPUT_AREA_BUILDINGS, context
        )
        inputPowerPlantLyr = self.parameterAsVectorLayer(
            parameters, self.INPUT_POWER_PLANT, context
        )
        inputMineralExtractionLyr = self.parameterAsVectorLayer(
            parameters, self.INPUT_MINERAL_EXTRACTION, context
        )
        inputLandUseLyr = self.parameterAsVectorLayer(
            parameters, self.INPUT_LAND_USE, context
        )
        onlySelected = self.parameterAsBool(parameters, self.ONLY_SELECTED, context)
        simbAreaLayer = self.parameterAsVectorLayer(
            parameters, self.INPUT_SYMBOL_LAYER, context
        )
        inputLandUseLyr = self.parameterAsVectorLayer(
            parameters, self.INPUT_LAND_USE, context
        )
        hideFeats = self.parameterAsBool(parameters, self.HIDE_FEATS, context)
        scaleIdx = self.parameterAsInt(parameters, self.SCALE, context)
        multiStepFeedback = QgsProcessingMultiStepFeedback(5, feedback)
        multiStepFeedback.setCurrentStep(0)
        multiStepFeedback.setProgressText(
            "Executando o posicionamento dos símbolos de edificações área no ponto médio do segmento mais ao norte"
        )
        processing.run(
            "ferramentasedicao:placesymbolsontopofareabuildings",
            {
                "INPUT": inputAreaBuildingsLyr,
                "ONLY_SELECTED": onlySelected,
                "INPUT_SYMBOL_LAYER": simbAreaLayer,
                "INPUT_SYMBOL_LAYER_ROTATION_FIELD": "simb_rot",
            },
            feedback=multiStepFeedback,
            context=context,
            is_child_algorithm=True,
        )

        multiStepFeedback.setCurrentStep(1)
        multiStepFeedback.setProgressText(
            "Executando o posicionamento dos símbolos de ocupação do solo"
        )
        processing.run(
            "ferramentasedicao:placepointsymbolinsidearea",
            {
                "INPUT": inputLandUseLyr,
                "ONLY_SELECTED": onlySelected,
                "INPUT_VISIBLE_FIELD": "visivel",
                "HIDE_FEATS": hideFeats,
                "SCALE": scaleIdx,
                "INPUT_SYMBOL_LAYER": simbAreaLayer,
            },
            feedback=multiStepFeedback,
            context=context,
            is_child_algorithm=True,
        )

        multiStepFeedback.setCurrentStep(2)
        multiStepFeedback.setProgressText(
            "Executando o posicionamento do símbolo de hospitais"
        )
        processing.run(
            "ferramentasedicao:placehospitalsymbol",
            {
                "INPUT": inputAreaBuildingsLyr,
                "ONLY_SELECTED": onlySelected,
                "INPUT_SYMBOL_LAYER": simbAreaLayer,
            },
            feedback=multiStepFeedback,
            context=context,
            is_child_algorithm=True,
        )

        multiStepFeedback.setCurrentStep(3)
        multiStepFeedback.setProgressText(
            "Executando o posicionamento dos símbolos de subestação de energia"
        )
        processing.run(
            "ferramentasedicao:placepowerplantsymbol",
            {
                "INPUT": inputPowerPlantLyr,
                "ONLY_SELECTED": onlySelected,
                "INPUT_VISIBLE_FIELD": "visivel",
                "HIDE_FEATS": hideFeats,
                "SCALE": scaleIdx,
                "INPUT_SYMBOL_LAYER": simbAreaLayer,
            },
            feedback=multiStepFeedback,
            context=context,
            is_child_algorithm=True,
        )

        multiStepFeedback.setCurrentStep(4)
        multiStepFeedback.setProgressText(
            "Executando o posicionamento dos símbolos de extração mineral"
        )
        processing.run(
            "ferramentasedicao:placepowerplantsymbol",
            {
                "INPUT": inputMineralExtractionLyr,
                "ONLY_SELECTED": onlySelected,
                "INPUT_VISIBLE_FIELD": "visivel",
                "HIDE_FEATS": hideFeats,
                "SCALE": scaleIdx,
                "INPUT_SYMBOL_LAYER": simbAreaLayer,
            },
            feedback=multiStepFeedback,
            context=context,
            is_child_algorithm=True,
        )

        return {self.OUTPUT: ""}

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return PlaceAllAreaPointSymbols()

    def name(self):
        return "placeallareasymbols"

    def displayName(self):
        return self.tr("Insere símbolos de todos os elementos área")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return self.tr(
            "O algoritmo insere símbolos de todos os elementos área:\n"
            "- Subestação de energia;\n"
            "- Extração mineral;\n"
            "- Extração mineral não operacional;\n"
            "- Cemitério cristão;\n"
            "- Estacionamento;\n"
            "- Edificação de ensino;\n"
            "- Edificação Religiosa Cristã;\n"
            "- Edificação Religiosa Templo;\n"
            "- Edificação de Saúde;\n"
            "- Posto de Combustível;\n"
            "- Representação Diplomática;\n"
            "- Campo/quadra;\n"
        )
