# -*- coding: utf-8 -*-

from qgis.PyQt.QtCore import QCoreApplication
from qgis.core import (
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingParameterVectorLayer,
    QgsFeatureRequest,
    QgsProcessingParameterNumber,
    QgsProcessingParameterBoolean,
)
from qgis import core
import math
import processing


class BridgeAndManholeRotation(QgsProcessingAlgorithm):

    INPUT_LAYER_P = "INPUT_LAYER_P"
    ONLY_SELECTED = "ONLY_SELECTED"
    INPUT_FIELD_LAYER_P = "INPUT_FIELD_LAYER_P"
    INPUT_HIGHWAY = "INPUT_HIGHWAY"
    INPUT_RIVER = "INPUT_RIVER"
    INPUT_DITCH = "INPUT_DITCH"
    INPUT_MIN_DIST = "INPUT_MIN_DIST"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_P,
                self.tr("Selecionar camada de elemento viário"),
                [QgsProcessing.TypeVectorPoint],
                defaultValue="infra_elemento_viario_p",
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.ONLY_SELECTED, self.tr("Executar somente nas feições selecionadas")
            )
        )
        self.addParameter(
            core.QgsProcessingParameterField(
                self.INPUT_FIELD_LAYER_P,
                self.tr("Selecionar o atributo de rotação"),
                type=core.QgsProcessingParameterField.Any,
                parentLayerParameterName=self.INPUT_LAYER_P,
                allowMultiple=False,
                defaultValue="simb_rot",
            )
        )

        self.addParameter(
            QgsProcessingParameterNumber(
                self.INPUT_MIN_DIST,
                self.tr("Tolerância da distância"),
                type=QgsProcessingParameterNumber.Double,
                defaultValue=0.00001,
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_HIGHWAY,
                self.tr("Selecionar camada de rodovia"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="infra_via_deslocamento_l",
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_RIVER,
                self.tr("Selecionar camada de trecho de drenagem"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="elemnat_trecho_drenagem_l",
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_DITCH,
                self.tr("Selecionar camada de vala"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="infra_vala_l",
                optional=True,
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        pointLayer = self.parameterAsVectorLayer(
            parameters, self.INPUT_LAYER_P, context
        )
        onlySelected = self.parameterAsBool(parameters, self.ONLY_SELECTED, context)
        rotationField = self.parameterAsFields(
            parameters, self.INPUT_FIELD_LAYER_P, context
        )[0]
        highwayLayer = self.parameterAsVectorLayer(
            parameters, self.INPUT_HIGHWAY, context
        )
        riverLayer = self.parameterAsVectorLayer(parameters, self.INPUT_RIVER, context)
        ditchLayer = self.parameterAsVectorLayer(parameters, self.INPUT_DITCH, context)
        distance = self.parameterAsDouble(parameters, self.INPUT_MIN_DIST, context)

        pointIterator = (
            pointLayer.getFeatures()
            if not onlySelected
            else pointLayer.getSelectedFeatures()
        )
        nFeats = (
            pointLayer.featureCount()
            if not onlySelected
            else pointLayer.selectedFeatureCount()
        )
        if nFeats == 0:
            return {}
        stepSize = 100 / nFeats
        featuresToUpdate = []
        if ditchLayer is not None:
            riverLayer = processing.run(
                "native:mergevectorlayers",
                {"LAYERS": [riverLayer, ditchLayer], "CRS": None, "OUTPUT": "memory:"},
                context=context,
            )["OUTPUT"]
            processing.run(
                "native:createspatialindex", {"INPUT": riverLayer}, context=context
            )
        for current, layerFeature in enumerate(pointIterator):
            if feedback.isCanceled():
                break
            if not (layerFeature["tipo"] in [201, 202, 203, 204, 501]):
                continue
            layerGeometry = layerFeature.geometry()
            buffer = layerGeometry.buffer(distance, -1)
            request = QgsFeatureRequest().setFilterRect(buffer.boundingBox())
            iterator = (
                highwayLayer.getFeatures(request)
                if layerFeature["tipo"] != 501
                else riverLayer.getFeatures(request)
            )
            for lineFeature in iterator:
                lineFeatureGeometry = lineFeature.geometry()
                clippedGeometry = lineFeatureGeometry.clipped(buffer.boundingBox())
                if not (clippedGeometry.type() == core.QgsWkbTypes.LineGeometry):
                    continue

                p1 = layerGeometry.asMultiPoint()[0]
                p2 = self.getPointWithMaxY(list(clippedGeometry.vertices()))
                angleDegrees = self.evaluateAngle(layerFeature, p1, p2)
                layerFeature[rotationField] = angleDegrees
                featuresToUpdate.append(layerFeature)
            feedback.setProgress(current * stepSize)
        if featuresToUpdate == []:
            return {}
        pointLayer.startEditing()
        pointLayer.beginEditCommand("Rotacionando pontes e bueiros do tipo ponto")
        updateLambda = lambda x: pointLayer.updateFeature(x)
        list(map(updateLambda, featuresToUpdate))
        pointLayer.endEditCommand()
        return {}

    def evaluateAngle(self, layerFeature, p1, p2):
        if layerFeature["tipo"] == 501:
            return core.QgsPoint(p1.x(), p1.y()).azimuth(core.QgsPoint(p2.x(), p2.y()))
        angleDegrees = 0
        if (p2.y() - p1.y()) != 0:
            angleRadian = math.atan2(p2.x() - p1.x(), p2.y() - p1.y()) - math.pi / 2
            if angleRadian >= math.pi:
                angleRadian -= math.pi
            elif angleRadian <= -math.pi:
                angleRadian += math.pi
            angleDegrees = round(math.degrees(angleRadian))
        return angleDegrees

    def getPointWithMaxY(self, points):
        pointMaxY = None
        maxY = None
        for point in points:
            if maxY and maxY > point.y():
                continue
            pointMaxY = point
            maxY = point.y()
        return pointMaxY

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return BridgeAndManholeRotation()

    def name(self):
        return "bridgeandmanholerotation"

    def displayName(self):
        return self.tr("Definir rotação ponte e bueiro")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return self.tr(
        """Este algoritmo ajusta a rotação de elementos viários do tipo ponto (como pontes e bueiros) com base na orientação das camadas de rodovias ou drenagem próximas.

        Ele permite que o usuário selecione feições específicas ou aplique a todas as feições na camada de entrada.

        A rotação é determinada pela geometria das rodovias ou cursos d'água mais próximos, com base em uma tolerância de distância definida pelo usuário.

        O algoritmo também pode combinar camadas de drenagem e valas antes de calcular a rotação."""
        )

