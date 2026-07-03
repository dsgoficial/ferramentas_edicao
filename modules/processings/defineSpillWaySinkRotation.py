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
import math

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


class DefineSpillWaySinkRotation(QgsProcessingAlgorithm):

    INPUT = "INPUT"
    ONLY_SELECTED = "ONLY_SELECTED"
    INPUT_FIELD = "INPUT_FIELD"
    INPUT_DRAINAGES = "INPUT_DRAINAGES"
    INPUT_MIN_DIST = "INPUT_MIN_DIST"
    ROTATED = "ROTATED"
    NO_DRAINAGE = "NO_DRAINAGE"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT,
                self.tr("Sumidouros e Vertedouros"),
                [QgsProcessing.TypeVectorPoint],
                defaultValue="elemnat_sumidouro_vertedouro_p",
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

        # Tolerância: distância máxima entre o ponto e a EXTREMIDADE do
        # trecho de drenagem, em metros no terreno
        self.addParameter(
            QgsProcessingParameterNumber(
                self.INPUT_MIN_DIST,
                self.tr("Tolerância da distância (em metros)"),
                type=QgsProcessingParameterNumber.Double,
                minValue=0.0,
                defaultValue=1.0,
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
        self.addOutput(
            QgsProcessingOutputNumber(self.ROTATED, self.tr("Pontos rotacionados"))
        )
        self.addOutput(
            QgsProcessingOutputNumber(
                self.NO_DRAINAGE,
                self.tr("Pontos sem extremidade de drenagem na tolerância"),
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        inputLyr = self.parameterAsVectorLayer(parameters, self.INPUT, context)
        onlySelected = self.parameterAsBool(parameters, self.ONLY_SELECTED, context)
        rotationField = self.parameterAsStrings(parameters, self.INPUT_FIELD, context)[0]
        drainagesLyr = self.parameterAsVectorLayer(
            parameters, self.INPUT_DRAINAGES, context
        )
        toleranceMeters = self.parameterAsDouble(
            parameters, self.INPUT_MIN_DIST, context
        )

        # metros no terreno -> unidade do CRS da camada de pontos
        if inputLyr.crs().isGeographic():
            d = QgsDistanceArea()
            d.setSourceCrs(
                QgsCoordinateReferenceSystem("EPSG:3857"),
                QgsCoordinateTransformContext(),
            )
            tolerance = d.convertLengthMeasurement(
                toleranceMeters, Qgis.DistanceUnit.Degrees
            )
        else:
            tolerance = toleranceMeters

        transform = None
        if drainagesLyr.crs() != inputLyr.crs():
            transform = QgsCoordinateTransform(
                drainagesLyr.crs(), inputLyr.crs(), context.transformContext()
            )

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
            return {self.ROTATED: 0, self.NO_DRAINAGE: 0}
        stepSize = 100 / nFeats

        fieldIdx = inputLyr.fields().lookupField(rotationField)
        rotations = {}
        nNoDrainage = 0

        for current, feat in enumerate(iterator):
            if feedback.isCanceled():
                return {self.ROTATED: 0, self.NO_DRAINAGE: 0}
            geom = feat.geometry()
            if geom is None or geom.isEmpty():
                continue
            vertex = geom.vertexAt(0)
            point = core.QgsPoint(vertex.x(), vertex.y())

            endpoint = self._nearestDrainageEndpoint(
                drainagesLyr, point, tolerance, transform
            )
            if endpoint is None:
                nNoDrainage += 1
                continue
            endVertex, innerVertex = endpoint
            # Convencao original preservada: azimute da extremidade que toca o
            # ponto PARA DENTRO do trecho (montante), menos 90.
            angle = endVertex.azimuth(innerVertex) - 90
            # normaliza para (-180, 180]
            angle = -((-angle + 180) % 360 - 180)
            rotations[feat.id()] = round(angle)
            feedback.setProgress(current * stepSize)

        inputLyr.startEditing()
        inputLyr.beginEditCommand("Rotacionando simbolos")
        for fid, angle in rotations.items():
            inputLyr.changeAttributeValue(fid, fieldIdx, angle)
        inputLyr.endEditCommand()

        feedback.pushInfo(
            self.tr(
                "Pontos rotacionados: {0} | sem extremidade de drenagem a menos "
                "de {1} m: {2}"
            ).format(len(rotations), toleranceMeters, nNoDrainage)
        )
        return {self.ROTATED: len(rotations), self.NO_DRAINAGE: nNoDrainage}

    @staticmethod
    def _nearestDrainageEndpoint(drainagesLyr, point, tolerance, transform):
        """Extremidade de trecho de drenagem mais próxima do ponto, dentro da
        tolerância. Retorna (vértice da extremidade, vértice adjacente) no CRS
        da camada de pontos. Determinístico: menor distância; empate pelo
        menor fid. Corrige o comportamento antigo, que usava sempre os dois
        ÚLTIMOS vértices — errado quando o ponto está no INÍCIO do trecho."""
        rect = QgsGeometry.fromPointXY(core.QgsPointXY(point.x(), point.y())).boundingBox()
        rect.grow(tolerance)
        searchRect = rect
        if transform is not None:
            searchRect = transform.transformBoundingBox(
                rect, Qgis.TransformDirection.Reverse
            )
        request = QgsFeatureRequest().setFilterRect(searchRect)
        best = None
        bestDist = None
        bestFid = None
        for feat in drainagesLyr.getFeatures(request):
            geom = QgsGeometry(feat.geometry())
            if geom is None or geom.isEmpty():
                continue
            if transform is not None:
                geom.transform(transform)
            parts = (
                geom.asGeometryCollection() if geom.isMultipart() else [geom]
            )
            for part in parts:
                vertices = list(part.vertices())
                if len(vertices) < 2:
                    continue
                for endVertex, innerVertex in (
                    (vertices[0], vertices[1]),
                    (vertices[-1], vertices[-2]),
                ):
                    dist = math.hypot(
                        endVertex.x() - point.x(), endVertex.y() - point.y()
                    )
                    if dist > tolerance:
                        continue
                    if (
                        best is None
                        or dist < bestDist - 1e-12
                        or (abs(dist - bestDist) <= 1e-12 and feat.id() < bestFid)
                    ):
                        best = (endVertex, innerVertex)
                        bestDist = dist
                        bestFid = feat.id()
        return best

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return DefineSpillWaySinkRotation()

    def name(self):
        return "definespillwaysinkrotation"

    def displayName(self):
        return self.tr("Definir rotação de sumidouro")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return help().helpUrl(self.name())
