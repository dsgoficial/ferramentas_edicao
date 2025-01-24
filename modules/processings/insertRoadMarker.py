import math
import os

from qgis import processing
from qgis.core import (
    QgsCoordinateReferenceSystem,
    QgsField,
    QgsCoordinateTransformContext,
    QgsDistanceArea,
    QgsFeature,
    QgsFeatureRequest,
    QgsGeometry,
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProperty,
    QgsProcessingParameterMultipleLayers,
    QgsProcessingParameterVectorLayer,
    NULL,
    QgsUnitTypes,
    QgsProcessingParameterEnum,
    QgsProcessingParameterFeatureSink,
    QgsFeatureSink,
    QgsVectorLayer,
    QgsProcessingMultiStepFeedback,
)
from qgis.PyQt.QtCore import QCoreApplication, QVariant

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help

class InsertRoadMarker(QgsProcessingAlgorithm):
    # Input parameters
    INPUT_FRAME = "INPUT_FRAME"
    SCALE = "SCALE"
    ROAD = "ROAD"
    MARKER = "MARKER"

    # Constantes de configuração
    NEAR_START_PERCENTAGE = 0.15  # 15% do comprimento
    NEAR_END_PERCENTAGE = 0.85    # 85% do comprimento
    FRAME_DISTANCE_FACTOR = 0.006  # Distância mínima da moldura
    SIGLA_OFFSET_FACTOR = 0.008   # Deslocamento entre siglas
    MIN_LENGTH_FACTOR = 0.01  # Comprimento mínimo para inserir identificador
    SMALL_LENGTH_FACTOR = 0.2   # X = 20% da escala
    MEDIUM_LENGTH_FACTOR = 0.3  # Y = 30% da escala
    LARGE_LENGTH_FACTOR = 0.5   # Z = 40% da escala
    VERY_LARGE_LENGTH_FACTOR = 0.6  # W = 50% da escala

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.ROAD,
                self.tr("Selecionar camada de via de deslocamento"),
                [QgsProcessing.TypeVectorLine],
                optional=False,
                defaultValue="infra_via_deslocamento_l",
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.MARKER,
                self.tr("Selecionar camada de identificador trecho rodoviário"),
                [QgsProcessing.TypeVectorPoint],
                optional=False,
                defaultValue="edicao_identificador_trecho_rod_p",
            )
        )

        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_FRAME,
                self.tr("Selecionar camada de moldura"),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue="aux_moldura_a",
            )
        )

        self.addParameter(
            QgsProcessingParameterEnum(
                self.SCALE,
                self.tr("Selecione a escala de edição:"),
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

    def processAlgorithm(self, parameters, context, feedback):
        layer_road = self.parameterAsVectorLayer(parameters, self.ROAD, context)
        layer_marker = self.parameterAsVectorLayer(parameters, self.MARKER, context)
        gridScaleParam = self.parameterAsInt(parameters, self.SCALE, context)
        self.gridScaleDict = {
            0: 5000,
            1: 10000,
            2: 25000,
            3: 50000,
            4: 100000,
            5: 250000,
        }
        scale = self.gridScaleDict[gridScaleParam]

        # Converter distâncias baseadas na escala e CRS
        is_geographic = layer_road.crs().isGeographic()
        
        def convert_distance(dist):
            if is_geographic:
                d = QgsDistanceArea()
                d.setSourceCrs(
                    QgsCoordinateReferenceSystem("EPSG:3857"),
                    QgsCoordinateTransformContext(),
                )
                return d.convertLengthMeasurement(dist, QgsUnitTypes.DistanceDegrees)
            return dist

        # Calcular distâncias baseadas na escala
        frame_distance = convert_distance(scale * self.FRAME_DISTANCE_FACTOR)
        sigla_offset = convert_distance(scale * self.SIGLA_OFFSET_FACTOR)
        
        # Limiares de comprimento
        min_length = convert_distance(scale * self.MIN_LENGTH_FACTOR)
        small_length = convert_distance(scale * self.SMALL_LENGTH_FACTOR)
        medium_length = convert_distance(scale * self.MEDIUM_LENGTH_FACTOR)
        large_length = convert_distance(scale * self.LARGE_LENGTH_FACTOR)
        very_large_length = convert_distance(scale * self.VERY_LARGE_LENGTH_FACTOR)

        frameLayer = self.parameterAsVectorLayer(parameters, self.INPUT_FRAME, context)
        frameLayer = self.runAddCount(frameLayer, feedback=feedback)
        self.runCreateSpatialIndex(frameLayer, feedback=feedback)

        frameLinesLayer = self.convertPolygonToLines(frameLayer)
        self.runCreateSpatialIndex(frameLinesLayer, feedback=feedback)

        # Filtrar rodovias com sigla não nula e mesclar por sigla
        layer_road = self.runAddCount(layer_road, feedback=feedback)
        notNullRoads = self.filterNotNullRoads(layer_road)
        mergedRoads = self.mergeRoads(notNullRoads)
        self.runCreateSpatialIndex(mergedRoads, feedback=feedback)

        # Clipa rodovias dentro da moldura
        clippedRoads = self.clipRoads(mergedRoads, frameLayer)
        self.runCreateSpatialIndex(clippedRoads, feedback=feedback)

        # Intersectar rodovias entre si
        intersectedRoads = self.intersectRoads(clippedRoads, feedback=feedback)
        self.runCreateSpatialIndex(intersectedRoads, feedback=feedback)

        # Intersectar rodovias com a moldura
        intersectedRoadsFrame = self.clipLines(intersectedRoads, frameLinesLayer, feedback=feedback)
        self.runCreateSpatialIndex(intersectedRoadsFrame, feedback=feedback)

        # Para cada segmento, criar pontos baseado no comprimento
        points = self.createPoints(intersectedRoadsFrame, {
            'min_length': min_length,
            'small_length': small_length,
            'medium_length': medium_length,
            'large_length': large_length,
            'very_large_length': very_large_length,
            'near_start': self.NEAR_START_PERCENTAGE,
            'near_end': self.NEAR_END_PERCENTAGE
        })
        
        # Remover pontos próximos à moldura
        points = self.removePointsNearFrame(points, frameLinesLayer, frame_distance)
        
        # Criar identificadores para múltiplas siglas
        self.createMultipleMarkers(layer_marker, points, sigla_offset)

        return {}

    def filterNotNullRoads(self, layer):
        """Filtra rodovias com sigla não nula"""
        return processing.run(
            "native:extractbyattribute",
            {
                "INPUT": layer,
                "FIELD": "sigla",
                "OPERATOR": 9,  # is not null
                "VALUE": "",
                "OUTPUT": "memory:",
            },
        )["OUTPUT"]

    def mergeRoads(self, layer):
        """Mescla rodovias por sigla"""
        return processing.run(
            "native:dissolve",
            {
                "INPUT": layer,
                "FIELD": ["sigla", "tipo"],
                "OUTPUT": "memory:",
            },
        )["OUTPUT"]

    def clipRoads(self, roads, frame):
        """Intersecta rodovias com moldura"""
        return processing.run(
            "native:clip",
            {
                "INPUT": roads,
                "OVERLAY": frame,
                "OUTPUT": "memory:",
            },
        )["OUTPUT"]

    def createPoints(self, layer, params):
        """Cria pontos ao longo dos segmentos baseado no comprimento"""
        points = []
        
        for feat in layer.getFeatures():
            length = feat.geometry().length()
            sigla = feat.attribute("sigla")
            
            if length < params['min_length']:
                continue
                
            if length <= params['small_length']:
                # Um ponto no centro
                points.append(self.createPointAtDistance(feat, 0.5, sigla))
                
            elif length <= params['medium_length']:
                # Dois pontos em 1/4 e 3/4
                points.append(self.createPointAtDistance(feat, 0.25, sigla))
                points.append(self.createPointAtDistance(feat, 0.75, sigla))
                
            elif length <= params['large_length']:
                # Três pontos: próximo início, centro e próximo fim
                points.append(self.createPointAtDistance(feat, params['near_start'], sigla))
                points.append(self.createPointAtDistance(feat, 0.5, sigla))
                points.append(self.createPointAtDistance(feat, params['near_end'], sigla))
                
            elif length <= params['very_large_length']:
                # Quatro pontos: início, 2/5, 3/5 e fim
                points.append(self.createPointAtDistance(feat, params['near_start'], sigla))
                points.append(self.createPointAtDistance(feat, 0.4, sigla))
                points.append(self.createPointAtDistance(feat, 0.6, sigla))
                points.append(self.createPointAtDistance(feat, params['near_end'], sigla))
                
            else:
                # Cinco pontos: início, 1/3, meio, 2/3 e fim
                points.append(self.createPointAtDistance(feat, params['near_start'], sigla))
                points.append(self.createPointAtDistance(feat, 0.33, sigla))
                points.append(self.createPointAtDistance(feat, 0.5, sigla))
                points.append(self.createPointAtDistance(feat, 0.67, sigla))
                points.append(self.createPointAtDistance(feat, params['near_end'], sigla))
                
        return points

    def createPointAtDistance(self, feature, distance_fraction, sigla):
        """Cria um ponto a uma fração específica do comprimento da linha"""
        geom = feature.geometry()
        length = geom.length()
        point = geom.interpolate(length * distance_fraction)
        tipo = feature.attribute("tipo")
        return {
            'point': point,
            'sigla': sigla,
            'line_geom': geom,
            'tipo': tipo
        }

    def removePointsNearFrame(self, points, frame_lines, min_distance):
        """Remove pontos muito próximos da moldura"""
        filtered_points = []
        
        for point in points:
            is_far_enough = True
            for line in frame_lines.getFeatures():
                if point['point'].distance(line.geometry()) < min_distance:
                    is_far_enough = False
                    break
            if is_far_enough:
                filtered_points.append(point)
                
        return filtered_points

    def createMultipleMarkers(self, layer_marker, points, offset):
        """Cria identificadores para cada sigla com offset ao longo da linha"""
        layer_marker.startEditing()
        layer_marker.beginEditCommand("Criando pontos")

        for point in points:
            siglas = point['sigla'].split(';')
            num_siglas = len(siglas)
            
            # Calcular distâncias de offset para cada lado do ponto original
            total_offset = offset * (num_siglas - 1)
            start_offset = -total_offset / 2
            
            line_geom = point['line_geom']
            
            for i, sigla in enumerate(siglas):
                feat = QgsFeature(layer_marker.fields())
                
                # Calcular posição com offset
                current_offset = start_offset + (i * offset)
                
                if i == 0:
                    # Primeiro ponto usa a geometria original
                    new_point = QgsGeometry(point['point'])
                else:
                    # Para pontos adicionais, encontrar o ponto mais próximo na linha
                    # a uma distância current_offset do ponto original
                    distance = line_geom.lineLocatePoint(point['point'])
                    new_point = QgsGeometry(line_geom.interpolate(distance + current_offset))
                
                feat.setGeometry(new_point)
                
                # Definir atributos
                try:
                    name = sigla.split('-')[1]
                    feat.setAttribute('sigla', name)
                    
                    # Definir jurisdição
                    if sigla.split('-')[0] == 'BR':
                        jurisdicao = 1
                    else:
                        jurisdicao = 2
                    feat.setAttribute('jurisdicao', jurisdicao)
                    
                    feat.setAttribute('visivel', 1)
                    
                    feat.setAttribute('tipo', point['tipo'])

                except IndexError:
                    continue
                
                layer_marker.addFeature(feat)
    
        layer_marker.endEditCommand()

    def convertPolygonToLines(self, inputLayer):
        """Converte polígono em linhas"""
        output = processing.run(
            "native:polygonstolines",
            {"INPUT": inputLayer, "OUTPUT": "TEMPORARY_OUTPUT"},
        )
        return output["OUTPUT"]

    def intersectRoads(self, roads, feedback):
            """Intersecta as rodovias entre si para obter os segmentos"""
            # Primeiro, explodir linhas multi-parte em single-parte
            single_parts = processing.run(
                "native:multiparttosingleparts",
                {
                    "INPUT": roads,
                    "OUTPUT": "memory:"
                }
            )["OUTPUT"]
            self.runCreateSpatialIndex(single_parts, feedback=feedback)

            # Intersectar linhas
            split_lines = processing.run(
                "native:splitwithlines",
                {
                    "INPUT": single_parts,
                    "LINES": single_parts,
                    "OUTPUT": "memory:"
                }
            )["OUTPUT"]
            
            return split_lines

    def clipLines(self, inputLayer, segmentLayer, feedback):
        output = processing.run(
            "native:splitwithlines",
            {"INPUT": inputLayer, "LINES": segmentLayer, "OUTPUT": "TEMPORARY_OUTPUT"},
            feedback=feedback,
        )
        return output["OUTPUT"]

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

    def runCreateSpatialIndex(self, inputLyr, feedback):
        processing.run(
            "native:createspatialindex", {"INPUT": inputLyr}, feedback=feedback
        )

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return InsertRoadMarker()

    def name(self):
        return "insertroadmarker"

    def displayName(self):
        return self.tr("Insere identificador trecho rodoviário")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return  help().helpUrl(self.name())
