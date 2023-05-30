from math import ceil, floor
from qgis import processing
from qgis.core import (
    QgsCoordinateReferenceSystem,
    QgsCoordinateTransform,
    QgsCoordinateTransformContext,
    QgsFeature,
    QgsField,
    QgsFields,
    QgsGeometry,
    QgsRectangle,
    QgsVectorLayer,
    QgsPoint,
)
from qgis.PyQt.QtCore import QVariant

from ..modules.mapBuilder.components.componentUtils import OBB
from ..modules.mapBuilder.factories.gridFactory.gridFactory import GridFactory


class MapBuildControllerUtils:
    """Utilities for mapBuilderController, specially when
    handling the mapGrid
    """

    def createLayerFromLatLong(
        self, grid: GridFactory, lon: int, lat: int, scale: int
    ) -> tuple[QgsVectorLayer, QgsFeature]:
        """Creates a feature centered at lat/lon with size compatible with scale,
        and a vector layer containing this feature.
        Args:
            grid: Grid factory
            lat: Latitude
            lon: Longitude
            scale: Scale
        Returns:
            A tuple containing the layer and the feature that corresponds to informed lat/lon/scale
        """
        spacingX = grid.getSpacingX(scale)
        xMin = lon - spacingX / 2
        xMax = lon + spacingX / 2
        spacingY = grid.getSpacingY(scale)
        yMin = lat - spacingY / 2
        yMax = lat + spacingY / 2
        rect = QgsRectangle(xMin, yMin, xMax, yMax)
        geom = QgsGeometry.fromRect(rect)
        layer, feat = self.createLayerFromGeom("mapExtents", geom)
        return layer, feat

    def createLayerFromGeom(
        self,
        name: str,
        geom: QgsGeometry,
        layerType: str = "Multipolygon",
        crsAuthId: str = "4674",
    ) -> tuple[QgsVectorLayer, QgsFeature]:
        """Creates a feature and vector layer.
        Args:
            name: name of the VectorLayer to be created
            geom: geometry to be inserted in the feat / layer
            layerType: layer type (Point, Multipoint, ...)
            crsAuthId: Coordinate Reference System for the layer
        Returns:
            A tuple containing the layer and the feature related to geom
        """
        layer = QgsVectorLayer(
            "%s?crs=EPSG:%s" % (layerType, crsAuthId), name, "memory"
        )
        if not layer.isValid():
            return None
        else:
            provider = layer.dataProvider()
            fields = QgsFields()
            fields.append(QgsField("inom", QVariant.String))
            fields.append(QgsField("mi", QVariant.String))
            fields.append(QgsField("id", QVariant.String))
            provider.addAttributes(fields)
            layer.updateFields()

            layer.startEditing()
            feat = QgsFeature(fields)
            feat["id"] = "1"
            feat.setGeometry(geom)
            provider.addFeatures([feat])

            layer.commitChanges()
            return layer, feat

    def createLayerFromWkt(self, polygonWkt: str) -> tuple[QgsVectorLayer, QgsFeature]:
        """Creates a feature and vector layer from a wkt string.
        Args:
            polgonWkt: WKT string representation of the polygon

        """
        geom = QgsGeometry.fromWkt(polygonWkt)
        layer, feat = self.createLayerFromGeom("mapExtents", geom)
        return layer, feat

    def getInfoOmMap(self, polygonWkt: str, epsg: str) -> tuple[int, float, float]:
        """Gets the centroid of a from a wkt geometry and its desired scale representation.
        Uses the OBB class to extract the orientedMinimumBoundingBox (QGIS version is broken until 3.22)
        Args:
            polgonWkt: WKT string representation of the polygon
            epsg: Destination EPSG, eg. 31982
        Returns:
            Tuple of lat / long / scale related to this polygon

        """
        geom = QgsGeometry.fromWkt(polygonWkt)
        _, _, angle, _, _ = geom.orientedMinimumBoundingBox()
        obb_native = processing.run(
            "native:orientedminimumboundingbox",
            {
                "INPUT": self.createLayerFromWkt(polygonWkt)[0],
                "OUTPUT": "TEMPORARY_OUTPUT",
            },
        )
        orientedBbox = next(obb_native["OUTPUT"].getFeatures()).geometry()
        # orientedBbox = OBB.build_from_geom(geom).rectangle
        # orientedBbox = QgsGeometry.fromRect(orientedBbox)
        templateType, scale = self.getOmScale(orientedBbox, epsg)
        return templateType, scale, angle

    def getInfoOmMapGivenRotation(
        self, polygonWkt: str, epsg: str
    ) -> tuple[int, float, float]:
        """If the oriented bounding box is given by the user, it is used (instead of being calculated)
        to get the template type for the OM map and the scale.
        Args:
            polgonWkt: WKT string representation of the polygon
            epsg: Destination EPSG, eg. 31982
        Returns:
            Tuple of lat / long / scale related to this polygon
        """
        orientedBbox = QgsGeometry.fromWkt(polygonWkt)
        templateType, scale = self.getOmScale(orientedBbox, epsg)
        return templateType, scale

    def getEpsg(self, hemisphere: str, timeZone: str) -> int:
        """Calculates the epsg by using the hemisphere and the timezone
        Args:
            hemisphere: N or S
            timezone: Integer / String from -12 to 12
        Returns:
            EPSG (int)
        """
        timeZone = int(timeZone)
        epsg = "319"
        if hemisphere == "N":
            epsg = epsg + str(72 + timeZone - 18)
        elif hemisphere == "S":
            epsg = epsg + str(78 + timeZone - 18)
        return int(epsg)

    def getOmScale(self, orientedBboxGeom: QgsGeometry, epsg: str) -> float:
        """Returns the OM map scale based on the geometry's bounding box. The choice
        is made by comparing the bbox's dimensions with the map dimensions from the 2 OM map templates.
        Also returns which template is the best suited for the bbox
        Args:
            orientedBboxGeom: the minimum oriented geometry from mapAreaFeature bounding box
            epsg: Destination EPSG to calculate width / height in meters, eg. 31982
        Returns:
            The template type (1 or 2) and the optimal scale
        """
        layout1Dims = (1.025, 0.865)  # For scales < 1:500
        layout2Dims = (0.550, 0.550)  # For scales > 1:500
        orientedBboxGeom = QgsGeometry(orientedBboxGeom)  # Copy
        transformer = QgsCoordinateTransform(
            QgsCoordinateReferenceSystem("EPSG:4674"),
            QgsCoordinateReferenceSystem(f"EPSG:{epsg}"),
            QgsCoordinateTransformContext(),
        )
        orientedBboxGeom.transform(transformer)
        comp_0 = orientedBboxGeom.vertexAt(0)
        comp_1 = orientedBboxGeom.vertexAt(1)
        comp_2 = orientedBboxGeom.vertexAt(3)
        dim1 = QgsPoint.distance(comp_0, comp_1)
        dim2 = QgsPoint.distance(comp_0, comp_2)
        if dim1 > dim2:
            width = dim1
            height = dim2
        else:
            width = dim2
            height = dim1
        # width = orientedBboxGeom.boundingBox().width()
        # height = orientedBboxGeom.boundingBox().height()
        # templateType = 1 if max(width, height) > 2500 else 2 # For the scale 1:500, the layout2 is approx. 2.5km wide
        scale = max(width / layout1Dims[0], height / layout1Dims[1])
        scale = ceil(scale / 100) * 100
        templateType = 1
        """
        if scale <= 500:
            templateType = 2
            scale = max(width / layout2Dims[0], height / layout2Dims[1])
            scale = ceil(scale / 100) * 100
            maxScale = ceil(1 / (100*self.getMaxScaleOmMap())) * 100
            scale = max(scale, maxScale)
        """
        return templateType, scale

    def getMaxScaleOmMap(self) -> float:
        """Returns an maximal map scale based on pixel size and image quality.
        Args:
            None
        Returns:
            The minimum scale
        """
        imgQuality = 1  # Between 0 and 1
        pixSize = 1  # Meters
        return (imgQuality + 1) / (500 * pixSize)
