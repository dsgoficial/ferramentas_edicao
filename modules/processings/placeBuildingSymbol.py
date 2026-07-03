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

from itertools import tee
from typing import Iterable

from qgis import core
from qgis.core import (
    Qgis,
    QgsCoordinateReferenceSystem,
    QgsCoordinateTransform,
    QgsCoordinateTransformContext,
    QgsDistanceArea,
    QgsFeatureRequest,
    QgsGeometry,
    QgsGeometryUtils,
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingMultiStepFeedback,
    QgsProcessingOutputNumber,
    QgsProcessingParameterBoolean,
    QgsProcessingParameterEnum,
    QgsProcessingParameterVectorLayer,
    QgsVectorLayerUtils,
)
from qgis.PyQt.QtCore import QCoreApplication

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help

# Simbolo de hospital (tipo 15 na edicao_simb_area_p), para edificacoes de
# saude (grupo 20 do dominio)
HOSPITAL_SYMBOL_TYPE = 15


class PlaceBuildingSymbol(QgsProcessingAlgorithm):

    INPUT = "INPUT"
    ONLY_SELECTED = "ONLY_SELECTED"
    SCALE = "SCALE"
    INPUT_SYMBOL_LAYER = "INPUT_SYMBOL_LAYER"
    INPUT_SYMBOL_LAYER_ROTATION_FIELD = "INPUT_SYMBOL_LAYER_ROTATION_FIELD"
    INSERTED = "INSERTED"
    REMOVED = "REMOVED"

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
            QgsProcessingParameterEnum(
                self.SCALE,
                self.tr("Selecione a escala de edição:"),
                options=[
                    self.tr("1:5.000"),
                    self.tr("1:10.000"),
                    self.tr("1:25.000"),
                    self.tr("1:50.000"),
                    self.tr("1:100.000"),
                    self.tr("1:250.000"),
                ],
                defaultValue=2,
            )
        )
        self.sizesDict = {
            0: 5000,
            1: 10000,
            2: 25000,
            3: 50000,
            4: 100000,
            5: 250000,
        }
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
        # edificacao (tipo da via de entrada) -> tipo do simbolo no topo
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
        self.addOutput(
            QgsProcessingOutputNumber(self.INSERTED, self.tr("Símbolos inseridos"))
        )
        self.addOutput(
            QgsProcessingOutputNumber(
                self.REMOVED, self.tr("Símbolos pré-existentes removidos")
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        inputLyr = self.parameterAsVectorLayer(parameters, self.INPUT, context)
        onlySelected = self.parameterAsBool(parameters, self.ONLY_SELECTED, context)
        simbAreaLayer = self.parameterAsVectorLayer(
            parameters, self.INPUT_SYMBOL_LAYER, context
        )
        rotationField = self.parameterAsStrings(
            parameters, self.INPUT_SYMBOL_LAYER_ROTATION_FIELD, context
        )[0]
        scaleIdx = self.parameterAsInt(parameters, self.SCALE, context)
        scale = self.sizesDict[scaleIdx]

        # corredor de limpeza (1 mm de carta) na unidade do CRS de cada camada
        def convert_distance(dist, layer):
            if layer.crs().isGeographic():
                d = QgsDistanceArea()
                d.setSourceCrs(
                    QgsCoordinateReferenceSystem("EPSG:3857"),
                    QgsCoordinateTransformContext(),
                )
                return d.convertLengthMeasurement(dist, Qgis.DistanceUnit.Degrees)
            return dist

        corridor = convert_distance(scale * 0.001, simbAreaLayer)
        polylabelTol = 0.0001 if inputLyr.crs().isGeographic() else 1.0

        transform = None
        if inputLyr.crs() != simbAreaLayer.crs():
            transform = QgsCoordinateTransform(
                inputLyr.crs(), simbAreaLayer.crs(), context.transformContext()
            )

        hasVisivel = inputLyr.fields().lookupField("visivel") >= 0

        multiStepFeedback = QgsProcessingMultiStepFeedback(3, feedback)
        processedGeoms = []
        newFeatList = []

        multiStepFeedback.setCurrentStep(0)
        multiStepFeedback.pushInfo(self.tr("Posicionando símbolos de hospital"))
        canceled = self.placeHospitalSymbol(
            inputLyr=inputLyr,
            simbAreaLayer=simbAreaLayer,
            onlySelected=onlySelected,
            hasVisivel=hasVisivel,
            polylabelTol=polylabelTol,
            processedGeoms=processedGeoms,
            newFeatList=newFeatList,
            feedback=multiStepFeedback,
        )
        if canceled:
            return {self.INSERTED: 0, self.REMOVED: 0}

        multiStepFeedback.setCurrentStep(1)
        multiStepFeedback.pushInfo(self.tr("Posicionando símbolos no topo"))
        canceled = self.placeSymbolsOnTopOfBuildings(
            inputLyr=inputLyr,
            onlySelected=onlySelected,
            simbAreaLayer=simbAreaLayer,
            rotationField=rotationField,
            hasVisivel=hasVisivel,
            processedGeoms=processedGeoms,
            newFeatList=newFeatList,
            feedback=multiStepFeedback,
        )
        if canceled:
            return {self.INSERTED: 0, self.REMOVED: 0}

        multiStepFeedback.setCurrentStep(2)
        multiStepFeedback.pushInfo(self.tr("Gravando saída"))

        # Idempotência: remove os simbolos DESTE processing (hospital + topo)
        # de rodadas anteriores no corredor das edificações processadas, no
        # mesmo edit command da inserção.
        ownTypes = set(self.typeMap.values()) | {HOSPITAL_SYMBOL_TYPE}
        idsToRemove = self._findSymbolsInCorridor(
            simbAreaLayer, processedGeoms, corridor, transform, ownTypes
        )

        if transform is not None:
            for feat in newFeatList:
                geom = feat.geometry()
                geom.transform(transform)
                feat.setGeometry(geom)

        simbAreaLayer.startEditing()
        simbAreaLayer.beginEditCommand("Posicionando símbolos de edificação")
        if idsToRemove:
            simbAreaLayer.deleteFeatures(idsToRemove)
        simbAreaLayer.addFeatures(newFeatList)
        simbAreaLayer.endEditCommand()

        multiStepFeedback.pushInfo(
            self.tr(
                "Símbolos inseridos: {0} | removidos (rodadas anteriores): {1}"
            ).format(len(newFeatList), len(idsToRemove))
        )
        return {self.INSERTED: len(newFeatList), self.REMOVED: len(idsToRemove)}

    @staticmethod
    def _isVisible(feat, hasVisivel):
        if not hasVisivel:
            return True
        try:
            return int(feat["visivel"]) == 1
        except (TypeError, ValueError):
            return False

    def placeHospitalSymbol(
        self,
        inputLyr,
        simbAreaLayer,
        onlySelected,
        hasVisivel,
        polylabelTol,
        processedGeoms,
        newFeatList,
        feedback,
    ):
        request = QgsFeatureRequest().setFilterExpression(
            '("tipo" - "tipo"%100)/100 in (20)'
        )
        if onlySelected:
            request.setFilterFids([feat.id() for feat in inputLyr.selectedFeatures()])
        feats = list(inputLyr.getFeatures(request))
        nFeats = len(feats)
        if nFeats == 0:
            return False
        stepSize = 100 / nFeats
        for current, feat in enumerate(feats):
            if feedback.isCanceled():
                return True
            geom = feat.geometry()
            if geom is None or geom.isEmpty():
                continue
            processedGeoms.append(geom)
            if not self._isVisible(feat, hasVisivel):
                continue
            try:
                poiGeom, _radius = geom.poleOfInaccessibility(polylabelTol)
                innerPoint = QgsGeometry.fromPointXY(poiGeom.asPoint())
            except Exception:
                innerPoint = geom.pointOnSurface()
            newFeat = QgsVectorLayerUtils.createFeature(simbAreaLayer, innerPoint)
            newFeat["tipo"] = HOSPITAL_SYMBOL_TYPE
            newFeatList.append(newFeat)
            feedback.setProgress(current * stepSize)
        return False

    def placeSymbolsOnTopOfBuildings(
        self,
        inputLyr,
        onlySelected,
        simbAreaLayer,
        rotationField,
        hasVisivel,
        processedGeoms,
        newFeatList,
        feedback,
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
            return False
        stepSize = 100 / nFeats
        for current, feat in enumerate(iterator):
            if feedback.isCanceled():
                return True
            try:
                tipo = int(feat["tipo"])
            except (TypeError, ValueError):
                continue
            if tipo not in self.typeMap:
                continue
            geom = feat.geometry()
            if geom is None or geom.isEmpty():
                continue
            processedGeoms.append(geom)
            if not self._isVisible(feat, hasVisivel):
                continue

            placement = self._northernEdgePlacement(geom)
            if placement is None:
                continue
            midPoint, angle = placement
            newFeat = QgsVectorLayerUtils.createFeature(simbAreaLayer, midPoint)
            newFeat[rotationField] = angle
            newFeat["tipo"] = self.typeMap[tipo]
            newFeatList.append(newFeat)
            feedback.setProgress(current * stepSize)
        return False

    @staticmethod
    def _northernEdgePlacement(geom):
        """Ponto médio da aresta mais ao norte (entre os anéis EXTERIORES de
        cada parte — arestas fantasmas entre partes/anéis não existem mais) e
        rotação perpendicular apontando para fora do polígono."""
        geom = geom.removeInteriorRings()
        parts = geom.asGeometryCollection() if geom.isMultipart() else [geom]
        best = None  # (midY, midPointGeom, p1, p2, part)
        for part in parts:
            vertices = list(part.vertices())
            if len(vertices) < 3:
                continue
            for p1, p2 in pairwise(vertices):
                mid = QgsGeometryUtils.midpoint(p1, p2)
                if best is None or mid.y() > best[0]:
                    best = (mid.y(), QgsGeometry(mid), p1, p2, part)
        if best is None:
            return None
        _y, midPoint, p1, p2, part = best
        azimuth = p1.azimuth(p2)
        innerPoint = part.pointOnSurface().asPoint()
        angle = (
            azimuth - 90
            if QgsGeometryUtils.leftOfLine(
                innerPoint.x(), innerPoint.y(), p1.x(), p1.y(), p2.x(), p2.y()
            )
            < 0
            else azimuth + 90
        )
        return midPoint, angle + 180

    @staticmethod
    def _findSymbolsInCorridor(symbolLayer, processedGeoms, corridor, transform,
                               ownTypes):
        """Ids dos simbolos com tipo DESTE processing a menos de `corridor`
        das edificações processadas (no CRS da camada de simbolos)."""
        if not processedGeoms:
            return []
        engines = []
        extent = None
        for geom in processedGeoms:
            g = QgsGeometry(geom)
            if transform is not None:
                g.transform(transform)
            engine = QgsGeometry.createGeometryEngine(g.constGet())
            engine.prepareGeometry()
            engines.append((engine, g))
            bbox = g.boundingBox()
            if extent is None:
                extent = bbox
            else:
                extent.combineExtentWith(bbox)
        extent.grow(corridor * 2)
        ids = []
        request = QgsFeatureRequest().setFilterRect(extent)
        for feat in symbolLayer.getFeatures(request):
            try:
                tipo = int(feat["tipo"])
            except (TypeError, ValueError):
                continue
            if tipo not in ownTypes:
                continue
            geom = feat.geometry()
            if geom is None or geom.isEmpty():
                continue
            constGeom = geom.constGet()
            if any(eng.distance(constGeom) < corridor for eng, _g in engines):
                ids.append(feat.id())
        return ids

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
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return help().helpUrl(self.name())


def pairwise(iterable: Iterable) -> Iterable:
    "s -> (s0,s1), (s1,s2), (s2, s3), ..."
    a, b = tee(iterable)
    next(b, None)
    return zip(a, b)
