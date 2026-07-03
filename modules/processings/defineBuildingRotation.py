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

from qgis.PyQt.QtCore import QCoreApplication
from qgis.core import (
    Qgis,
    QgsCoordinateReferenceSystem,
    QgsCoordinateTransform,
    QgsCoordinateTransformContext,
    QgsDistanceArea,
    QgsFeatureRequest,
    QgsGeometry,
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingOutputNumber,
    QgsProcessingParameterBoolean,
    QgsProcessingParameterNumber,
    QgsProcessingParameterVectorLayer,
)
from qgis import core

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help


class DefineBuildingRotation(QgsProcessingAlgorithm):

    INPUT = "INPUT"
    # valor historico com typo, mantido por compatibilidade com modelos salvos
    ONLY_SELECTED = "ONLU_SELECTED"
    INPUT_MIN_DIST = "INPUT_MIN_DIST"
    INPUT_FIELD = "INPUT_FIELD"
    INPUT_ROADS = "INPUT_ROADS"
    INPUT_RAILWAYS = "INPUT_RAILWAYS"
    INPUT_DRAINAGES = "INPUT_DRAINAGES"
    INPUT_WATER_BODIES = "INPUT_WATER_BODIES"
    INPUT_BUILT_UP_AREAS = "INPUT_BUILT_UP_AREAS"
    ROTATED = "ROTATED"
    NO_REFERENCE = "NO_REFERENCE"

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
        # Distância máxima até a feição de referência, em metros no terreno
        # (o parâmetro antigo era em unidades da camada e SEM default — nada
        # era rotacionado até o operador digitar um valor)
        self.addParameter(
            QgsProcessingParameterNumber(
                self.INPUT_MIN_DIST,
                self.tr("Tolerância da distância (em metros)"),
                type=QgsProcessingParameterNumber.Double,
                minValue=0.0,
                defaultValue=50.0,
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
                defaultValue="cobter_area_edificada_a",
            )
        )
        self.addOutput(
            QgsProcessingOutputNumber(self.ROTATED, self.tr("Pontos rotacionados"))
        )
        self.addOutput(
            QgsProcessingOutputNumber(
                self.NO_REFERENCE,
                self.tr("Pontos sem referência dentro da tolerância"),
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        buildingsLyr = self.parameterAsVectorLayer(parameters, self.INPUT, context)
        onlySelected = self.parameterAsBool(parameters, self.ONLY_SELECTED, context)
        rotationField = self.parameterAsStrings(parameters, self.INPUT_FIELD, context)[0]
        toleranceMeters = self.parameterAsDouble(
            parameters, self.INPUT_MIN_DIST, context
        )

        # metros no terreno -> unidade do CRS da camada de edificações
        if buildingsLyr.crs().isGeographic():
            d = QgsDistanceArea()
            d.setSourceCrs(
                QgsCoordinateReferenceSystem("EPSG:3857"),
                QgsCoordinateTransformContext(),
            )
            distance = d.convertLengthMeasurement(
                toleranceMeters, Qgis.DistanceUnit.Degrees
            )
        else:
            distance = toleranceMeters

        # Ordem = PRIORIDADE cartográfica: a edificação orienta-se à rodovia
        # se houver uma na tolerância; senão ferrovia; e assim por diante.
        self.referenceLayers = []
        for paramName in (
            self.INPUT_ROADS,
            self.INPUT_RAILWAYS,
            self.INPUT_DRAINAGES,
            self.INPUT_WATER_BODIES,
            self.INPUT_BUILT_UP_AREAS,
        ):
            layer = self.parameterAsVectorLayer(parameters, paramName, context)
            if layer is None:
                continue
            transform = None
            if layer.crs() != buildingsLyr.crs():
                transform = QgsCoordinateTransform(
                    layer.crs(), buildingsLyr.crs(), context.transformContext()
                )
            self.referenceLayers.append((layer, transform))

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
            return {self.ROTATED: 0, self.NO_REFERENCE: 0}
        stepSize = 100 / nFeats

        fieldIdx = buildingsLyr.fields().lookupField(rotationField)
        rotations = {}
        nNoReference = 0

        for current, pointFeature in enumerate(iterator):
            if feedback.isCanceled():
                return {self.ROTATED: 0, self.NO_REFERENCE: 0}
            pointGeometry = pointFeature.geometry()
            if pointGeometry is None or pointGeometry.isEmpty():
                continue
            vertex = pointGeometry.vertexAt(0)
            point = core.QgsPoint(vertex.x(), vertex.y())
            pointGeom = QgsGeometry.fromPointXY(core.QgsPointXY(vertex.x(), vertex.y()))

            nearestGeometry = self.getNearestGeometry(distance, pointGeom)
            if nearestGeometry is None:
                nNoReference += 1
                continue
            projectedPoint = core.QgsGeometryUtils.closestPoint(
                nearestGeometry.constGet(), point
            )
            angle = point.azimuth(projectedPoint) + 180
            rotations[pointFeature.id()] = angle
            feedback.setProgress(current * stepSize)

        buildingsLyr.startEditing()
        buildingsLyr.beginEditCommand("Rotacionando simbolos")
        for fid, angle in rotations.items():
            buildingsLyr.changeAttributeValue(fid, fieldIdx, angle)
        buildingsLyr.endEditCommand()

        feedback.pushInfo(
            self.tr(
                "Pontos rotacionados: {0} | sem referência a menos de {1} m: {2}"
            ).format(len(rotations), toleranceMeters, nNoReference)
        )
        return {self.ROTATED: len(rotations), self.NO_REFERENCE: nNoReference}

    def getNearestGeometry(self, distance, pointGeometry):
        """Geometria mais próxima dentro da tolerância, respeitando a ordem
        de prioridade das camadas de referência. Dentro de uma camada, a
        menor distância vence."""
        rect = pointGeometry.boundingBox()
        rect.grow(distance)
        for layer, transform in self.referenceLayers:
            searchRect = rect
            if transform is not None:
                searchRect = transform.transformBoundingBox(
                    rect, Qgis.TransformDirection.Reverse
                )
            nearestGeometry = None
            shortestDistance = None
            request = QgsFeatureRequest().setFilterRect(searchRect)
            for feature in layer.getFeatures(request):
                geom = QgsGeometry(feature.geometry())
                if geom is None or geom.isEmpty():
                    continue
                if transform is not None:
                    geom.transform(transform)
                distanceFound = pointGeometry.distance(geom)
                if distanceFound > distance:
                    continue
                if shortestDistance is None or distanceFound < shortestDistance:
                    nearestGeometry = geom
                    shortestDistance = distanceFound
            if nearestGeometry is not None:
                return nearestGeometry
        return None

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
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return help().helpUrl(self.name())
