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
    QgsGeometry,
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingMultiStepFeedback,
    QgsProcessingOutputNumber,
    QgsProcessingParameterEnum,
    QgsProcessingParameterVectorLayer,
)
from qgis.PyQt.QtCore import QCoreApplication
from qgis import processing

from .processingUtils import ProcessingUtils
from ...Help.algorithmHelpCreator import HTMLHelpCreator as help

# situacao_em_poligono: 2/3/4 = dentro de poligono; 1 (fora), NULL e 9999
# caem na tabela "fora" (mais conservadora)
IN_POLYGON_VALUES = (2, 3, 4)


class SizeTextRiverLine(QgsProcessingAlgorithm):

    INPUT_LAYER_L = "INPUT_LAYER_L"
    INPUT_FRAME_A = "INPUT_FRAME_A"
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
            QgsProcessingParameterEnum(
                self.SCALE,
                self.tr("Selecione a escala de edição"),
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
        gridScaleParam = self.parameterAsInt(parameters, self.SCALE, context)
        self.productParam = self.parameterAsInt(parameters, self.PRODUCT, context)
        self.scaleDict = {
            0: 5000,
            1: 10000,
            2: 25000,
            3: 50000,
            4: 100000,
            5: 250000,
        }
        self.scale = self.scaleDict[gridScaleParam]

        multiStepFeedback = QgsProcessingMultiStepFeedback(3, feedback)
        currentStep = 0
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo(self.tr("Mesclando rios"))
        merged = self.getMergedRiver(
            drainageLayer, frameLayer, context, feedback=multiStepFeedback
        )

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo(self.tr("Calculando tamanhos"))
        # nome -> lista de (engine preparado, geometria, tamanho); um rio
        # fundido por componente conexa — homonimos desconexos ficam separados
        sizesByName = self.sizeText(merged, feedback=multiStepFeedback)
        if sizesByName is None:
            return {self.UPDATED: 0, self.UNMATCHED: 0}

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
            # Propaga o tamanho do rio fundido para TODOS os trechos que o
            # compoem (mesmo nome + intersecao geometrica). Trecho que cruza
            # a moldura casa pela parte interna; trecho totalmente fora da
            # moldura nao casa e fica intocado (contado).
            size = None
            constGeom = geom.constGet()
            for engine, _g, componentSize in sizesByName.get(str(feature["nome"]), []):
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

    def sizeText(self, layer, feedback):
        """Tamanho da fonte por rio fundido (tabelas MTM), agrupado por nome.
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
            try:
                situacao = int(feature["situacao_em_poligono"])
            except (TypeError, ValueError):
                situacao = None
            if situacao in IN_POLYGON_VALUES:
                size = ProcessingUtils.getRiverInPolyLabelFontSize(
                    feature, self.scale, lyrCrs
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
