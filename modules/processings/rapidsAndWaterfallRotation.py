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
    QgsProcessingParameterNumber,
    QgsProcessingParameterVectorLayer,
)
from qgis import core

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help

# Tipos rotacionados (dominio tipo do elemento hidrografico):
# 9 Cachoeira, 10 Salto, 11 Catarata, 12 Corredeira
ROTATED_TYPES = (9, 10, 11, 12)


class RapidsAndWaterfallRotation(QgsProcessingAlgorithm):

    INPUT_LAYER_P = "INPUT_LAYER_P"
    INPUT_FIELD_LAYER_P = "INPUT_FIELD_LAYER_P"
    INPUT_DRAINAGE = "INPUT_DRAINAGE"
    INPUT_MIN_DIST = "INPUT_MIN_DIST"
    ROTATED = "ROTATED"
    NO_DRAINAGE = "NO_DRAINAGE"

    def initAlgorithm(self, config=None):
        # Camada de pontos a ter elementos rotacionados
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_P,
                self.tr("Selecionar camada de elemento hidrográfico"),
                [QgsProcessing.TypeVectorPoint],
                defaultValue="elemnat_elemento_hidrografico_p",
            )
        )
        # Atributo de rotação
        self.addParameter(
            core.QgsProcessingParameterField(
                self.INPUT_FIELD_LAYER_P,
                self.tr("Selecionar o atributo de rotação"),
                type=core.QgsProcessingParameterField.Any,
                parentLayerParameterName=self.INPUT_LAYER_P,
                allowMultiple=False,
                defaultValue="simb_rot",
            )
        )
        # Tolerância: distância máxima ponto-drenagem, em metros no terreno
        # (convertida para a unidade do CRS da camada automaticamente)
        self.addParameter(
            QgsProcessingParameterNumber(
                self.INPUT_MIN_DIST,
                self.tr("Tolerância da distância (em metros)"),
                type=QgsProcessingParameterNumber.Double,
                minValue=0.0,
                defaultValue=1.0,
            )
        )
        # Camada de drenagem que serve de referência para a rotação
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_DRAINAGE,
                self.tr("Selecionar camada de drenagem"),
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
                self.tr("Pontos sem drenagem dentro da tolerância"),
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        pointLayer = self.parameterAsVectorLayer(
            parameters, self.INPUT_LAYER_P, context
        )
        rotationField = self.parameterAsStrings(
            parameters, self.INPUT_FIELD_LAYER_P, context
        )[0]
        drainageLayer = self.parameterAsVectorLayer(
            parameters, self.INPUT_DRAINAGE, context
        )
        toleranceMeters = self.parameterAsDouble(
            parameters, self.INPUT_MIN_DIST, context
        )

        # metros no terreno -> unidade do CRS da camada de pontos
        if pointLayer.crs().isGeographic():
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
        if drainageLayer.crs() != pointLayer.crs():
            transform = QgsCoordinateTransform(
                drainageLayer.crs(), pointLayer.crs(), context.transformContext()
            )

        fieldIdx = pointLayer.fields().lookupField(rotationField)
        nRotated = 0
        nNoDrainage = 0
        nFeats = pointLayer.featureCount()
        stepSize = 100 / nFeats if nFeats else 100

        rotations = {}  # fid -> graus
        for current, feat in enumerate(pointLayer.getFeatures()):
            if feedback.isCanceled():
                return {self.ROTATED: 0, self.NO_DRAINAGE: 0}
            try:
                tipo = int(feat["tipo"])
            except (TypeError, ValueError):
                continue
            if tipo not in ROTATED_TYPES:
                continue

            geom = feat.geometry()
            if geom is None or geom.isEmpty():
                continue
            # Point ou MultiPoint
            vertex = geom.vertexAt(0)
            pointGeom = QgsGeometry.fromPointXY(
                core.QgsPointXY(vertex.x(), vertex.y())
            )

            nearest = self._nearestDrainage(
                drainageLayer, pointGeom, tolerance, transform
            )
            if nearest is None:
                nNoDrainage += 1
                continue

            # Tangente local no ponto do trecho mais proximo; simbolo
            # SIMETRICO e PERPENDICULAR ao trecho: azimute - 90, normalizado
            # para [-90, 90).
            dist = nearest.lineLocatePoint(pointGeom)
            azimuth = math.degrees(nearest.interpolateAngle(dist))
            angle = ((azimuth - 90.0 + 90.0) % 180.0) - 90.0
            rotations[feat.id()] = round(angle)
            nRotated += 1
            feedback.setProgress(current * stepSize)

        pointLayer.startEditing()
        pointLayer.beginEditCommand("Definindo rotação de corredeira e queda d'água")
        for fid, angle in rotations.items():
            pointLayer.changeAttributeValue(fid, fieldIdx, angle)
        pointLayer.endEditCommand()

        feedback.pushInfo(
            self.tr(
                "Pontos rotacionados: {0} | sem drenagem a menos de {1} m: {2}"
            ).format(nRotated, toleranceMeters, nNoDrainage)
        )
        return {self.ROTATED: nRotated, self.NO_DRAINAGE: nNoDrainage}

    @staticmethod
    def _nearestDrainage(drainageLayer, pointGeom, tolerance, transform):
        """Geometria do trecho de drenagem mais proximo dentro da tolerancia
        (no CRS da camada de pontos). Escolha deterministica em confluencias:
        menor distancia; empate resolvido pelo menor fid."""
        rect = pointGeom.boundingBox()
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
        for feat in drainageLayer.getFeatures(request):
            geom = QgsGeometry(feat.geometry())
            if geom is None or geom.isEmpty():
                continue
            if transform is not None:
                geom.transform(transform)
            dist = geom.distance(pointGeom)
            if dist > tolerance:
                continue
            if (
                best is None
                or dist < bestDist - 1e-12
                or (abs(dist - bestDist) <= 1e-12 and feat.id() < bestFid)
            ):
                best = geom
                bestDist = dist
                bestFid = feat.id()
        return best

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return RapidsAndWaterfallRotation()

    def name(self):
        return "rapidsandwaterfallrotation"

    def displayName(self):
        return self.tr("Definir rotação de corredeira e queda d'água")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return help().helpUrl(self.name())
