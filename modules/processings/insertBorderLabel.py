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
from qgis.core import (
    NULL,
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

from ..labelTools import borderLabelLine
from ...Help.algorithmHelpCreator import HTMLHelpCreator as help

# tipo_limite_legal: 1 = Internacional (10 pt, nomes de pais),
#                    2 = Estadual (8 pt, nomes de UF)
BORDER_FONT_SIZES = {1: 10, 2: 8}


class InsertBorderLabel(QgsProcessingAlgorithm):

    INPUT_BOUNDARY = "INPUT_BOUNDARY"
    INPUT_FRAME = "INPUT_FRAME"
    INPUT_COUNTRY = "INPUT_COUNTRY"
    INPUT_STATE = "INPUT_STATE"
    INPUT_TEXT_LAYER = "INPUT_TEXT_LAYER"
    SCALE = "SCALE"
    PRODUCT = "PRODUCT"
    OFFSET_MM = "OFFSET_MM"
    INSERTED = "INSERTED"
    REMOVED = "REMOVED"
    SKIPPED = "SKIPPED"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_BOUNDARY,
                self.tr("Selecionar camada de limite legal"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="llp_limite_legal_l",
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
                self.INPUT_COUNTRY,
                self.tr("Selecionar camada de países"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="llp_pais_a",
                optional=True,
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_STATE,
                self.tr("Selecionar camada de unidades da federação"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="llp_unidade_federacao_a",
                optional=True,
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_TEXT_LAYER,
                self.tr("Selecionar camada de texto genérico linha"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="edicao_texto_generico_l",
            )
        )
        self.addParameter(
            QgsProcessingParameterNumber(
                self.OFFSET_MM,
                self.tr("Afastamento do rótulo em relação ao limite (em mm)"),
                type=QgsProcessingParameterNumber.Double,
                minValue=1.0,
                defaultValue=4.5,
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
            QgsProcessingParameterEnum(
                self.PRODUCT,
                self.tr("Selecione o tipo de produto"),
                options=[self.tr("Carta Ortoimagem"), self.tr("Carta Topográfica")],
                defaultValue=1,
            )
        )
        self.scaleDict = {
            0: 5000,
            1: 10000,
            2: 25000,
            3: 50000,
            4: 100000,
            5: 250000,
        }
        self.addOutput(
            QgsProcessingOutputNumber(self.INSERTED, self.tr("Rótulos inseridos"))
        )
        self.addOutput(
            QgsProcessingOutputNumber(
                self.REMOVED, self.tr("Rótulos pré-existentes removidos")
            )
        )
        self.addOutput(
            QgsProcessingOutputNumber(
                self.SKIPPED,
                self.tr("Fronteiras puladas (lado não identificado/sem espaço)"),
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        boundaryLyr = self.parameterAsVectorLayer(
            parameters, self.INPUT_BOUNDARY, context
        )
        frameLyr = self.parameterAsVectorLayer(parameters, self.INPUT_FRAME, context)
        countryLyr = self.parameterAsVectorLayer(
            parameters, self.INPUT_COUNTRY, context
        )
        stateLyr = self.parameterAsVectorLayer(parameters, self.INPUT_STATE, context)
        textLyr = self.parameterAsVectorLayer(
            parameters, self.INPUT_TEXT_LAYER, context
        )
        offsetMm = self.parameterAsDouble(parameters, self.OFFSET_MM, context)
        scale = self.scaleDict[self.parameterAsInt(parameters, self.SCALE, context)]
        productParam = self.parameterAsInt(parameters, self.PRODUCT, context)

        crs = boundaryLyr.crs()
        offsetMu = borderLabelLine.mmToMapUnits(offsetMm, scale, crs)
        sideLayers = {1: countryLyr, 2: stateLyr}

        multiStepFeedback = QgsProcessingMultiStepFeedback(2, feedback)
        multiStepFeedback.setCurrentStep(0)
        multiStepFeedback.pushInfo(self.tr("Posicionando rótulos de fronteira"))

        newFeats = []
        processedChains = []
        usedNames = set()
        nSkipped = 0
        frames = list(frameLyr.getFeatures())
        stepSize = 100 / len(frames) if frames else 100

        for current, frame in enumerate(frames):
            if multiStepFeedback.isCanceled():
                return self._results(0, 0, 0)
            frameGeom = frame.geometry()
            request = QgsFeatureRequest().setFilterRect(frameGeom.boundingBox())
            byType = {}
            for feat in boundaryLyr.getFeatures(request):
                try:
                    tipo = int(feat["tipo"])
                except (TypeError, ValueError):
                    continue
                if tipo not in BORDER_FONT_SIZES:
                    continue
                clipped = feat.geometry().intersection(frameGeom)
                if clipped is None or clipped.isEmpty():
                    continue
                byType.setdefault(tipo, []).append(clipped)

            for tipo, pieces in byType.items():
                combined = QgsGeometry.collectGeometry(pieces).mergeLines()
                chains = (
                    combined.asGeometryCollection()
                    if combined.isMultipart()
                    else [combined]
                )
                # UMA insercao por fronteira DISTINTA (par de lados) na moldura:
                # cadeia mais longa de cada par vence
                byPair = {}
                for chain in chains:
                    if chain.length() <= 0:
                        continue
                    names = self._sideNames(chain, tipo, sideLayers, offsetMu)
                    if names is None:
                        nSkipped += 1
                        continue
                    key = (tipo, frozenset(n for n, _s in names))
                    if key not in byPair or chain.length() > byPair[key][0].length():
                        byPair[key] = (chain, names)

                for (tipo_, _pair), (chain, names) in byPair.items():
                    fontSize = BORDER_FONT_SIZES[tipo_]
                    ok = False
                    for name, sign in names:
                        textLen = borderLabelLine.measureTextWidthMapUnits(
                            name, fontSize, scale, crs
                        )
                        center = chain.length() / 2.0
                        base = borderLabelLine.buildBorderLabelLine(
                            chain, center, textLen, scale, crs, extraMargin=1.4
                        )
                        if base is None:
                            continue
                        lineGeom = borderLabelLine.offsetSide(base, offsetMu, sign)
                        if lineGeom is None or lineGeom.isEmpty():
                            continue
                        lineGeom = borderLabelLine.trimToLength(
                            lineGeom, textLen * borderLabelLine.DEFAULT_SLACK
                        )
                        newFeats.append(
                            self._makeTextFeature(
                                textLyr, lineGeom, name, fontSize, productParam
                            )
                        )
                        usedNames.add(name)
                        ok = True
                    if ok:
                        processedChains.append(chain)
                    else:
                        nSkipped += 1
            multiStepFeedback.setProgress(current * stepSize)

        multiStepFeedback.setCurrentStep(1)
        multiStepFeedback.pushInfo(self.tr("Gravando saída"))

        # Idempotência: remove rótulos de fronteira de rodadas anteriores —
        # textos genéricos com os MESMOS nomes no corredor das fronteiras
        # processadas (outros textos genéricos não são tocados)
        idsToRemove = self._findOldLabels(
            textLyr, processedChains, usedNames, offsetMu * 2.5
        )

        textLyr.startEditing()
        textLyr.beginEditCommand("Inserindo rótulos de fronteira")
        try:
            if idsToRemove:
                textLyr.deleteFeatures(idsToRemove)
            textLyr.addFeatures(newFeats)
        except Exception:
            textLyr.destroyEditCommand()
            raise
        textLyr.endEditCommand()

        multiStepFeedback.pushInfo(
            self.tr(
                "Rótulos inseridos: {0} | removidos (rodadas anteriores): {1} | "
                "pulados: {2}"
            ).format(len(newFeats), len(idsToRemove), nSkipped)
        )
        return self._results(len(newFeats), len(idsToRemove), nSkipped)

    def _results(self, inserted, removed, skipped):
        return {
            self.INSERTED: inserted,
            self.REMOVED: removed,
            self.SKIPPED: skipped,
        }

    def _sideNames(self, chain, tipo, sideLayers, offsetMu):
        """[(nome, sinal do lado)] consultando os polígonos de país (tipo 1)
        ou UF (tipo 2) em pontos-sonda perpendiculares ao meio da cadeia.
        None se algum lado não for identificado."""
        lyr = sideLayers.get(tipo)
        if lyr is None:
            return None
        mid = chain.length() / 2.0
        window = min(chain.length(), offsetMu * 4)
        piece = borderLabelLine._substring(
            chain, max(0.0, mid - window / 2.0), min(chain.length(), mid + window / 2.0)
        )
        result = []
        for sign in (1, -1):
            probeLine = borderLabelLine.offsetSide(piece, offsetMu, sign)
            if probeLine is None or probeLine.isEmpty():
                return None
            probe = probeLine.interpolate(probeLine.length() / 2.0)
            name = self._nameAt(lyr, probe)
            if name is None:
                return None
            result.append((name.upper(), sign))
        if result[0][0] == result[1][0]:
            return None  # mesmo nome dos dois lados: sonda caiu no mesmo poligono
        return result

    @staticmethod
    def _nameAt(lyr, pointGeom):
        request = QgsFeatureRequest().setFilterRect(pointGeom.boundingBox())
        for feat in lyr.getFeatures(request):
            if feat.geometry().intersects(pointGeom):
                name = feat["nome"]
                if name != NULL and str(name).strip():
                    return str(name).strip()
        return None

    @staticmethod
    def _makeTextFeature(textLyr, geom, name, fontSize, productParam):
        feat = QgsFeature(textLyr.fields())
        feat.setGeometry(geom)
        feat["texto_edicao"] = name
        feat["estilo_fonte"] = "Condensed Bold"
        feat["espacamento"] = 0
        feat["tamanho_txt"] = fontSize
        fields = textLyr.fields().names()
        if productParam == 0:  # Carta Ortoimagem
            feat["cor"] = "#ffffff"
            if "tamanho_buffer" in fields:
                feat["tamanho_buffer"] = 0.5
            if "cor_buffer" in fields:
                feat["cor_buffer"] = "#000000"
        else:
            feat["cor"] = "#241F21"
        return feat

    @staticmethod
    def _findOldLabels(textLyr, chains, names, corridor):
        if not chains or not names:
            return []
        ids = []
        engines = []
        extent = None
        for chain in chains:
            engine = QgsGeometry.createGeometryEngine(chain.constGet())
            engine.prepareGeometry()
            engines.append((engine, chain))
            bbox = chain.boundingBox()
            if extent is None:
                extent = bbox
            else:
                extent.combineExtentWith(bbox)
        extent.grow(corridor * 2)
        request = QgsFeatureRequest().setFilterRect(extent)
        for feat in textLyr.getFeatures(request):
            texto = feat["texto_edicao"]
            if texto == NULL or str(texto).strip().upper() not in names:
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
        return InsertBorderLabel()

    def name(self):
        return "insertborderlabel"

    def displayName(self):
        return self.tr("Insere Rótulo de Fronteira")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return help().helpUrl(self.name())
