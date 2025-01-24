from qgis.core import (
    QgsProcessing,
    QgsProcessingParameterVectorLayer,
    QgsProcessingAlgorithm,
    QgsProcessingParameterEnum,
    QgsProcessingParameterDistance,
    QgsProcessingMultiStepFeedback,
    NULL,
    QgsProcessingException,
)
from qgis.PyQt.QtCore import QCoreApplication
from qgis import processing
from .processingUtils import ProcessingUtils

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help


class SizeTextRiverLine(QgsProcessingAlgorithm):

    INPUT_LAYER_L = "INPUT_LAYER_L"
    INPUT_FRAME_A = "INPUT_FRAME_A"
    BUFFER = "BUFFER"
    SCALE = "SCALE"
    PRODUCT = "PRODUCT"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_L,
                self.tr("Selecionar camada de drenagem"),
                [QgsProcessing.TypeVectorLine],
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_FRAME_A,
                self.tr("Selecionar camada de moldura"),
                [QgsProcessing.TypeVectorPolygon],
            )
        )
        self.addParameter(
            QgsProcessingParameterDistance(
                self.BUFFER,
                self.tr(
                    "Digite a distância que 'passa' da moldura"
                ),  # valor para ser considerado no buffer para englobar as partes clipadas dos rios que passam da moldura
                parentParameterName=self.INPUT_FRAME_A,
            )
        )
        self.addParameter(
            QgsProcessingParameterEnum(
                self.SCALE,
                self.tr("Selecione a escala de edição"),
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
        self.addParameter(
            QgsProcessingParameterEnum(
                self.PRODUCT,
                self.tr("Selecione o tipo de produto"),
                options=[self.tr("Carta Ortoimagem"), self.tr("Carta Topográfica")],
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        try:
            from DsgTools.core.DSGToolsProcessingAlgs.algRunner import AlgRunner
        except ImportError:
            raise QgsProcessingException(
                self.tr(
                    "This algorithm requires the plugin DSGTools. Please install this plugin and try again."
                )
            )

        drainageLayer = self.parameterAsVectorLayer(
            parameters, self.INPUT_LAYER_L, context
        )
        frameLayer = self.parameterAsVectorLayer(
            parameters, self.INPUT_FRAME_A, context
        )
        gridScaleParam = self.parameterAsInt(parameters, self.SCALE, context)
        self.productParam = self.parameterAsInt(parameters, self.PRODUCT, context)
        buffer = self.parameterAsDouble(parameters, self.BUFFER, context)
        self.scaleDict = {
            0: 5000,
            1: 10000,
            2: 25000,
            3: 50000,
            4: 100000,
            5: 250000,
        }
        self.scale = self.scaleDict[gridScaleParam]
        algRunner = AlgRunner()
        multiStepFeedback = QgsProcessingMultiStepFeedback(5, feedback)
        currentStep = 0
        multiStepFeedback.setCurrentStep(currentStep)
        lines = algRunner.runCreateFieldWithExpression(
            inputLyr=parameters[self.INPUT_LAYER_L],
            expression="$id",
            fieldName="featid",
            fieldType=1,
            context=context,
            feedback=multiStepFeedback,
        )
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        self.runCreateSpatialIndex(lines, feedback=multiStepFeedback)

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        merged = self.getMergedRiver(lines, frameLayer, feedback=multiStepFeedback)

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        id_to_tamanho = self.sizeText(merged, feedback=multiStepFeedback)

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)
        drainageLayer.startEditing()
        drainageLayer.beginEditCommand("Atualizando atributos")
        nFeats = drainageLayer.featureCount()
        if feedback is not None:
            if nFeats == 0:
                return {}
            stepSize = 100 / nFeats
        for current, feature in enumerate(drainageLayer.getFeatures()):
            if multiStepFeedback.isCanceled():
                break
            if feature["nome"] == NULL:
                continue
            feature["tamanho_txt"] = id_to_tamanho.get(feature.id(), 7)
            drainageLayer.updateFeature(feature)
            multiStepFeedback.setProgress(current * stepSize)
        drainageLayer.endEditCommand()

        return {}

    def getMergedRiver(self, layer, frame, feedback):
        merged = processing.run(
            "ferramentasedicao:mergerivers",
            {
                "INPUT_LAYER_L": layer,
                "INPUT_FRAME_A": frame,
                "OUTPUT_LAYER_L": "TEMPORARY_OUTPUT",
            },
            feedback=feedback,
        )
        return merged["OUTPUT_LAYER_L"]

    def sizeText(self, layer, feedback):
        lyrCrs = layer.dataProvider().crs()
        nFeatures = layer.featureCount()
        if nFeatures == 0:
            return
        stepSize = 100 / nFeatures
        id_to_tamanho = dict()
        for current, feature in enumerate(layer.getFeatures()):
            if feedback.isCanceled():
                return
            if feature["situacao_em_poligono"] == 1:
                size = ProcessingUtils.getRiverOutPolyLabelFontSize(
                    feature, self.scale, lyrCrs
                )
            else:
                size = ProcessingUtils.getRiverInPolyLabelFontSize(
                    feature, self.scale, lyrCrs
                )
            if self.productParam == 0:  # Para carta ortoimagem o tamanho mínimo é 7
                size = size if size > 6 else 7
            id_to_tamanho[feature["featid"]] = size
            feedback.setProgress(current * stepSize)
        return id_to_tamanho

    def bufferRiver(self, inputLyr, buffer):
        bufferRiver = processing.run(
            "native:buffer",
            {
                "INPUT": inputLyr,
                "DISTANCE": buffer,
                "SEGMENTS": 5,
                "END_CAP_STYLE": 0,
                "JOIN_STYLE": 0,
                "MITER_LIMIT": 2.0,
                "DISSOLVE": False,
                "OUTPUT": "TEMPORARY_OUTPUT",
            },
        )
        return bufferRiver["OUTPUT"]

    def joinAttribute(self, inputLyr, bufferLyr):
        joinLayer = processing.run(
            "native:joinattributesbylocation",
            {
                "INPUT": inputLyr,
                "PREDICATE": [5],
                "JOIN": bufferLyr,
                "JOIN_FIELDS": ["tamanho_txt"],
                "METHOD": 0,
                "DISCARD_NONMATCHING": False,
                "PREFIX": "join_",
                "OUTPUT": "TEMPORARY_OUTPUT",
            },
        )
        return joinLayer["OUTPUT"]

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
        )
        return output["OUTPUT"]

    def runCreateSpatialIndex(self, inputLyr, feedback):
        processing.run(
            "native:createspatialindex",
            {"INPUT": inputLyr},
            is_child_algorithm=True,
            feedback=feedback,
        )

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return SizeTextRiverLine()

    def name(self):
        return "sizetextriverline"

    def displayName(self):
        return self.tr("Definir o tamanho do texto de acordo com o comprimento")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return  help().helpUrl(self.name())
