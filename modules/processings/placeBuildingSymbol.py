# -*- coding: utf-8 -*-

from itertools import chain, tee
from typing import Iterable

from qgis import core
from qgis.core import (
    QgsFeatureRequest,
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingMultiStepFeedback,
    QgsProcessingParameterVectorLayer,
    QgsProcessingParameterBoolean,
    QgsVectorLayerUtils,
    QgsGeometry,
    QgsGeometryUtils,
)
from qgis.PyQt.QtCore import QCoreApplication


class PlaceBuildingSymbol(QgsProcessingAlgorithm):

    INPUT = "INPUT"
    ONLY_SELECTED = "ONLY_SELECTED"
    INPUT_SYMBOL_LAYER = "INPUT_SYMBOL_LAYER"
    INPUT_SYMBOL_LAYER_ROTATION_FIELD = "INPUT_SYMBOL_LAYER_ROTATION_FIELD"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT,
                self.tr("Selecionar camada de edificação área"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="constr_edificacao_a",
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.ONLY_SELECTED, self.tr("Executar somente nas feições selecionadas")
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
        self.addParameter(
            core.QgsProcessingParameterField(
                self.INPUT_SYMBOL_LAYER_ROTATION_FIELD,
                self.tr("Selecionar o atributo de rotação da camada de edição"),
                type=core.QgsProcessingParameterField.Any,
                parentLayerParameterName=self.INPUT_SYMBOL_LAYER,
                allowMultiple=False,
                defaultValue="simb_rot",
            )
        )
        self.typeMap = {
            516: 11,
            517: 11,
            518: 11,
            519: 11,
            520: 11,
            521: 11,
            522: 11,
            523: 11,
            524: 11,
            525: 11,
            601: 19,
            602: 20,
            2601: 16,
            2901: 17,
            2902: 17,
        }

    def processAlgorithm(self, parameters, context, feedback):
        inputLyr = self.parameterAsVectorLayer(parameters, self.INPUT, context)
        onlySelected = self.parameterAsBool(parameters, self.ONLY_SELECTED, context)
        simbAreaLayer = self.parameterAsVectorLayer(
            parameters, self.INPUT_SYMBOL_LAYER, context
        )
        rotationField = self.parameterAsFields(
            parameters, self.INPUT_SYMBOL_LAYER_ROTATION_FIELD, context
        )[0]
        multiStepFeedback = QgsProcessingMultiStepFeedback(2, feedback)
        multiStepFeedback.setCurrentStep(0)
        self.placeHospitalSymbol(
            inputLyr=inputLyr,
            simbAreaLayer=simbAreaLayer,
            onlySelected=onlySelected,
            feedback=multiStepFeedback,
        )
        multiStepFeedback.setCurrentStep(1)
        self.placeSymbolsOnTopOfBuildings(
            inputLyr=inputLyr,
            onlySelected=onlySelected,
            simbAreaLayer=simbAreaLayer,
            rotationField=rotationField,
            feedback=multiStepFeedback,
        )
        return {}

    def placeHospitalSymbol(self, inputLyr, simbAreaLayer, onlySelected, feedback):
        request = QgsFeatureRequest().setFilterExpression(
            '("tipo" - "tipo"%100)/100 in (20)'
        )
        if onlySelected:
            request.setFilterFids([feat.id() for feat in inputLyr.selectedFeatures()])
        iterator = (
            inputLyr.getFeatures(request)
            if not onlySelected
            else list(inputLyr.getFeatures(request))
        )
        nFeats = inputLyr.featureCount() if not onlySelected else len(iterator)
        if nFeats == 0:
            return {}
        stepSize = 100 / nFeats
        simbAreaLayer.startEditing()
        simbAreaLayer.beginEditCommand("Posicionando símbolos de hospital")
        newFeatList = []
        for current, feat in enumerate(iterator):
            if feedback.isCanceled():
                break
            geom = feat.geometry()
            innerPoint = geom.centroid()
            if not innerPoint.within(geom):
                innerPoint = geom.pointOnSurface()
            newFeat = QgsVectorLayerUtils.createFeature(simbAreaLayer, innerPoint)
            newFeat["tipo"] = 15
            newFeatList.append(newFeat)
            feedback.setProgress(current * stepSize)
        simbAreaLayer.addFeatures(newFeatList)
        simbAreaLayer.endEditCommand()

    def placeSymbolsOnTopOfBuildings(
        self, inputLyr, onlySelected, simbAreaLayer, rotationField, feedback
    ):
        iterator = (
            inputLyr.getFeatures()
            if not onlySelected
            else inputLyr.getSelectedFeatures()
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
        simbAreaLayer.beginEditCommand(
            "Posicionando elementos no segmento mais ao norte dos polígonos"
        )
        newFeatList = []
        for current, feat in enumerate(iterator):
            if feedback.isCanceled():
                break
            if feat["tipo"] not in self.typeMap:
                continue
            geom = feat.geometry()
            geom = geom.removeInteriorRings()
            geom.forcePolygonCounterClockwise()
            midpointDict = {
                QgsGeometry(QgsGeometryUtils.midpoint(p1, p2)): [p1, p2]
                for p1, p2 in pairwise(geom.vertices())
            }
            mostNorthernMidPoint = max(
                midpointDict.keys(), key=lambda x: x.asPoint().y()
            )
            newFeat = QgsVectorLayerUtils.createFeature(
                simbAreaLayer, mostNorthernMidPoint
            )
            coordinateList = list(
                chain.from_iterable(
                    map(lambda p: (p.x(), p.y()), midpointDict[mostNorthernMidPoint])
                )
            )
            # angle = math.degrees(QgsGeometryUtils.linePerpendicularAngle(*coordinateList)) % 180
            p1, p2 = midpointDict[mostNorthernMidPoint]
            azimuth = p1.azimuth(p2)
            innerPoint = geom.pointOnSurface().asPoint()
            angle = (
                azimuth - 90
                if QgsGeometryUtils.leftOfLine(
                    innerPoint.x(), innerPoint.y(), *coordinateList
                )
                < 0
                else azimuth + 90
            )
            newFeat[rotationField] = angle + 180
            newFeat["tipo"] = self.typeMap[feat["tipo"]]
            newFeatList.append(newFeat)
            feedback.setProgress(current * stepSize)
        simbAreaLayer.addFeatures(newFeatList)
        simbAreaLayer.endEditCommand()

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return PlaceBuildingSymbol()

    def name(self):
        return "placebuildingsymbol"

    def displayName(self):
        return self.tr("Insere símbolo de edificação")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return self.tr("O algoritmo ...")


def pairwise(iterable: Iterable) -> Iterable:
    "s -> (s0,s1), (s1,s2), (s2, s3), ..."
    a, b = tee(iterable)
    next(b, None)
    return zip(a, b)
