from qgis.PyQt.QtCore import QCoreApplication
from qgis.core import (
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingParameterVectorLayer,
    QgsFeatureRequest,
    QgsProcessingParameterNumber,
)
from qgis import core
import math

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help

class RapidsAndWaterfallRotation(QgsProcessingAlgorithm):

    INPUT_LAYER_P = "INPUT_LAYER_P"
    INPUT_FIELD_LAYER_P = "INPUT_FIELD_LAYER_P"
    INPUT_DRAINAGE = "INPUT_DRAINAGE"
    INPUT_MIN_DIST = "INPUT_MIN_DIST"

    def initAlgorithm(self, config=None):
        # Define the necessary input parameters of the algorithm.
        # Camada de pontos a ter elementos rotacionados
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_P,
                self.tr("Selecionar camada de elemento hidrográfico"),
                [QgsProcessing.TypeVectorPoint],
                defaultValue="elemnat_elemento_hidrografico_p",
            )
        )
        # Atributo de rotação
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
        # Tolerência da distância
        self.addParameter(
            QgsProcessingParameterNumber(
                self.INPUT_MIN_DIST,
                self.tr("Tolerância da distância"),
                type=QgsProcessingParameterNumber.Double,
                minValue=0,
                defaultValue=0.00001,
            )
        )
        # Camada de drenagem que serve de referência para a rotação
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_DRAINAGE,
                self.tr("Selecionar camada de drenagem"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="elemnat_trecho_drenagem_l",
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        # Process the algorithm.
        pointLayer = self.parameterAsVectorLayer(parameters, self.INPUT_LAYER_P, context)
        rotationField = self.parameterAsFields(parameters, self.INPUT_FIELD_LAYER_P, context)[0]
        drainageLayer = self.parameterAsVectorLayer(parameters, self.INPUT_DRAINAGE, context)
        distance = self.parameterAsDouble(parameters, self.INPUT_MIN_DIST, context)

        self.setRotationFieldOnLayer(pointLayer, rotationField, drainageLayer, distance, [9, 10, 11, 12], feedback)

        return {}

    def setRotationFieldOnLayer(self, pointLayer, rotationField, drainageLayer, distance, filterType, feedback):
        for layerFeature in pointLayer.getFeatures():
            # Excluir pontos que não são previsto serem rotacionados
            if not (layerFeature["tipo"] in filterType):
                feedback.pushInfo(f"Tipo não previsto para ser rotacionado, ignorado: {layerFeature['tipo']}")
                continue
            # Receber a camada de pontos
            layerGeometry = layerFeature.geometry()
            # Criar um buffer da geometria do ponto
            layerGeometryBuffered = layerGeometry.buffer(distance, 5)
            # Verificar se o buffer se intersecta com a camada de drenagem e rotacionar de acordo com a direção de interseção
            request = QgsFeatureRequest().setFilterRect(layerGeometryBuffered.boundingBox())
            for drainageFeature in drainageLayer.getFeatures(request):
                drainageFeatureGeometry = drainageFeature.geometry()
                if not (drainageFeatureGeometry.intersects(layerGeometryBuffered)):
                    feedback.pushInfo("Geometria não se intersecta")
                    continue
                clippedGeometry = drainageFeatureGeometry.clipped(
                    layerGeometry.buffer(distance, 5).boundingBox()
                )
                if not (clippedGeometry.type() == core.QgsWkbTypes.LineGeometry):
                    continue

                p1 = layerGeometry.asMultiPoint()[0]
                p2 = self.getPointWithMaxY(list(clippedGeometry.vertices()))

                if (p2.y() - p1.y()) == 0:
                    angleDegrees = 0
                else:
                    angleRadian = (
                        math.atan2(p2.x() - p1.x(), p2.y() - p1.y()) - math.pi / 2
                    )
                    if angleRadian >= math.pi:
                        angleRadian -= math.pi
                    elif angleRadian <= -math.pi:
                        angleRadian += math.pi
                    angleDegrees = round(math.degrees(angleRadian))
                layerFeature[rotationField] = angleDegrees
                self.updateLayerFeature(pointLayer, layerFeature)

    def getPointWithMaxY(self, points):
        pointMaxY = None
        maxY = None
        for point in points:
            if maxY and maxY > point.y():
                continue
            pointMaxY = point
            maxY = point.y()
        return pointMaxY

    def updateLayerFeature(self, layer, feature):
        layer.startEditing()
        layer.updateFeature(feature)

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return RapidsAndWaterfallRotation()

    def name(self):
        return "rapidsandwaterfallrotation"

    def displayName(self):
        return self.tr("Definir rotação de corredeira e queda d'água")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return self.tr("""
        Este algoritmo define a rotação de símbolos para corredeiras e quedas d'água em uma camada de pontos com base na direção das linhas de drenagem próximas.
                       
        O algoritmo busca feições de linha em uma camada de drenagem que intersectam com a feição de ponto e calcula o ângulo de rotação para alinhar o símbolo com a direção do fluxo de drenagem.
                       
        O cálculo é feito considerando uma tolerância de distância definida pelo usuário.
        """)
    