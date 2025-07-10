# -*- coding: utf-8 -*-

from itertools import product
import math

from qgis import processing
from qgis.core import (
    QgsCoordinateReferenceSystem,
    QgsFeatureSink,
    QgsPointXY,
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingFeatureSourceDefinition,
    QgsProcessingParameterEnum,
    QgsProcessingParameterFeatureSink,
    QgsProcessingParameterFeatureSource,
    QgsProcessingMultiStepFeedback,
    QgsProcessingException,
    QgsWkbTypes,
    QgsProcessingParameterBoolean,
    QgsVectorLayer,
    QgsFeature,
    QgsGeometry,
    QgsPoint,
    QgsLineString,
    QgsVectorLayerUtils,
    QgsCoordinateTransform,
    QgsProject,
    QgsField,
    QgsFields,
)
from qgis.PyQt.QtCore import QCoreApplication, QVariant
from ...Help.algorithmHelpCreator import HTMLHelpCreator as help
from ...modules.gridGenerator.utils.lat_lon_coordinate_utils import DMS


class MakeGrid(QgsProcessingAlgorithm):
    INPUT_FRAME = "INPUT_FRAME"
    INPUT_SCALE = "INPUT_SCALE"
    GENERATE_LAT_LON_TICKS = "GENERATE_LAT_LON_TICKS"
    GENERATE_GRID_NUMBERS = "GENERATE_GRID_NUMBERS"
    OUTPUT = "OUTPUT"
    OUTPUT_GRID_NUMBERS = "OUTPUT_GRID_NUMBERS"

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
            QgsProcessingParameterBoolean(
                self.GENERATE_LAT_LON_TICKS,
                self.tr("Gerar cruzetas de lat lon"),
                defaultValue=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterBoolean(
                self.GENERATE_GRID_NUMBERS,
                self.tr("Gerar pontos de número do grid"),
                defaultValue=True,
            )
        )

        self.addParameter(
            QgsProcessingParameterFeatureSink(self.OUTPUT, self.tr("Vetor de Grade"))
        )

        self.addParameter(
            QgsProcessingParameterFeatureSink(
                self.OUTPUT_GRID_NUMBERS,
                self.tr("Pontos de número do grid"),
                optional=True,
                createByDefault=True,
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
        inputFrameLayer = self.parameterAsSource(parameters, self.INPUT_FRAME, context)
        gridScaleParam = self.parameterAsInt(parameters, self.INPUT_SCALE, context)
        generateLatLonTicks = self.parameterAsBool(
            parameters, self.GENERATE_LAT_LON_TICKS, context
        )
        generateGridNumbers = self.parameterAsBool(
            parameters, self.GENERATE_GRID_NUMBERS, context
        )

        nSteps = (
            8
            if (generateLatLonTicks and generateGridNumbers)
            else (7 if (generateLatLonTicks or generateGridNumbers) else 6)
        )
        multiStepFeedback = QgsProcessingMultiStepFeedback(nSteps, feedback)

        currentStep = 0
        multiStepFeedback.setCurrentStep(currentStep)
        frameLayer2 = self.runAddCount(parameters[self.INPUT_FRAME], context, feedback)
        frameLayer2 = self.reprojectLayer(
            frameLayer2, QgsCoordinateReferenceSystem("EPSG:4674"), context, None
        )
        gridScale = self.gridScaleDict[gridScaleParam]

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)

        self.runCreateSpatialIndex(frameLayer2, context, multiStepFeedback)

        utm = self.getUtmRefSys(frameLayer2)
        if utm is None:
            raise QgsProcessingException("Camada de moldura vazia")

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)

        frameLayerReprojected = self.reprojectLayer(
            frameLayer2, utm, context, multiStepFeedback
        )

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)

        grids = []
        for feature in frameLayerReprojected.getFeatures():
            geometria = feature.geometry()
            retangulo = geometria.boundingBox()
            xmin = retangulo.xMinimum()
            xmax = retangulo.xMaximum()
            ymin = retangulo.yMinimum()
            ymax = retangulo.yMaximum()
            gridSize = 4 * gridScale / 100
            xmin, xmax, ymin, ymax = self.processExtent(
                xmin, xmax, ymin, ymax, gridSize
            )

            grid = self.makeGrid(
                gridSize,
                gridSize,
                utm,
                xmin,
                xmax,
                ymin,
                ymax,
                context,
                multiStepFeedback,
            )

            frame_layer = QgsVectorLayer(
                "Polygon?crs=" + utm.authid(), "frame", "memory"
            )
            frame_provider = frame_layer.dataProvider()
            frame_feat = QgsFeature()
            frame_feat.setGeometry(geometria)
            frame_provider.addFeatures([frame_feat])

            clipped_grid = processing.run(
                "native:clip",
                {"INPUT": grid, "OVERLAY": frame_layer, "OUTPUT": "memory:"},
                context=context,
                is_child_algorithm=True,
            )["OUTPUT"]
            extended_grid = processing.run(
                "native:extendlines",
                {
                    "INPUT": clipped_grid,
                    "START_DISTANCE": 0.5 if not utm.isGeographic() else 5e-6,
                    "END_DISTANCE": 0.5 if not utm.isGeographic() else 5e-6,
                    "OUTPUT": "memory:",
                },
                context=context,
            )["OUTPUT"]

            grids.append(extended_grid)

        gridFinal = processing.run(
            "native:mergevectorlayers",
            {"LAYERS": grids, "CRS": utm, "OUTPUT": "memory:"},
            context=context,
        )["OUTPUT"]

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)

        lineLayer = gridFinal

        (self.sink, self.sink_id) = self.parameterAsSink(
            parameters,
            self.OUTPUT,
            context,
            lineLayer.fields(),
            lineLayer.wkbType(),
            utm,
        )

        if generateLatLonTicks:
            currentStep += 1
            multiStepFeedback.setCurrentStep(currentStep)

            lineList = self.getLatLonTicks(
                frameLayer2,
                scale=gridScale,
                utm=utm,
                context=context,
                feedback=multiStepFeedback,
            )

            coordinateTransform = QgsCoordinateTransform(
                QgsCoordinateReferenceSystem("EPSG:4674"),
                utm,
                QgsProject.instance(),
            )

            def createFeat(geom, coordinateTransform=None):
                if coordinateTransform is not None:
                    geom.transform(coordinateTransform)
                feat = QgsVectorLayerUtils.createFeature(layer=lineLayer, geometry=geom)
                feat["tipo_grid"] = "cross"
                return feat

            self.sink.addFeatures(list(map(lambda x: createFeat(x, coordinateTransform=coordinateTransform), lineList)))
            
            tickList = self.generateMinuteTickOnFrame(frameLayer2, gridScale)
            self.sink.addFeatures(list(map(lambda x: createFeat(x, coordinateTransform=coordinateTransform), tickList)))

        newLayer = self.outLayer(
            parameters, context, lineLayer, QgsWkbTypes.LineString, multiStepFeedback
        )

        if generateGridNumbers:
            gridNumberPoints = self.generateGridNumberPoints(
                frameLayerReprojected, utm, gridSize, context, multiStepFeedback
            )

            (numbers_sink, numbers_sink_id) = self.parameterAsSink(
                parameters,
                self.OUTPUT_GRID_NUMBERS,
                context,
                gridNumberPoints[0].fields() if gridNumberPoints else QgsFields(),
                QgsWkbTypes.Point,
                utm,
            )

            if numbers_sink is not None and gridNumberPoints:
                numbers_sink.addFeatures(gridNumberPoints)

            currentStep += 1
            multiStepFeedback.setCurrentStep(currentStep)

        return {
            self.OUTPUT: newLayer,
            self.OUTPUT_GRID_NUMBERS: numbers_sink_id if generateGridNumbers else None,
        }

    def getGridParameters(self, gridScale, frameLayerReprojected):
        gridSize = 4 * gridScale / 100
        ptLyrExt = frameLayerReprojected.extent()
        xmin = ptLyrExt.xMinimum()
        xmax = ptLyrExt.xMaximum()
        ymin = ptLyrExt.yMinimum()
        ymax = ptLyrExt.yMaximum()
        xmin, xmax, ymin, ymax = self.processExtent(xmin, xmax, ymin, ymax, gridSize)
        return gridSize, xmin, xmax, ymin, ymax

    def getUtmRefSys(self, frameLayer):
        features = frameLayer.getFeatures()
        first_feature = next(features, None)

        # Se não houver feições, retorna None
        if first_feature is None:
            return None

        geom = first_feature.geometry()
        centroid = geom.centroid()
        point = QgsPointXY(centroid.constGet())
        utmString = getSirgasAuthIdByPointLatLong(point.y(), point.x())
        utm = QgsCoordinateReferenceSystem(utmString)
        return utm

    def runAddCount(self, inputLyr, context, feedback):
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
                "OUTPUT": "memory:",
            },
            context=context,
            feedback=feedback,
        )
        return output["OUTPUT"]

    def runCreateSpatialIndex(self, inputLyr, context, feedback):
        processing.run(
            "native:createspatialindex",
            {"INPUT": inputLyr},
            context=context,
            feedback=feedback,
            is_child_algorithm=True,
        )
        return False

    def reprojectLayer(self, layer, crs, context, feedback):
        output = processing.run(
            "native:reprojectlayer",
            {"INPUT": layer, "TARGET_CRS": crs, "OUTPUT": "memory:"},
            context=context,
            feedback=feedback,
        )
        return output["OUTPUT"]

    def processExtent(self, xmin, xmax, ymin, ymax, gridSize):
        return (
            (int(xmin / gridSize)) * gridSize,
            (int(xmax / gridSize) + 1) * gridSize,
            (int(ymin / gridSize)) * gridSize,
            (int(ymax / gridSize) + 1) * gridSize,
        )

    def makeGrid(
        self,
        hGridSize,
        vGridSize,
        CRS,
        xmin,
        xmax,
        ymin,
        ymax,
        context,
        feedback,
        gridType=2,
    ):
        fields = QgsFields()
        fields.append(QgsField("tipo_grid", QVariant.String))
        fields.append(QgsField("direcao", QVariant.String))

        layer = QgsVectorLayer(f"LineString?crs={CRS.authid()}", "grid", "memory")
        layer.dataProvider().addAttributes(fields)
        layer.updateFields()

        features = []

        x = xmin
        while x <= xmax:
            line = QgsFeature(fields)
            line.setGeometry(
                QgsGeometry.fromPolylineXY([QgsPointXY(x, ymin), QgsPointXY(x, ymax)])
            )

            is_master = abs(x % (10 * hGridSize)) < 0.1
            line.setAttribute("tipo_grid", "master" if is_master else "regular")
            line.setAttribute("direcao", "vertical")

            features.append(line)
            x += hGridSize

        y = ymin
        while y <= ymax:
            line = QgsFeature(fields)
            line.setGeometry(
                QgsGeometry.fromPolylineXY([QgsPointXY(xmin, y), QgsPointXY(xmax, y)])
            )

            is_master = abs(y % (10 * vGridSize)) < 0.1
            line.setAttribute("tipo_grid", "master" if is_master else "regular")
            line.setAttribute("direcao", "horizontal")

            features.append(line)
            y += vGridSize

        layer.dataProvider().addFeatures(features)

        processing.run(
            "native:createspatialindex",
            {"INPUT": layer},
            context=context,
            feedback=feedback,
            is_child_algorithm=True,
        )

        return layer

    def getLatLonTicks(self, frameLayer, utm, scale, context, feedback):
        # Dicionário que mapeia as escalas para intervalos em minutos
        minute_intervals = {
            5000: DMS(minutes=1),  # Assumindo 30'' para 1:5.000 (não especificado na tabela)
            10000: DMS(minutes=1),  # Assumindo 1' para 1:10.000 (não especificado na tabela)
            25000: DMS(minutes=2),  # 2' para 1:25.000
            50000: DMS(minutes=5),  # 5' para 1:50.000
            100000: DMS(minutes=10),  # 10' para 1:100.000
            250000: DMS(minutes=20),  # 20' para 1:250.000
        }

        # Obter o intervalo em minutos para a escala atual
        minute_interval = minute_intervals.get(
            scale, DMS(minutes=1)
        )  # Padrão é 1' se a escala não for encontrada

        layer = QgsVectorLayer(f"Point?crs=4674", "Points", "memory")
        layer.startEditing()
        layer.beginEditCommand("")

        for feat in frameLayer.getFeatures():
            if feedback.isCanceled():
                break
            geom = feat.geometry()
            bbox = geom.boundingBox()
            xmin = bbox.xMinimum()
            xmax = bbox.xMaximum()
            ymin = bbox.yMinimum()
            ymax = bbox.yMaximum()
            
            for x, y in DMS.generate_grid((DMS(xmin), DMS(xmax)), (DMS(ymin), DMS(ymax)), minute_interval, minute_interval, output_as_dms=False, fixed_grid=True):
                if x > xmax or y > ymax:  # Pular pontos fora dos limites
                    continue

                feat = QgsFeature()
                geom = QgsGeometry(QgsPoint(x, y))
                feat.setGeometry(geom)
                layer.addFeature(feat)

        layer.endEditCommand()

        coordinateTransform = QgsCoordinateTransform(
            QgsCoordinateReferenceSystem("EPSG:4674"),
            utm,
            QgsProject.instance(),
        )
        lineList = []
        halfDistance = 5e-3 * scale / 2
        for pointFeat in layer.getFeatures():
            geom = pointFeat.geometry()
            geom.transform(coordinateTransform)
            x, y = geom.asPoint()
            hLine = QgsGeometry(
                QgsLineString(
                    [QgsPoint(x - halfDistance, y), QgsPoint(x + halfDistance, y)]
                )
            )
            hLine.transform(
                coordinateTransform, QgsCoordinateTransform.ReverseTransform
            )
            lineList.append(hLine)
            vLine = QgsGeometry(
                QgsLineString(
                    [QgsPoint(x, y - halfDistance), QgsPoint(x, y + halfDistance)]
                )
            )
            vLine.transform(
                coordinateTransform, QgsCoordinateTransform.ReverseTransform
            )
            lineList.append(vLine)

        return lineList
    
    def generateMinuteTickOnFrame(self, frameLayer, scale):
        step = DMS(0, 1, 0)
        lineList = []
        halfDistance = 5e-3 * scale / 2 * 1e-5
        for feat in frameLayer.getFeatures():
            geom = feat.geometry()
            bbox = geom.boundingBox()
            xmin = bbox.xMinimum()
            xmax = bbox.xMaximum()
            ymin = bbox.yMinimum()
            ymax = bbox.yMaximum()
            for (x, y) in DMS.generate_fixed_grid(
                DMS.from_decimal_degrees(xmin), DMS.from_decimal_degrees(xmax), step, fixed_coordinate=ymin, grid_type='x'
            ):
                vLine = QgsGeometry(
                    QgsLineString(
                        [QgsPoint(x.to_decimal_degrees(), y.to_decimal_degrees()), QgsPoint(x.to_decimal_degrees(), y.to_decimal_degrees() + halfDistance)]
                    )
                )
                # vLine.transform(coordinateTransform)
                lineList.append(vLine)
            for (x, y) in DMS.generate_fixed_grid(
                DMS.from_decimal_degrees(xmin), DMS.from_decimal_degrees(xmax), step, fixed_coordinate=ymax, grid_type='x'
            ):
                vLine = QgsGeometry(
                    QgsLineString(
                        [QgsPoint(x.to_decimal_degrees(), y.to_decimal_degrees()), QgsPoint(x.to_decimal_degrees(), y.to_decimal_degrees() - halfDistance)]
                    )
                )
                # vLine.transform(coordinateTransform)
                lineList.append(vLine)
            for (x, y) in DMS.generate_fixed_grid(
                DMS.from_decimal_degrees(ymin), DMS.from_decimal_degrees(ymax), step, fixed_coordinate=xmin, grid_type='y'
            ):
                vLine = QgsGeometry(
                    QgsLineString(
                        [QgsPoint(x.to_decimal_degrees() + halfDistance, y.to_decimal_degrees()), QgsPoint(x.to_decimal_degrees(), y.to_decimal_degrees())]
                    )
                )
                # vLine.transform(coordinateTransform)
                lineList.append(vLine)
            for (x, y) in DMS.generate_fixed_grid(
                DMS.from_decimal_degrees(ymin), DMS.from_decimal_degrees(ymax), step, fixed_coordinate=xmax, grid_type='y'
            ):
                vLine = QgsGeometry(
                    QgsLineString(
                        [QgsPoint(x.to_decimal_degrees() - halfDistance, y.to_decimal_degrees()), QgsPoint(x.to_decimal_degrees(), y.to_decimal_degrees())]
                    )
                )
                # vLine.transform(coordinateTransform)
                lineList.append(vLine)
        return lineList

    def generateGridNumberPoints(self, frameLayer, utm, gridSize, context, feedback):
        fields = QgsFields()
        fields.append(QgsField("numero", QVariant.String))
        fields.append(QgsField("direcao", QVariant.String))

        points = []

        for feat in frameLayer.getFeatures():
            if feedback.isCanceled():
                break

            geom = feat.geometry()
            bbox = geom.boundingBox()
            width = bbox.width()
            height = bbox.height()

            border_buffer = geom.buffer(-gridSize / 5, 5)

            target_x = [bbox.xMinimum() + width / 3, bbox.xMinimum() + 2 * width / 3]
            target_y = [bbox.yMinimum() + height / 3, bbox.yMinimum() + 2 * height / 3]

            grid_lines_x = []
            for x_target in target_x:
                grid_x = round((x_target - gridSize / 2) / gridSize) * gridSize
                if bbox.xMinimum() <= grid_x <= bbox.xMaximum():
                    grid_lines_x.append(grid_x)

            grid_lines_y = []
            for y_target in target_y:
                grid_y = round((y_target - gridSize / 2) / gridSize) * gridSize
                if bbox.yMinimum() <= grid_y <= bbox.yMaximum():
                    grid_lines_y.append(grid_y)

            for grid_x in grid_lines_x:
                center_x = grid_x + gridSize / 2
                y_start = math.ceil(bbox.yMinimum() / gridSize) * gridSize
                y_end = math.floor(bbox.yMaximum() / gridSize) * gridSize

                for grid_y in range(int(y_start), int(y_end + gridSize), int(gridSize)):
                    point_geom = QgsGeometry.fromPointXY(QgsPointXY(center_x, grid_y))

                    # Verifica se o ponto está dentro da moldura e dentro da área buffer
                    if not geom.contains(point_geom) or not border_buffer.contains(
                        point_geom
                    ):
                        continue

                    point = QgsFeature(fields)
                    point.setGeometry(point_geom)
                    grid_number = str(int((grid_y / 1000) % 100)).zfill(2)
                    point.setAttribute("numero", grid_number)
                    point.setAttribute("direcao", "E")
                    points.append(point)

            for grid_y in grid_lines_y:
                center_y = grid_y + gridSize / 2
                x_start = math.ceil(bbox.xMinimum() / gridSize) * gridSize
                x_end = math.floor(bbox.xMaximum() / gridSize) * gridSize

                for grid_x in range(int(x_start), int(x_end + gridSize), int(gridSize)):
                    point_geom = QgsGeometry.fromPointXY(QgsPointXY(grid_x, center_y))

                    # Verifica se o ponto está dentro da moldura e dentro da área buffer
                    if not geom.contains(point_geom) or not border_buffer.contains(
                        point_geom
                    ):
                        continue

                    point = QgsFeature(fields)
                    point.setGeometry(point_geom)
                    grid_number = str(int((grid_x / 1000) % 100)).zfill(2)
                    point.setAttribute("numero", grid_number)
                    point.setAttribute("direcao", "N")
                    points.append(point)

        return points

    def outLayer(self, parameters, context, layer, type, feedback):
        nFeats = layer.featureCount()
        if nFeats == 0:
            return self.sink_id
        stepSize = 100 / nFeats
        for current, feature in enumerate(layer.getFeatures()):
            if feedback.isCanceled():
                break
            self.sink.addFeature(feature, QgsFeatureSink.FastInsert)
            feedback.setProgress(current * stepSize)

        return self.sink_id

    def tr(self, string):
        return QCoreApplication.translate("processing", string)

    def createInstance(self):
        return MakeGrid()

    def name(self):
        return "makegrid"

    def displayName(self):
        return self.tr("Gera Vetor de Grade")

    def group(self):
        return self.tr("Preparo de Edição")

    def groupId(self):
        return "preparo_edicao"

    def shortHelpString(self):
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return help().helpUrl(self.name())


def getSirgasAuthIdByPointLatLong(lat, long):
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
    return getSirgasEpsg("{0}{1}".format(zone_number, zone_letter))


def getSirgasEpsg(key):
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
        "26S": "EPSG:5396",
    }
    return options[key] if key in options else ""
