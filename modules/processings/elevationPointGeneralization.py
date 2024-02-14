import concurrent.futures
import math
import os

from qgis import processing
from qgis.core import (
    QgsCoordinateReferenceSystem,
    QgsFeature,
    QgsFeatureRequest,
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
    QgsSpatialIndex,
)
from qgis.PyQt.QtCore import QCoreApplication

from .makeGrid import MakeGrid
from .processingUtils import ProcessingUtils


class ElevationPointsGeneralization(QgsProcessingAlgorithm):

    INPUT_SCALE = "INPUT_SCALE"
    INPUT_ELEVATION_POINTS = "INPUT_ELEVATION_POINTS"
    INPUT_ELEVATION_POINTS = "INPUT_ELEVATION_POINTS"
    GEOGRAPHIC_BOUNDARY = "GEOGRAPHIC_BOUNDARY"
    INPUT_IS_DEPRESSION_FIELD = "INPUT_IS_DEPRESSION_FIELD"
    INPUT_IS_VISIBLE_FIELD = "INPUT_IS_VISIBLE_FIELD"
    OUTPUT = "OUTPUT"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterEnum(
                "INPUT_SCALE",
                self.tr("Selecione a escala para gerar as quadriculas:"),
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
                "INPUT_ELEVATION_POINTS",
                self.tr("Selecione a camada contendo os pontos cotados"),
                types=[QgsProcessing.TypeVectorPoint],
                defaultValue="elemnat_ponto_cotado_p",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                "INPUT_COUNTOUR_LINES",
                self.tr("Selecione a camada contendo as curvas de nível"),
                types=[QgsProcessing.TypeVectorLine],
                defaultValue="elemnat_curva_nivel_l",
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.GEOGRAPHIC_BOUNDARY,
                self.tr("Limite geográfico"),
                [QgsProcessing.TypeVectorPolygon],
                optional=True,
            )
        )
        self.addParameter(
            QgsProcessingParameterField(
                "INPUT_IS_DEPRESSION_FIELD",
                self.tr("Selecione o campo que informa se é depressão ou não"),
                type=QgsProcessingParameterField.Numeric,
                parentLayerParameterName="INPUT_COUNTOUR_LINES",
                allowMultiple=False,
                defaultValue="depressao",
            )
        )
        self.addParameter(
            QgsProcessingParameterField(
                "INPUT_IS_VISIBLE_FIELD",
                self.tr("Selecione o campo que informa se o ponto é visível ou não"),
                type=QgsProcessingParameterField.Numeric,
                parentLayerParameterName="INPUT_ELEVATION_POINTS",
                allowMultiple=False,
                defaultValue="visivel",
            )
        )
        self.addParameter(
            QgsProcessingParameterFeatureSink(
                self.OUTPUT, self.tr("Generalização de Ponto Cotado")
            )
        )

        self.gridScaleDict = {0: 25000, 1: 50000, 2: 100000, 3: 250000}

    def processAlgorithm(self, parameters, context, feedback):
        feedback.setProgressText("Iniciando...")
        gridScaleParam = self.parameterAsEnums(parameters, "INPUT_SCALE", context)[0]
        originalPointLayer = self.parameterAsVectorLayer(
            parameters, "INPUT_ELEVATION_POINTS", context
        )
        nFeats = originalPointLayer.featureCount()
        if nFeats == 0:
            feedback.pushInfo("Camada sem elementos.")
            return {}
        countourLayerpre = self.parameterAsVectorLayer(
            parameters, "INPUT_COUNTOUR_LINES", context
        )
        isDepressionField = self.parameterAsFields(
            parameters, "INPUT_IS_DEPRESSION_FIELD", context
        )[0]
        isVisibleField = self.parameterAsFields(
            parameters, "INPUT_IS_VISIBLE_FIELD", context
        )[0]
        geographicBoundaryLyr = self.parameterAsLayer(
            parameters, self.GEOGRAPHIC_BOUNDARY, context
        )
        nSteps = 9 if geographicBoundaryLyr is None else 11
        multiStepFeedback = (
            QgsProcessingMultiStepFeedback(nSteps, feedback)
            if feedback is not None
            else None
        )
        currentStep = 0
        multiStepFeedback.setCurrentStep(currentStep)
        pointWithOriginalIdField = self.runAddFeatIdField(
            originalPointLayer, context, feedback=multiStepFeedback
        )
        currentStep += 1
        if geographicBoundaryLyr is not None:
            multiStepFeedback.setCurrentStep(currentStep)
            multiStepFeedback.pushInfo(
                self.tr("Filtering contours with geographic boundary.")
            )
            countourLayerpre = self.filterWithGeographicBoundary(
                inputLyr=countourLayerpre,
                geographicBoundaryLayer=geographicBoundaryLyr,
                feedback=multiStepFeedback,
            )
            currentStep += 1
            multiStepFeedback.setCurrentStep(currentStep)
            multiStepFeedback.pushInfo(
                self.tr("Filtering points with geographic boundary.")
            )
            pointWithOriginalIdField = self.filterWithGeographicBoundary(
                inputLyr=pointWithOriginalIdField,
                geographicBoundaryLayer=geographicBoundaryLyr,
                feedback=multiStepFeedback,
            )
            currentStep += 1

        if multiStepFeedback is not None:
            multiStepFeedback.setCurrentStep(currentStep)
            multiStepFeedback.pushInfo(
                self.tr("Creating count field on countour line layer.")
            )
        countourLayerLine = self.runAddCount(
            countourLayerpre, feedback=multiStepFeedback
        )
        currentStep += 1
        if multiStepFeedback is not None:
            multiStepFeedback.setCurrentStep(currentStep)
            multiStepFeedback.pushInfo(
                self.tr("Creating spatial index on countour line layer.")
            )
        self.runCreateSpatialIndex(countourLayerLine, feedback=multiStepFeedback)
        currentStep += 1
        if multiStepFeedback is not None:
            multiStepFeedback.setCurrentStep(currentStep)
            multiStepFeedback.pushInfo(
                self.tr("Creating polygons with countour lines.")
            )
        countourLayerHoles = self.lineToPolygons(
            countourLayerLine, context, feedback=multiStepFeedback
        )
        currentStep += 1
        if multiStepFeedback is not None:
            multiStepFeedback.setCurrentStep(currentStep)
            multiStepFeedback.pushInfo(self.tr("Filling holes."))
        countourLayer = self.fillHoles(
            countourLayerHoles, context, feedback=multiStepFeedback
        )
        currentStep += 1
        if multiStepFeedback is not None:
            multiStepFeedback.setCurrentStep(currentStep)
            multiStepFeedback.pushInfo(self.tr("Filling fields."))
        self.fillField(countourLayerLine, countourLayer, feedback=multiStepFeedback)
        currentStep += 1
        summitsOrBottoms = []
        if multiStepFeedback is not None:
            multiStepFeedback.setCurrentStep(currentStep)
            multiStepFeedback.pushInfo(self.tr("Selecting summits or bottoms."))
        sobIdDict, sobSpatialIdx = self.selectSummitsAndBottoms(
            countourLayer, feedback=multiStepFeedback
        )
        CRSstr = pointWithOriginalIdField.sourceCrs()
        gridScale = self.gridScaleDict[gridScaleParam]
        extentGeom = self.getExtentGeom(
            gridScaleParam, pointWithOriginalIdField, gridScale
        )
        grid = self.makeGrid(
            extentGeom,
            CRSstr,
            gridScale,
            parameters,
            context,
            feedback=multiStepFeedback,
        )
        currentStep += 1
        if multiStepFeedback is not None:
            multiStepFeedback.setCurrentStep(currentStep)
            multiStepFeedback.pushInfo(self.tr("Generalizing points."))
        idDict, pointsIdsSelected = self.generalizePoint(
            grid,
            pointWithOriginalIdField,
            sobIdDict,
            sobSpatialIdx,
            isDepressionField,
            feedback=multiStepFeedback,
        )
        currentStep += 1
        if multiStepFeedback is not None:
            multiStepFeedback.setCurrentStep(currentStep)
            multiStepFeedback.pushInfo(
                self.tr("Updating point features visualization attribute.")
            )
        self.setVisualizationAttribute(
            originalPointLayer,
            idDict,
            isVisibleField,
            pointsIdsSelected,
            feedback=multiStepFeedback,
        )
        feedback.pushInfo(f"Camada {countourLayerpre.name()} modificada")
        return {}

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

    def setVisualizationAttribute(
        self, pointLayer, idDict, isVisibleField, pointsIdsSelected, feedback=None
    ):
        provider = pointLayer.dataProvider()
        pointLayer.startEditing()
        pointLayer.beginEditCommand("Changing visibility")
        attrValueFunc = lambda x: 1 if x.id() in pointsIdsSelected else 2
        if feedback is not None:
            progressStep = 100 / len(idDict)

        def changeAttributeValueFunc(input):
            current, point = input
            if feedback is not None and feedback.isCanceled():
                return
            pointLayer.changeAttributeValue(
                point["featid"],
                provider.fieldNameIndex(isVisibleField),
                attrValueFunc(point),
            )
            if feedback is not None:
                feedback.setProgress(progressStep * current)

        list(map(changeAttributeValueFunc, enumerate(idDict.values())))
        pointLayer.endEditCommand()

    def getExtentGeom(self, gridScaleParam, pointLayer, gridScale):
        ptLyrExt = pointLayer.extent()
        xmin = ptLyrExt.xMinimum()
        xmax = ptLyrExt.xMaximum()
        ymin = ptLyrExt.yMinimum()
        ymax = ptLyrExt.yMaximum()
        xmin, xmax, ymin, ymax = self.processExtent(xmin, xmax, ymin, ymax, gridScale)
        extentGeom = QgsGeometry().fromRect(ptLyrExt)
        return extentGeom

    def processExtent(self, xmin, xmax, ymin, ymax, gridScale):
        size = 4000 if gridScale != 250000 else 40000
        return (
            (int(xmin / size) - 1) * size,
            (int(xmax / size) + 1) * size,
            (int(ymin / size) - 1) * size,
            (int(ymax / size) + 1) * size,
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
        # Pegar centro da moldura  (se tiver mais de um polígono na camada de moldura pegar o centro dos centros)
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
                "OUTPUT": parameters["OUTPUT"],
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
        utmString = self.getSirgasAuthIdByPointLatLong(centroid.y(), centroid.x())
        utm = QgsCoordinateReferenceSystem(utmString)
        frameLayerReprojected = self.reprojectLayer(frameLayerForInput, utm)

        gridSize = 4 * gridScale / 100
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

    def lineToPolygons(self, layer, context, feedback):
        r = processing.run(
            "native:polygonize",
            {"INPUT": layer, "KEEP_FIELDS": True, "OUTPUT": "TEMPORARY_OUTPUT"},
            context=context,
            feedback=feedback,
        )
        return r["OUTPUT"]

    def fillHoles(self, layer, context, feedback):
        r = processing.run(
            "native:deleteholes",
            {"INPUT": layer, "OUTPUT": "TEMPORARY_OUTPUT"},
            context=context,
            feedback=feedback,
        )
        return r["OUTPUT"]

    def fillField(self, countourLayer, countourLayerPoly, feedback=None):
        countourLayerPoly.startEditing()
        pr = countourLayerPoly.dataProvider()
        updateMap = {}
        if feedback is not None:
            nFeats = countourLayer.featureCount()
            if nFeats == 0:
                return
            step = 100 / nFeats
        for current, feature1 in enumerate(pr.getFeatures()):
            if feedback is not None and feedback.isCanceled():
                break
            AreaOfInterest = feature1.geometry().boundingBox()
            request = QgsFeatureRequest().setFilterRect(AreaOfInterest)
            for feature2 in countourLayer.getFeatures(request):
                if feature2.geometry().touches(feature1.geometry()):
                    fv = {}
                    for field in feature2.fields():
                        fieldIdx = pr.fields().indexFromName(field.name())
                        fv[fieldIdx] = feature2[field.name()]

                        feature1[field.name()] = feature2[field.name()]
                    updateMap[feature1.id()] = fv
            if feedback is not None:
                feedback.setProgress(current * step)
        pr.changeAttributeValues(updateMap)
        countourLayerPoly.commitChanges()
        return False

    def selectSummitsAndBottoms(self, countourLayer, feedback=None):
        toBeAdd = False
        summitsOrBottomsIdDict, summitsOrBottomsSpatialIdx = dict(), QgsSpatialIndex()
        if feedback is not None:
            nFeats = countourLayer.featureCount()
            if nFeats == 0:
                return
            step = 100 / nFeats
        for current, countour in enumerate(countourLayer.getFeatures()):
            if feedback is not None and feedback.isCanceled():
                break
            cGeom = countour.geometry()
            toBeRemoved = []
            if not summitsOrBottomsIdDict:
                summitsOrBottomsIdDict[countour.id()] = countour
                summitsOrBottomsSpatialIdx.addFeature(countour)
                continue
            bbox = cGeom.boundingBox()
            for SobId in summitsOrBottomsSpatialIdx.intersects(bbox):
                SoB = summitsOrBottomsIdDict[SobId]
                toBeAdd = True
                SoBgeom = SoB.geometry()
                if cGeom.equals(SoBgeom):
                    continue
                if cGeom.within(SoBgeom):
                    toBeRemoved.append(SoB)
                if SoBgeom.within(cGeom):
                    toBeAdd = False
                    break
            if toBeAdd:
                summitsOrBottomsIdDict[countour.id()] = countour
                summitsOrBottomsSpatialIdx.addFeature(countour)
            for tBR in toBeRemoved:
                summitsOrBottomsIdDict.pop(tBR.id())
                summitsOrBottomsSpatialIdx.deleteFeature(tBR)
            if feedback is not None:
                feedback.setProgress(current * step)
        return summitsOrBottomsIdDict, summitsOrBottomsSpatialIdx

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

    def getSirgasAuthIdByPointLatLong(self, lat, long):
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
        return self.getSirgasEpsg("{0}{1}".format(zone_number, zone_letter))

    def getSirgasEpsg(self, key):
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

    def generalizePoint(
        self,
        grid,
        pointLayer,
        sobIdDict,
        sobSpatialIdx,
        isDepressionField,
        feedback=None,
    ):
        isDep = 1
        isNotDep = 2
        multiStepFeedback = (
            QgsProcessingMultiStepFeedback(2, feedback)
            if feedback is not None
            else None
        )
        if multiStepFeedback is not None:
            multiStepFeedback.setCurrentStep(0)
            multiStepFeedback.pushInfo(
                self.tr("Creating spatial index and id dict for point features.")
            )
        spatialIdx, idDict = ProcessingUtils().buildSpatialIndexAndIdDict(
            inputLyr=pointLayer, feedback=multiStepFeedback
        )
        selectedPointsSet = set()
        if len(idDict) == 0:
            return {}
        if multiStepFeedback is not None:
            multiStepFeedback.setCurrentStep(1)
            multiStepFeedback.pushInfo(self.tr("Evaluating point features."))

        def _select_points(feat: QgsFeature) -> set:
            if multiStepFeedback is not None and multiStepFeedback.isCanceled():
                return set()
            pointsIdsSelectedinGrid = []
            summitsOrBottomsPoints = {}
            returnedIdsSet = set()
            hasSoBPoints = False
            roi = feat.geometry().boundingBox()
            for pointId in spatialIdx.intersects(roi):
                point = idDict[pointId]
                for sobId in sobSpatialIdx.intersects(roi):
                    SoB = sobIdDict[sobId]
                    if not (point.geometry().within(SoB.geometry())):
                        continue
                    if SoB["id"] in summitsOrBottomsPoints.keys():
                        if (SoB[isDepressionField] == isNotDep) and (
                            summitsOrBottomsPoints[SoB["id"]]["cota"] < point["cota"]
                        ):
                            summitsOrBottomsPoints[SoB["id"]] = point
                            hasSoBPoints = True
                        if (SoB[isDepressionField] == isDep) and (
                            summitsOrBottomsPoints[SoB["id"]]["cota"] > point["cota"]
                        ):
                            summitsOrBottomsPoints[SoB["id"]] = point
                            hasSoBPoints = True
                        break
                    summitsOrBottomsPoints[SoB["id"]] = point
                    hasSoBPoints = True
                    pointsIdsSelectedinGrid = []
                    break

                if not hasSoBPoints:
                    if not pointsIdsSelectedinGrid:
                        pointsIdsSelectedinGrid.append(point.id())
                        continue
                    if (
                        pointLayer.getFeature(pointsIdsSelectedinGrid[-1])["cota"]
                        < point["cota"]
                    ):
                        pointsIdsSelectedinGrid.append(point.id())
            if pointsIdsSelectedinGrid:
                returnedIdsSet.add(pointsIdsSelectedinGrid[-1])
            if summitsOrBottomsPoints:
                returnedIdsSet = returnedIdsSet.union(
                    {point.id() for point in summitsOrBottomsPoints.values()}
                )
            return returnedIdsSet

        step = 100 / grid.featureCount()
        futures = set()
        pool = concurrent.futures.ThreadPoolExecutor(max_workers=os.cpu_count() - 1)

        for gridFeat in grid.getFeatures():
            if multiStepFeedback is not None and multiStepFeedback.isCanceled():
                break
            futures.add(pool.submit(_select_points, gridFeat))
        for current, x in enumerate(concurrent.futures.as_completed(futures)):
            if multiStepFeedback is not None and multiStepFeedback.isCanceled():
                break
            selectedPointsSet = selectedPointsSet.union(x.result())
            if multiStepFeedback is not None:
                multiStepFeedback.setProgress(current * step)
        return idDict, list(selectedPointsSet)

    def outLayer(self, parameters, context, features, setCRS):

        (sink, newLayer) = self.parameterAsSink(
            parameters, self.OUTPUT, context, features[0].fields(), 4, setCRS
        )
        list(map(lambda x: sink.addFeature(x, QgsFeatureSink.FastInsert), features))
        return newLayer

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return ElevationPointsGeneralization()

    def name(self):
        return "elevationpointsgeneralization"

    def displayName(self):
        return self.tr("Generalização de pontos cotados")

    def group(self):
        return self.tr("Auxiliar")

    def groupId(self):
        return "auxiliar"

    def shortHelpString(self):
        return self.tr("O algoritmo generaliza os pontos cotados baseados na escala")
