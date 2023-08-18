# -*- coding: utf-8 -*-

import math
import processing

from qgis import core
from qgis.core import (
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingMultiStepFeedback,
    QgsProcessingParameterVectorLayer,
    QgsProcessingParameterEnum,
    QgsSpatialIndex,
    QgsDistanceArea,
    QgsProcessingParameterMultipleLayers,
    QgsCoordinateReferenceSystem,
    QgsCoordinateTransformContext,
    QgsUnitTypes,
    QgsGeometry,
    QgsProcessingException,
)
from qgis.PyQt.QtCore import QCoreApplication


class SizeLabelLarge(QgsProcessingAlgorithm):

    INPUT_POLYGON = "INPUT_POLYGON"
    INPUT_POINT_TEXT = "INPUT_POINT_TEXT"
    INPUT_LINE_TEXT = "INPUT_LINE_TEXT"
    SIZE_TEXT = "SIZE_TEXT"
    SCALE = "SCALE"
    OUTPUT = "OUTPUT"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_POLYGON,
                self.tr("Camada com os polígonos selecionados"),
                [QgsProcessing.TypeVectorPolygon],
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_POINT_TEXT,
                self.tr("Camada de texto ponto com as feições selecionadas"),
                [
                    QgsProcessing.TypeVectorPoint
                ],  # Lembrar de alterar para receber ou ponto ou linha e alterar o código para verificação.
                defaultValue="edicao_texto_generico_p",
                optional=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LINE_TEXT,
                self.tr("Camada de texto ponto com as feições selecionadas"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="edicao_texto_generico_l",
                optional=True,
            )
        )

        self.addParameter(
            core.QgsProcessingParameterField(
                self.SIZE_TEXT,
                self.tr('Selecionar o atributo de "tamanho_txt" da camada de entrada'),
                type=core.QgsProcessingParameterField.Any,
                parentLayerParameterName=self.INPUT_POINT_TEXT,
                allowMultiple=False,
                defaultValue="tamanho_txt",
            )
        )

        self.addParameter(
            QgsProcessingParameterEnum(
                self.SCALE,
                self.tr("Selecione a escala de edição:"),
                options=[
                    self.tr("1:25.000"),
                    self.tr("1:50.000"),
                    self.tr("1:100.000"),
                    self.tr("1:250.000"),
                ],
            )
        )

        self.scaleDict = {
            0: 25000,
            1: 50000,
            2: 100000,
            3: 250000,
        }

        self.searchBufferDict = {  # 4 mm na escala
            0: 100,
            1: 200,
            2: 400,
            3: 1000,
        }

    def processAlgorithm(self, parameters, context, feedback):
        inputPolygonLyr = self.parameterAsVectorLayer(
            parameters, self.INPUT_POLYGON, context
        )
        pointLyr = self.parameterAsVectorLayer(
            parameters, self.INPUT_POINT_TEXT, context
        )
        lineLyr = self.parameterAsVectorLayer(parameters, self.INPUT_LINE_TEXT, context)
        if pointLyr is None and lineLyr is None:
            raise QgsProcessingException(
                "Escolha pelo menos uma camada de texto genérico"
            )
        inputList = [pointLyr, lineLyr]
        inputList = list(filter(lambda x: x is not None, inputList))
        inputLyrSizeTextField = self.parameterAsFields(
            parameters, self.SIZE_TEXT, context
        )[0]
        gridScaleParam = self.parameterAsInt(parameters, self.SCALE, context)

        multiStep = QgsProcessingMultiStepFeedback(len(inputList), feedback)
        nSteps = sum(lyr.selectedFeatureCount() for lyr in inputList)
        if nSteps == 0:
            return {self.OUTPUT: ""}

        # Dicionário para adicionar o polígono com seu id, para analisar seu contexto espacial.
        polygonFeatDict, polygonSpatialIdx = self.spatialContext(inputPolygonLyr)

        for idx, lyr in enumerate(inputList):
            dictPolygon = {}
            bufferRadius = self.computeSearchBuffer(lyr, gridScaleParam)
            lyr.startEditing()
            nSteps = lyr.selectedFeatureCount()
            multiStep.setCurrentStep(idx)
            multiStepFeedback = QgsProcessingMultiStepFeedback(2 * nSteps, multiStep)
            for current, pointFeature in enumerate(lyr.getFeatures()):
                if multiStepFeedback.isCanceled():
                    break
                multiStepFeedback.setCurrentStep(2 * current)

                geomPoint, bboxPoint = self.pointGeo(bufferRadius, pointFeature)

                nStepsPolygons = inputPolygonLyr.selectedFeatureCount()
                if nStepsPolygons == 0:
                    return {self.OUTPUT: ""}

                stepSizePolygon = 100 / nStepsPolygons
                for current1, polygonId in enumerate(
                    polygonSpatialIdx.intersects(bboxPoint)
                ):
                    polygonFeature = polygonFeatDict[polygonId]
                    if multiStepFeedback.isCanceled():
                        break
                    geomPolygon = polygonFeature.geometry()

                    # Verificando se o buffer do ponto está contido no polígono.
                    if geomPoint.within(geomPolygon):
                        # Verificando qual o tamanho do texto deverá ser colocado no caso do ponto dentro do polígono.
                        self.updateSizeText(
                            inputPolygonLyr,
                            lyr,
                            inputLyrSizeTextField,
                            pointFeature,
                            geomPolygon,
                            gridScaleParam,
                        )
                        break
                    else:
                        # Verificando se o polígono intersecta o buffer do ponto, se intersectar adicionar em um dicionário a feição do polígono com seu id.
                        dictPolygon[polygonFeature.id()] = polygonFeature
                    multiStepFeedback.setProgress(current1 * stepSizePolygon)

                # Criando um dicionário para armazenar o polígono com a distância até o ponto para verificar qual polígono corresponde a essa mínima distância.
                dictDistPoly = {}

                # Colocando um valor de distância bem elevado para encontrar o polígono que possui a mínima distância com o ponto de cada iteração.
                minDist = 9999
                if len(dictPolygon) == 0:
                    continue

                multiStepFeedback.setCurrentStep(2 * current + 1)

                for current2, (idDictPolygon, featDictPolygon) in enumerate(
                    dictPolygon.items()
                ):
                    # Verificando a mínima distância
                    probDistance = geomPoint.distance(featDictPolygon.geometry())
                    # Armazenando a distância e o polígono
                    dictDistPoly[probDistance] = featDictPolygon
                    if not probDistance < minDist:
                        continue
                    minDist = probDistance

                    multiStepFeedback.setProgress(current2 * stepSizePolygon)

                # Alterando para o valor do tamanho do texto de acordo com o pole de inacessibilidade.
                geomNearstPolygon = dictDistPoly[minDist].geometry()
                self.updateSizeText(
                    inputPolygonLyr,
                    lyr,
                    inputLyrSizeTextField,
                    pointFeature,
                    geomNearstPolygon,
                    gridScaleParam,
                )

        return {self.OUTPUT: ""}

    def spatialContext(self, inputPolygonLyr):
        polygonFeatDict = dict()
        polygonSpatialIdx = QgsSpatialIndex()
        for feat in inputPolygonLyr.getSelectedFeatures():
            polygonFeatDict[feat.id()] = feat
            polygonSpatialIdx.addFeature(feat)
        return polygonFeatDict, polygonSpatialIdx

    def pointGeo(self, bufferRadius, feat):
        geom = feat.geometry()
        geomPoint = geom.centroid()
        bufferPoint = geomPoint.buffer(bufferRadius, -1)
        # Criando o bounding box do ponto.
        bboxPoint = bufferPoint.boundingBox()
        return geomPoint, bboxPoint

    def updateSizeText(
        self,
        inputPolygonLyr,
        inputPointLyr,
        inputLyrSizeTextField,
        pointFeature,
        geomPolygon,
        gridScaleParam,
    ):
        pointFeature[inputLyrSizeTextField] = self.sizeOfText(
            inputPolygonLyr, geomPolygon, gridScaleParam
        )
        inputPointLyr.updateFeature(pointFeature)

    def computeSearchBuffer(self, inputPointLyr, gridScaleParam):
        crs = inputPointLyr.crs()
        d_meters = self.searchBufferDict[gridScaleParam]
        if not crs.isGeographic():
            return d_meters
        lyrExtent = inputPointLyr.extent()
        bbox = QgsGeometry.fromRect(lyrExtent)
        center = bbox.centroid()
        centerPoint = center.asPoint()
        d = QgsDistanceArea()
        d.setSourceCrs(
            QgsCoordinateReferenceSystem(
                getSirgasAuthIdByPointLatLong(centerPoint.x(), centerPoint.y())
            ),  # encontra o fuso e reprojeta
            QgsCoordinateTransformContext(),
        )
        return d.convertLengthMeasurement(d_meters, QgsUnitTypes.DistanceDegrees)

    def sizeOfText(self, inputPolygonLyr, geomNearstPolygon, gridScaleParam):
        # Verificando se a medida está em ângulo ou em metros
        crs = inputPolygonLyr.crs()
        radiusCircle = geomNearstPolygon.poleOfInaccessibility(0.0001)[1]
        diamCircle = 2 * radiusCircle
        areaPolygon = geomNearstPolygon.area()
        scale = self.scaleDict[gridScaleParam]
        if crs.isGeographic():
            convertForMili = QgsDistanceArea()
            convertForMili.setSourceCrs(crs, QgsCoordinateTransformContext())
            areaPolygon = (
                1e6
                * convertForMili.convertAreaMeasurement(
                    areaPolygon, QgsUnitTypes.AreaSquareMeters
                )
                / (scale**2)
            )
            diamCircle = (
                1e3
                * convertForMili.convertLengthMeasurement(
                    diamCircle, QgsUnitTypes.DistanceMeters
                )
                / (scale)
            )
        # LP-0050 da MTM foi interpretado como 'or'.
        if areaPolygon <= 770 or diamCircle <= 14:
            sizeTxt = 6
        elif areaPolygon <= 2300 or diamCircle <= 28:
            sizeTxt = 7
        elif areaPolygon <= 3600 or diamCircle <= 36:
            sizeTxt = 8
        elif areaPolygon <= 5200 or diamCircle <= 44:
            sizeTxt = 9
        elif areaPolygon <= 9800 or diamCircle <= 62:
            sizeTxt = 10
        elif areaPolygon <= 16650 or diamCircle <= 84:
            sizeTxt = 12
        elif areaPolygon <= 25000 or diamCircle <= 105:
            sizeTxt = 14
        elif areaPolygon <= 36000 or diamCircle <= 125:
            sizeTxt = 16
        elif areaPolygon > 36000 or diamCircle > 125:
            sizeTxt = 18
        else:
            sizeTxt = 8

        return sizeTxt

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return SizeLabelLarge()

    def name(self):
        return "sizelabellarge"

    def displayName(self):
        return self.tr("Tamanho da fonte pela largura")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return self.tr(
            "O algoritmo calcula o tamanho do texto de acordo com a área e a largura do polígono"
        )


def getSirgasAuthIdByPointLatLong(lat, long):
    """
    Calculates SIRGAS 2000 epsg.
    <h2>Example usage:</h2>
    <ul>
    <li>Found: getSirgarAuthIdByPointLatLong(-8.05389, -34.881111) -> 'ESPG:31985'</li>
    <li>Not found: getSirgarAuthIdByPointLatLong(lat, long) -> ''</li>
    </ul>
    """
    zone_number = math.floor(((long + 180) / 6) % 60) + 1
    if lat >= 0:
        zone_letter = "N"
    else:
        zone_letter = "S"
    return getSirgasEpsg("{0}{1}".format(zone_number, zone_letter))


def getSirgasEpsg(key):
    options = {
        "11N": "EPSG:31965",
        "12N": "EPSG:31966",
        "13N": "EPSG:31967",
        "14N": "EPSG:31968",
        "15N": "EPSG:31969",
        "16N": "EPSG:31970",
        "17N": "EPSG:31971",
        "18N": "EPSG:31972",
        "19N": "EPSG:31973",
        "20N": "EPSG:31974",
        "21N": "EPSG:31975",
        "22N": "EPSG:31976",
        "17S": "EPSG:31977",
        "18S": "EPSG:31978",
        "19S": "EPSG:31979",
        "20S": "EPSG:31980",
        "21S": "EPSG:31981",
        "22S": "EPSG:31982",
        "23S": "EPSG:31983",
        "24S": "EPSG:31984",
        "25S": "EPSG:31985",
    }
    return options[key] if key in options else ""
