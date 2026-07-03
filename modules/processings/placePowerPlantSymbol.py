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

from qgis import core
from qgis.core import (
    QgsCoordinateReferenceSystem,
    QgsCoordinateTransform,
    QgsDistanceArea,
    QgsFeatureRequest,
    QgsGeometry,
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingOutputNumber,
    QgsProcessingParameterVectorLayer,
    QgsProcessingParameterBoolean,
    QgsProcessingParameterEnum,
    QgsRectangle,
    QgsVectorLayerUtils,
)
from qgis.PyQt.QtCore import QCoreApplication

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help

# Tipo usado por ESTE processing na edicao_simb_area_p (dominio
# tipo_simbolo_area): 1 = Subestacao de energia. A limpeza de simbolos
# pre-existentes se restringe a ele.
ENERGY_SYMBOL_TYPES = (1,)

# Lado do simbolo de subestacao nos estilos do produto (mm de carta,
# SVG de 1.0 mm nos QML topo 2.0 e orto 3.0).
SYMBOL_SIZE_MM = 1.0

# Grupo 18xx do dominio tipo_elemento_energia: subestacoes (1801 transmissao,
# 1802 distribuicao) — as unicas feicoes que recebem este simbolo.
GROUP_FILTER = '("tipo" - "tipo"%100)/100 in (18)'


class PlacePowerPlantSymbol(QgsProcessingAlgorithm):

    INPUT = "INPUT"
    ONLY_SELECTED = "ONLY_SELECTED"
    INPUT_VISIBLE_FIELD = "INPUT_VISIBLE_FIELD"
    SCALE = "SCALE"
    INPUT_SYMBOL_LAYER = "INPUT_SYMBOL_LAYER"
    INSERTED = "INSERTED"
    REMOVED = "REMOVED"
    SKIPPED_NOT_FIT = "SKIPPED_NOT_FIT"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT,
                self.tr("Selecionar camada de elemento energia"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="infra_elemento_energia_a",
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.ONLY_SELECTED, self.tr("Executar somente nas feições selecionadas")
            )
        )
        self.addParameter(
            core.QgsProcessingParameterField(
                self.INPUT_VISIBLE_FIELD,
                self.tr('Selecionar o atributo de "visibilidade" da camada de entrada'),
                type=core.QgsProcessingParameterField.Any,
                parentLayerParameterName=self.INPUT,
                allowMultiple=False,
                defaultValue="visivel",
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
        self.addOutput(
            QgsProcessingOutputNumber(self.INSERTED, self.tr("Símbolos inseridos"))
        )
        self.addOutput(
            QgsProcessingOutputNumber(
                self.REMOVED, self.tr("Símbolos pré-existentes removidos")
            )
        )
        self.addOutput(
            QgsProcessingOutputNumber(
                self.SKIPPED_NOT_FIT,
                self.tr("Feições puladas (símbolo não cabe na escala)"),
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        inputLyr = self.parameterAsVectorLayer(parameters, self.INPUT, context)
        onlySelected = self.parameterAsBool(parameters, self.ONLY_SELECTED, context)
        inputLyrVisibleField = self.parameterAsStrings(
            parameters, self.INPUT_VISIBLE_FIELD, context
        )[0]
        simbAreaLayer = self.parameterAsVectorLayer(
            parameters, self.INPUT_SYMBOL_LAYER, context
        )
        scaleIdx = self.parameterAsInt(parameters, self.SCALE, context)

        # Lado do simbolo em unidades da camada de entrada (mm de carta ->
        # metros no terreno -> unidade do CRS), como no placePointSymbolInsideArea.
        d = QgsDistanceArea()
        d.setSourceCrs(
            QgsCoordinateReferenceSystem("EPSG:3857"), context.transformContext()
        )
        symbolSide = d.convertLengthMeasurement(
            SYMBOL_SIZE_MM * 1e-3 * self.sizesDict[scaleIdx],
            inputLyr.crs().mapUnits(),
        )

        # ~11 m no equador em CRS geografico; 1 m em projetado
        tolerance = 0.0001 if inputLyr.crs().isGeographic() else 1.0

        transform = None
        if inputLyr.crs() != simbAreaLayer.crs():
            transform = QgsCoordinateTransform(
                inputLyr.crs(), simbAreaLayer.crs(), context.transformContext()
            )

        request = QgsFeatureRequest().setFilterExpression(GROUP_FILTER)
        if onlySelected:
            request.setFilterFids([feat.id() for feat in inputLyr.selectedFeatures()])
        # Materializa para contar so as feicoes FILTRADAS (o progresso usava o
        # featureCount total da camada, com o iterador filtrado).
        feats = list(inputLyr.getFeatures(request))
        nFeats = len(feats)
        if nFeats == 0:
            return {self.INSERTED: 0, self.REMOVED: 0, self.SKIPPED_NOT_FIT: 0}
        stepSize = 100 / nFeats

        simbAreaLayer.startEditing()
        simbAreaLayer.beginEditCommand("Posicionando símbolos")
        newFeatList = []
        # Geometrias processadas (no CRS da camada de simbolos), para a
        # limpeza de simbolos de rodadas anteriores — inclui as INVISIVEIS,
        # para que alternar 'visivel' e reexecutar remova o simbolo antigo.
        processedGeoms = []
        nSkippedNotFit = 0

        for current, feat in enumerate(feats):
            if feedback.isCanceled():
                simbAreaLayer.destroyEditCommand()
                return {self.INSERTED: 0, self.REMOVED: 0, self.SKIPPED_NOT_FIT: 0}

            geom = feat.geometry()
            if geom is None or geom.isEmpty():
                continue

            cleanupGeom = QgsGeometry(geom)
            if transform is not None:
                cleanupGeom.transform(transform)
            processedGeoms.append(cleanupGeom)

            # Verifica se a feição está visível (NULL conta como invisível)
            try:
                visible = int(feat[inputLyrVisibleField])
            except (TypeError, ValueError):
                visible = 0
            if visible != 1:
                continue

            # Ponto mais interior do poligono; fallback para pointOnSurface
            # em geometrias degeneradas.
            try:
                poiGeom, _radius = geom.poleOfInaccessibility(tolerance)
                innerPoint = poiGeom.asPoint()
                pointGeom = QgsGeometry.fromPointXY(innerPoint)
            except Exception:
                pointGeom = geom.pointOnSurface()
                innerPoint = pointGeom.asPoint()

            # O simbolo precisa caber na feição na escala de edição
            half = symbolSide / 2
            symbolRect = QgsGeometry.fromRect(
                QgsRectangle(
                    innerPoint.x() - half,
                    innerPoint.y() - half,
                    innerPoint.x() + half,
                    innerPoint.y() + half,
                )
            )
            if not symbolRect.within(geom):
                nSkippedNotFit += 1
                continue

            if transform is not None:
                pointGeom.transform(transform)

            newFeat = QgsVectorLayerUtils.createFeature(simbAreaLayer, pointGeom)
            newFeat["tipo"] = 1
            newFeatList.append(newFeat)

            feedback.setProgress(current * stepSize)

        # Idempotência: remove os simbolos de subestação de rodadas anteriores
        # dentro das feições processadas, antes de inserir os novos (mesmo
        # edit command — um único undo restaura o estado anterior).
        idsToRemove = []
        if processedGeoms:
            extent = QgsRectangle()
            for g in processedGeoms:
                extent.combineExtentWith(g.boundingBox())
            symbRequest = QgsFeatureRequest().setFilterRect(extent)
            for symbFeat in simbAreaLayer.getFeatures(symbRequest):
                try:
                    tipo = int(symbFeat["tipo"])
                except (TypeError, ValueError):
                    continue
                if tipo not in ENERGY_SYMBOL_TYPES:
                    continue
                symbGeom = symbFeat.geometry()
                if any(g.intersects(symbGeom) for g in processedGeoms):
                    idsToRemove.append(symbFeat.id())
        if idsToRemove:
            simbAreaLayer.deleteFeatures(idsToRemove)

        simbAreaLayer.addFeatures(newFeatList)
        simbAreaLayer.endEditCommand()

        feedback.pushInfo(
            self.tr(
                "Símbolos inseridos: {0} | removidos (rodadas anteriores): {1} | "
                "feições puladas por símbolo não caber na escala: {2}"
            ).format(len(newFeatList), len(idsToRemove), nSkippedNotFit)
        )
        return {
            self.INSERTED: len(newFeatList),
            self.REMOVED: len(idsToRemove),
            self.SKIPPED_NOT_FIT: nSkippedNotFit,
        }

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return PlacePowerPlantSymbol()

    def name(self):
        return "placepowerplantsymbol"

    def displayName(self):
        return self.tr("Insere símbolo de elemento de energia")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return help().helpUrl(self.name())
