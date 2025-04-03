# -*- coding: utf-8 -*-

from qgis import core
from qgis.core import (
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingParameterVectorLayer,
    QgsProcessingParameterBoolean,
    QgsVectorLayerUtils,
)
from qgis.PyQt.QtCore import QCoreApplication

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help


class PlaceMineralExtractionSymbol(QgsProcessingAlgorithm):

    INPUT = "INPUT"
    ONLY_SELECTED = "ONLY_SELECTED"
    INPUT_VISIBLE_FIELD = "INPUT_VISIBLE_FIELD"
    INPUT_SYMBOL_LAYER = "INPUT_SYMBOL_LAYER"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT,
                self.tr("Selecionar camada de extração mineral"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="constr_extracao_mineral_a",
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.ONLY_SELECTED, self.tr("Executar somente nas feições selecionadas")
            )
        )
        self.addParameter(
            core.QgsProcessingParameterField(
                self.INPUT_VISIBLE_FIELD,
                self.tr('Selecionar o atributo de "visibilidade" da camada de entrada'),
                type=core.QgsProcessingParameterField.Any,
                parentLayerParameterName=self.INPUT,
                allowMultiple=False,
                defaultValue="visivel",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_SYMBOL_LAYER,
                self.tr("Selecionar camada de camada de edição"),
                [QgsProcessing.TypeVectorPoint],
                defaultValue="edicao_simb_area_p",
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        inputLyr = self.parameterAsVectorLayer(parameters, self.INPUT, context)
        onlySelected = self.parameterAsBool(parameters, self.ONLY_SELECTED, context)
        inputLyrVisibleField = self.parameterAsFields(
            parameters, self.INPUT_VISIBLE_FIELD, context
        )[0]
        simbAreaLayer = self.parameterAsVectorLayer(
            parameters, self.INPUT_SYMBOL_LAYER, context
        )

        iterator = (
            inputLyr.getFeatures() if not onlySelected else inputLyr.selectedFeatures()
        )
        nFeats = (
            inputLyr.featureCount()
            if not onlySelected
            else inputLyr.selectedFeatureCount()
        )
        if nFeats == 0:
            return {}
        stepSize = 100 / nFeats

        simbAreaLayer.startEditing()
        simbAreaLayer.beginEditCommand("Posicionando símbolos")
        newFeatList = []

        for current, feat in enumerate(iterator):
            if feedback.isCanceled():
                break

            # Verifica se a feição está visível
            if feat[inputLyrVisibleField] != 1:
                continue

            geom = feat.geometry()
            innerPoint = geom.centroid()
            if not innerPoint.within(geom):
                innerPoint = geom.pointOnSurface()

            newFeat = QgsVectorLayerUtils.createFeature(simbAreaLayer, innerPoint)
            newFeat["tipo"] = 2 if feat["situacao_fisica"] == 3 else 3
            newFeatList.append(newFeat)

            feedback.setProgress(current * stepSize)

        simbAreaLayer.addFeatures(newFeatList)
        simbAreaLayer.endEditCommand()
        return {}

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return PlaceMineralExtractionSymbol()

    def name(self):
        return "placemineralextractionsymbol"

    def displayName(self):
        return self.tr("Insere símbolo de extração mineral")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return help().helpUrl(self.name())
