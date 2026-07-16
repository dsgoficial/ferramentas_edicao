# -*- coding: utf-8 -*-
"""
/***************************************************************************
 DsgTools
                                 A QGIS plugin
 Brazilian Army Cartographic Production Tools
                              -------------------
        begin                : 2025-04-15
        git sha              : $Format:%H$
        copyright            : (C) 2025 by Philipe Borba - Cartographic Engineer @ Brazilian Army
        email                : borba.philipe@eb.mil.br
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
import processing
import random

from qgis.PyQt.QtCore import QCoreApplication
from ...Help.algorithmHelpCreator import HTMLHelpCreator as help
from qgis.core import (
    QgsCoordinateReferenceSystem,
    QgsCoordinateTransform,
    QgsExpression,
    QgsExpressionContext,
    QgsExpressionContextUtils,
    QgsFeature,
    QgsFeatureSink,
    QgsGeometry,
    QgsPointXY,
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingException,
    QgsProcessingMultiStepFeedback,
    QgsProcessingParameterBoolean,
    QgsProcessingParameterExpression,
    QgsProcessingParameterFeatureSink,
    QgsProcessingParameterField,
    QgsProcessingParameterNumber,
    QgsProcessingParameterVectorLayer,
    QgsProject,
    QgsRectangle,
    QgsSpatialIndex,
)

from DsgTools.core.DSGToolsProcessingAlgs.algRunner import AlgRunner
from .makeGrid import getSirgasAuthIdByPointLatLong
from .processingUtils import safe_process_algorithm


class BuildingGeneralizationAlgorithm(QgsProcessingAlgorithm):
    """
    Algorithm for generalizing building point features with axis-aligned
    square symbols using iterative displacement and visibility resolution.
    """

    INPUT_BUILDINGS = "INPUT_BUILDINGS"
    INPUT_ROADS = "INPUT_ROADS"
    INPUT_WATER = "INPUT_WATER"
    INPUT_MOLDURA = "INPUT_MOLDURA"
    VISIBILITY_FIELD = "VISIBILITY_FIELD"
    SYMBOL_SIZE = "SYMBOL_SIZE"
    MIN_GAP = "MIN_GAP"
    ROAD_SYMBOL_WIDTH = "ROAD_SYMBOL_WIDTH"
    MAX_DISPLACEMENT = "MAX_DISPLACEMENT"
    MAX_ITERATIONS = "MAX_ITERATIONS"
    ENABLE_DISPLACEMENT = "ENABLE_DISPLACEMENT"
    GENERIC_EXPRESSION = "GENERIC_EXPRESSION"
    COMMIT_CHANGES = "COMMIT_CHANGES"
    FLAGS = "FLAGS"

    # Force system constants
    NEIGHBOR_REPULSION_FACTOR = 0.5
    FORBIDDEN_REPULSION_STRENGTH = 1.5
    ORIGIN_ATTRACTION_STRENGTH = 0.1
    INITIAL_DAMPING = 0.8
    CONVERGENCE_FRACTION = 0.01
    # Fração do símbolo somada à repulsão para o par ultrapassar o limiar de conflito
    # em vez de estacionar sobre ele.
    SEPARATION_MARGIN_FRACTION = 0.05

    def name(self):
        return "buildinggeneralizationalgorithm"

    def displayName(self):
        return self.tr("Generalização de Edificações")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def tr(self, string):
        return QCoreApplication.translate(
            "BuildingGeneralizationAlgorithm", string
        )

    def createInstance(self):
        return BuildingGeneralizationAlgorithm()

    def shortHelpString(self):
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return help().helpUrl(self.name())

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_BUILDINGS,
                self.tr("Camada de edificações (editada in-place)"),
                [QgsProcessing.TypeVectorPoint],
                defaultValue="constr_edificacao_p",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_ROADS,
                self.tr("Camada de vias"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="infra_via_deslocamento_l",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_WATER,
                self.tr("Camada de massa d'água (opcional)"),
                [QgsProcessing.TypeVectorPolygon],
                optional=True,
                defaultValue="cobter_massa_dagua_a",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_MOLDURA,
                self.tr("Camada de moldura (opcional)"),
                [QgsProcessing.TypeVectorPolygon],
                optional=True,
                defaultValue="aux_moldura_a",
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.ENABLE_DISPLACEMENT,
                self.tr(
                    "Habilitar deslocamento (desmarque para apenas reduzir densidade)"
                ),
                defaultValue=True,
            )
        )
        self.addParameter(
            QgsProcessingParameterField(
                self.VISIBILITY_FIELD,
                self.tr("Campo de visibilidade (valor 2 = não visível)"),
                defaultValue="visivel",
                parentLayerParameterName=self.INPUT_BUILDINGS,
                type=QgsProcessingParameterField.Any,
            )
        )
        self.addParameter(
            QgsProcessingParameterNumber(
                self.SYMBOL_SIZE,
                self.tr("Tamanho do símbolo - lado do quadrado (metros)"),
                QgsProcessingParameterNumber.Double,
                defaultValue=25.0,
                minValue=0.01,
            )
        )
        self.addParameter(
            QgsProcessingParameterNumber(
                self.MIN_GAP,
                self.tr("Espaçamento mínimo entre símbolos (metros)"),
                QgsProcessingParameterNumber.Double,
                defaultValue=2.0,
                minValue=0.0,
            )
        )
        self.addParameter(
            QgsProcessingParameterNumber(
                self.ROAD_SYMBOL_WIDTH,
                self.tr("Largura do símbolo de via (metros)"),
                QgsProcessingParameterNumber.Double,
                defaultValue=35.0,
                minValue=0.01,
            )
        )
        self.addParameter(
            QgsProcessingParameterNumber(
                self.MAX_DISPLACEMENT,
                self.tr("Deslocamento máximo (metros)"),
                QgsProcessingParameterNumber.Double,
                defaultValue=50.0,
                minValue=0.01,
            )
        )
        self.addParameter(
            QgsProcessingParameterNumber(
                self.MAX_ITERATIONS,
                self.tr("Número máximo de iterações"),
                QgsProcessingParameterNumber.Integer,
                defaultValue=50,
                minValue=1,
                maxValue=1000,
            )
        )
        self.addParameter(
            QgsProcessingParameterExpression(
                self.GENERIC_EXPRESSION,
                self.tr("Expressão para edificações genéricas (baixa prioridade)"),
                defaultValue='"tipo" in (0, 9999)',
                parentLayerParameterName=self.INPUT_BUILDINGS,
                optional=False,
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.COMMIT_CHANGES,
                self.tr(
                    "Salvar as alterações na camada "
                    "(desmarcado, ficam pendentes na edição para revisão e desfazer)"
                ),
                defaultValue=False,
            )
        )
        self.addParameter(
            QgsProcessingParameterFeatureSink(
                self.FLAGS,
                self.tr("Edificações não genéricas com conflitos irresolvíveis (flags)"),
            )
        )

    @safe_process_algorithm
    def processAlgorithm(self, parameters, context, feedback):
        buildingLayer = self.parameterAsVectorLayer(
            parameters, self.INPUT_BUILDINGS, context
        )
        roadLayer = self.parameterAsVectorLayer(
            parameters, self.INPUT_ROADS, context
        )
        waterLayer = self.parameterAsVectorLayer(
            parameters, self.INPUT_WATER, context
        )
        molduraLayer = self.parameterAsVectorLayer(
            parameters, self.INPUT_MOLDURA, context
        )
        enableDisplacement = self.parameterAsBoolean(
            parameters, self.ENABLE_DISPLACEMENT, context
        )
        visibilityField = self.parameterAsString(
            parameters, self.VISIBILITY_FIELD, context
        )
        symbolSize = self.parameterAsDouble(parameters, self.SYMBOL_SIZE, context)
        gap = self.parameterAsDouble(parameters, self.MIN_GAP, context)
        roadWidth = self.parameterAsDouble(
            parameters, self.ROAD_SYMBOL_WIDTH, context
        )
        maxDisplacement = self.parameterAsDouble(
            parameters, self.MAX_DISPLACEMENT, context
        )
        maxIterations = self.parameterAsInt(parameters, self.MAX_ITERATIONS, context)
        genericExpression = self.parameterAsExpression(
            parameters, self.GENERIC_EXPRESSION, context
        )
        commitChanges = self.parameterAsBoolean(
            parameters, self.COMMIT_CHANGES, context
        )

        visFieldIdx = buildingLayer.fields().indexOf(visibilityField)
        if visFieldIdx < 0:
            raise QgsProcessingException(
                self.tr(
                    f'Campo de visibilidade "{visibilityField}" não encontrado na camada de edificações.'
                )
            )

        (flagSink, flagDestId) = self.parameterAsSink(
            parameters,
            self.FLAGS,
            context,
            buildingLayer.fields(),
            buildingLayer.wkbType(),
            buildingLayer.sourceCrs(),
        )

        # Handle geographic CRS: reproject to SIRGAS 2000 UTM for metric calculations
        sourceCrs = buildingLayer.sourceCrs()
        inverseTransform = None
        forwardTransform = None
        if sourceCrs.isGeographic():
            extent = buildingLayer.sourceExtent()
            centLat = extent.center().y()
            centLon = extent.center().x()
            epsgStr = getSirgasAuthIdByPointLatLong(centLat, centLon)
            if not epsgStr:
                raise QgsProcessingException(
                    self.tr("Não foi possível determinar o fuso UTM para os dados.")
                )
            targetCrs = QgsCoordinateReferenceSystem(epsgStr)
            feedback.pushInfo(
                self.tr(f"CRS geográfico detectado. Reprojetando para {epsgStr}.")
            )
            forwardTransform = QgsCoordinateTransform(
                sourceCrs, targetCrs, QgsProject.instance()
            )
            inverseTransform = QgsCoordinateTransform(
                targetCrs, sourceCrs, QgsProject.instance()
            )
            if enableDisplacement:
                roadLayer = self._reprojectLayer(roadLayer, targetCrs, feedback)
                if waterLayer is not None:
                    waterLayer = self._reprojectLayer(waterLayer, targetCrs, feedback)
            if molduraLayer is not None:
                molduraLayer = self._reprojectLayer(molduraLayer, targetCrs, feedback)

        if enableDisplacement:
            nSteps = 6
        else:
            nSteps = 4
            feedback.pushInfo(
                self.tr(
                    "Modo apenas densidade: deslocamento desabilitado, "
                    "apenas conflitos entre edificações serão considerados."
                )
            )

        multiFeedback = QgsProcessingMultiStepFeedback(nSteps, feedback)
        algRunner = AlgRunner()
        halfSize = (symbolSize + gap) / 2.0
        currentStep = 0

        # Phase 1: Data preparation
        multiFeedback.setCurrentStep(currentStep)
        currentStep += 1
        multiFeedback.pushInfo(self.tr("Fase 1: Preparação dos dados"))
        if multiFeedback.isCanceled():
            return {self.FLAGS: flagDestId}
        if enableDisplacement:
            prepData = self.prepareData(
                buildingLayer, roadLayer, waterLayer, molduraLayer,
                symbolSize, gap, roadWidth, maxDisplacement,
                visFieldIdx, genericExpression,
                context, multiFeedback, algRunner,
                forwardTransform=forwardTransform,
            )
            buildings = prepData["buildings"]
            forbiddenGeom = prepData["forbiddenGeom"]
            blocks = prepData["blocks"]
        else:
            prepData = self.prepareDataDensityOnly(
                buildingLayer, molduraLayer,
                visFieldIdx, genericExpression,
                multiFeedback,
                forwardTransform=forwardTransform,
            )
            buildings = prepData["buildings"]

        if not buildings:
            multiFeedback.pushInfo(self.tr("Nenhuma edificação para processar."))
            return {self.FLAGS: flagDestId}

        # Phase 2: Conflict detection
        multiFeedback.setCurrentStep(currentStep)
        currentStep += 1
        multiFeedback.pushInfo(self.tr("Fase 2: Detecção de conflitos"))
        if multiFeedback.isCanceled():
            return {self.FLAGS: flagDestId}
        spatialIndex = self.rebuildSpatialIndex(buildings, halfSize)
        if enableDisplacement:
            forbiddenEngine = self._makeForbiddenEngine(forbiddenGeom)
            conflicts = self.detectConflicts(
                buildings, halfSize, spatialIndex,
                forbiddenEngine=forbiddenEngine,
            )
        else:
            conflicts = self.detectConflicts(
                buildings, halfSize, spatialIndex,
            )
        initialConflictCount = sum(1 for s in conflicts.values() if s)
        multiFeedback.pushInfo(
            self.tr(f"Detectados {initialConflictCount} edificações com conflitos")
        )

        if enableDisplacement:
            # Phase 3: Iterative displacement
            multiFeedback.setCurrentStep(currentStep)
            currentStep += 1
            multiFeedback.pushInfo(self.tr("Fase 3: Deslocamento iterativo"))
            if multiFeedback.isCanceled():
                return {self.FLAGS: flagDestId}
            self.iterativeDisplacement(
                buildings, conflicts, forbiddenGeom, forbiddenEngine, blocks,
                halfSize, maxDisplacement, maxIterations,
                multiFeedback,
            )

            # Phase 4: No-space detection
            multiFeedback.setCurrentStep(currentStep)
            currentStep += 1
            multiFeedback.pushInfo(self.tr("Fase 4: Detecção de espaço insuficiente"))
            if multiFeedback.isCanceled():
                return {self.FLAGS: flagDestId}
            self.detectNoSpace(
                buildings, conflicts, forbiddenEngine, blocks,
                halfSize, maxDisplacement, multiFeedback,
            )

        # Phase: Visibility resolution
        multiFeedback.setCurrentStep(currentStep)
        currentStep += 1
        multiFeedback.pushInfo(self.tr("Resolução de visibilidade"))
        if multiFeedback.isCanceled():
            return {self.FLAGS: flagDestId}
        idsToHide, idsToFlag = self.resolveVisibility(
            buildings, conflicts, halfSize, multiFeedback
        )
        multiFeedback.pushInfo(
            self.tr(
                f"Ocultando {len(idsToHide)} edificações genéricas, "
                f"sinalizando {len(idsToFlag)} edificações não genéricas"
            )
        )

        # Phase: Apply results
        multiFeedback.setCurrentStep(currentStep)
        multiFeedback.pushInfo(self.tr("Aplicando resultados"))
        if multiFeedback.isCanceled():
            return {self.FLAGS: flagDestId}
        self.applyResults(
            buildingLayer, buildings, idsToHide, idsToFlag,
            visFieldIdx, flagSink, multiFeedback,
            inverseTransform=inverseTransform if enableDisplacement else None,
            commitChanges=commitChanges,
        )

        # Stats
        hideSet = set(idsToHide)
        displacedCount = sum(
            1 for i, b in enumerate(buildings)
            if b["curPoint"] != b["origPoint"] and i not in hideSet
        )
        multiFeedback.pushInfo(
            self.tr(
                f"Concluído: {displacedCount} deslocadas, "
                f"{len(idsToHide)} ocultas, {len(idsToFlag)} sinalizadas"
            )
        )

        return {self.FLAGS: flagDestId}

    @staticmethod
    def _reprojectLayer(layer, targetCrs, feedback=None):
        result = processing.run(
            "native:reprojectlayer",
            {"INPUT": layer, "TARGET_CRS": targetCrs, "OUTPUT": "TEMPORARY_OUTPUT"},
            feedback=feedback,
        )
        return result["OUTPUT"]

    def prepareDataDensityOnly(
        self, buildingLayer, molduraLayer,
        visFieldIdx, genericExpression,
        feedback,
        forwardTransform=None,
    ):
        """Preparação simplificada para modo apenas densidade (sem vias/água)."""
        molduraEngine = None
        if molduraLayer is not None:
            geomList = [
                f.geometry() for f in molduraLayer.getFeatures()
                if not f.geometry().isNull() and not f.geometry().isEmpty()
            ]
            molduraGeom = QgsGeometry.unaryUnion(geomList) if geomList else QgsGeometry()
            if not molduraGeom.isNull() and not molduraGeom.isEmpty():
                molduraEngine = QgsGeometry.createGeometryEngine(
                    molduraGeom.constGet()
                )
                molduraEngine.prepareGeometry()
            else:
                feedback.pushInfo(
                    self.tr("Camada de moldura sem geometrias válidas. Nenhuma edificação a processar.")
                )
                return {"buildings": []}

        expr = QgsExpression(genericExpression)
        if expr.hasParserError():
            raise QgsProcessingException(
                self.tr(f"Expressão genérica inválida: {expr.parserErrorString()}")
            )
        expressionContext = QgsExpressionContext()
        expressionContext.appendScopes(
            QgsExpressionContextUtils.globalProjectLayerScopes(buildingLayer)
        )

        buildings = []
        for feat in buildingLayer.getFeatures():
            geom = feat.geometry()
            if geom.isNull() or geom.isEmpty():
                continue
            visValue = feat.attribute(visFieldIdx)
            if visValue == 2:
                continue

            point = geom.asPoint()
            qgsPoint = QgsPointXY(point.x(), point.y())
            if forwardTransform is not None:
                qgsPoint = forwardTransform.transform(qgsPoint)
            if molduraEngine is not None:
                ptGeom = QgsGeometry.fromPointXY(qgsPoint)
                if not molduraEngine.contains(ptGeom.constGet()):
                    continue
            expressionContext.setFeature(feat)
            isGeneric = bool(expr.evaluate(expressionContext))

            buildings.append({
                "featId": feat.id(),
                "origPoint": qgsPoint,
                "curPoint": QgsPointXY(qgsPoint.x(), qgsPoint.y()),
                "isGeneric": isGeneric,
                "blockIdx": None,
                "conflictsWithForbidden": False,
                "noSpace": False,
            })

        feedback.pushInfo(
            self.tr(f"Carregadas {len(buildings)} edificações para processar (modo densidade)")
        )
        return {"buildings": buildings}

    def prepareData(
        self, buildingLayer, roadLayer, waterLayer, molduraLayer,
        symbolSize, gap, roadWidth, maxDisplacement,
        visFieldIdx, genericExpression,
        context, feedback, algRunner,
        forwardTransform=None,
    ):
        molduraGeom = QgsGeometry()
        molduraEngine = None
        if molduraLayer is not None:
            geomList = [
                f.geometry() for f in molduraLayer.getFeatures()
                if not f.geometry().isNull() and not f.geometry().isEmpty()
            ]
            molduraGeom = QgsGeometry.unaryUnion(geomList) if geomList else QgsGeometry()
            if molduraGeom.isNull() or molduraGeom.isEmpty():
                feedback.pushInfo(
                    self.tr("Camada de moldura sem geometrias válidas. Nenhuma edificação a processar.")
                )
                return {"buildings": [], "forbiddenGeom": QgsGeometry(), "blocks": []}
            molduraEngine = QgsGeometry.createGeometryEngine(
                molduraGeom.constGet()
            )
            molduraEngine.prepareGeometry()

        expr = QgsExpression(genericExpression)
        if expr.hasParserError():
            raise QgsProcessingException(
                self.tr(f"Expressão genérica inválida: {expr.parserErrorString()}")
            )
        expressionContext = QgsExpressionContext()
        expressionContext.appendScopes(
            QgsExpressionContextUtils.globalProjectLayerScopes(buildingLayer)
        )

        buildings = []

        for feat in buildingLayer.getFeatures():
            geom = feat.geometry()
            if geom.isNull() or geom.isEmpty():
                continue
            visValue = feat.attribute(visFieldIdx)
            if visValue == 2:
                continue

            point = geom.asPoint()
            qgsPoint = QgsPointXY(point.x(), point.y())
            if forwardTransform is not None:
                qgsPoint = forwardTransform.transform(qgsPoint)
            if molduraEngine is not None:
                ptGeom = QgsGeometry.fromPointXY(qgsPoint)
                if not molduraEngine.contains(ptGeom.constGet()):
                    continue
            expressionContext.setFeature(feat)
            isGeneric = bool(expr.evaluate(expressionContext))

            buildings.append({
                "featId": feat.id(),
                "origPoint": qgsPoint,
                "curPoint": QgsPointXY(qgsPoint.x(), qgsPoint.y()),
                "isGeneric": isGeneric,
                "blockIdx": None,
                "conflictsWithForbidden": False,
                "noSpace": False,
            })

        feedback.pushInfo(
            self.tr(f"Carregadas {len(buildings)} edificações para processar")
        )

        # Build forbidden zone from road buffers + water borders
        roadBufferDist = roadWidth / 2.0 + gap / 2.0
        roadBuffers = algRunner.runBuffer(
            roadLayer, roadBufferDist, context,
            dissolve=True, feedback=feedback,
        )

        forbiddenLayers = [roadBuffers]

        if waterLayer is not None:
            waterBoundaries = algRunner.runBoundary(
                waterLayer, context, feedback=feedback
            )
            waterBorderBuffers = algRunner.runBuffer(
                waterBoundaries, gap / 2.0, context,
                dissolve=True, feedback=feedback,
            )
            forbiddenLayers.append(waterBorderBuffers)

        if len(forbiddenLayers) > 1:
            mergedForbidden = algRunner.runMergeVectorLayers(
                forbiddenLayers, context, feedback=feedback
            )
            dissolvedForbidden = algRunner.runDissolve(
                mergedForbidden, context, feedback=feedback
            )
        else:
            dissolvedForbidden = algRunner.runDissolve(
                forbiddenLayers[0], context, feedback=feedback
            )

        forbiddenGeomList = [
            f.geometry() for f in dissolvedForbidden.getFeatures()
            if not f.geometry().isNull() and not f.geometry().isEmpty()
        ]
        forbiddenGeom = (
            QgsGeometry.unaryUnion(forbiddenGeomList)
            if forbiddenGeomList else QgsGeometry()
        )

        feedback.pushInfo(
            self.tr("Zona proibida construída a partir dos buffers de vias/água")
        )

        # Build blocks (complement of forbidden zone within extent)
        if molduraEngine is not None:
            extentGeom = molduraGeom
        else:
            # Use buildings bbox expanded by maxDisplacement
            if buildings:
                xs = [b["origPoint"].x() for b in buildings]
                ys = [b["origPoint"].y() for b in buildings]
                extent = QgsRectangle(min(xs), min(ys), max(xs), max(ys))
            else:
                extent = buildingLayer.sourceExtent()
            extent = extent.buffered(maxDisplacement + symbolSize)
            extentGeom = QgsGeometry.fromRect(extent)

        blocks = []
        if not forbiddenGeom.isNull() and not forbiddenGeom.isEmpty():
            blockGeom = extentGeom.difference(forbiddenGeom)
            if not blockGeom.isNull() and not blockGeom.isEmpty():
                # Split multipart into individual blocks
                for part in blockGeom.asGeometryCollection():
                    if not part.isNull() and not part.isEmpty() and part.area() > 0:
                        blocks.append(part)

        feedback.pushInfo(self.tr(f"Criados {len(blocks)} blocos"))

        # Assign buildings to blocks
        if blocks:
            blockIndex = QgsSpatialIndex()
            for i, block in enumerate(blocks):
                feat = QgsFeature()
                feat.setId(i)
                feat.setGeometry(block)
                blockIndex.addFeature(feat)

            for building in buildings:
                pt = building["origPoint"]
                ptGeom = QgsGeometry.fromPointXY(pt)
                candidateIds = blockIndex.intersects(ptGeom.boundingBox())
                for cId in candidateIds:
                    if blocks[cId].contains(ptGeom):
                        building["blockIdx"] = cId
                        break

        return {
            "buildings": buildings,
            "forbiddenGeom": forbiddenGeom,
            "blocks": blocks,
        }

    @staticmethod
    def _makeAABB(pt, halfSize):
        return QgsGeometry.fromRect(
            QgsRectangle(
                pt.x() - halfSize, pt.y() - halfSize,
                pt.x() + halfSize, pt.y() + halfSize,
            )
        )

    @staticmethod
    def _makeForbiddenEngine(forbiddenGeom):
        if forbiddenGeom.isNull() or forbiddenGeom.isEmpty():
            return None
        engine = QgsGeometry.createGeometryEngine(forbiddenGeom.constGet())
        engine.prepareGeometry()
        return engine

    @staticmethod
    def _updateSpatialIndex(spatialIndex, idx, oldPt, newPt, halfSize):
        oldFeat = QgsFeature()
        oldFeat.setId(idx)
        oldFeat.setGeometry(BuildingGeneralizationAlgorithm._makeAABB(oldPt, halfSize))
        spatialIndex.deleteFeature(oldFeat)
        newFeat = QgsFeature()
        newFeat.setId(idx)
        newFeat.setGeometry(BuildingGeneralizationAlgorithm._makeAABB(newPt, halfSize))
        spatialIndex.addFeature(newFeat)

    def rebuildSpatialIndex(self, buildings, halfSize):
        spatialIndex = QgsSpatialIndex()
        for i, building in enumerate(buildings):
            feat = QgsFeature()
            feat.setId(i)
            feat.setGeometry(self._makeAABB(building["curPoint"], halfSize))
            spatialIndex.addFeature(feat)
        return spatialIndex

    def detectConflicts(self, buildings, halfSize, spatialIndex,
                        forbiddenEngine=None):
        fullSize = halfSize * 2.0
        conflicts = {i: set() for i in range(len(buildings))}

        for i, building in enumerate(buildings):
            pt = building["curPoint"]
            searchRect = QgsRectangle(
                pt.x() - fullSize, pt.y() - fullSize,
                pt.x() + fullSize, pt.y() + fullSize,
            )
            candidateIds = spatialIndex.intersects(searchRect)

            for j in candidateIds:
                if j <= i:
                    continue
                otherPt = buildings[j]["curPoint"]
                dx = abs(pt.x() - otherPt.x())
                dy = abs(pt.y() - otherPt.y())
                if dx < fullSize and dy < fullSize:
                    conflicts[i].add(j)
                    conflicts[j].add(i)

            if forbiddenEngine is not None:
                aabb = self._makeAABB(pt, halfSize)
                building["conflictsWithForbidden"] = forbiddenEngine.intersects(
                    aabb.constGet()
                )
            else:
                building["conflictsWithForbidden"] = False

        return conflicts

    def iterativeDisplacement(
        self, buildings, conflicts, forbiddenGeom, forbiddenEngine, blocks,
        halfSize, maxDisplacement, maxIterations, feedback,
    ):
        fullSize = halfSize * 2.0
        nBuildings = len(buildings)
        if nBuildings == 0:
            return

        convergenceThreshold = fullSize * self.CONVERGENCE_FRACTION
        separationMargin = fullSize * self.SEPARATION_MARGIN_FRACTION
        # gerador próprio, com semente fixa: o resultado tem que ser reproduzível sem
        # mexer no estado global do random, compartilhado com o resto da sessão QGIS
        rng = random.Random(42)

        # Pre-compute block centroids
        blockCentroids = {}
        for idx, block in enumerate(blocks):
            c = block.centroid()
            if not c.isNull() and not c.isEmpty():
                blockCentroids[idx] = c.asPoint()

        spatialIndex = self.rebuildSpatialIndex(buildings, halfSize)

        for iteration in range(maxIterations):
            if feedback.isCanceled():
                break

            damping = self.INITIAL_DAMPING * (1.0 - iteration / maxIterations)
            maxMovement = 0.0

            forces = []
            for i in range(nBuildings):
                fx, fy = 0.0, 0.0
                myConflicts = conflicts.get(i, set())
                hasForbidden = buildings[i]["conflictsWithForbidden"]
                inConflict = bool(myConflicts) or hasForbidden

                pt = buildings[i]["curPoint"]

                # Repulsion from neighbor buildings
                for j in myConflicts:
                    otherPt = buildings[j]["curPoint"]
                    dx = pt.x() - otherPt.x()
                    dy = pt.y() - otherPt.y()
                    overlapX = fullSize - abs(dx)
                    overlapY = fullSize - abs(dy)
                    if overlapX <= 0 or overlapY <= 0:
                        continue
                    # Push along axis of minimum penetration (each building absorbs half).
                    # A margem faz o par se separar de fato: repelir só pelo overlap
                    # deixa a força ir a zero exatamente sobre o limiar de conflito, e
                    # os dois descansam colados.
                    if overlapX < overlapY:
                        pushDir = 1.0 if dx >= 0 else -1.0
                        fx += (
                            pushDir
                            * (overlapX + separationMargin)
                            * self.NEIGHBOR_REPULSION_FACTOR
                        )
                    else:
                        pushDir = 1.0 if dy >= 0 else -1.0
                        fy += (
                            pushDir
                            * (overlapY + separationMargin)
                            * self.NEIGHBOR_REPULSION_FACTOR
                        )

                if hasForbidden and forbiddenEngine is not None:
                    aabb = self._makeAABB(pt, halfSize)
                    intersection = aabb.intersection(forbiddenGeom)
                    if not intersection.isNull() and not intersection.isEmpty() and intersection.area() > 0:
                        intCentroid = intersection.centroid()
                        if not intCentroid.isNull() and not intCentroid.isEmpty():
                            ic = intCentroid.asPoint()
                            dx = pt.x() - ic.x()
                            dy = pt.y() - ic.y()
                            dist = math.sqrt(dx * dx + dy * dy)
                            pushMag = math.sqrt(intersection.area()) * self.FORBIDDEN_REPULSION_STRENGTH
                            if dist > 0.0001:
                                fx += (dx / dist) * pushMag
                                fy += (dy / dist) * pushMag
                            else:
                                # centro exatamente sobre o centro da interseção: sem
                                # direção a seguir, sorteia uma. O ângulo é sorteado, e
                                # não o par (x, y), para o empurrão ter a mesma
                                # magnitude em qualquer direção.
                                angle = rng.uniform(0.0, 2.0 * math.pi)
                                fx += math.cos(angle) * pushMag
                                fy += math.sin(angle) * pushMag

                if not inConflict:
                    # Sem conflito, a edificação relaxa de volta para a origem. Essa
                    # atração fica fora enquanto há conflito: ela é proporcional ao
                    # deslocamento e não some quando o overlap some, então equilibrava
                    # a repulsão antes da separação necessária e o par estacionava
                    # ainda em conflito.
                    origPt = buildings[i]["origPoint"]
                    dx = origPt.x() - pt.x()
                    dy = origPt.y() - pt.y()
                    if abs(dx) < 1e-9 and abs(dy) < 1e-9:
                        forces.append((0.0, 0.0))
                        continue
                    fx += dx * self.ORIGIN_ATTRACTION_STRENGTH
                    fy += dy * self.ORIGIN_ATTRACTION_STRENGTH

                fx *= damping
                fy *= damping

                forces.append((fx, fy))

            for i in range(nBuildings):
                fx, fy = forces[i]
                if fx == 0.0 and fy == 0.0:
                    continue

                building = buildings[i]
                pt = building["curPoint"]
                newX = pt.x() + fx
                newY = pt.y() + fy

                # Clamp to max displacement from original
                origPt = building["origPoint"]
                dx = newX - origPt.x()
                dy = newY - origPt.y()
                dist = math.sqrt(dx * dx + dy * dy)
                if dist > maxDisplacement:
                    scale = maxDisplacement / dist
                    newX = origPt.x() + dx * scale
                    newY = origPt.y() + dy * scale

                # Block containment check
                blockIdx = building["blockIdx"]
                if blockIdx is not None and blockIdx < len(blocks):
                    newPtGeom = QgsGeometry.fromPointXY(QgsPointXY(newX, newY))
                    if not blocks[blockIdx].contains(newPtGeom):
                        # Try to stay inside: project onto block boundary
                        nearest = blocks[blockIdx].nearestPoint(newPtGeom)
                        if not nearest.isNull() and not nearest.isEmpty():
                            nPt = nearest.asPoint()
                            # Move slightly inside from boundary
                            centroid = blockCentroids.get(blockIdx)
                            if centroid is None:
                                continue
                            cx = centroid.x()
                            cy = centroid.y()
                            dx2 = cx - nPt.x()
                            dy2 = cy - nPt.y()
                            d2 = math.sqrt(dx2 * dx2 + dy2 * dy2)
                            if d2 > 0.0001:
                                nudge = min(fullSize * 0.01, d2)
                                newX = nPt.x() + (dx2 / d2) * nudge
                                newY = nPt.y() + (dy2 / d2) * nudge
                            else:
                                newX = nPt.x()
                                newY = nPt.y()
                        else:
                            continue

                movement = math.sqrt(
                    (newX - pt.x()) ** 2 + (newY - pt.y()) ** 2
                )
                maxMovement = max(maxMovement, movement)

                newPt = QgsPointXY(newX, newY)
                self._updateSpatialIndex(spatialIndex, i, pt, newPt, halfSize)
                building["curPoint"] = newPt

            conflicts.clear()
            conflicts.update(self.detectConflicts(
                buildings, halfSize, spatialIndex,
                forbiddenEngine=forbiddenEngine,
            ))

            currentConflictCount = sum(1 for s in conflicts.values() if s)

            if iteration % 10 == 0:
                feedback.pushInfo(
                    self.tr(
                        f"  Iteração {iteration}: {currentConflictCount} conflitos, "
                        f"movimento máximo: {maxMovement:.6f}"
                    )
                )

            if currentConflictCount == 0:
                feedback.pushInfo(
                    self.tr(f"  Todos os conflitos resolvidos na iteração {iteration}")
                )
                break
            if maxMovement < convergenceThreshold and iteration > 5:
                feedback.pushInfo(
                    self.tr(
                        f"  Estabilizou na iteração {iteration} com "
                        f"{currentConflictCount} conflitos restantes "
                        f"(movimento máximo: {maxMovement:.6f})"
                    )
                )
                break

        finalConflicts = sum(1 for s in conflicts.values() if s)
        feedback.pushInfo(
            self.tr(f"Deslocamento concluído: {finalConflicts} edificações ainda em conflito")
        )

    def detectNoSpace(
        self, buildings, conflicts, forbiddenEngine, blocks,
        halfSize, maxDisplacement, feedback,
    ):
        fullSize = halfSize * 2.0

        # Collect buildings still in conflict
        conflictedIndices = [
            i for i in range(len(buildings))
            if conflicts.get(i) or buildings[i]["conflictsWithForbidden"]
        ]

        if not conflictedIndices:
            return

        feedback.pushInfo(
            self.tr(
                f"Testando {len(conflictedIndices)} edificações para espaço disponível"
            )
        )

        spatialIndex = self.rebuildSpatialIndex(buildings, halfSize)

        # Prepare block geometry engines for fast containment checks
        blockEngines = {}
        for idx in conflictedIndices:
            bIdx = buildings[idx]["blockIdx"]
            if bIdx is not None and bIdx < len(blocks) and bIdx not in blockEngines:
                engine = QgsGeometry.createGeometryEngine(blocks[bIdx].constGet())
                engine.prepareGeometry()
                blockEngines[bIdx] = engine

        gridStep = max(fullSize * 0.5, 0.001)
        maxDispSq = maxDisplacement * maxDisplacement
        resolved = 0

        # Pre-compute spiral offsets sorted by distance from origin
        stepsMax = int(maxDisplacement / gridStep) + 1
        spiralOffsets = []
        for gx in range(-stepsMax, stepsMax + 1):
            for gy in range(-stepsMax, stepsMax + 1):
                dx = gx * gridStep
                dy = gy * gridStep
                distSq = dx * dx + dy * dy
                if distSq <= maxDispSq:
                    spiralOffsets.append((distSq, dx, dy))
        spiralOffsets.sort(key=lambda t: t[0])

        for idx in conflictedIndices:
            if feedback.isCanceled():
                break

            building = buildings[idx]
            origPt = building["origPoint"]
            blockIdx = building["blockIdx"]
            blockEngine = blockEngines.get(blockIdx)

            found = False

            for _, offX, offY in spiralOffsets:
                candX = origPt.x() + offX
                candY = origPt.y() + offY

                # Block containment via prepared engine
                if blockEngine is not None:
                    candGeom = QgsGeometry.fromPointXY(QgsPointXY(candX, candY))
                    if not blockEngine.contains(candGeom.constGet()):
                        continue

                if forbiddenEngine is not None:
                    candAABB = self._makeAABB(QgsPointXY(candX, candY), halfSize)
                    if forbiddenEngine.intersects(candAABB.constGet()):
                        continue

                # Building-building conflict check
                searchRect = QgsRectangle(
                    candX - fullSize, candY - fullSize,
                    candX + fullSize, candY + fullSize,
                )
                candidateIds = spatialIndex.intersects(searchRect)
                hasConflict = False
                for j in candidateIds:
                    if j == idx:
                        continue
                    otherPt = buildings[j]["curPoint"]
                    if (abs(candX - otherPt.x()) < fullSize
                            and abs(candY - otherPt.y()) < fullSize):
                        hasConflict = True
                        break

                if not hasConflict:
                    oldCurPt = building["curPoint"]
                    newPt = QgsPointXY(candX, candY)
                    building["curPoint"] = newPt
                    oldConflicts = conflicts.get(idx, set()).copy()
                    conflicts[idx] = set()
                    for j in oldConflicts:
                        conflicts[j].discard(idx)
                    building["conflictsWithForbidden"] = False
                    self._updateSpatialIndex(spatialIndex, idx, oldCurPt, newPt, halfSize)
                    found = True
                    resolved += 1
                    break

            if not found:
                building["noSpace"] = True

        noSpaceCount = sum(1 for b in buildings if b["noSpace"])
        feedback.pushInfo(
            self.tr(
                f"Detecção de espaço: {resolved} resolvidas, "
                f"{noSpaceCount} sem posição válida"
            )
        )

    def resolveVisibility(self, buildings, conflicts, halfSize, feedback):
        # Collect buildings that still have conflicts or noSpace
        problematic = []
        for i, building in enumerate(buildings):
            hasConflict = bool(conflicts.get(i))
            if hasConflict or building["noSpace"] or building["conflictsWithForbidden"]:
                problematic.append(i)

        if not problematic:
            return [], []

        # Sort: generics first, then by number of conflicts (desc)
        problematic.sort(
            key=lambda i: (
                0 if buildings[i]["isGeneric"] else 1,
                -len(conflicts.get(i, set())),
            )
        )

        idsToHide = []  # generic buildings to set visibility=2
        idsToFlag = []  # non-generic buildings for FLAGS sink

        removedSet = set()  # buildings effectively removed (hidden generics)

        for i in problematic:
            if i in removedSet:
                continue

            # Check if this building still conflicts with any non-removed building
            activeConflicts = [
                j for j in conflicts.get(i, set()) if j not in removedSet
            ]
            stillConflictsWithForbidden = buildings[i]["conflictsWithForbidden"]

            # noSpace não entra aqui de propósito: ele diz que a busca não achou
            # posição livre lá atrás, quando ainda havia todas as vizinhas em volta.
            # Se ocultar as genéricas esvaziou os conflitos desta, ela está boa onde
            # está — considerar o noSpace velho sinalizaria um problema já resolvido.
            if not activeConflicts and not stillConflictsWithForbidden:
                continue

            if buildings[i]["isGeneric"]:
                idsToHide.append(i)
                removedSet.add(i)
                # Only hidden buildings remove conflicts from neighbors
                for j in list(conflicts.get(i, set())):
                    conflicts[j].discard(i)
            else:
                idsToFlag.append(i)

        return idsToHide, idsToFlag

    def applyResults(
        self, buildingLayer, buildings, idsToHide, idsToFlag,
        visFieldIdx, flagSink, feedback, inverseTransform=None,
        commitChanges=False,
    ):
        # Write flagged features to FLAGS sink (re-read from layer)
        flagFeatIds = {buildings[idx]["featId"] for idx in idsToFlag}
        if flagFeatIds:
            for feat in buildingLayer.getFeatures():
                if feat.id() in flagFeatIds:
                    flagSink.addFeature(QgsFeature(feat), QgsFeatureSink.FastInsert)

        # Collect in-place edits
        displacements = {}
        hideIds = [buildings[idx]["featId"] for idx in idsToHide]
        hideIdxSet = set(idsToHide)

        for i, building in enumerate(buildings):
            if i in hideIdxSet:
                continue
            if building["curPoint"] != building["origPoint"]:
                pt = building["curPoint"]
                if inverseTransform is not None:
                    pt = inverseTransform.transform(pt)
                displacements[building["featId"]] = QgsGeometry.fromPointXY(pt)

        # Apply in-place edits
        if not displacements and not hideIds:
            feedback.pushInfo(self.tr("Nenhuma alteração a aplicar."))
            return

        if not buildingLayer.supportsEditing():
            raise QgsProcessingException(
                self.tr("Camada de edificações não suporta edição.")
            )
        buildingLayer.startEditing()
        buildingLayer.beginEditCommand("Generalização de Edificações")

        for featId, newGeom in displacements.items():
            buildingLayer.changeGeometry(featId, newGeom, skipDefaultValue=True)

        for featId in hideIds:
            buildingLayer.changeAttributeValue(featId, visFieldIdx, 2)

        buildingLayer.endEditCommand()

        if commitChanges:
            if not buildingLayer.commitChanges():
                errors = "; ".join(buildingLayer.commitErrors())
                raise QgsProcessingException(
                    self.tr(f"Não foi possível salvar as alterações: {errors}")
                )
            estado = self.tr("salvas na camada")
        else:
            # As alterações ficam pendentes de propósito, para poderem ser revistas e
            # desfeitas antes de virarem definitivas. Marque COMMIT_CHANGES para salvar.
            estado = self.tr(
                "pendentes na edição da camada (marque a opção de salvar para gravá-las)"
            )

        feedback.pushInfo(
            self.tr(
                f"{len(displacements)} alterações de geometria e "
                f"{len(hideIds)} de visibilidade {estado}"
            )
        )
