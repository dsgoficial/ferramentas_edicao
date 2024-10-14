import math
import os

from qgis import processing
from qgis.core import (
    QgsCoordinateReferenceSystem,
    QgsField,
    QgsCoordinateTransformContext,
    QgsDistanceArea,
    QgsFeature,
    QgsFeatureRequest,
    QgsGeometry,
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProperty,
    QgsProcessingParameterMultipleLayers,
    QgsProcessingParameterVectorLayer,
    NULL,
    QgsUnitTypes,
    QgsProcessingParameterEnum,
    QgsProcessingParameterFeatureSink,
    QgsFeatureSink,
    QgsVectorLayer,
    QgsProcessingMultiStepFeedback,
)
from qgis.PyQt.QtCore import QCoreApplication, QVariant

from .processingUtils import ProcessingUtils

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help


class InsertRoadMarker(QgsProcessingAlgorithm):

    INPUT_FRAME = "INPUT_FRAME"
    SCALE = "SCALE"
    ROAD = "ROAD"
    MARKER = "MARKER"

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

    def processAlgorithm(self, parameters, context, feedback):
        layer_road = self.parameterAsVectorLayer(parameters, self.ROAD, context)
        layer_marker = self.parameterAsVectorLayer(parameters, self.MARKER, context)
        gridScaleParam = self.parameterAsInt(parameters, self.SCALE, context)

        if gridScaleParam == 0:
            scale = 25000
        elif gridScaleParam == 1:
            scale = 50000
        if gridScaleParam == 2:
            scale = 100000
        elif gridScaleParam == 3:
            scale = 250000

        frameLayer = self.parameterAsVectorLayer(parameters, self.INPUT_FRAME, context)
        frameLayer = self.runAddCount(frameLayer, feedback=feedback)
        self.runCreateSpatialIndex(frameLayer, feedback=feedback)

        frameLinesLayer = self.convertPolygonToLines(frameLayer)
        self.runCreateSpatialIndex(frameLinesLayer, feedback=feedback)

        layer_road = self.runAddCount(layer_road, feedback=feedback)
        self.runCreateSpatialIndex(layer_road, feedback=feedback)

        highwayLyr = self.mergeHighways(layer_road, frameLayer)
        self.runCreateSpatialIndex(highwayLyr, feedback=feedback)

        distance1 = self.getChopDistance(highwayLyr, scale * 0.2)
        pointsAndAngles1 = self.chopLineLayer(
            highwayLyr, distance1, ["sigla", "jurisdicao", "tipo"]
        )
        self.populateRoadIndentificationSymbolLayer(layer_marker, pointsAndAngles1, 0)

        maxRoadIndentificationNumber = self.findMaxRoadIndentificationNumber(
            pointsAndAngles1
        )
        if maxRoadIndentificationNumber > 1:
            for n in range(maxRoadIndentificationNumber - 1):
                distanceFromSymbol = self.getChopDistance(
                    highwayLyr, scale * (n + 1) * 0.008
                )
                highwayLyrSubstring = self.getLineSubstring(
                    highwayLyr,
                    distanceFromSymbol,
                    QgsProperty.fromExpression("length( $geometry)"),
                )
                chopDistance = self.getChopDistance(highwayLyrSubstring, scale * 0.2)
                pointsAndAnglesN = self.chopLineLayer(
                    highwayLyrSubstring, chopDistance, ["sigla", "jurisdicao", "tipo"]
                )
                self.populateRoadIndentificationSymbolLayer(
                    layer_marker, pointsAndAnglesN, n + 1
                )
                distanceNextToFrame = self.getChopDistance(highwayLyr, scale * 0.006)
                self.removePointsNextToFrame(
                    frameLinesLayer, layer_marker, distanceNextToFrame
                )

        return {}

    def getLineSubstring(self, layer, startDistance, endDistance):
        r = processing.run(
            "native:linesubstring",
            {
                "END_DISTANCE": endDistance,
                "INPUT": layer,
                "OUTPUT": "TEMPORARY_OUTPUT",
                "START_DISTANCE": startDistance,
            },
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
            return d.convertLengthMeasurement(distance, QgsUnitTypes.DistanceDegrees)
        else:
            return distance

    @staticmethod
    def chopLineLayer(layer, cutDistance, requiredAttrs=None):
        """Chops layer using cutDistance, returning initial points of chopped features and its angles.
        If the point touches the initial/final point of any original feature the point is discarded.
        If requiredAttrs is provided, the mapping {attr:feat[attr] for attr in requiredAttrs} is also returned
        """
        attributeMapping = {}
        pointsAndAngles = []
        output = processing.run(
            "native:splitlinesbylength",
            {"INPUT": layer, "LENGTH": cutDistance, "OUTPUT": "TEMPORARY_OUTPUT"},
        )["OUTPUT"]

        output = processing.run(
            "native:extractspecificvertices",
            {"INPUT": output, "VERTICES": 0, "OUTPUT": "TEMPORARY_OUTPUT"},
        )["OUTPUT"]

        bounds = processing.run(
            "native:boundary", {"INPUT": layer, "OUTPUT": "TEMPORARY_OUTPUT"}
        )["OUTPUT"]
        bounds = processing.run(
            "native:multiparttosingleparts", {"INPUT": bounds, "OUTPUT": "memory:"}
        )["OUTPUT"]
        for feat in output.getFeatures():
            if (
                requiredAttrs
                and all((x in layer.fields().names() for x in requiredAttrs))
                and all((feat.attribute(x) for x in requiredAttrs))
            ):
                attributeMapping = {x: feat.attribute(x) for x in requiredAttrs}
            isBoundVertex = False
            request = QgsFeatureRequest().setFilterRect(feat.geometry().boundingBox())
            geomEngine = QgsGeometry.createGeometryEngine(feat.geometry().constGet())
            geomEngine.prepareGeometry()
            for featBound in bounds.getFeatures(request):
                if geomEngine.intersects(featBound.geometry().constGet()):
                    isBoundVertex = True
                    break
            if not isBoundVertex:
                geom = feat.geometry()
                angle = (geom.angleAtVertex(0) + (math.pi / 2)) * 180 / math.pi
                if angle > 360:
                    angle = angle - 360
                if angle > 90 and angle < 270:
                    angle = angle - 180
                pointsAndAngles.append((geom, angle, attributeMapping))
        return pointsAndAngles

    def mergeHighways(self, lyr, frame):
        notNullIdentificationNumber = processing.run(
            "native:extractbyattribute",
            {
                "INPUT": lyr,
                "FIELD": "sigla",
                "OPERATOR": 9,
                "VALUE": "",
                "OUTPUT": "memory:",
            },
        )["OUTPUT"]
        collected = processing.run(
            "native:dissolve",
            {
                "INPUT": notNullIdentificationNumber,
                "FIELD": ["sigla", "jurisdicao", "tipo"],
                "OUTPUT": "memory:",
            },
        )["OUTPUT"]
        return processing.run(
            "native:clip",
            {
                "INPUT": collected,
                "OVERLAY": frame,
                "OUTPUT": "memory:",
            },
        )["OUTPUT"]

    def findMaxRoadIndentificationNumber(self, pointsAndAngles):
        n = 0
        for point, angle, mapping in pointsAndAngles:
            if sigla := mapping.get("sigla"):
                name = sigla.split(";")
                if len(name) > n:
                    n = len(name)
        return n

    @staticmethod
    def populateRoadIndentificationSymbolLayer(layer, pointsAndAngles, n):
        """Populates the layer edicao_identificador_trecho_rod_p"""
        fields = layer.fields()
        layer.startEditing()
        layer.beginEditCommand("Criando pontos")
        feats = []
        for point, angle, mapping in pointsAndAngles:
            feat = QgsFeature(fields)
            geom = QgsGeometry.fromWkt(point.asWkt())
            feat.setGeometry(geom)
            if sigla := mapping.get("sigla"):
                if not len(sigla.split(";")) > n:
                    continue
                try:
                    name = sigla.split(";")[n].split("-")[1]
                except IndexError:
                    continue
                feat.setAttribute("sigla", name)
                siglasEstados = [
                    "AC",
                    "AL",
                    "AP",
                    "AM",
                    "BA",
                    "CE",
                    "ES",
                    "GO",
                    "MA",
                    "MT",
                    "MS",
                    "MG",
                    "PA",
                    "PB",
                    "PR",
                    "PE",
                    "PI",
                    "RJ",
                    "RN",
                    "RO",
                    "RR",
                    "RS",
                    "SC",
                    "SE",
                    "SP",
                    "TO",
                ]
                if sigla.split(";")[n].split("-")[0] == "BR":
                    jurisdicao = 1
                elif sigla.split(";")[n].split("-")[0] in siglasEstados:
                    jurisdicao = 2
                elif mapping.get("jurisdicao"):
                    jurisdicao = mapping.get("jurisdicao")
                feat.setAttribute("jurisdicao", jurisdicao)
                tipo = mapping.get("tipo")
                feat.setAttribute("tipo", tipo)
                feat.setAttribute("visivel", 1)
            # if jurisdicao:=mapping.get('jurisdicao'):
            #     feat.setAttribute('jurisdicao', jurisdicao)
            feats.append(feat)
        layer.dataProvider().addFeatures(feats)
        layer.endEditCommand()

    def clipLayer(self, layer, frame):
        r = processing.run(
            "native:clip",
            {
                "FIELD": [],
                "INPUT": layer,
                "OVERLAY": frame,
                "OUTPUT": "TEMPORARY_OUTPUT",
            },
        )
        return r["OUTPUT"]

    def convertPolygonToLines(self, inputLayer):
        output = processing.run(
            "native:polygonstolines",
            {"INPUT": inputLayer, "OUTPUT": "TEMPORARY_OUTPUT"},
        )
        return output["OUTPUT"]

    def removePointsNextToFrame(self, frameLinesLayer, pointsLayer, distance):
        toBeRemoved = []
        pointsLayer.startEditing()
        pointsLayer.beginEditCommand("Removendo próximo a moldura")
        for point in pointsLayer.getFeatures():
            for frameLine in frameLinesLayer.getFeatures():
                dist = QgsGeometry.distance(point.geometry(), frameLine.geometry())
                if dist < distance:
                    toBeRemoved.append(point.id())
        pointsLayer.dataProvider().deleteFeatures(toBeRemoved)
        pointsLayer.endEditCommand()

    def runAddCount(self, inputLyr, feedback):
        output = processing.run(
            "native:addautoincrementalfield",
            {
                "INPUT": inputLyr,
                "FIELD_NAME": "AUTO",
                "START": 0,
                "GROUP_FIELDS": [],
                "SORT_EXPRESSION": "",
                "SORT_ASCENDING": False,
                "SORT_NULLS_FIRST": False,
                "OUTPUT": "TEMPORARY_OUTPUT",
            },
            feedback=feedback,
        )
        return output["OUTPUT"]

    def runCreateSpatialIndex(self, inputLyr, feedback):
        processing.run(
            "native:createspatialindex", {"INPUT": inputLyr}, feedback=feedback
        )

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
        return  help().helpUrl(self.name())
