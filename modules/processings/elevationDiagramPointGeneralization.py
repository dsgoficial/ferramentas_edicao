from qgis import processing
from qgis.core import (
    QgsCoordinateReferenceSystem,
    QgsFeatureSink,
    QgsGeometry,
    QgsPointXY,
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingMultiStepFeedback,
    QgsProcessingParameterEnum,
    QgsProcessingParameterFeatureSink,
    QgsProcessingParameterField,
    QgsProcessingParameterVectorLayer,
    QgsWkbTypes,
    QgsFields,
    QgsVectorLayerUtils,
    QgsDistanceArea,
)
from qgis.PyQt.QtCore import QCoreApplication

from .makeGrid import getSirgasAuthIdByPointLatLong
from .processingUtils import ProcessingUtils

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help


class ElevationDiagramPointGeneralization(QgsProcessingAlgorithm):

    INPUT_ELEVATION_POINTS = "INPUT_ELEVATION_POINTS"
    ELEVATION_FIELD = "ELEVATION_FIELD"
    INPUT_SCALE = "INPUT_SCALE"
    GEOGRAPHIC_BOUNDARY = "GEOGRAPHIC_BOUNDARY"
    OUTPUT_POINTS = "OUTPUT_POINTS"
    OUTPUT_GRID = "OUTPUT_GRID"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_ELEVATION_POINTS,
                self.tr("Selecione a camada contendo os pontos cotados"),
                types=[QgsProcessing.TypeVectorPoint],
                defaultValue="elemnat_ponto_cotado_p",
            )
        )
        self.addParameter(
            QgsProcessingParameterField(
                self.ELEVATION_FIELD,
                self.tr("Selecione o campo que informa a cota"),
                type=QgsProcessingParameterField.Numeric,
                parentLayerParameterName=self.INPUT_ELEVATION_POINTS,
                allowMultiple=False,
                defaultValue="cota",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.GEOGRAPHIC_BOUNDARY,
                self.tr("Limite geográfico"),
                [QgsProcessing.TypeVectorPolygon],
            )
        )
        self.addParameter(
            QgsProcessingParameterEnum(
                "INPUT_SCALE",
                self.tr(
                    "Selecione a escala para gerar as quadriculas do diagrama de elevação"
                ),
                options=[
                    self.tr("1:25.000"),
                    self.tr("1:50.000"),
                    self.tr("1:100.000"),
                    self.tr("1:250.000"),
                ],
            )
        )
        self.addParameter(
            QgsProcessingParameterFeatureSink(
                self.OUTPUT_POINTS, self.tr("Pontos escolhidos")
            )
        )
        self.addParameter(
            QgsProcessingParameterFeatureSink(self.OUTPUT_GRID, self.tr("Grid gerado"))
        )
        self.gridScaleDict = {0: 25000, 1: 50000, 2: 100000, 3: 250000}
        self.distanceBufferDict = {k: 5e-4 * v for k, v in self.gridScaleDict.items()}

    def processAlgorithm(self, parameters, context, feedback):
        feedback.setProgressText("Iniciando...")
        inputPointsLyr = self.parameterAsVectorLayer(
            parameters, self.INPUT_ELEVATION_POINTS, context
        )
        elevationField = self.parameterAsFields(
            parameters, self.ELEVATION_FIELD, context
        )[0]
        gridScaleParam = self.parameterAsEnums(parameters, self.INPUT_SCALE, context)[0]

        geographicBoundaryLyr = self.parameterAsLayer(
            parameters, self.GEOGRAPHIC_BOUNDARY, context
        )
        (self.points_sink, self.points_sink_id) = self.parameterAsSink(
            parameters,
            self.OUTPUT_POINTS,
            context,
            inputPointsLyr.fields(),
            QgsWkbTypes.Point,
            QgsCoordinateReferenceSystem("EPSG:4326"),
        )
        (self.grid_sink, self.grid_sink_id) = self.parameterAsSink(
            parameters,
            self.OUTPUT_GRID,
            context,
            QgsFields(),
            QgsWkbTypes.Polygon,
            geographicBoundaryLyr.sourceCrs(),
        )

        if inputPointsLyr.featureCount() == 0:
            return {
                self.OUTPUT_GRID: self.grid_sink_id,
                self.OUTPUT_POINTS: self.points_sink_id,
            }

        if geographicBoundaryLyr.featureCount() == 0:
            return {
                self.OUTPUT_GRID: self.grid_sink_id,
                self.OUTPUT_POINTS: self.points_sink_id,
            }
        nSteps = 2
        multiStepFeedback = (
            QgsProcessingMultiStepFeedback(nSteps, feedback)
            if feedback is not None
            else None
        )
        currentStep = 0
        multiStepFeedback.setCurrentStep(currentStep)
        gridScale = self.gridScaleDict[gridScaleParam]
        minDistance = QgsDistanceArea().convertLengthMeasurement(
            self.distanceBufferDict[gridScaleParam], inputPointsLyr.crs().mapUnits()
        )
        CRSstr = geographicBoundaryLyr.sourceCrs()
        extentGeom = self.getExtentGeom(
            gridScaleParam, geographicBoundaryLyr, gridScale
        )
        multiStepFeedback.setCurrentStep(currentStep)
        grid = self.makeGrid(
            extentGeom,
            CRSstr,
            gridScale,
            parameters,
            context,
            feedback=multiStepFeedback,
        )
        list(
            map(
                lambda x: self.grid_sink.addFeature(x, QgsFeatureSink.FastInsert),
                grid.getFeatures(),
            )
        )
        multiStepFeedback.setCurrentStep(currentStep)
        self.generalizePoints(
            inputPointsLyr,
            elevationField,
            grid,
            geographicBoundaryLyr,
            minDistance,
            context,
            feedback=multiStepFeedback,
        )
        return {
            self.OUTPUT_GRID: self.grid_sink_id,
            self.OUTPUT_POINTS: self.points_sink_id,
        }

    def generalizePoints(
        self,
        inputPointsLyr,
        elevationField,
        grid,
        geographicBoundaryLyr,
        minDistance,
        context,
        feedback,
    ):
        # encontrar cota máxima
        nGridFeats = grid.featureCount()
        if nGridFeats == 0:
            return
        multiStepFeedback = QgsProcessingMultiStepFeedback(5, feedback)
        multiStepFeedback.setCurrentStep(0)
        cachedPoints = self.reprojectLayer(
            inputPointsLyr,
            QgsCoordinateReferenceSystem("EPSG:4326"),
            feedback=multiStepFeedback,
        )
        multiStepFeedback.setCurrentStep(1)
        self.runCreateSpatialIndex(cachedPoints, feedback=multiStepFeedback)
        multiStepFeedback.setCurrentStep(2)
        self.runCreateSpatialIndex(grid, feedback=multiStepFeedback)
        multiStepFeedback.setCurrentStep(3)
        dissolvedGeographicBoundaryLyr = processing.run(
            "native:dissolve",
            {"INPUT": geographicBoundaryLyr, "FIELD": [], "OUTPUT": "TEMPORARY_OUTPUT"},
            context=context,
            feedback=multiStepFeedback,
        )["OUTPUT"]
        geographicBoundaryGeometry = [
            feat.geometry() for feat in dissolvedGeographicBoundaryLyr.getFeatures()
        ][0]

        multiStepFeedback.setCurrentStep(4)
        elevationValues = QgsVectorLayerUtils.getValues(cachedPoints, elevationField)[0]
        maxValue, minValue = max(elevationValues), min(elevationValues)
        minFeat, maxFeat = None, None
        selectedFeaturesSet = set()

        for feat in cachedPoints.getFeatures():
            if feedback.isCanceled():
                break
            if minFeat is not None and maxFeat is not None:
                break
            if feat[elevationField] == minValue and minFeat is None:
                minFeat = feat
                for gridFeat in grid.getFeatures(feat.geometry().boundingBox()):
                    idGridWithMinFeat = gridFeat.id()
                    if "visivel" in [i.name() for i in feat.fields()]:
                        feat["visivel"] = 1
                    break
            if feat[elevationField] == maxValue and maxFeat is None:
                maxFeat = feat
                for gridFeat in grid.getFeatures(feat.geometry().boundingBox()):
                    idGridWithMaxFeat = gridFeat.id()
                    if "visivel" in [i.name() for i in feat.fields()]:
                        feat["visivel"] = 1
                    selectedFeaturesSet.add(feat)
                    break
        if minFeat.geometry().distance(maxFeat.geometry()) > minDistance:
            selectedFeaturesSet.add(minFeat)
        stepSize = 100 / nGridFeats

        for current, gridPolygonFeat in enumerate(grid.getFeatures()):
            if multiStepFeedback.isCanceled():
                break
            if gridPolygonFeat.id() in (idGridWithMaxFeat, idGridWithMinFeat):
                continue
            geom = gridPolygonFeat.geometry()
            bufferSize = (
                0.05 * QgsDistanceArea().measurePerimeter(geom) / 4
            )  # buffer de 5% do comprimento do lado original
            bufferGeom = geom.buffer(-bufferSize, -1)
            if not geographicBoundaryGeometry.intersects(bufferGeom):
                continue
            pointFeats = [
                feat
                for feat in cachedPoints.getFeatures(bufferGeom.boundingBox())
                if feat.geometry().intersects(bufferGeom)
            ]
            if len(pointFeats) == 0:
                if not geom.within(bufferGeom):
                    continue
                pointFeats = [
                    feat
                    for feat in cachedPoints.getFeatures(bufferGeom.boundingBox())
                    if feat.geometry().intersects(geom)
                ]
                if len(pointFeats) == 0:
                    continue
            selectedFeat = list(
                sorted(pointFeats, key=lambda x: x[elevationField], reverse=True)
            )[0]
            if "visivel" in [i.name() for i in selectedFeat.fields()]:
                selectedFeat["visivel"] = 1
            selectedFeaturesSet.add(selectedFeat)
            multiStepFeedback.setProgress(current * stepSize)

        list(
            map(
                lambda x: self.points_sink.addFeature(x, QgsFeatureSink.FastInsert),
                selectedFeaturesSet,
            )
        )

    def runAddFeatIdField(self, originalPointLayer, context, feedback):
        multiStepFeedback = QgsProcessingMultiStepFeedback(2, feedback)
        multiStepFeedback.setCurrentStep(0)
        outputLyr = processing.run(
            "qgis:advancedpythonfieldcalculator",
            {
                "INPUT": originalPointLayer,
                "FIELD_NAME": "featid",
                "FIELD_TYPE": 0,
                "FIELD_LENGTH": 1000,
                "FIELD_PRECISION": 3,
                "GLOBAL": "",
                "FORMULA": "value = $id",
                "OUTPUT": "TEMPORARY_OUTPUT",
            },
            context=context,
            feedback=multiStepFeedback,
        )["OUTPUT"]
        multiStepFeedback.setCurrentStep(1)
        self.runCreateSpatialIndex(outputLyr, feedback=multiStepFeedback)
        return outputLyr

    def getExtentGeom(self, gridScaleParam, pointLayer, gridSize):
        ptLyrExt = pointLayer.extent()
        xmin = ptLyrExt.xMinimum()
        xmax = ptLyrExt.xMaximum()
        ymin = ptLyrExt.yMinimum()
        ymax = ptLyrExt.yMaximum()
        xmin, xmax, ymin, ymax = self.processExtent(xmin, xmax, ymin, ymax, gridSize)
        extentGeom = QgsGeometry().fromRect(ptLyrExt)
        return extentGeom

    def processExtent(self, xmin, xmax, ymin, ymax, gridSize):
        return (
            (int(xmin / gridSize)) * gridSize,
            (int(xmax / gridSize) + 1) * gridSize,
            (int(ymin / gridSize)) * gridSize,
            (int(ymax / gridSize) + 1) * gridSize,
        )

    def filterWithGeographicBoundary(
        self, inputLyr, geographicBoundaryLayer, feedback=None
    ):
        processOutputLyr = processing.run(
            "native:extractbylocation",
            {
                "INPUT": inputLyr,
                "PREDICATE": [0],
                "INTERSECT": geographicBoundaryLayer,
                "OUTPUT": "TEMPORARY_OUTPUT",
            },
            feedback=feedback,
        )
        return processOutputLyr["OUTPUT"]

    def makeGrid(self, extentGeom, CRS, gridScale, parameters, context, feedback):
        multiStepFeedback = (
            QgsProcessingMultiStepFeedback(5, feedback)
            if feedback is not None
            else None
        )
        if multiStepFeedback is not None:
            multiStepFeedback.setCurrentStep(0)
            multiStepFeedback.pushInfo(self.tr("Creating count field."))
        frameLayer = ProcessingUtils.makeLayerFromGeometryAndCRS(extentGeom, CRS)
        frameLayer2 = self.runAddCount(frameLayer, feedback=multiStepFeedback)
        if multiStepFeedback is not None:
            multiStepFeedback.setCurrentStep(1)
            multiStepFeedback.pushInfo(
                self.tr("Creating spatial index on frame layer.")
            )
        self.runCreateSpatialIndex(frameLayer, feedback=multiStepFeedback)
        # Converter moldura para lat long
        if multiStepFeedback is not None:
            multiStepFeedback.setCurrentStep(2)
            multiStepFeedback.pushInfo(
                self.tr("Reprojecting features from frame layer.")
            )
        frameLayerForInput = self.reprojectLayer(
            frameLayer2,
            QgsCoordinateReferenceSystem("EPSG:4326"),
            feedback=multiStepFeedback,
        )
        if multiStepFeedback is not None:
            multiStepFeedback.setCurrentStep(3)
            multiStepFeedback.pushInfo(self.tr("Creating grid."))
        utm, gridSize, extent = self.getUtmGridAndExtent(gridScale, frameLayerForInput)
        grid = processing.run(
            "native:creategrid",
            {
                "TYPE": 2,
                "EXTENT": extent,
                "HSPACING": gridSize,
                "VSPACING": gridSize,
                "HOVERLAY": 0,
                "VOVERLAY": 0,
                "CRS": utm,
                "OUTPUT": "memory:",
            },
            feedback=multiStepFeedback,
        )["OUTPUT"]
        if multiStepFeedback is not None:
            multiStepFeedback.setCurrentStep(4)
            multiStepFeedback.pushInfo(self.tr("Reprojecting grid."))
        reprojectGrid = self.reprojectLayer(grid, CRS, feedback=multiStepFeedback)
        return reprojectGrid

    def getUtmGridAndExtent(self, gridScale, frameLayerForInput):
        if frameLayerForInput.featureCount() > 1:
            xs = []
            ys = []
            for poly in frameLayerForInput.getFeatures():
                centroidGeom = poly.geometry().centroid()
                centroid = QgsPointXY(centroidGeom.constGet())
                xs.append(centroid.x())
                ys.append(centroid.y())
            centroid = QgsPointXY(sum(xs) / len(xs), sum(ys) / len(ys))
        else:
            for poly in frameLayerForInput.getFeatures():
                centroidGeom = poly.geometry().centroid()
                centroid = QgsPointXY(centroidGeom.constGet())
        # Descobrir o utm
        utmString = getSirgasAuthIdByPointLatLong(centroid.y(), centroid.x())
        utm = QgsCoordinateReferenceSystem(utmString)
        frameLayerReprojected = self.reprojectLayer(frameLayerForInput, utm)

        gridSize = 20 * gridScale / 100
        frameLayerExt = frameLayerReprojected.extent()
        xminFL = frameLayerExt.xMinimum()
        xmaxFL = frameLayerExt.xMaximum()
        yminFL = frameLayerExt.yMinimum()
        ymaxFL = frameLayerExt.yMaximum()
        xminFL, xmaxFL, yminFL, ymaxFL = self.processExtent(
            xminFL, xmaxFL, yminFL, ymaxFL, gridSize
        )
        extent = str(
            str(xminFL) + ", " + str(xmaxFL) + ", " + str(yminFL) + ", " + str(ymaxFL)
        )
        return utm, gridSize, extent

    def runAddCount(self, inputLyr, feedback=None):
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

    def runCreateSpatialIndex(self, inputLyr, feedback=None):
        processing.run(
            "native:createspatialindex", {"INPUT": inputLyr}, feedback=feedback
        )

        return False

    def reprojectLayer(self, layer, crs, feedback=None):
        output = processing.run(
            "native:reprojectlayer",
            {"INPUT": layer, "TARGET_CRS": crs, "OUTPUT": "TEMPORARY_OUTPUT"},
            feedback=feedback,
        )
        return output["OUTPUT"]

    def outLayer(self, parameters, context, features, setCRS):

        (sink, newLayer) = self.parameterAsSink(
            parameters, self.OUTPUT_POINTS, context, features[0].fields(), 4, setCRS
        )
        list(map(lambda x: sink.addFeature(x, QgsFeatureSink.FastInsert), features))
        return newLayer

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return ElevationDiagramPointGeneralization()

    def name(self):
        return "elevationdiagrampointgeneralization"

    def displayName(self):
        return self.tr("Generalização de pontos cotados no diagrama de elevação")

    def group(self):
        return self.tr("Auxiliar")

    def groupId(self):
        return "auxiliar"

    def shortHelpString(self):
        return self.tr(
            "O algoritmo generaliza os pontos cotados para o diagrama de elevação"
        )
