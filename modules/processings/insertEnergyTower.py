import math

from qgis import processing
from qgis.core import (
    QgsCoordinateReferenceSystem,
    QgsCoordinateTransformContext,
    QgsDistanceArea,
    QgsFeature,
    QgsFeatureRequest,
    QgsGeometry,
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingParameterVectorLayer,
    QgsUnitTypes,
    QgsProcessingParameterEnum,
    QgsProcessingParameterDistance,
    QgsProcessingMultiStepFeedback,
    QgsProcessingContext,
)
from qgis.PyQt.QtCore import QCoreApplication

from DsgTools.core.DSGToolsProcessingAlgs.algRunner import AlgRunner

class InsertEnergyTower(QgsProcessingAlgorithm):

    INPUT_ENERGY = "INPUT_ENERGY"
    INPUT_TOWER = "INPUT_TOWER"
    INPUT_FRAME = "INPUT_FRAME"
    MIN_DISTANCE_FROM_FRAME = "MIN_DISTANCE_FROM_FRAME"
    SCALE = "SCALE"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_ENERGY,
                self.tr("Selecionar camada de linha de energia"),
                [QgsProcessing.TypeVectorLine],
                defaultValue='infra_elemento_energia_l',
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_TOWER,
                self.tr("Selecionar camada de edição de torre de energia"),
                [QgsProcessing.TypeVectorPoint],
                defaultValue='edicao_simb_torre_energia_p',
            )
        )

        self.addParameter(
            QgsProcessingParameterDistance(
                self.MIN_DISTANCE_FROM_FRAME,
                self.tr("Distância mínima (em mm) com relação à moldura"),
                minValue=0.0,
                defaultValue=0.003,
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
                defaultValue='aux_moldura_a',
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        algRunner = AlgRunner()
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
        distanceFromFrame = self.parameterAsDouble(parameters, self.MIN_DISTANCE_FROM_FRAME, context)
        multiStepFeedback = QgsProcessingMultiStepFeedback(17, feedback)
        currentStep = 0
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo(self.tr("Preparando estrutura auxiliar"))
        frameLayer = self.runAddCount(frameLayer, feedback=multiStepFeedback)
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        self.runCreateSpatialIndex(frameLayer, feedback=feedback)

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        frameLinesLayer = self.convertPolygonToLines(frameLayer, feedback=multiStepFeedback)
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        frameLinesLayer = algRunner.runExplodeLines(inputLyr=frameLinesLayer, context=context, feedback=multiStepFeedback)
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        self.runCreateSpatialIndex(frameLinesLayer, feedback=multiStepFeedback, is_child_algorithm=True)

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        lyr = self.runAddCount(lyr, feedback=multiStepFeedback)
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        self.runCreateSpatialIndex(lyr, feedback=multiStepFeedback)

        multiStepFeedback.pushInfo(self.tr("Unindo linhas"))
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        energyLyrBeforeClip = self.mergeEnergyLines(lyr, 5, feedback=multiStepFeedback)
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        self.runCreateSpatialIndex(energyLyrBeforeClip, feedback=multiStepFeedback)
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo(self.tr("Clipando com a área"))
        energyLyr = self.clipLayer(energyLyrBeforeClip, frameLayer, feedback=multiStepFeedback)
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        self.runCreateSpatialIndex(energyLyr, feedback=multiStepFeedback)

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        distance = self.getChopDistance(energyLyr, scale * 0.02)

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo(self.tr("Cortando as linhas"))
        pointsAndAngles = self.chopLineLayer(energyLyr, distance, feedback=multiStepFeedback)
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo(self.tr("Gravando saida"))
        self.populateEnergyTowerSymbolLayer(tower, pointsAndAngles, feedback=multiStepFeedback)
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo(self.tr("Avaliando elementos perto da moldura"))
        distanceNextToFrame = self.getChopDistance(energyLyr, scale * distanceFromFrame)
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo(self.tr("Removendo pontos próximos à moldura"))
        self.removePointsNextToFrame(frameLinesLayer, tower, distanceNextToFrame, feedback=multiStepFeedback)
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        distanceToRemoveEnergySymbol = self.getChopDistance(tower, scale * 0.003)

        return {}

    def mergeEnergyLines(self, lyr, limit, feedback):
        r = processing.run(
            "ferramentasedicao:mergelinesbyangle",
            {"INPUT": lyr, "MAX_ITERATION": limit, "OUTPUT": "TEMPORARY_OUTPUT"},
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
            return d.convertLengthMeasurement(distance, QgsUnitTypes.DistanceDegrees)
        else:
            return distance

    @staticmethod
    def chopLineLayer(layer, cutDistance, feedback, requiredAttrs=None):
        """Chops layer using cutDistance, returning initial points of chopped features and its angles.
        If the point touches the initial/final point of any original feature the point is discarded.
        If requiredAttrs is provided, the mapping {attr:feat[attr] for attr in requiredAttrs} is also returned
        """
        attributeMapping = {}
        pointsAndAngles = []
        multiStepFeedback = QgsProcessingMultiStepFeedback(3, feedback)
        currentStep = 0
        multiStepFeedback.setCurrentStep(currentStep)
        output = processing.run(
            "native:splitlinesbylength",
            {"INPUT": layer, "LENGTH": cutDistance, "OUTPUT": "TEMPORARY_OUTPUT"},
            feedback=multiStepFeedback,
        )["OUTPUT"]
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        bounds = processing.run(
            "native:boundary", {"INPUT": layer, "OUTPUT": "TEMPORARY_OUTPUT"},
            feedback=multiStepFeedback
        )["OUTPUT"]
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        nFeats = output.featureCount()
        if nFeats == 0:
            return pointsAndAngles
        stepSize = 100/nFeats
        for current, feat in enumerate(output.getFeatures()):
            if multiStepFeedback.isCanceled():
                break
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
                if multiStepFeedback.isCanceled():
                    break
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
            multiStepFeedback.setProgress(current * stepSize)
        return pointsAndAngles

    @staticmethod
    def populateEnergyTowerSymbolLayer(layer, pointsAndAngles, feedback):
        """Populates the layer edicao_simb_torre_energia_p"""
        fields = layer.fields()
        layer.startEditing()
        layer.beginEditCommand("Criando pontos")
        feats = []
        for point, angle, _ in pointsAndAngles:
            if feedback.isCanceled():
                return
            feat = QgsFeature(fields)
            geom = QgsGeometry.fromWkt(point.asWkt())
            feat.setGeometry(geom)
            feat.setAttribute("simb_rot", angle)
            feat.setAttribute("visivel", 1)
            feats.append(feat)

        layer.addFeatures(feats)
        layer.endEditCommand()

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

    def removePointsNextToFrame(self, frameLinesLayer, pointsLayer, distance, feedback):
        algRunner = AlgRunner()
        multiStepFeedback = QgsProcessingMultiStepFeedback(3, feedback)
        toBeRemoved = set()
        context = QgsProcessingContext()
        currentStep = 0
        multiStepFeedback.setCurrentStep(currentStep)
        cacheLyr = algRunner.runCreateFieldWithExpression(
            inputLyr=pointsLayer,
            expression="$id",
            fieldName="featid",
            fieldType=1,
            context=context,
            feedback=multiStepFeedback,
        )
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        algRunner.runCreateSpatialIndex(cacheLyr, context, feedback=multiStepFeedback, is_child_algorithm=True)
        buffer = algRunner.runBuffer(
            frameLinesLayer,
            distance=distance,
            context=context,
            is_child_algorithm=True
        )
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        algRunner.runCreateSpatialIndex(cacheLyr, context, feedback=multiStepFeedback, is_child_algorithm=True)
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        pointsToDeleteLyr = algRunner.runExtractByLocation(
            cacheLyr, buffer, context, predicate=[AlgRunner.Intersect], feedback=multiStepFeedback
        )
        if pointsToDeleteLyr.featureCount() == 0:
            return
        pointsLayer.startEditing()
        pointsLayer.beginEditCommand("Removendo próximo a moldura")
        expression = (
            f""" "featid" in {tuple(feat["featid"] for feat in pointsToDeleteLyr.getFeatures())}"""
        )
        request = QgsFeatureRequest().setFilterExpression(expression)
        featureIds = [feature.id() for feature in pointsToDeleteLyr.getFeatures(request)]
        pointsLayer.deleteFeatures(featureIds)
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

    def runCreateSpatialIndex(self, inputLyr, feedback, is_child_algorithm=True):
        processing.run(
            "native:createspatialindex", {"INPUT": inputLyr}, feedback=feedback, is_child_algorithm=is_child_algorithm
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
