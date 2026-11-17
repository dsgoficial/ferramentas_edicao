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
import statistics

from qgis.core import (
    NULL,
    QgsCoordinateTransform,
    QgsDistanceArea,
    QgsGeometry,
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingMultiStepFeedback,
    QgsProcessingOutputNumber,
    QgsProcessingParameterEnum,
    QgsProcessingParameterVectorLayer,
    QgsProject,
    QgsSpatialIndex,
)
from qgis.PyQt.QtCore import QCoreApplication
from qgis import processing

from .processingUtils import ProcessingUtils
from ...Help.algorithmHelpCreator import HTMLHelpCreator as help

# situacao_em_poligono: 2/3/4 = dentro de poligono; 1 (fora), NULL e 9999
# caem na tabela "fora" (mais conservadora)
IN_POLYGON_VALUES = (2, 3, 4)
IN_POLYGON_EXPRESSION = 'coalesce("situacao_em_poligono", 0) IN (2, 3, 4)'
WATER_LAYER_NAME = "cobter_massa_dagua_a"


class SizeTextRiverLine(QgsProcessingAlgorithm):

    INPUT_LAYER_L = "INPUT_LAYER_L"
    INPUT_FRAME_A = "INPUT_FRAME_A"
    INPUT_WATER_A = "INPUT_WATER_A"
    SCALE = "SCALE"
    PRODUCT = "PRODUCT"
    UPDATED = "UPDATED"
    UNMATCHED = "UNMATCHED"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_L,
                self.tr("Selecionar camada de drenagem"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="elemnat_trecho_drenagem_l",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_FRAME_A,
                self.tr("Selecionar camada de moldura"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="aux_moldura_a",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_WATER_A,
                self.tr(
                    "Selecionar camada de massa d'água (largura do rio dentro de polígono)"
                ),
                [QgsProcessing.TypeVectorPolygon],
                optional=True,
            )
        )
        self.addParameter(
            QgsProcessingParameterEnum(
                self.SCALE,
                self.tr("Selecione a escala de edição"),
                options=[
                    self.tr("1:2.000"),
                    self.tr("1:5.000"),
                    self.tr("1:10.000"),
                    self.tr("1:25.000"),
                    self.tr("1:50.000"),
                    self.tr("1:100.000"),
                    self.tr("1:250.000"),
                ],
                defaultValue=3,
            )
        )
        self.addParameter(
            QgsProcessingParameterEnum(
                self.PRODUCT,
                self.tr("Selecione o tipo de produto"),
                options=[self.tr("Carta Ortoimagem"), self.tr("Carta Topográfica")],
            )
        )
        self.addOutput(
            QgsProcessingOutputNumber(
                self.UPDATED, self.tr("Trechos com tamanho atualizado")
            )
        )
        self.addOutput(
            QgsProcessingOutputNumber(
                self.UNMATCHED,
                self.tr("Trechos nomeados sem rio fundido correspondente"),
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        drainageLayer = self.parameterAsVectorLayer(
            parameters, self.INPUT_LAYER_L, context
        )
        frameLayer = self.parameterAsVectorLayer(
            parameters, self.INPUT_FRAME_A, context
        )
        waterLayer = self.parameterAsVectorLayer(
            parameters, self.INPUT_WATER_A, context
        )
        if waterLayer is None:
            # sem a camada informada, usa a massa d'agua do projeto, se houver;
            # sem nenhuma, o tamanho dentro de poligono fica so pelo comprimento
            candidates = QgsProject.instance().mapLayersByName(WATER_LAYER_NAME)
            waterLayer = candidates[0] if candidates else None
        gridScaleParam = self.parameterAsInt(parameters, self.SCALE, context)
        self.productParam = self.parameterAsInt(parameters, self.PRODUCT, context)
        self.scaleDict = {
            0: 2000,
            1: 5000,
            2: 10000,
            3: 25000,
            4: 50000,
            5: 100000,
            6: 250000,
        }
        self.scale = self.scaleDict[gridScaleParam]

        multiStepFeedback = QgsProcessingMultiStepFeedback(3, feedback)
        currentStep = 0
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo(self.tr("Mesclando rios"))
        # Funde separado o que esta dentro e o que esta fora de poligono: o
        # rio fundido herda os atributos do menor trecho, e a linha simples
        # que encostava num rio largo herdava o tamanho dele (ate 16 pt).
        mergedByRule = {
            inPolygon: self.getMergedRiver(
                self.extractByRule(drainageLayer, inPolygon, context),
                frameLayer,
                context,
                feedback=multiStepFeedback,
            )
            for inPolygon in (True, False)
        }

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo(self.tr("Calculando tamanhos"))
        waterIndex = self.buildWaterIndex(waterLayer, drainageLayer)
        # (dentro de poligono?, nome) -> lista de (engine preparado,
        # geometria, tamanho); um rio fundido por componente conexa de mesma
        # regra; homonimos desconexos ficam separados
        sizesByName = {}
        for inPolygon, merged in mergedByRule.items():
            sizes = self.sizeText(
                merged, inPolygon, waterIndex, feedback=multiStepFeedback
            )
            if sizes is None:
                return {self.UPDATED: 0, self.UNMATCHED: 0}
            for nome, items in sizes.items():
                sizesByName[(inPolygon, nome)] = items

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo(self.tr("Atualizando atributos"))
        fieldIdx = drainageLayer.fields().lookupField("tamanho_txt")
        nFeats = drainageLayer.featureCount()
        if nFeats == 0:
            return {self.UPDATED: 0, self.UNMATCHED: 0}
        stepSize = 100 / nFeats

        updates = {}
        nUnmatched = 0
        for current, feature in enumerate(drainageLayer.getFeatures()):
            if multiStepFeedback.isCanceled():
                return {self.UPDATED: 0, self.UNMATCHED: 0}
            if feature["nome"] == NULL:
                continue
            geom = feature.geometry()
            if geom is None or geom.isEmpty():
                continue
            # Propaga o tamanho do rio fundido para os trechos que o compoem
            # (mesmo nome, mesma regra dentro/fora de poligono e intersecao
            # geometrica). Trecho que cruza a moldura casa pela parte
            # interna; trecho totalmente fora da moldura nao casa e fica
            # intocado (contado).
            size = None
            constGeom = geom.constGet()
            key = (self.isInPolygon(feature), str(feature["nome"]))
            for engine, _g, componentSize in sizesByName.get(key, []):
                if engine.intersects(constGeom):
                    size = componentSize if size is None else max(size, componentSize)
            if size is None:
                nUnmatched += 1
                continue
            updates[feature.id()] = size
            multiStepFeedback.setProgress(current * stepSize)

        drainageLayer.startEditing()
        drainageLayer.beginEditCommand("Atualizando atributos")
        for fid, size in updates.items():
            drainageLayer.changeAttributeValue(fid, fieldIdx, size)
        drainageLayer.endEditCommand()

        multiStepFeedback.pushInfo(
            self.tr(
                "Trechos atualizados: {0} | nomeados sem correspondência "
                "(fora da moldura): {1}"
            ).format(len(updates), nUnmatched)
        )
        return {self.UPDATED: len(updates), self.UNMATCHED: nUnmatched}

    def isInPolygon(self, feature):
        try:
            return int(feature["situacao_em_poligono"]) in IN_POLYGON_VALUES
        except (TypeError, ValueError):
            return False

    def extractByRule(self, layer, inPolygon, context):
        expression = (
            IN_POLYGON_EXPRESSION
            if inPolygon
            else "NOT ({0})".format(IN_POLYGON_EXPRESSION)
        )
        return processing.run(
            "native:extractbyexpression",
            {"INPUT": layer, "EXPRESSION": expression, "OUTPUT": "TEMPORARY_OUTPUT"},
            context=context,
        )["OUTPUT"]

    def buildWaterIndex(self, waterLayer, drainageLayer):
        """(indice espacial, {fid: poligono}) da massa d'agua no SRC da
        drenagem, ou None sem a camada."""
        if waterLayer is None:
            return None
        transform = None
        if waterLayer.crs() != drainageLayer.crs():
            transform = QgsCoordinateTransform(
                waterLayer.crs(), drainageLayer.crs(), QgsProject.instance()
            )
        index = QgsSpatialIndex()
        geoms = {}
        for feat in waterLayer.getFeatures():
            geom = QgsGeometry(feat.geometry())
            if geom is None or geom.isEmpty():
                continue
            if transform is not None:
                geom.transform(transform)
            geoms[feat.id()] = geom
            index.addFeature(feat.id(), geom.boundingBox())
        return index, geoms

    def riverWidthMm(self, geom, waterIndex, lyrCrs):
        """Largura mediana do rio no papel: 2 x distancia do eixo a margem do
        poligono de agua que o contem, num ponto a cada 10 mm de papel (5 no
        minimo). None se nenhum ponto cai em agua."""
        if waterIndex is None:
            return None
        index, geoms = waterIndex
        total = geom.length()
        if total <= 0:
            return None
        lengthMm = 1000 * self.measureLength(geom, lyrCrs) / self.scale
        nPoints = min(200, max(5, int(lengthMm / 10)))
        distanceArea = None
        if lyrCrs.isGeographic():
            distanceArea = QgsDistanceArea()
            distanceArea.setEllipsoid(lyrCrs.ellipsoidAcronym())
        widths = []
        for i in range(nPoints):
            point = geom.interpolate(total * (i + 0.5) / nPoints)
            if point is None or point.isEmpty():
                continue
            for fid in index.intersects(point.boundingBox()):
                polygon = geoms[fid]
                if not polygon.intersects(point):
                    continue
                boundary = QgsGeometry(polygon.constGet().boundary())
                if distanceArea is None:
                    distance = boundary.distance(point)
                else:
                    distance = distanceArea.measureLine(
                        point.asPoint(), boundary.nearestPoint(point).asPoint()
                    )
                widths.append(2 * distance)
        if not widths:
            return None
        return 1000 * statistics.median(widths) / self.scale

    def measureLength(self, geom, lyrCrs):
        if lyrCrs.isGeographic():
            distanceArea = QgsDistanceArea()
            distanceArea.setEllipsoid(lyrCrs.ellipsoidAcronym())
            return distanceArea.measureLength(geom)
        return geom.length()

    def getMergedRiver(self, layer, frame, context, feedback):
        merged = processing.run(
            "ferramentasedicao:mergerivers",
            {
                "INPUT_LAYER_L": layer,
                "INPUT_FRAME_A": frame,
                "OUTPUT_LAYER_L": "TEMPORARY_OUTPUT",
            },
            context=context,
            feedback=feedback,
        )
        return merged["OUTPUT_LAYER_L"]

    def sizeText(self, layer, inPolygon, waterIndex, feedback):
        """Tamanho da fonte por rio fundido (tabelas MTM), agrupado por nome.
        A camada tem so trechos de uma regra (inPolygon). Dentro de poligono,
        a largura do rio no papel limita o tamanho do rio fino.
        Retorna {nome: [(engine, geometria, tamanho), ...]} ou None se
        cancelado."""
        lyrCrs = layer.dataProvider().crs()
        nFeatures = layer.featureCount()
        sizesByName = {}
        if nFeatures == 0:
            return sizesByName
        stepSize = 100 / nFeatures
        for current, feature in enumerate(layer.getFeatures()):
            if feedback.isCanceled():
                return None
            if inPolygon:
                size = ProcessingUtils.getRiverInPolyLabelFontSize(
                    feature,
                    self.scale,
                    lyrCrs,
                    self.riverWidthMm(feature.geometry(), waterIndex, lyrCrs),
                )
            else:
                # fora de poligono (1) e NULL/9999: tabela "fora"
                size = ProcessingUtils.getRiverOutPolyLabelFontSize(
                    feature, self.scale, lyrCrs
                )
            if self.productParam == 0:  # Para carta ortoimagem o tamanho mínimo é 7
                size = size if size > 6 else 7
            geom = QgsGeometry(feature.geometry())
            if geom is None or geom.isEmpty():
                continue
            engine = QgsGeometry.createGeometryEngine(geom.constGet())
            engine.prepareGeometry()
            # a QgsGeometry acompanha o engine para manter a geometria viva
            sizesByName.setdefault(str(feature["nome"]), []).append(
                (engine, geom, size)
            )
            feedback.setProgress(current * stepSize)
        return sizesByName

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return SizeTextRiverLine()

    def name(self):
        return "sizetextriverline"

    def displayName(self):
        return self.tr("Definir tamanho do texto de drenagem de acordo com o comprimento")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return help().helpUrl(self.name())
