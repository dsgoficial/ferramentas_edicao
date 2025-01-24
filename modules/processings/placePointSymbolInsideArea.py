# -*- coding: utf-8 -*-

from qgis import core
from qgis.core import (
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingParameterVectorLayer,
    QgsProcessingParameterBoolean,
    QgsProcessingParameterEnum,
    QgsDistanceArea,
    QgsCoordinateReferenceSystem,
    QgsVectorLayerUtils,
    QgsGeometry,
    QgsRectangle
)
from qgis.PyQt.QtCore import QCoreApplication

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help


class PlacePointSymbolInsideArea(QgsProcessingAlgorithm):

    INPUT = "INPUT"
    ONLY_SELECTED = "ONLY_SELECTED"
    INPUT_VISIBLE_FIELD = "INPUT_VISIBLE_FIELD"
    SCALE = "SCALE"
    INPUT_SYMBOL_LAYER = "INPUT_SYMBOL_LAYER"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT,
                self.tr("Selecionar camada de ocupação do solo"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="constr_ocupacao_solo_a",
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
        self.mappingDict = {
            101: 6,
            102: 6,
            103: 6,
            104: 6,
            105: 6,
            201: 18,
            202: 18,
            203: 18,
            204: 18,
            205: 18,
            206: 18,
            207: 18,
            298: 18,
            901: 10,
        }

    def processAlgorithm(self, parameters, context, feedback):
        inputLyr = self.parameterAsVectorLayer(parameters, self.INPUT, context)
        onlySelected = self.parameterAsBool(parameters, self.ONLY_SELECTED, context)
        inputLyrVisibleField = self.parameterAsFields(
            parameters, self.INPUT_VISIBLE_FIELD, context
        )[0]
        simbAreaLayer = self.parameterAsVectorLayer(
            parameters, self.INPUT_SYMBOL_LAYER, context
        )
        scaleIdx = self.parameterAsInt(parameters, self.SCALE, context)

        # Configuração do cálculo de área apenas para tipos que mapeiam para 18
        d = QgsDistanceArea()
        d.setSourceCrs(
            QgsCoordinateReferenceSystem("EPSG:3857"), context.transformContext()
        )
        bufferSize = d.convertLengthMeasurement(
            1.5e-3 * self.sizesDict[scaleIdx], inputLyr.crs().mapUnits()
        )
        
        iterator = (
            inputLyr.getFeatures() if not onlySelected else inputLyr.selectedFeatures()
        )
        nFeats = (
            inputLyr.featureCount()
            if not onlySelected
            else inputLyr.selectedFeatureCount()
        )
        if nFeats == 0:
            return {}
        stepSize = 100 / nFeats

        simbAreaLayer.startEditing()
        simbAreaLayer.beginEditCommand("Posicionando símbolos")
        newFeatList = []
        
        tolerance = self.get_appropriate_tolerance(inputLyr.crs())

        for current, feat in enumerate(iterator):
            if feedback.isCanceled():
                break
            
            # Verifica se a feição está visível
            if feat[inputLyrVisibleField] != 1:
                continue
                
            if feat["tipo"] not in self.mappingDict:
                continue
                
            geom = feat.geometry()
            poi_geom, radius = geom.poleOfInaccessibility(tolerance)
            innerPoint = poi_geom.asPoint()
                
            # Verifica o tamanho apenas para tipos que mapeiam para 18 (Sports Ground)
            if self.mappingDict[feat["tipo"]] == 18:
                width, height = self.get_sport_symbol_dimensions(self.sizesDict[scaleIdx])
                symbol_rect = self.create_symbol_rectangle(innerPoint, width, height)
                if not symbol_rect.within(geom):
                    continue

            point_geom = QgsGeometry.fromPointXY(innerPoint)
            newFeat = QgsVectorLayerUtils.createFeature(simbAreaLayer, point_geom)
            newFeat["tipo"] = self.mappingDict[feat["tipo"]]
            newFeatList.append(newFeat)
            
            feedback.setProgress(current * stepSize)
            
        simbAreaLayer.addFeatures(newFeatList)
        simbAreaLayer.endEditCommand()
        return {}


    def get_sport_symbol_dimensions(self, scale):
        """
        Calcula as dimensões do símbolo 'S' na escala do mapa
        Retorna (largura, altura) em metros
        """
        # Tamanho base em mm
        height_mm = 2.1168  # 6pt
        width_mm = 1.4112   # estimativa para 'S'
        
        # Conversão para metros na escala do mapa
        scale_factor = scale / 1000  # escala para metros
        height_m = height_mm * scale_factor
        width_m = width_mm * scale_factor
        
        return (width_m, height_m)

    def create_symbol_rectangle(self, point, width, height):
        """
        Cria um retângulo centrado no ponto com as dimensões especificadas
        """
        dx = width / 2
        dy = height / 2
        return QgsGeometry.fromRect(
            QgsRectangle(
                point.x() - dx, point.y() - dy,
                point.x() + dx, point.y() + dy
            )
        )

    def get_appropriate_tolerance(self, crs):
        """
        Retorna uma tolerância apropriada baseada no CRS
        """
        if crs.isGeographic():  # Sistema lat/long
            return 0.0001  # ~11m no equador
        else:  # Sistema projetado (como UTM)
            return 1.0    # 1 metro

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return PlacePointSymbolInsideArea()

    def name(self):
        return "placepointsymbolinsidearea"

    def displayName(self):
        return self.tr("Insere símbolo de ocupação do solo")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return help().helpUrl(self.name())