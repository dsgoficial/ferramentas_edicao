from qgis.core import (
    QgsProject,
    QgsProcessing,
    QgsCoordinateReferenceSystem,
    QgsCoordinateTransform,
    QgsProcessingAlgorithm,
    QgsProcessingParameterVectorLayer,
    QgsProcessingParameterMultipleLayers,
    QgsProcessingParameterString,
    QgsProcessingParameterCrs,
    QgsFeature,
    QgsPointXY,
    NULL,
)
from qgis.PyQt.QtCore import QVariant, QCoreApplication

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help


class ReprojectAttributesAlgorithm(QgsProcessingAlgorithm):
    INPUT_LAYERS = "INPUT_LAYERS"
    LABEL_X = "LABEL_X"
    LABEL_Y = "LABEL_Y"
    SRC_EPSG = "SRC_EPSG"
    DST_EPSG = "DST_EPSG"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterMultipleLayers(
                self.INPUT_LAYERS,
                "Input Vector Layers",
                QgsProcessing.TypeVectorAnyGeometry,
            )
        )
        self.addParameter(
            QgsProcessingParameterString(
                self.LABEL_X, "Label X", defaultValue="label_x"
            )
        )
        self.addParameter(
            QgsProcessingParameterString(
                self.LABEL_Y, "Label Y", defaultValue="label_y"
            )
        )
        self.addParameter(
            QgsProcessingParameterCrs(
                self.SRC_EPSG, "Source EPSG", defaultValue="EPSG:4674"
            )
        )
        self.addParameter(
            QgsProcessingParameterCrs(
                self.DST_EPSG, "Destination EPSG", defaultValue="EPSG:31981"
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        layers = self.parameterAsLayerList(parameters, self.INPUT_LAYERS, context)
        label_x = self.parameterAsString(parameters, self.LABEL_X, context)
        label_y = self.parameterAsString(parameters, self.LABEL_Y, context)
        src_epsg = self.parameterAsCrs(parameters, self.SRC_EPSG, context)
        dst_epsg = self.parameterAsCrs(parameters, self.DST_EPSG, context)

        src_crs = QgsCoordinateReferenceSystem(src_epsg.authid())
        dst_crs = QgsCoordinateReferenceSystem(dst_epsg.authid())
        transform = QgsCoordinateTransform(src_crs, dst_crs, QgsProject.instance())

        for layer in layers:
            feedback.pushInfo(f"{layer.name()}")
            if (
                not layer.fields().indexFromName(label_x) != -1
                or not layer.fields().indexFromName(label_y) != -1
            ):
                feedback.pushInfo(
                    f"Skipping layer {layer.name()} because it does not have both attributes {label_x} and {label_y}."
                )
                continue

            if not layer.isEditable():
                feedback.pushInfo(f"Starting editing on layer {layer.name()}.")
                layer.startEditing()

            for feature in layer.getFeatures():
                x_value = feature.attribute(label_x)
                y_value = feature.attribute(label_y)

                if x_value == NULL or y_value == NULL:
                    continue

                try:
                    x_value = float(x_value)
                    y_value = float(y_value)
                except (TypeError, ValueError):
                    feedback.pushInfo(
                        f"Skipping feature {feature.id()} due to invalid number format in attributes."
                    )
                    continue

                point = QgsPointXY(x_value, y_value)
                reprojected_point = transform.transform(point)
                feature.setAttribute(
                    layer.fields().indexFromName(label_x), reprojected_point.x()
                )
                feature.setAttribute(
                    layer.fields().indexFromName(label_y), reprojected_point.y()
                )
                layer.updateFeature(feature)

        return {}

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def name(self):
        return "reprojectattributes"

    def displayName(self):
        return self.tr("Reprojeta atributos")

    def group(self):
        return self.tr("Auxiliar")

    def groupId(self):
        return "auxiliar"

    def shortHelpString(self):
        return help().shortHelpString(self.name())

    def helpUrl(self):
        return  help().helpUrl(self.name())


    def createInstance(self):
        return ReprojectAttributesAlgorithm()
