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

from qgis import processing
from qgis.core import (
    Qgis,
    QgsCoordinateReferenceSystem,
    QgsCoordinateTransform,
    QgsCoordinateTransformContext,
    QgsDistanceArea,
    QgsFeature,
    QgsFeatureRequest,
    QgsGeometry,
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingMultiStepFeedback,
    QgsProcessingOutputNumber,
    QgsProcessingParameterEnum,
    QgsProcessingParameterNumber,
    QgsProcessingParameterVectorLayer,
)
from qgis.PyQt.QtCore import QCoreApplication

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help

# Somente linha de transmissao de energia (303) leva torre; linhas invisiveis
# nao recebem simbolo.
LINE_FILTER = '"tipo" = 303 and "visivel" = 1'


class InsertEnergyTower(QgsProcessingAlgorithm):

    INPUT_ENERGY = "INPUT_ENERGY"
    INPUT_TOWER = "INPUT_TOWER"
    INPUT_FRAME = "INPUT_FRAME"
    INPUT_WATER = "INPUT_WATER"
    MIN_DISTANCE_FROM_FRAME = "MIN_DISTANCE_FROM_FRAME"
    TOWER_SPACING = "TOWER_SPACING"
    MIN_TOWER_SEPARATION = "MIN_TOWER_SEPARATION"
    SCALE = "SCALE"
    INSERTED = "INSERTED"
    REMOVED = "REMOVED"
    DISPLACED = "DISPLACED"
    SKIPPED = "SKIPPED"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_ENERGY,
                self.tr("Selecionar camada de linha de energia"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="infra_elemento_energia_l",
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_TOWER,
                self.tr("Selecionar camada de edição de torre de energia"),
                [QgsProcessing.TypeVectorPoint],
                defaultValue="edicao_simb_torre_energia_p",
            )
        )

        self.addParameter(
            QgsProcessingParameterNumber(
                self.TOWER_SPACING,
                self.tr("Espaçamento entre torres (em mm)"),
                type=QgsProcessingParameterNumber.Double,
                minValue=1.0,
                defaultValue=20,
            )
        )

        self.addParameter(
            QgsProcessingParameterNumber(
                self.MIN_DISTANCE_FROM_FRAME,
                self.tr("Distância mínima (em mm) com relação à moldura"),
                type=QgsProcessingParameterNumber.Double,
                minValue=0.0,
                defaultValue=3,
            )
        )

        self.addParameter(
            QgsProcessingParameterNumber(
                self.MIN_TOWER_SEPARATION,
                self.tr("Separação mínima (em mm) entre torres"),
                type=QgsProcessingParameterNumber.Double,
                minValue=0.0,
                defaultValue=3,
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

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_FRAME,
                self.tr("Selecionar camada de moldura"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="aux_moldura_a",
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_WATER,
                self.tr("Selecionar camada de massa d'água (torres dentro são evitadas)"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="cobter_massa_dagua_a",
                optional=True,
            )
        )

        self.addOutput(
            QgsProcessingOutputNumber(self.INSERTED, self.tr("Torres inseridas"))
        )
        self.addOutput(
            QgsProcessingOutputNumber(
                self.REMOVED, self.tr("Torres pré-existentes removidas")
            )
        )
        self.addOutput(
            QgsProcessingOutputNumber(
                self.DISPLACED,
                self.tr("Torres deslocadas ao longo da linha (conflito resolvido)"),
            )
        )
        self.addOutput(
            QgsProcessingOutputNumber(
                self.SKIPPED,
                self.tr("Posições descartadas (moldura/água/separação sem solução)"),
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        gridScaleParam = self.parameterAsInt(parameters, self.SCALE, context)
        lyr = self.parameterAsVectorLayer(parameters, self.INPUT_ENERGY, context)
        tower = self.parameterAsVectorLayer(parameters, self.INPUT_TOWER, context)
        frameLayer = self.parameterAsVectorLayer(parameters, self.INPUT_FRAME, context)
        waterLayer = self.parameterAsVectorLayer(parameters, self.INPUT_WATER, context)
        self.gridScaleDict = {
            0: 5000,
            1: 10000,
            2: 25000,
            3: 50000,
            4: 100000,
            5: 250000,
        }
        scale = self.gridScaleDict[gridScaleParam]
        spacingMm = self.parameterAsDouble(parameters, self.TOWER_SPACING, context)
        frameMm = self.parameterAsDouble(
            parameters, self.MIN_DISTANCE_FROM_FRAME, context
        )
        sepMm = self.parameterAsDouble(parameters, self.MIN_TOWER_SEPARATION, context)

        multiStepFeedback = QgsProcessingMultiStepFeedback(6, feedback)
        currentStep = 0

        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo(self.tr("Filtrando linhas de transmissão visíveis"))
        filteredLyr = processing.run(
            "native:extractbyexpression",
            {"INPUT": lyr, "EXPRESSION": LINE_FILTER, "OUTPUT": "TEMPORARY_OUTPUT"},
            context=context,
            feedback=multiStepFeedback,
        )["OUTPUT"]
        if filteredLyr.featureCount() == 0:
            return self._results(0, 0, 0, 0)

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo(self.tr("Unindo linhas"))
        mergedLyr = self.mergeEnergyLines(
            filteredLyr, 5, context=context, feedback=multiStepFeedback
        )

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo(self.tr("Clipando com a área"))
        energyLyr = self.clipLayer(mergedLyr, frameLayer, feedback=multiStepFeedback)

        # Distancias no CRS das linhas (mm de carta -> terreno -> unidade do CRS)
        spacingDist = self.getChopDistance(energyLyr, scale * spacingMm / 1000)
        frameDist = self.getChopDistance(energyLyr, scale * frameMm / 1000)
        sepDist = self.getChopDistance(energyLyr, scale * sepMm / 1000)
        slideStep = self.getChopDistance(energyLyr, scale * 0.0005)  # 0.5 mm
        endMargin = spacingDist / 4  # deslize nunca chega nas pontas da linha

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo(self.tr("Preparando restrições (moldura e água)"))
        frameEngines = self._prepareFrameEngines(
            frameLayer, energyLyr.crs(), context, multiStepFeedback
        )
        waterEngines = self._prepareWaterEngines(waterLayer, energyLyr, context)

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo(self.tr("Posicionando torres"))
        accepted = []  # (QgsPointXY, angulo)
        nDisplaced = 0
        nSkipped = 0
        lineGeoms = []
        nFeats = energyLyr.featureCount()
        stepSize = 100 / nFeats if nFeats else 100

        for current, feat in enumerate(energyLyr.getFeatures()):
            if multiStepFeedback.isCanceled():
                return self._results(0, 0, 0, 0)
            geom = feat.geometry()
            if geom is None or geom.isEmpty():
                continue
            lineGeoms.append(geom)
            fontes = feat.attribute("fontes")
            parts = (
                geom.asGeometryCollection() if geom.isMultipart() else [geom]
            )
            for part in parts:
                length = part.length()
                if length <= 0 or length < spacingDist:
                    continue
                n = int(length // spacingDist)
                # Distribuicao centrada: a sobra da divisao fica meio a meio
                # nas pontas (margem em [spacing/2, spacing)).
                margin = (length - (n - 1) * spacingDist) / 2
                for k in range(n):
                    dist = margin + k * spacingDist
                    placed = self._placeWithConstraints(
                        part,
                        dist,
                        length,
                        endMargin,
                        slideStep,
                        spacingDist / 2,
                        sepDist,
                        frameDist,
                        frameEngines,
                        waterEngines,
                        accepted,
                    )
                    if placed is None:
                        nSkipped += 1
                        continue
                    point, angle, offset = placed
                    accepted.append((point, angle, fontes))
                    if offset != 0:
                        nDisplaced += 1
            multiStepFeedback.setProgress(current * stepSize)

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo(self.tr("Gravando saída"))

        # Idempotencia: remove as torres existentes no corredor das linhas
        # processadas antes de inserir (mesmo edit command — um unico undo
        # restaura o estado anterior).
        towerTransform = None
        if energyLyr.crs() != tower.crs():
            towerTransform = QgsCoordinateTransform(
                energyLyr.crs(), tower.crs(), context.transformContext()
            )
        # corredor no CRS da camada de torres (pode divergir do CRS das linhas)
        corridorDist = self.getChopDistance(tower, scale * sepMm / 1000)
        idsToRemove = self._findTowersInCorridor(
            tower, lineGeoms, corridorDist, towerTransform
        )

        fields = tower.fields()
        newFeats = []
        for point, angle, fontes in accepted:
            pointGeom = QgsGeometry.fromPointXY(point)
            if towerTransform is not None:
                pointGeom.transform(towerTransform)
            feat = QgsFeature(fields)
            feat.setGeometry(pointGeom)
            feat.setAttribute("simb_rot", angle)
            feat.setAttribute("fontes", fontes)
            feat.setAttribute("visivel", 1)
            feat.setAttribute("status_ciclo_vida", 1)
            feat.setAttribute("validacao", 1)
            feat.setAttribute("confirmacao_geometria", 1)
            feat.setAttribute("confirmacao_atributos", 1)
            feat.setAttribute("confiabilidade", 5)
            newFeats.append(feat)

        tower.startEditing()
        tower.beginEditCommand("Posicionando torres de energia")
        if idsToRemove:
            tower.deleteFeatures(idsToRemove)
        tower.addFeatures(newFeats)
        tower.endEditCommand()

        multiStepFeedback.pushInfo(
            self.tr(
                "Torres inseridas: {0} | removidas (rodadas anteriores): {1} | "
                "deslocadas por conflito: {2} | posições descartadas: {3}"
            ).format(len(newFeats), len(idsToRemove), nDisplaced, nSkipped)
        )
        return self._results(len(newFeats), len(idsToRemove), nDisplaced, nSkipped)

    def _results(self, inserted, removed, displaced, skipped):
        return {
            self.INSERTED: inserted,
            self.REMOVED: removed,
            self.DISPLACED: displaced,
            self.SKIPPED: skipped,
        }

    def _placeWithConstraints(
        self,
        part,
        dist,
        length,
        endMargin,
        slideStep,
        maxSlide,
        sepDist,
        frameDist,
        frameEngines,
        waterEngines,
        accepted,
    ):
        """Tenta posicionar uma torre em `dist`; se violar moldura, água ou
        separação mínima, desliza ao longo da própria linha em passos de
        0.5 mm (até ± meio espaçamento) — replica o ajuste manual do editor.
        Retorna (ponto, ângulo, offset aplicado) ou None se nenhuma posição
        da janela atende às restrições."""
        nSteps = int(maxSlide / slideStep) if slideStep > 0 else 0
        offsets = [0.0]
        for i in range(1, nSteps + 1):
            offsets.append(i * slideStep)
            offsets.append(-i * slideStep)
        for offset in offsets:
            d = dist + offset
            if d < endMargin or d > length - endMargin:
                continue
            pointGeom = part.interpolate(d)
            if pointGeom.isEmpty():
                continue
            point = pointGeom.asPoint()
            constPoint = pointGeom.constGet()
            if any(eng.distance(constPoint) < frameDist for eng, _g in frameEngines):
                continue
            if any(eng.intersects(constPoint) for eng, _g in waterEngines):
                continue
            if any(
                math.hypot(p.x() - point.x(), p.y() - point.y()) < sepDist
                for p, _a, _f in accepted
            ):
                continue
            angle = self._towerAngle(part, d)
            return point, angle, offset
        return None

    @staticmethod
    def _towerAngle(part, dist):
        """Rotação do símbolo: perpendicular à linha, normalizada para não
        ficar de cabeça para baixo (mesma convenção da versão anterior)."""
        angle = (part.interpolateAngle(dist) + (math.pi / 2)) * 180 / math.pi
        if angle > 360:
            angle = angle - 360
        if angle > 90 and angle < 270:
            angle = angle - 180
        return angle

    def _prepareFrameEngines(self, frameLayer, targetCrs, context, feedback):
        """Bordas da moldura como geometry engines preparados (no CRS das linhas)."""
        frameLines = self.convertPolygonToLines(frameLayer, feedback=feedback)
        transform = None
        if frameLines.crs() != targetCrs:
            transform = QgsCoordinateTransform(
                frameLines.crs(), targetCrs, context.transformContext()
            )
        engines = []
        for feat in frameLines.getFeatures():
            geom = QgsGeometry(feat.geometry())
            if geom is None or geom.isEmpty():
                continue
            if transform is not None:
                geom.transform(transform)
            engine = QgsGeometry.createGeometryEngine(geom.constGet())
            engine.prepareGeometry()
            # a QgsGeometry acompanha o engine para manter a geometria viva
            engines.append((engine, geom))
        return engines

    def _prepareWaterEngines(self, waterLayer, energyLyr, context):
        """Massas d'água (visíveis, na área das linhas) como engines preparados."""
        if waterLayer is None:
            return []
        transform = None
        extent = energyLyr.extent()
        if waterLayer.crs() != energyLyr.crs():
            transform = QgsCoordinateTransform(
                waterLayer.crs(), energyLyr.crs(), context.transformContext()
            )
            toWater = QgsCoordinateTransform(
                energyLyr.crs(), waterLayer.crs(), context.transformContext()
            )
            extent = toWater.transformBoundingBox(extent)
        hasVisivel = waterLayer.fields().lookupField("visivel") >= 0
        engines = []
        request = QgsFeatureRequest().setFilterRect(extent)
        for feat in waterLayer.getFeatures(request):
            if hasVisivel:
                try:
                    if int(feat["visivel"]) != 1:
                        continue
                except (TypeError, ValueError):
                    pass
            geom = QgsGeometry(feat.geometry())
            if geom is None or geom.isEmpty():
                continue
            if transform is not None:
                geom.transform(transform)
            engine = QgsGeometry.createGeometryEngine(geom.constGet())
            engine.prepareGeometry()
            engines.append((engine, geom))
        return engines

    @staticmethod
    def _findTowersInCorridor(towerLayer, lineGeoms, corridorDist, towerTransform):
        """Ids das torres existentes a menos de `corridorDist` das linhas
        processadas (torres geradas ficam sobre a linha; o corredor cobre
        também as deslocadas)."""
        if not lineGeoms:
            return []
        engines = []
        extent = None
        for geom in lineGeoms:
            g = QgsGeometry(geom)
            if towerTransform is not None:
                g.transform(towerTransform)
            engine = QgsGeometry.createGeometryEngine(g.constGet())
            engine.prepareGeometry()
            engines.append((engine, g))
            bbox = g.boundingBox()
            if extent is None:
                extent = bbox
            else:
                extent.combineExtentWith(bbox)
        extent.grow(corridorDist * 2)
        ids = []
        request = QgsFeatureRequest().setFilterRect(extent)
        for feat in towerLayer.getFeatures(request):
            geom = feat.geometry()
            if geom is None or geom.isEmpty():
                continue
            constGeom = geom.constGet()
            if any(eng.distance(constGeom) < corridorDist for eng, _g in engines):
                ids.append(feat.id())
        return ids

    def mergeEnergyLines(self, lyr, limit, context, feedback):
        r = processing.run(
            "ferramentasedicao:mergelinesbyangle",
            {"INPUT": lyr, "MAX_ITERATION": limit, "OUTPUT": "TEMPORARY_OUTPUT"},
            context=context,
            feedback=feedback,
        )
        return r["OUTPUT"]

    @staticmethod
    def getChopDistance(layer, distance):
        """Helper function to get distances in decimal degrees"""
        if layer.crs().isGeographic():
            d = QgsDistanceArea()
            d.setSourceCrs(
                QgsCoordinateReferenceSystem("EPSG:3857"),
                QgsCoordinateTransformContext(),
            )
            return d.convertLengthMeasurement(distance, Qgis.DistanceUnit.Degrees)
        else:
            return distance

    def clipLayer(self, layer, frame, feedback):
        r = processing.run(
            "native:clip",
            {
                "FIELD": [],
                "INPUT": layer,
                "OVERLAY": frame,
                "OUTPUT": "TEMPORARY_OUTPUT",
            },
            feedback=feedback,
        )
        return r["OUTPUT"]

    def convertPolygonToLines(self, inputLayer, feedback):
        output = processing.run(
            "native:polygonstolines",
            {"INPUT": inputLayer, "OUTPUT": "TEMPORARY_OUTPUT"},
            feedback=feedback,
        )
        return output["OUTPUT"]

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return InsertEnergyTower()

    def name(self):
        return "insertEnergyTower"

    def displayName(self):
        return self.tr("Insere símbolo de torre de energia")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return help().helpUrl(self.name())
