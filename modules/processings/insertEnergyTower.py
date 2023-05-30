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
)
from qgis.PyQt.QtCore import QCoreApplication, QVariant

from .processingUtils import ProcessingUtils


class InsertEnergyTower(QgsProcessingAlgorithm):

    INPUT_ENERGY = "INPUT_ENERGY"
    INPUT_TOWER = "INPUT_TOWER"
    INPUT_FRAME = "INPUT_FRAME"
    SCALE = "SCALE"
    OUTPUT = "OUTPUT"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_ENERGY,
                self.tr("Selecionar camada de linha de energia"),
                [QgsProcessing.TypeVectorLine],
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_TOWER,
                self.tr("Selecionar camada de edição de torre de energia"),
                [QgsProcessing.TypeVectorPoint],
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

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_FRAME,
                self.tr("Selecionar camada de moldura"),
                [QgsProcessing.TypeVectorPolygon],
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        gridScaleParam = self.parameterAsInt(parameters, self.SCALE, context)
        lyr = self.parameterAsVectorLayer(parameters, self.INPUT_ENERGY, context)
        tower = self.parameterAsVectorLayer(parameters, self.INPUT_TOWER, context)

        if gridScaleParam == 0:
            scale = 25000
        elif gridScaleParam == 1:
            scale = 50000
        elif gridScaleParam == 2:
            scale = 100000
        elif gridScaleParam == 3:
            scale = 250000

        frameLayer = self.parameterAsVectorLayer(parameters, self.INPUT_FRAME, context)
        frameLayer = self.runAddCount(frameLayer, feedback=feedback)
        self.runCreateSpatialIndex(frameLayer, feedback=feedback)

        frameLinesLayer = self.convertPolygonToLines(frameLayer)
        self.runCreateSpatialIndex(frameLinesLayer, feedback=feedback)

        lyr = self.runAddCount(lyr, feedback=feedback)
        self.runCreateSpatialIndex(lyr, feedback=feedback)

        layerToCreateSpacedSymbolsCase1 = {
            "infra_elemento_energia_l": "edicao_simb_torre_energia_p"
        }

        energyLyrBeforeClip = self.mergeEnergyLines(lyr, 5)
        self.runCreateSpatialIndex(energyLyrBeforeClip, feedback=feedback)
        energyLyr = self.clipLayer(energyLyrBeforeClip, frameLayer)
        self.runCreateSpatialIndex(energyLyr, feedback=feedback)

        distance = self.getChopDistance(energyLyr, scale * 0.02)
        pointsAndAngles = self.chopLineLayer(energyLyr, distance)
        self.populateEnergyTowerSymbolLayer(tower, pointsAndAngles)
        distanceNextToFrame = self.getChopDistance(energyLyr, scale * 0.006)
        self.removePointsNextToFrame(frameLinesLayer, tower, distanceNextToFrame)
        distanceToRemoveEnergySymbol = self.getChopDistance(tower, scale * 0.003)

        return {self.OUTPUT: ""}

    def mergeEnergyLines(self, lyr, limit):
        r = processing.run(
            "ferramentasedicao:mergelinesbyangle",
            {"INPUT": lyr, "MAX_ITERATION": limit, "OUTPUT": "TEMPORARY_OUTPUT"},
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
        bounds = processing.run(
            "native:boundary", {"INPUT": layer, "OUTPUT": "TEMPORARY_OUTPUT"}
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
                if geomEngine.touches(featBound.geometry().constGet()):
                    isBoundVertex = True
                    break
            if not isBoundVertex:
                geom = feat.geometry()
                point = geom.vertexAt(0)
                angle = (geom.angleAtVertex(0) + (math.pi / 2)) * 180 / math.pi
                if angle > 360:
                    angle = angle - 360
                if angle > 90 and angle < 270:
                    angle = angle - 180
                pointsAndAngles.append((point, angle, attributeMapping))
        return pointsAndAngles

    @staticmethod
    def populateEnergyTowerSymbolLayer(layer, pointsAndAngles):
        """Populates the layer edicao_simb_torre_energia_p"""
        fields = layer.fields()
        layer.startEditing()
        layer.beginEditCommand("Criando pontos")
        feats = []
        for point, angle, _ in pointsAndAngles:
            feat = QgsFeature(fields)
            geom = QgsGeometry.fromWkt(point.asWkt())
            feat.setGeometry(geom)
            feat.setAttribute("simb_rot", angle)
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
        return self.tr("O algoritmo insere símbolos de torre de energia")
