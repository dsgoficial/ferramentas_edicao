from qgis import processing
from qgis.core import (
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingParameterFeatureSource,
    QgsProcessingParameterEnum,
    QgsProcessingParameterNumber,
    QgsProcessingMultiStepFeedback,
    QgsProcessingException,
    QgsGeometry,
    QgsFeature,
    QgsPointXY,
    QgsProcessingParameterFeatureSink,
    QgsVectorLayer,
    QgsFeatureSink,
    QgsWkbTypes,
    QgsFields,
    QgsField,
    QgsProcessingFeatureSourceDefinition,
)
from qgis.PyQt.QtCore import QCoreApplication, QVariant
from ...Help.algorithmHelpCreator import HTMLHelpCreator as help


class ValidateGrid(QgsProcessingAlgorithm):
    INPUT_FRAME = "INPUT_FRAME"
    INPUT_SCALE = "INPUT_SCALE"
    INPUT_GRID = "INPUT_GRID"
    INPUT_POINTS = "INPUT_POINTS"
    POINT_TOLERANCE = "POINT_TOLERANCE"
    OUTPUT_GRID_ERRORS = "OUTPUT_GRID_ERRORS"
    OUTPUT_POINT_ERRORS = "OUTPUT_POINT_ERRORS"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterFeatureSource(
                self.INPUT_FRAME,
                self.tr("Selecione a camada de moldura"),
                types=[QgsProcessing.TypeVectorPolygon],
            )
        )

        self.addParameter(
            QgsProcessingParameterEnum(
                self.INPUT_SCALE,
                self.tr("Selecione a escala de edição:"),
                options=[
                    self.tr("1:5.000"),
                    self.tr("1:10.000"),
                    self.tr("1:25.000"),
                    self.tr("1:50.000"),
                    self.tr("1:100.000"),
                    self.tr("1:250.000"),
                ],
            )
        )

        self.addParameter(
            QgsProcessingParameterFeatureSource(
                self.INPUT_GRID,
                self.tr("Selecione a camada de grid a ser validada"),
                types=[QgsProcessing.TypeVectorLine],
            )
        )

        self.addParameter(
            QgsProcessingParameterFeatureSource(
                self.INPUT_POINTS,
                self.tr("Selecione a camada de pontos a ser validada"),
                types=[QgsProcessing.TypeVectorPoint],
            )
        )

        self.addParameter(
            QgsProcessingParameterNumber(
                self.POINT_TOLERANCE,
                self.tr("Tolerância de deslocamento dos pontos (metros)"),
                type=QgsProcessingParameterNumber.Double,
                defaultValue=1.0,
                minValue=0.0,
            )
        )

        # Saídas para as camadas de erro
        self.addParameter(
            QgsProcessingParameterFeatureSink(
                self.OUTPUT_GRID_ERRORS,
                self.tr("Erros do Grid"),
                type=QgsProcessing.TypeVectorLine,
            )
        )

        self.addParameter(
            QgsProcessingParameterFeatureSink(
                self.OUTPUT_POINT_ERRORS,
                self.tr("Erros dos Pontos"),
                type=QgsProcessing.TypeVectorPoint,
            )
        )

        self.gridScaleDict = {
            0: 5000,
            1: 10000,
            2: 25000,
            3: 50000,
            4: 100000,
            5: 250000,
        }

    def processAlgorithm(self, parameters, context, feedback):
        inputFrameLayer = self.parameterAsVectorLayer(
            parameters, self.INPUT_FRAME, context
        )
        if not inputFrameLayer or inputFrameLayer.featureCount() == 0:
            raise QgsProcessingException(self.tr("Camada de moldura vazia"))

        gridScaleParam = self.parameterAsEnum(parameters, self.INPUT_SCALE, context)
        inputGridLayer = self.parameterAsVectorLayer(
            parameters, self.INPUT_GRID, context
        )
        inputPointsLayer = self.parameterAsVectorLayer(
            parameters, self.INPUT_POINTS, context
        )
        pointTolerance = self.parameterAsDouble(
            parameters, self.POINT_TOLERANCE, context
        )

        inputGridLayer = self.runAddCount(inputGridLayer, feedback=feedback)
        self.runCreateSpatialIndex(inputGridLayer, feedback=feedback)
        inputPointsLayer = self.runAddCount(inputPointsLayer, feedback=feedback)
        self.runCreateSpatialIndex(inputPointsLayer, feedback=feedback)
        inputFrameLayer = self.runAddCount(inputFrameLayer, feedback=feedback)
        self.runCreateSpatialIndex(inputFrameLayer, feedback=feedback)

        multiStepFeedback = QgsProcessingMultiStepFeedback(5, feedback)
        currentStep = 0
        multiStepFeedback.setCurrentStep(currentStep)

        # Gerar grid de referência usando makeGrid
        makeGridResult = processing.run(
            "ferramentasedicao:makegrid",
            {
                "INPUT_FRAME": parameters[self.INPUT_FRAME],
                "INPUT_SCALE": gridScaleParam,
                "GENERATE_LAT_LON_TICKS": True,
                "GENERATE_GRID_NUMBERS": True,
                "OUTPUT": "memory:",
                "OUTPUT_GRID_NUMBERS": "memory:",
            },
            context=context,
            feedback=multiStepFeedback,
        )

        referenceGrid = makeGridResult["OUTPUT"]
        referencePoints = makeGridResult["OUTPUT_GRID_NUMBERS"]
        self.runCreateSpatialIndex(referenceGrid, feedback=feedback)
        self.runCreateSpatialIndex(referencePoints, feedback=feedback)

        if referenceGrid is None:
            raise QgsProcessingException(self.tr("Erro ao gerar grid de referência"))

        grid_fields = QgsFields()
        grid_fields.append(QgsField("erro_tipo", QVariant.String))

        point_fields = QgsFields()
        point_fields.append(QgsField("erro_tipo", QVariant.String))
        point_fields.append(QgsField("numero", QVariant.String))
        point_fields.append(QgsField("direcao", QVariant.String))

        (self.grid_sink, grid_sink_id) = self.parameterAsSink(
            parameters,
            self.OUTPUT_GRID_ERRORS,
            context,
            grid_fields,
            QgsWkbTypes.LineString,
            referenceGrid.crs(),
        )

        (self.point_sink, point_sink_id) = self.parameterAsSink(
            parameters,
            self.OUTPUT_POINT_ERRORS,
            context,
            point_fields,
            QgsWkbTypes.Point,
            referenceGrid.crs(),
        )

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)

        line_errors = processing.run(
            "native:symmetricaldifference",
            {"INPUT": referenceGrid, "OVERLAY": inputGridLayer, "OUTPUT": "memory:"},
            context=context,
            feedback=multiStepFeedback,
        )["OUTPUT"]

        # Adicionar todas as linhas diferentes ao sink
        for error_feat in line_errors.getFeatures():
            erro_feat = QgsFeature(grid_fields)
            erro_feat.setGeometry(error_feat.geometry())
            erro_feat.setAttribute("erro_tipo", "erro_grid")
            self.grid_sink.addFeature(erro_feat, QgsFeatureSink.FastInsert)

        # Validar pontos
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)

        # Encontrar pontos mais próximos dentro da tolerância
        nearest_points = processing.run(
            "native:joinbynearest",
            {
                "INPUT": referencePoints,
                "INPUT_2": inputPointsLayer,
                "FIELDS_TO_COPY": ["numero", "direcao"],
                "DISCARD_NONMATCHING": False,
                "PREFIX": "matched_",
                "MAX_DISTANCE": pointTolerance,
                "NEIGHBORS": 1,
                "OUTPUT": "memory:",
            },
            context=context,
            feedback=multiStepFeedback,
        )["OUTPUT"]

        # Filtrar pontos com problemas
        for feat in nearest_points.getFeatures():
            error_feat = QgsFeature(point_fields)
            error_feat.setGeometry(feat.geometry())

            if feat["matched_numero"] is None:
                # Ponto faltante
                error_feat.setAttribute("erro_tipo", "ponto_faltante")
                error_feat.setAttribute("numero", feat["numero"])
                error_feat.setAttribute("direcao", feat["direcao"])
                self.point_sink.addFeature(error_feat, QgsFeatureSink.FastInsert)
            elif (
                feat["numero"] != feat["matched_numero"]
                or feat["direcao"] != feat["matched_direcao"]
            ):
                # Ponto com atributos incorretos
                error_feat.setAttribute("erro_tipo", "ponto_incorreto")
                error_feat.setAttribute("numero", feat["numero"])
                error_feat.setAttribute("direcao", feat["direcao"])
                self.point_sink.addFeature(error_feat, QgsFeatureSink.FastInsert)

        # Encontrar pontos extras
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)

        extra_points = processing.run(
            "native:joinbynearest",
            {
                "INPUT": inputPointsLayer,
                "INPUT_2": referencePoints,
                "FIELDS_TO_COPY": ["numero", "direcao"],
                "DISCARD_NONMATCHING": False,
                "PREFIX": "matched_",
                "MAX_DISTANCE": pointTolerance,
                "NEIGHBORS": 1,
                "OUTPUT": "memory:",
            },
            context=context,
            feedback=multiStepFeedback,
        )["OUTPUT"]

        # Adicionar pontos extras ao sink
        for feat in extra_points.getFeatures():
            if feat["matched_numero"] is None:
                error_feat = QgsFeature(point_fields)
                error_feat.setGeometry(feat.geometry())
                error_feat.setAttribute("erro_tipo", "ponto_extra")
                error_feat.setAttribute("numero", feat["numero"])
                error_feat.setAttribute("direcao", feat["direcao"])
                self.point_sink.addFeature(error_feat, QgsFeatureSink.FastInsert)

        return {
            self.OUTPUT_GRID_ERRORS: grid_sink_id,
            self.OUTPUT_POINT_ERRORS: point_sink_id,
        }

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

    def tr(self, string):
        return QCoreApplication.translate("processing", string)

    def createInstance(self):
        return ValidateGrid()

    def name(self):
        return "validategrid"

    def displayName(self):
        return self.tr("Validar Grid")

    def group(self):
        return self.tr("Auxiliar")

    def groupId(self):
        return "auxiliar"

    def shortHelpString(self):
        return ""

    def helpUrl(self):
        return ""
