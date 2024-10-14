from qgis.core import (
    QgsProcessingAlgorithm,
    QgsProcessingParameterVectorLayer,
    QgsProcessingParameterEnum,
    QgsProcessingParameterFeatureSink,
    QgsVectorLayer,
    QgsFeature,
    QgsGeometry,
    QgsPointXY,
    QgsField,
    QgsFields,
    QgsProject,
    QgsProcessing,
    QgsWkbTypes,
    QgsFeatureSink,
    QgsProcessingParameterNumber
)
from qgis.PyQt.QtCore import QVariant, QCoreApplication

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help


class CreateCustomPolygons(QgsProcessingAlgorithm):
    INPUT_LAYER = "INPUT_LAYER"
    SCALE = "SCALE"
    ROUNDING_FACTOR = "ROUNDING_FACTOR"
    OUTPUT_LAYER = "OUTPUT_LAYER"

    SCALE_OPTIONS = ["25.000", "50.000", "100.000", "250.000"]
    SIDE_LENGTH_MAP = {
        0: 0.125,   # 25.000
        1: 0.250,   # 50.000
        2: 0.500,   # 100.000
        3: 1.250    # 250.000
    }

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER,
                "Polígono de entrada",
                [QgsProcessing.TypeVectorPolygon],
            )
        )

        self.addParameter(
            QgsProcessingParameterEnum(
                self.SCALE,
                "Escala do produto desejada",
                options=self.SCALE_OPTIONS,
                defaultValue=0,  # Default to 25.000
            )
        )

        self.addParameter(
            QgsProcessingParameterNumber(
                self.ROUNDING_FACTOR,
                "Fator de arredondamento",
                type=QgsProcessingParameterNumber.Double,
                defaultValue=0.015,
            )
        )

        self.addParameter(
            QgsProcessingParameterFeatureSink(
                self.OUTPUT_LAYER, "Camada de saída", QgsProcessing.TypeVectorPolygon
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        input_layer = self.parameterAsVectorLayer(parameters, self.INPUT_LAYER, context)
        scale_index = self.parameterAsEnum(parameters, self.SCALE, context)
        side_length = self.SIDE_LENGTH_MAP[scale_index]
        rounding_factor = self.parameterAsDouble(parameters, self.ROUNDING_FACTOR, context)

        (sink, dest_id) = self.parameterAsSink(
            parameters,
            self.OUTPUT_LAYER,
            context,
            input_layer.fields(),
            QgsWkbTypes.Polygon,
            input_layer.sourceCrs(),
        )

        new_features = []

        for feature in input_layer.getFeatures():
            geom = feature.geometry()
            centroid = geom.centroid().asPoint()
            rounded_lat = self.round_to_nearest_multiple(centroid.y(), rounding_factor)
            rounded_lon = self.round_to_nearest_multiple(centroid.x(), rounding_factor)
            polygon = self.create_square_polygon(rounded_lat, rounded_lon, side_length)

            if geom.intersects(polygon) or geom.contains(polygon):
                new_feature = QgsFeature()
                new_feature.setGeometry(polygon)
                new_feature.setAttributes(feature.attributes())
                new_features.append(new_feature)

        sink.addFeatures(new_features, QgsFeatureSink.FastInsert)

        return {self.OUTPUT_LAYER: dest_id}

    def create_square_polygon(self, lat, lon, side_length):
        half_side = side_length / 2
        points = [
            QgsPointXY(lon - half_side, lat - half_side),
            QgsPointXY(lon + half_side, lat - half_side),
            QgsPointXY(lon + half_side, lat + half_side),
            QgsPointXY(lon - half_side, lat + half_side),
            QgsPointXY(lon - half_side, lat - half_side),  # Closing the polygon
        ]
        polygon = QgsGeometry.fromPolygonXY([points])

        return polygon

    def round_to_nearest_multiple(self, value, multiple):
        return round(value / multiple) * multiple

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def name(self):
        return "createcustompolygons"

    def displayName(self):
        return self.tr("Cria Articulações Não-SCN")

    def group(self):
        return self.tr("Auxiliar")

    def groupId(self):
        return "auxiliar"

    def shortHelpString(self):
        return self.tr(
        """Este algoritmo gera polígonos personalizados com base nas coordenadas centróides dos polígonos da camada de entrada.


        O usuário pode selecionar a escala desejada (25.000, 50.000, 100.000, 250.000), que define a escala do produto sistemático desejado.
        
        
        O algoritmo ajusta automaticamente a posição do polígono de modo a englobar o máximo do polígono de entrada.
        
        
        O polígono resultante é a moldura em enquadramento especial que pode ser utilizada no Ferramenta de Edição para geração de produtos em enquadramento especial."""
    )


    def createInstance(self):
        return CreateCustomPolygons()
