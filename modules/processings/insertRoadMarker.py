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
from .processingUtils import optional_attribute, set_optional_attributes


class InsertRoadMarker(QgsProcessingAlgorithm):
    # Input parameters
    INPUT_FRAME = "INPUT_FRAME"
    SCALE = "SCALE"
    ROAD = "ROAD"
    MARKER = "MARKER"
    MIN_SEPARATION = "MIN_SEPARATION"
    INSERTED = "INSERTED"
    REMOVED = "REMOVED"
    DISPLACED = "DISPLACED"
    SKIPPED = "SKIPPED"

    # Constantes de configuração (fatores x escala = metros no terreno;
    # em mm de carta: fator x 1000)
    NEAR_START_PERCENTAGE = 0.15  # 15% do comprimento
    NEAR_END_PERCENTAGE = 0.85  # 85% do comprimento
    FRAME_DISTANCE_FACTOR = 0.006  # 6 mm: distância mínima da moldura
    SIGLA_OFFSET_FACTOR = 0.008  # 8 mm: deslocamento entre siglas do mesmo ponto
    MIN_LENGTH_FACTOR = 0.01  # 10 mm: comprimento mínimo para inserir (normativo)
    SMALL_LENGTH_FACTOR = 0.2  # 200 mm: 1 identificador (normativo)
    MEDIUM_LENGTH_FACTOR = 0.3  # 300 mm: 2 identificadores (normativo)
    LARGE_LENGTH_FACTOR = 0.5  # 500 mm: 3 identificadores (normativo)
    VERY_LARGE_LENGTH_FACTOR = 0.6  # 600 mm: 4 identificadores; acima, 5 (normativo)
    # Filtro de rotatórias/alças de trevo: trechos CURTOS e CURVOS (o
    # mergelines quebra nos nós de grau >= 3, isolando os arcos do anel)
    CURLY_MAX_LENGTH_FACTOR = 0.05  # 50 mm
    CURLY_SINUOSITY = 1.4  # comprimento / corda

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.ROAD,
                self.tr("Selecionar camada de via de deslocamento"),
                [QgsProcessing.TypeVectorLine],
                optional=False,
                defaultValue="infra_via_deslocamento_l",
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.MARKER,
                self.tr("Selecionar camada de identificador trecho rodoviário"),
                [QgsProcessing.TypeVectorPoint],
                optional=False,
                defaultValue="edicao_identificador_trecho_rod_p",
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
            QgsProcessingParameterNumber(
                self.MIN_SEPARATION,
                self.tr("Separação mínima (em mm) entre identificadores"),
                type=QgsProcessingParameterNumber.Double,
                minValue=0.0,
                defaultValue=8,
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

        self.addOutput(
            QgsProcessingOutputNumber(
                self.INSERTED, self.tr("Identificadores inseridos")
            )
        )
        self.addOutput(
            QgsProcessingOutputNumber(
                self.REMOVED, self.tr("Identificadores pré-existentes removidos")
            )
        )
        self.addOutput(
            QgsProcessingOutputNumber(
                self.DISPLACED,
                self.tr("Identificadores deslocados ao longo da via (conflito)"),
            )
        )
        self.addOutput(
            QgsProcessingOutputNumber(
                self.SKIPPED,
                self.tr("Posições descartadas (moldura/separação/sigla inválida)"),
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        layer_road = self.parameterAsVectorLayer(parameters, self.ROAD, context)
        layer_marker = self.parameterAsVectorLayer(parameters, self.MARKER, context)
        frameLayer = self.parameterAsVectorLayer(parameters, self.INPUT_FRAME, context)
        gridScaleParam = self.parameterAsInt(parameters, self.SCALE, context)
        sepMm = self.parameterAsDouble(parameters, self.MIN_SEPARATION, context)
        self.gridScaleDict = {
            0: 5000,
            1: 10000,
            2: 25000,
            3: 50000,
            4: 100000,
            5: 250000,
        }
        scale = self.gridScaleDict[gridScaleParam]

        def convert_distance(dist, layer):
            """Metros no terreno -> unidade do CRS da camada"""
            if layer.crs().isGeographic():
                d = QgsDistanceArea()
                d.setSourceCrs(
                    QgsCoordinateReferenceSystem("EPSG:3857"),
                    QgsCoordinateTransformContext(),
                )
                return d.convertLengthMeasurement(dist, Qgis.DistanceUnit.Degrees)
            return dist

        frame_distance = convert_distance(scale * self.FRAME_DISTANCE_FACTOR, layer_road)
        sigla_offset = convert_distance(scale * self.SIGLA_OFFSET_FACTOR, layer_road)
        min_length = convert_distance(scale * self.MIN_LENGTH_FACTOR, layer_road)
        small_length = convert_distance(scale * self.SMALL_LENGTH_FACTOR, layer_road)
        medium_length = convert_distance(scale * self.MEDIUM_LENGTH_FACTOR, layer_road)
        large_length = convert_distance(scale * self.LARGE_LENGTH_FACTOR, layer_road)
        very_large_length = convert_distance(
            scale * self.VERY_LARGE_LENGTH_FACTOR, layer_road
        )
        sep_distance = convert_distance(scale * sepMm / 1000, layer_road)
        slide_step = convert_distance(scale * 0.0005, layer_road)  # 0.5 mm
        curly_max_length = convert_distance(
            scale * self.CURLY_MAX_LENGTH_FACTOR, layer_road
        )

        multiStepFeedback = QgsProcessingMultiStepFeedback(6, feedback)
        currentStep = 0

        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo(self.tr("Filtrando vias com sigla visíveis"))
        roads = processing.run(
            "native:extractbyexpression",
            {
                "INPUT": layer_road,
                "EXPRESSION": "\"sigla\" is not null and trim(\"sigla\") <> '' "
                              "and \"visivel\" = 1",
                "OUTPUT": "memory:",
            },
            context=context,
            feedback=multiStepFeedback,
        )["OUTPUT"]
        if roads.featureCount() == 0:
            return self._results(0, 0, 0, 0)

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo(self.tr("Montando trechos contínuos por sigla"))
        # dissolve NAO funde linhas encostadas (so coleciona partes); o
        # mergelines e quem monta as cadeias continuas — e quebra nos nos de
        # grau >= 3 (entroncamentos/rotatorias), isolando arcos de anel.
        dissolved = processing.run(
            "native:dissolve",
            {"INPUT": roads, "FIELD": ["sigla", "tipo"], "OUTPUT": "memory:"},
            context=context,
            feedback=multiStepFeedback,
        )["OUTPUT"]
        merged = processing.run(
            "native:mergelines",
            {"INPUT": dissolved, "OUTPUT": "memory:"},
            context=context,
            feedback=multiStepFeedback,
        )["OUTPUT"]

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo(self.tr("Clipando e cortando nos entroncamentos"))
        clipped = processing.run(
            "native:clip",
            {"INPUT": merged, "OVERLAY": frameLayer, "OUTPUT": "memory:"},
            context=context,
            feedback=multiStepFeedback,
        )["OUTPUT"]
        singleParts = processing.run(
            "native:multiparttosingleparts",
            {"INPUT": clipped, "OUTPUT": "memory:"},
            context=context,
            feedback=multiStepFeedback,
        )["OUTPUT"]
        # corta nos entroncamentos entre rodovias COM sigla (vias sem sigla
        # nao delimitam trecho)
        trechosLyr = processing.run(
            "native:splitwithlines",
            {"INPUT": singleParts, "LINES": singleParts, "OUTPUT": "memory:"},
            context=context,
            feedback=multiStepFeedback,
        )["OUTPUT"]

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo(self.tr("Preparando restrições"))
        frameEngines = self._prepareFrameEngines(
            frameLayer, layer_road.crs(), context, multiStepFeedback
        )

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo(self.tr("Posicionando identificadores"))
        # Trechos longos primeiro: os principais fixam seus identificadores e
        # os fragmentos de entroncamento e que se ajustam ou sao descartados.
        trechos = sorted(
            trechosLyr.getFeatures(),
            key=lambda f: f.geometry().length() if f.geometry() else 0,
            reverse=True,
        )
        accepted = []  # (QgsPointXY, groupId)
        markersOut = []  # (QgsPointXY, sigla_num, jurisdicao, tipo)
        nDisplaced = 0
        nSkipped = 0
        nCurly = 0
        groupId = 0
        trechoGeoms = []
        stepSize = 100 / len(trechos) if trechos else 100

        for current, feat in enumerate(trechos):
            if multiStepFeedback.isCanceled():
                return self._results(0, 0, 0, 0)
            geom = feat.geometry()
            if geom is None or geom.isEmpty():
                continue
            length = geom.length()
            if length < min_length:
                continue
            trechoGeoms.append(geom)

            # Rotatorias e alcas de trevo: trecho curto e curvo (corda muito
            # menor que o comprimento). Nao delimita trecho rodoviario.
            if length < curly_max_length and self._sinuosity(geom) > self.CURLY_SINUOSITY:
                nCurly += 1
                continue

            siglas = self._parseSiglas(feat)
            if not siglas:
                nSkipped += 1
                continue

            fractions = self._fractionsForLength(
                length, small_length, medium_length, large_length, very_large_length
            )

            for frac in fractions:
                groupId += 1
                placed = self._placeGroup(
                    geom,
                    length,
                    length * frac,
                    siglas,
                    sigla_offset,
                    slide_step,
                    sep_distance,
                    frame_distance,
                    frameEngines,
                    accepted,
                    groupId,
                )
                if placed is None:
                    nSkipped += len(siglas)
                    continue
                positions, offsetApplied = placed
                for pos, (siglaNum, jurisdicao) in zip(positions, siglas):
                    accepted.append((pos, groupId))
                    markersOut.append(
                        (
                            pos,
                            siglaNum,
                            jurisdicao,
                            feat.attribute("tipo"),
                            optional_attribute(feat, "fontes"),
                        )
                    )
                if offsetApplied != 0:
                    nDisplaced += len(siglas)
            multiStepFeedback.setProgress(current * stepSize)

        if nCurly:
            multiStepFeedback.pushInfo(
                self.tr(
                    "Trechos curtos e sinuosos ignorados (rotatórias/alças): {0}"
                ).format(nCurly)
            )

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo(self.tr("Gravando saída"))

        markerTransform = None
        if layer_road.crs() != layer_marker.crs():
            markerTransform = QgsCoordinateTransform(
                layer_road.crs(), layer_marker.crs(), context.transformContext()
            )
        corridor = convert_distance(scale * sepMm / 1000, layer_marker)
        idsToRemove = self._findMarkersInCorridor(
            layer_marker, trechoGeoms, corridor, markerTransform
        )

        fields = layer_marker.fields()
        newFeats = []
        ignoredFields = []
        for pos, siglaNum, jurisdicao, tipo, fontes in markersOut:
            pointGeom = QgsGeometry.fromPointXY(pos)
            if markerTransform is not None:
                pointGeom.transform(markerTransform)
            feat = QgsFeature(fields)
            feat.setGeometry(pointGeom)
            feat.setAttribute("sigla", siglaNum)
            feat.setAttribute("jurisdicao", jurisdicao)
            feat.setAttribute("tipo", tipo)
            feat.setAttribute("visivel", 1)
            # Campos da extensao de qualidade: so existem na Orto 3.0 / Topo 2.0.
            ignoredFields = set_optional_attributes(
                feat,
                {
                    "fontes": fontes,
                    "status_ciclo_vida": 1,
                    "validacao": 1,
                    "confirmacao_geometria": 1,
                    "confirmacao_atributos": 1,
                    "confiabilidade": 5,
                },
            )
            newFeats.append(feat)
        if ignoredFields:
            multiStepFeedback.pushInfo(
                self.tr(
                    "Campos ausentes na modelagem da camada de identificadores, nao preenchidos: {0}"
                ).format(", ".join(sorted(ignoredFields)))
            )

        layer_marker.startEditing()
        layer_marker.beginEditCommand("Criando identificadores de trecho rodoviário")
        if idsToRemove:
            layer_marker.deleteFeatures(idsToRemove)
        layer_marker.addFeatures(newFeats)
        layer_marker.endEditCommand()

        multiStepFeedback.pushInfo(
            self.tr(
                "Identificadores inseridos: {0} | removidos (rodadas anteriores): "
                "{1} | deslocados por conflito: {2} | descartados: {3}"
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

    @staticmethod
    def _sinuosity(geom):
        """Comprimento / corda (distancia entre extremos). Aneis fechados
        tem corda ~0 -> sinuosidade enorme."""
        length = geom.length()
        try:
            v0 = geom.vertexAt(0)
            vn = geom.vertexAt(geom.constGet().nCoordinates() - 1)
            chord = math.hypot(vn.x() - v0.x(), vn.y() - v0.y())
        except Exception:
            return 1.0
        if chord <= 0:
            return float("inf")
        return length / chord

    def _parseSiglas(self, feat):
        """'BR-101;SC-401' -> [('101', 1), ('401', 2)].

        Jurisdicao: para sigla unica usa o atributo da via quando valido
        (fontes autoritativas — cobre Municipal/Particular); para multiplas
        siglas (ou atributo invalido) deriva do prefixo (BR=federal(1),
        demais=estadual(2))."""
        raw = feat.attribute("sigla")
        if raw is None:
            return []
        parts = [s.strip() for s in str(raw).split(";") if s.strip()]
        viaJurisdicao = None
        try:
            v = int(feat.attribute("jurisdicao"))
            if v in (1, 2, 3, 6):
                viaJurisdicao = v
        except (TypeError, ValueError):
            pass
        result = []
        for sigla in parts:
            if "-" not in sigla:
                continue
            prefix, _, num = sigla.partition("-")
            if not num:
                continue
            if len(parts) == 1 and viaJurisdicao is not None:
                jurisdicao = viaJurisdicao
            else:
                jurisdicao = 1 if prefix.upper() == "BR" else 2
            result.append((num, jurisdicao))
        return result

    def _fractionsForLength(self, length, small, medium, large, very_large):
        """Faixas normativas: quantidade de identificadores por comprimento."""
        if length <= small:
            return [0.5]
        if length <= medium:
            return [0.25, 0.75]
        if length <= large:
            return [self.NEAR_START_PERCENTAGE, 0.5, self.NEAR_END_PERCENTAGE]
        if length <= very_large:
            return [self.NEAR_START_PERCENTAGE, 0.4, 0.6, self.NEAR_END_PERCENTAGE]
        return [
            self.NEAR_START_PERCENTAGE,
            0.33,
            0.5,
            0.67,
            self.NEAR_END_PERCENTAGE,
        ]

    def _placeGroup(
        self,
        geom,
        length,
        baseDist,
        siglas,
        siglaOffset,
        slideStep,
        sepDistance,
        frameDistance,
        frameEngines,
        accepted,
        groupId,
    ):
        """Posiciona o grupo de escudos (uma posicao por sigla, centrados no
        ponto-base e espacados `siglaOffset` ao longo da via). Se alguma
        posicao viola moldura ou separacao minima com outros grupos, o grupo
        inteiro desliza ao longo da via em passos de 0.5 mm ate +-separacao;
        sem solucao, descarta. Retorna (posicoes, offset aplicado) ou None."""
        n = len(siglas)
        startOffset = -siglaOffset * (n - 1) / 2
        maxSlide = sepDistance if sepDistance > 0 else siglaOffset
        nSteps = int(maxSlide / slideStep) if slideStep > 0 else 0
        offsets = [0.0]
        for i in range(1, nSteps + 1):
            offsets.append(i * slideStep)
            offsets.append(-i * slideStep)

        for slide in offsets:
            positions = []
            ok = True
            for i in range(n):
                d = baseDist + slide + startOffset + i * siglaOffset
                if d <= 0 or d >= length:
                    ok = False
                    break
                pointGeom = geom.interpolate(d)
                if pointGeom.isEmpty():
                    ok = False
                    break
                point = pointGeom.asPoint()
                constPoint = pointGeom.constGet()
                if any(
                    eng.distance(constPoint) < frameDistance
                    for eng, _g in frameEngines
                ):
                    ok = False
                    break
                conflict = False
                for accPoint, accGroup in accepted:
                    if accGroup == groupId:
                        continue
                    if (
                        math.hypot(accPoint.x() - point.x(), accPoint.y() - point.y())
                        < sepDistance
                    ):
                        conflict = True
                        break
                if conflict:
                    ok = False
                    break
                positions.append(point)
            if ok:
                return positions, slide
        return None

    def _prepareFrameEngines(self, frameLayer, targetCrs, context, feedback):
        """Bordas da moldura como geometry engines preparados (CRS das vias)."""
        frameLines = processing.run(
            "native:polygonstolines",
            {"INPUT": frameLayer, "OUTPUT": "TEMPORARY_OUTPUT"},
            context=context,
            feedback=feedback,
        )["OUTPUT"]
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

    @staticmethod
    def _findMarkersInCorridor(markerLayer, trechoGeoms, corridorDist, markerTransform):
        """Ids dos identificadores existentes a menos de `corridorDist` dos
        trechos processados (identificadores gerados ficam sobre a via)."""
        if not trechoGeoms:
            return []
        engines = []
        extent = None
        for geom in trechoGeoms:
            g = QgsGeometry(geom)
            if markerTransform is not None:
                g.transform(markerTransform)
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
        for feat in markerLayer.getFeatures(request):
            geom = feat.geometry()
            if geom is None or geom.isEmpty():
                continue
            constGeom = geom.constGet()
            if any(eng.distance(constGeom) < corridorDist for eng, _g in engines):
                ids.append(feat.id())
        return ids

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return InsertRoadMarker()

    def name(self):
        return "insertroadmarker"

    def displayName(self):
        return self.tr("Insere identificador trecho rodoviário")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return help().helpUrl(self.name())
