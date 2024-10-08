# -*- coding: utf-8 -*-

import itertools
import os
from qgis.PyQt.QtCore import QCoreApplication
from qgis.core import (
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingParameterVectorLayer,
    QgsProcessingParameterDistance,
    QgsProcessingParameterBoolean,
    QgsProcessingMultiStepFeedback,
)
from qgis import core
import concurrent.futures


class DefineBuildingRotation(QgsProcessingAlgorithm):

    INPUT = "INPUT"
    ONLY_SELECTED = "ONLU_SELECTED"
    INPUT_MIN_DIST = "INPUT_MIN_DIST"
    INPUT_FIELD = "INPUT_FIELD"
    INPUT_ROADS = "INPUT_ROADS"
    INPUT_RAILWAYS = "INPUT_RAILWAYS"
    INPUT_DRAINAGES = "INPUT_DRAINAGES"
    INPUT_WATER_BODIES = "INPUT_WATER_BODIES"
    INPUT_BUILT_UP_AREAS = "INPUT_BUILT_UP_AREAS"
    OUTPUT = "OUTPUT"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT,
                self.tr("Edificações"),
                [QgsProcessing.TypeVectorPoint],
                defaultValue="constr_edificacao_p",
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.ONLY_SELECTED, self.tr("Executar somente nas feições selecionadas")
            )
        )

        self.addParameter(
            core.QgsProcessingParameterField(
                self.INPUT_FIELD,
                self.tr("Selecionar o atributo de rotação da camada"),
                type=core.QgsProcessingParameterField.Any,
                parentLayerParameterName=self.INPUT,
                allowMultiple=False,
                defaultValue="simb_rot",
            )
        )
        self.addParameter(
            QgsProcessingParameterDistance(
                self.INPUT_MIN_DIST,
                self.tr("Tolerância da distância"),
                parentParameterName=self.INPUT,
                minValue=0,
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_ROADS,
                self.tr("Rodovias"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="infra_via_deslocamento_l",
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_RAILWAYS,
                self.tr("Ferrovias"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="infra_ferrovia_l",
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_DRAINAGES,
                self.tr("Drenagens"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="elemnat_trecho_drenagem_l",
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_WATER_BODIES,
                self.tr("Massas D'água"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="cobter_massa_dagua_a",
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_BUILT_UP_AREAS,
                self.tr("Áreas Edificadas"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="cobter_area_construida_a",
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        buildingsLyr = self.parameterAsVectorLayer(parameters, self.INPUT, context)
        onlySelected = self.parameterAsBool(parameters, self.ONLY_SELECTED, context)
        rotationField = self.parameterAsFields(parameters, self.INPUT_FIELD, context)[0]
        distance = self.parameterAsDouble(parameters, self.INPUT_MIN_DIST, context)
        self.roadsLyr = self.parameterAsVectorLayer(
            parameters, self.INPUT_ROADS, context
        )
        self.railwaysLyr = self.parameterAsVectorLayer(
            parameters, self.INPUT_RAILWAYS, context
        )
        self.drainagesLyr = self.parameterAsVectorLayer(
            parameters, self.INPUT_DRAINAGES, context
        )
        self.waterBodiesLyr = self.parameterAsVectorLayer(
            parameters, self.INPUT_WATER_BODIES, context
        )
        self.builtUpAreasLyr = self.parameterAsVectorLayer(
            parameters, self.INPUT_BUILT_UP_AREAS, context
        )

        iterator = (
            buildingsLyr.getFeatures()
            if not onlySelected
            else buildingsLyr.getSelectedFeatures()
        )
        nFeats = (
            buildingsLyr.featureCount()
            if not onlySelected
            else buildingsLyr.selectedFeatureCount()
        )
        if nFeats == 0:
            return {}
        stepSize = 100 / nFeats
        multiStepFeedback = QgsProcessingMultiStepFeedback(2, feedback)
        multiStepFeedback.setCurrentStep(0)
        multiStepFeedback.setProgressText("Submetendo tarefas para as threads")
        futures = set()
        pool = concurrent.futures.ThreadPoolExecutor(max_workers=os.cpu_count() - 1)

        def evaluate(pointFeature):
            if feedback.isCanceled():
                return None, None
            pointGeometry = pointFeature.geometry()
            point = pointGeometry.asMultiPoint()[0]
            nearestGeometry = self.getNearestGeometry(distance, pointGeometry)
            if not nearestGeometry:
                return None, None
            projectedPoint = core.QgsGeometryUtils.closestPoint(
                nearestGeometry.constGet(), core.QgsPoint(point.x(), point.y())
            )
            angle = core.QgsPoint(point.x(), point.y()).azimuth(projectedPoint) + 180
            return pointFeature, angle

        for current, pointFeature in enumerate(iterator):
            if multiStepFeedback.isCanceled():
                return {}
            futures.add(pool.submit(evaluate, pointFeature))
            multiStepFeedback.setProgress(current * stepSize)

        multiStepFeedback.setCurrentStep(1)
        multiStepFeedback.setProgressText("Rotacionando símbolos")
        buildingsLyr.startEditing()
        buildingsLyr.beginEditCommand("Rotacionando simbolos")
        for current, future in enumerate(concurrent.futures.as_completed(futures)):
            if multiStepFeedback.isCanceled():
                break
            pointFeature, angle = future.result()
            if pointFeature is None or pointFeature[rotationField] == angle:
                continue
            pointFeature[rotationField] = angle
            buildingsLyr.updateFeature(pointFeature)
            multiStepFeedback.setProgress(current * stepSize)

        buildingsLyr.endEditCommand()

        return {}

    def getNearestGeometry(self, distance, pointGeometry):
        nearestGeometry = None
        shortestDistance = None
        buffer = pointGeometry.buffer(distance, -1)
        bbox = buffer.boundingBox()

        for layer in itertools.chain(
            [
                self.roadsLyr,
                self.railwaysLyr,
                self.drainagesLyr,
                self.waterBodiesLyr,
                self.builtUpAreasLyr,
            ]
        ):
            for feature in layer.getFeatures(bbox):
                geom = feature.geometry()
                if not geom.intersects(buffer):
                    continue
                distanceFound = pointGeometry.distance(geom)
                if distanceFound > distance:
                    continue
                elif shortestDistance is None or distanceFound < shortestDistance:
                    nearestGeometry = geom
                    shortestDistance = distanceFound
            if shortestDistance is not None:
                break
        return nearestGeometry

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return DefineBuildingRotation()

    def name(self):
        return "definebuildingrotation"

    def displayName(self):
        return self.tr("Definir rotação de edificações")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return self.tr(
            "O algoritmo define a rotação das edificações de acordo com feições da vizinhança, seguindo a seguinte prioridade: rodovias, ferrovias, drenagens, massas dagua e área construída."
        )
