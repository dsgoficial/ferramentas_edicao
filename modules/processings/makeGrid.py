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
    QgsFields
)
from qgis.PyQt.QtCore import (QCoreApplication, QVariant)
from ...Help.algorithmHelpCreator import HTMLHelpCreator as help


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
                type=QgsProcessing.TypeVectorPoint
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
        boolVar = self.parameterAsBool(parameters, self.INPUT_FRAME, context)
        gridScaleParam = self.parameterAsInt(parameters, self.INPUT_SCALE, context)
        generateLatLonTicks = self.parameterAsBool(
            parameters, self.GENERATE_LAT_LON_TICKS, context
        )
        generateGridNumbers = self.parameterAsBool(
            parameters, self.GENERATE_GRID_NUMBERS, context
        )

        nSteps = 8 if (generateLatLonTicks and generateGridNumbers) else (7 if (generateLatLonTicks or generateGridNumbers) else 6)
        multiStepFeedback = QgsProcessingMultiStepFeedback(nSteps, feedback)

        currentStep = 0
        multiStepFeedback.setCurrentStep(currentStep)
        frameLayer2 = self.runAddCount(inputFrameLayer, boolVar, context, feedback)
        gridScale = self.gridScaleDict[gridScaleParam]

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)

        self.runCreateSpatialIndex(frameLayer2, context, multiStepFeedback)
        # Converter moldura para lat long
        crs = QgsCoordinateReferenceSystem("EPSG:4674")

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)

        frameLayer = self.reprojectLayer(frameLayer2, crs, context, multiStepFeedback)
        # Pegar centro da moldura  (se tiver mais de um polígono na camada de moldura pegar o centro dos centros)
        
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)

        utm = self.getUtmRefSys(frameLayer)
        if utm is None:
            raise QgsProcessingException("Camada de moldura vazia")
        
        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)

        frameLayerReprojected = self.reprojectLayer(
            frameLayer, utm, context, multiStepFeedback
        )

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)

        # Criar a grade com 4cm (baseado na escala) de distancia entre as linhas no fuso
        grids = []
        for feature in frameLayerReprojected.getFeatures():
            geometria = feature.geometry()
            retangulo = geometria.boundingBox()
            xmin = retangulo.xMinimum()
            xmax = retangulo.xMaximum()
            ymin = retangulo.yMinimum()
            ymax = retangulo.yMaximum()
            gridSize = 4 * gridScale / 100
            xmin, xmax, ymin, ymax = self.processExtent(xmin, xmax, ymin, ymax, gridSize)
            
            grid = self.makeGrid(
                gridSize, gridSize, utm, xmin, xmax, ymin, ymax, context, multiStepFeedback
            )
            
            grids.append(grid)
        gridFinal = processing.run("native:mergevectorlayers", {'LAYERS':grids,'CRS':inputFrameLayer.sourceCrs(),'OUTPUT':'TEMPORARY_OUTPUT'})['OUTPUT']

        currentStep += 1
        multiStepFeedback.setCurrentStep(currentStep)

        lineLayer = gridFinal
        
        (self.sink, self.sink_id) = self.parameterAsSink(
            parameters,
            self.OUTPUT,
            context,
            lineLayer.fields(),
            lineLayer.wkbType(),  # 1point 2line 3polygon 4multipoint 5 multiline
            lineLayer.sourceCrs(),
        )

        if generateLatLonTicks:
            currentStep += 1
            multiStepFeedback.setCurrentStep(currentStep)
            
            lineList = self.generateLatLonTicks(
                frameLayer,
                scale=gridScale,
                utm=utm,
                context=context,
                feedback=multiStepFeedback,
            )
            coordinateTransform = (
                QgsCoordinateTransform(
                    QgsCoordinateReferenceSystem("EPSG:4674"),
                    inputFrameLayer.sourceCrs(),
                    QgsProject.instance(),
                )
                if inputFrameLayer.sourceCrs().authid() != "EPSG:4674"
                else None
            )

            def createFeat(geom):
                if coordinateTransform is not None:
                    geom.transform(coordinateTransform)
                return QgsVectorLayerUtils.createFeature(layer=lineLayer, geometry=geom)

            self.sink.addFeatures(list(map(createFeat, lineList)))
            
        newLayer = self.outLayer(
            parameters, context, lineLayer, QgsWkbTypes.LineString, multiStepFeedback
        )

        if generateGridNumbers:
            gridNumberPoints = self.generateGridNumberPoints(
                frameLayerReprojected,
                utm,
                gridSize,
                context,
                multiStepFeedback
            )
            
            # Criar sink para os pontos
            (numbers_sink, numbers_sink_id) = self.parameterAsSink(
                parameters,
                self.OUTPUT_GRID_NUMBERS,
                context,
                gridNumberPoints[0].fields() if gridNumberPoints else QgsFields(),
                QgsWkbTypes.Point,
                frameLayerReprojected.sourceCrs()
            )
            
            if numbers_sink is not None and gridNumberPoints:
                numbers_sink.addFeatures(gridNumberPoints)

            currentStep += 1
            multiStepFeedback.setCurrentStep(currentStep)

        return {
            self.OUTPUT: newLayer,
            self.OUTPUT_GRID_NUMBERS: numbers_sink_id if generateGridNumbers else None
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
        centroidList = []
        for poly in frameLayer.getFeatures():
            geom = poly.geometry()
            centroid = geom.centroid()
            centroidList.append(QgsPointXY(centroid.constGet()))

        nCentroids = len(centroidList)
        if nCentroids == 0:
            return None
        centroid = (
            centroidList[0]
            if nCentroids == 1
            else QgsPointXY(
                sum(centroid.x() for centroid in centroidList) / nCentroids,
                sum(centroid.y() for centroid in centroidList) / nCentroids,
            )
        )
        # Descobrir o utm
        utmString = getSirgasAuthIdByPointLatLong(centroid.y(), centroid.x())
        utm = QgsCoordinateReferenceSystem(utmString)
        return utm

    def runAddCount(self, inputLyr, boolVar, context, feedback):
        output = processing.run(
            "native:addautoincrementalfield",
            {
                "INPUT": QgsProcessingFeatureSourceDefinition(
                    inputLyr.sourceName(), not boolVar
                ),  # boolVar recebe o contrario da checkbox de feições selecionadas
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
        )

        return False

    def reprojectLayer(self, layer, crs, context, feedback)->QgsVectorLayer:
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
    ) -> QgsVectorLayer:
        """Cria linhas verticais e horizontais do grid"""
        # Criar camada de linhas
        fields = QgsFields()
        fields.append(QgsField("tipo_grid", QVariant.String))
        fields.append(QgsField("direcao", QVariant.String))
        
        layer = QgsVectorLayer(f"LineString?crs={CRS.authid()}", "grid", "memory")
        layer.dataProvider().addAttributes(fields)
        layer.updateFields()
        
        features = []
        
        # Criar linhas verticais
        x = xmin
        while x <= xmax:
            # Criar a linha
            line = QgsFeature(fields)
            line.setGeometry(QgsGeometry.fromPolylineXY([
                QgsPointXY(x, ymin),
                QgsPointXY(x, ymax)
            ]))
            
            # Definir atributos
            is_master = abs(x % (10 * hGridSize)) < 0.1
            line.setAttribute("tipo_grid", "master" if is_master else "regular")
            line.setAttribute("direcao", "vertical")
            
            features.append(line)
            x += hGridSize
        
        # Criar linhas horizontais
        y = ymin
        while y <= ymax:
            # Criar a linha
            line = QgsFeature(fields)
            line.setGeometry(QgsGeometry.fromPolylineXY([
                QgsPointXY(xmin, y),
                QgsPointXY(xmax, y)
            ]))
            
            # Definir atributos
            is_master = abs(y % (10 * vGridSize)) < 0.1
            line.setAttribute("tipo_grid", "master" if is_master else "regular")
            line.setAttribute("direcao", "horizontal")
            
            features.append(line)
            y += vGridSize
        
        # Adicionar todas as features
        layer.dataProvider().addFeatures(features)
        
        return layer

    def generateLatLonTicks(self, frameLayer, utm, scale, context, feedback):
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

            xsize = abs(xmax - xmin) / 5
            ysize = abs(ymax - ymin) / 5

            xTicks = (xmin + i * xsize for i in range(6))
            yTicks = (ymin + i * ysize for i in range(6))
            for x, y in product(xTicks, yTicks):
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

    def generateGridNumberPoints(self, frameLayer, utm, gridSize, context, feedback):
        """Gera pontos com os números do grid"""
        fields = QgsFields()
        fields.append(QgsField("numero", QVariant.String))
        fields.append(QgsField("direcao", QVariant.String))  # E ou N
        
        points = []
        MIN_CELL_COVERAGE = 0.85  # 85% de cobertura mínima para células nas bordas
        
        for feat in frameLayer.getFeatures():
            if feedback.isCanceled():
                break
                
            geom = feat.geometry()
            bbox = geom.boundingBox()
            
            # Calcular posições desejadas a 1/3 e 2/3 da moldura
            width = bbox.width()
            height = bbox.height()
            
            # Posições desejadas
            target_x = [
                bbox.xMinimum() + width/3,
                bbox.xMinimum() + 2*width/3
            ]
            target_y = [
                bbox.yMinimum() + height/3,
                bbox.yMinimum() + 2*height/3
            ]
            
            # Encontrar linhas de grid mais próximas das posições desejadas
            grid_lines_x = []
            for x_target in target_x:
                grid_x = round(x_target / gridSize) * gridSize
                if bbox.xMinimum() <= grid_x <= bbox.xMaximum():
                    grid_lines_x.append(grid_x)
            
            grid_lines_y = []
            for y_target in target_y:
                grid_y = round(y_target / gridSize) * gridSize
                if bbox.yMinimum() <= grid_y <= bbox.yMaximum():
                    grid_lines_y.append(grid_y)
                
            # Para cada linha vertical selecionada
            for grid_x in grid_lines_x:
                # Garantir que comece exatamente no primeiro grid dentro da moldura
                y_start = math.ceil(bbox.yMinimum() / gridSize) * gridSize
                y_end = math.floor(bbox.yMaximum() / gridSize) * gridSize
                
                for grid_y in range(int(y_start - gridSize), int(y_end + 2*gridSize), int(gridSize)):
                    cell_bottom = grid_y
                    cell_top = grid_y + gridSize
                    
                    # Verificar se é uma célula de borda (primeira ou última)
                    is_border_cell = (cell_bottom < bbox.yMinimum() or cell_top > bbox.yMaximum())
                    
                    # Se for célula de borda, calcular cobertura
                    if is_border_cell:
                        cell_height = min(cell_top, bbox.yMaximum()) - max(cell_bottom, bbox.yMinimum())
                        coverage = cell_height / gridSize
                        if coverage < MIN_CELL_COVERAGE:
                            continue
                    
                    # Só criar ponto se o centro da célula estiver dentro da moldura
                    point_y = grid_y + gridSize/2
                    if bbox.yMinimum() <= point_y <= bbox.yMaximum():
                        grid_number = str(int((point_y / 1000) % 100)).zfill(2)  # Usa a coordenada N para pontos E
                        point = QgsFeature(fields)
                        point.setGeometry(QgsGeometry.fromPointXY(QgsPointXY(grid_x, point_y)))
                        point.setAttribute("numero", grid_number)
                        point.setAttribute("direcao", "E")
                        points.append(point)
            
            # Para cada linha horizontal selecionada
            for grid_y in grid_lines_y:
                # Garantir que comece exatamente no primeiro grid dentro da moldura
                x_start = math.ceil(bbox.xMinimum() / gridSize) * gridSize
                x_end = math.floor(bbox.xMaximum() / gridSize) * gridSize
                
                for grid_x in range(int(x_start - gridSize), int(x_end + 2*gridSize), int(gridSize)):
                    cell_left = grid_x
                    cell_right = grid_x + gridSize
                    
                    # Verificar se é uma célula de borda (primeira ou última)
                    is_border_cell = (cell_left < bbox.xMinimum() or cell_right > bbox.xMaximum())
                    
                    # Se for célula de borda, calcular cobertura
                    if is_border_cell:
                        cell_width = min(cell_right, bbox.xMaximum()) - max(cell_left, bbox.xMinimum())
                        coverage = cell_width / gridSize
                        if coverage < MIN_CELL_COVERAGE:
                            continue
                    
                    # Só criar ponto se o centro da célula estiver dentro da moldura
                    point_x = grid_x + gridSize/2
                    if bbox.xMinimum() <= point_x <= bbox.xMaximum():
                        grid_number = str(int((point_x / 1000) % 100)).zfill(2)  # Usa a coordenada E para pontos N
                        point = QgsFeature(fields)
                        point.setGeometry(QgsGeometry.fromPointXY(QgsPointXY(point_x, grid_y)))
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
        return  help().helpUrl(self.name())


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

