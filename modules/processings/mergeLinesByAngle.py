from collections import defaultdict
import math
import os
import concurrent.futures

from qgis import processing
from qgis.core import (
    QgsFeatureRequest,
    QgsFeatureSink,
    QgsGeometry,
    QgsGeometryUtils,
    QgsPointXY,
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingException,
    QgsProcessingParameterFeatureSink,
    QgsProcessingParameterFeatureSource,
    QgsProcessingParameterNumber,
    QgsWkbTypes,
    QgsProcessingMultiStepFeedback,
)
from qgis.PyQt.QtCore import QCoreApplication
from DsgTools.core.GeometricTools import graphHandler
from DsgTools.core.DSGToolsProcessingAlgs.algRunner import AlgRunner


class MergeLinesByAngle(QgsProcessingAlgorithm):

    INPUT = "INPUT"
    OUTPUT = "OUTPUT"
    MAX_ITERATION = "MAX_ITERATION"

    def initAlgorithm(self, config=None):

        self.addParameter(
            QgsProcessingParameterFeatureSource(
                self.INPUT, self.tr("Input layer"), [QgsProcessing.TypeVectorLine]
            )
        )

        self.addParameter(
            QgsProcessingParameterNumber(
                self.MAX_ITERATION,
                self.tr("Iteration limit"),
                type=QgsProcessingParameterNumber.Integer,
                defaultValue=5,
            )
        )

        self.addParameter(
            QgsProcessingParameterFeatureSink(self.OUTPUT, self.tr("Merged Lines"))
        )

    def processAlgorithm(self, parameters, context, feedback):
        source = self.parameterAsVectorLayer(parameters, self.INPUT, context)
        if source is None:
            raise QgsProcessingException(
                self.invalidSourceError(parameters, self.INPUT)
            )
        numberOfFeatures = {-1: source.featureCount()}
        limit = self.parameterAsInt(parameters, self.MAX_ITERATION, context)
        progressStep = 100 / limit
        auxLayerInput = self.runAddCount(source)
        self.runCreateSpatialIndex(auxLayerInput)
        multiStepFeedback = QgsProcessingMultiStepFeedback(limit, feedback)
        for i in range(limit):
            multiStepFeedback.setCurrentStep(i)
            if not self.mergeLines(auxLayerInput, context, feedback=multiStepFeedback):
                break
            newNumberOfFeatures = auxLayerInput.featureCount()
            numberOfFeatures[i] = newNumberOfFeatures
            if numberOfFeatures[i] == numberOfFeatures[i - 1]:
                break
        newLayer = self.outLayer(parameters, context, auxLayerInput)
        return {self.OUTPUT: newLayer}

    def runAddCount(self, inputLyr):
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
        )
        return output["OUTPUT"]

    def runCreateSpatialIndex(self, inputLyr):
        processing.run(
            "native:createspatialindex", {"INPUT": inputLyr}, is_child_algorithm=True
        )

    def mergeLines(self, layer, context, feedback):
        multiStepFeedback = QgsProcessingMultiStepFeedback(4, feedback)
        currentStep = 0
        multiStepFeedback.setCurrentStep(currentStep)
        pointsAndLineDict, cacheLayer = self.startOrEndIntersectionsDict(
            layer, feedback=multiStepFeedback
        )
        lineDict = {feat["featid"]: feat for feat in cacheLayer.getFeatures()}
        currentStep += 1
        if not pointsAndLineDict:
            return False
        toMerge = []

        def compute(ptAndLine, linesArray):
            smallerAngle = 360
            linePair = []
            for i in range(len(linesArray)):
                line1 = linesArray[i]
                for j in range(i + 1, len(linesArray)):
                    line2 = linesArray[j]
                    deflection = abs(
                        self.anglesBetweenLines(line1, line2, ptAndLine) - 180
                    )
                    if deflection >= smallerAngle:
                        continue
                    newGeometry = (
                        line1.geometry().combine(line2.geometry()).mergeLines()
                    )
                    if newGeometry.isMultipart():
                        continue
                    geometry = newGeometry.asPolyline()
                    ptLast = QgsGeometry().fromPointXY(QgsPointXY(geometry[-1]))
                    ptFirst = QgsGeometry().fromPointXY(QgsPointXY(geometry[0]))
                    if ptFirst.equals(ptLast):
                        continue
                    smallerAngle = deflection
                    linePair = [line1["featid"], line2["featid"]]
            return linePair

        futures = set()
        pool = concurrent.futures.ThreadPoolExecutor(max_workers=os.cpu_count() - 1)
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo("Submitting to thread")
        stepSize = 100 / len(pointsAndLineDict)
        for current, (geomWkb, linesIdSet) in enumerate(pointsAndLineDict.items()):
            if multiStepFeedback.isCanceled():
                break
            ptAndLine = QgsGeometry()
            ptAndLine.fromWkb(geomWkb)
            futures.add(
                pool.submit(compute, ptAndLine, [lineDict[i] for i in linesIdSet])
            )
            multiStepFeedback.setProgress(current * stepSize)

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo("Evaluating results")
        for current, future in enumerate(concurrent.futures.as_completed(futures)):
            if multiStepFeedback.isCanceled():
                break
            linePair = future.result()
            if linePair:
                toMerge.append(linePair)
            multiStepFeedback.setProgress(current * stepSize)
        # Merge Two Lines
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        multiStepFeedback.pushInfo("Writing output")

        layer.startEditing()
        layer.beginEditCommand("Editando")
        idsToRemove = []

        changeLines = {}
        nSteps = len(toMerge)
        if nSteps == 0:
            return True
        stepSize = 100 / nSteps
        for current, lines in enumerate(toMerge):
            if multiStepFeedback.isCanceled():
                break
            line1id = lines[0]
            line2id = lines[1]
            while line1id in changeLines:
                if multiStepFeedback.isCanceled():
                    break
                line1id = changeLines[line1id]
            while line2id in changeLines:
                if multiStepFeedback.isCanceled():
                    break
                line2id = changeLines[line2id]
            line1 = layer.getFeature(line1id)
            line2 = layer.getFeature(line2id)
            newGeometry = line1.geometry().combine(line2.geometry()).mergeLines()
            if newGeometry.isMultipart() or newGeometry.isNull():
                continue
            geometry = newGeometry.asPolyline()
            ptLast = QgsGeometry().fromPointXY(QgsPointXY(geometry[-1]))
            ptFirst = QgsGeometry().fromPointXY(QgsPointXY(geometry[0]))
            if ptFirst.equals(ptLast):
                continue
            line1.setGeometry(newGeometry)
            layer.updateFeature(line1)
            changeLines[line2id] = line1id
            idsToRemove.append(line2.id())
            multiStepFeedback.setProgress(current * stepSize)
        layer.deleteFeatures(idsToRemove)
        layer.endEditCommand()
        return True

    def startOrEndIntersectionsDict(self, layer, feedback):
        multiStepFeedback = QgsProcessingMultiStepFeedback(2, feedback)
        multiStepFeedback.setCurrentStep(0)
        cacheLayer, nodesLayer = graphHandler.buildAuxLayersPriorGraphBuilding(
            layer, feedback=multiStepFeedback
        )
        pointsDict = defaultdict(set)
        multiStepFeedback.setCurrentStep(1)
        nNodes = nodesLayer.featureCount()
        if nNodes == 0:
            return pointsDict, cacheLayer
        stepSize = 100 / nNodes
        for current, nodeFeat in enumerate(nodesLayer.getFeatures()):
            if multiStepFeedback.isCanceled():
                break
            geom = nodeFeat.geometry()
            geomWkb = geom.asWkb()
            pointsDict[geomWkb].add(nodeFeat["featid"])
            multiStepFeedback.setProgress(current * stepSize)
        return pointsDict, cacheLayer

    def createFeaturesArray(self, originalLayer):
        arrayFeatures = []
        features = originalLayer.getFeatures()

        for feature in features:
            arrayFeatures.append(feature)

        return arrayFeatures

    def adjacentPoint(self, line, point):
        vertexPoint = line.geometry().closestVertexWithContext(point)[1]
        adjpoints = line.geometry().adjacentVertices(vertexPoint)
        adjptvertex = adjpoints[0]
        if adjptvertex < 0:
            adjptvertex = adjpoints[1]
        adjpt = line.geometry().vertexAt(adjptvertex)
        return QgsPointXY(adjpt)

    def anglesBetweenLines(self, line1, line2, point):
        pointB = QgsPointXY(point.asPoint())
        pointA = self.adjacentPoint(line1, pointB)
        pointC = self.adjacentPoint(line2, pointB)
        angleRad = QgsGeometryUtils().angleBetweenThreePoints(
            pointA.x(), pointA.y(), pointB.x(), pointB.y(), pointC.x(), pointC.y()
        )
        angle = math.degrees(angleRad)

        return abs(angle)

    def outLayer(self, parameters, context, layer):
        newFields = layer.fields()

        (sink, newLayer) = self.parameterAsSink(
            parameters,
            self.OUTPUT,
            context,
            newFields,
            QgsWkbTypes.MultiLineString,
            layer.sourceCrs(),
        )

        for feat in layer.getFeatures():
            sink.addFeature(feat, QgsFeatureSink.FastInsert)
        return newLayer

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return MergeLinesByAngle()

    def name(self):
        return "mergelinesbyangle"

    def displayName(self):
        return self.tr("Mescla Linhas Pelo Ângulo")

    def group(self):
        return self.tr("Auxiliar")

    def groupId(self):

        return "auxiliar"

    def shortHelpString(self):

        return self.tr(
            "Esse algoritmo mescla linhas conectadas. Em caso de bifurcação, mescla as de menor ângulo entre si."
        )
