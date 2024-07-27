from qgis.core import (
    QgsProcessingAlgorithm,
    QgsProcessingParameterVectorLayer,
    QgsProcessingParameterNumber,
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
)
from qgis.PyQt.QtCore import QVariant, QCoreApplication


class CreateCustomPolygons(QgsProcessingAlgorithm):
    INPUT_LAYER = "INPUT_LAYER"
    SIDE_LENGTH = "SIDE_LENGTH"
    ROUNDING_FACTOR = "ROUNDING_FACTOR"
    OUTPUT_LAYER = "OUTPUT_LAYER"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER,
                "Input Polygon Layer",
                [QgsProcessing.TypeVectorPolygon],
            )
        )

        self.addParameter(
            QgsProcessingParameterNumber(
                self.SIDE_LENGTH,
                "Side Length of Polygons",
                type=QgsProcessingParameterNumber.Double,
                defaultValue=0.125,
            )
        )

        self.addParameter(
            QgsProcessingParameterNumber(
                self.ROUNDING_FACTOR,
                "Rounding Factor",
                type=QgsProcessingParameterNumber.Double,
                defaultValue=0.015,
            )
        )

        self.addParameter(
            QgsProcessingParameterFeatureSink(
                self.OUTPUT_LAYER, "Output Layer", QgsProcessing.TypeVectorPolygon
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        input_layer = self.parameterAsVectorLayer(parameters, self.INPUT_LAYER, context)
        side_length = self.parameterAsDouble(parameters, self.SIDE_LENGTH, context)
        rounding_factor = self.parameterAsDouble(
            parameters, self.ROUNDING_FACTOR, context
        )

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
        return self.tr("O algoritmo ...")

    def createInstance(self):
        return CreateCustomPolygons()
