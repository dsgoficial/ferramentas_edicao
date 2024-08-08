from pathlib import Path
from qgis.core import (
    QgsCoordinateReferenceSystem,
    QgsFeature,
    QgsFeatureRequest,
    QgsGeometry,
    QgsLayerTreeGroup,
    QgsPrintLayout,
    QgsProject,
    QgsRectangle,
    QgsVectorLayer,
    QgsPointXY,
)
from ....interfaces.iComponent import IComponent
from .componentUtils import ComponentUtils


class Localization(ComponentUtils, IComponent):
    def __init__(self, *args, **kwargs):
        self.stylesFolder = (
            Path(__file__).parent.parent / "resources" / "styles" / "localization"
        )
        self.shpFolder = Path(__file__).parent.parent / "resources" / "limits" / "2020"
        self.stateShpPath = self.shpFolder / "Estados_2020.shp"

    def build(
        self,
        composition: QgsPrintLayout,
        data: dict,
        mapAreaFeature: QgsFeature,
        showLayers: bool = False,
    ):
        mapIDsToBeDisplayed = []
        instance = QgsProject.instance()
        isInternational = bool(data.get("territorio_internacional"))

        # Creating layer for mapArea
        mapAreaBoundingBox = mapAreaFeature.geometry().boundingBox()
        mapAreaLayer = self.createGridRectangle(
            mapAreaBoundingBox, data, "localizationMapArea"
        )
        mapIDsToBeDisplayed.append(mapAreaLayer.id())

        uriPath = self.shpFolder / "Oceano_2020.shp"
        stylePath = self.stylesFolder / "oceano.qml"
        layerOcean = self.loadShapeLayer(uriPath, stylePath, "ocean")

        # Getting state layer
        uriPath = self.shpFolder / "Estados_2020.shp"
        stylePath = self.stylesFolder / "estados.qml"
        stateLayerBackground = self.loadShapeLayer(
            uriPath, stylePath, "backgroundstates"
        )
        mapExtents = self.getExtent(
            mapAreaFeature, stateLayerBackground, isInternational
        )
        # calcular escala
        if (
            len(self.estados) == 1 and mapExtents.area() < 0.5
        ):  # menor que 0.5 graus, considerar caso ilha
            mapExtents = self.getExtent2(mapAreaFeature)
        if (mapItem := composition.itemById("localization")) is not None:
            mapSize = mapItem.sizeWithUnits()
            mapItem.setFixedSize(mapSize)
            mapItem.zoomToExtent(mapExtents)
            mapItem.setCrs(QgsCoordinateReferenceSystem("EPSG:4674"))
            mapItem.refresh()
            self.scale = mapItem.scale()

        self.setupBackgroundLayer(stateLayerBackground)
        self.setLabel(stateLayerBackground, isInternational, mapExtents)

        uriPath = self.shpFolder / "Paises_2020.shp"
        stylePath = self.stylesFolder / "paises.qml"
        layerCountryArea = self.loadShapeLayer(uriPath, stylePath, "countries")
        self.setupCountryLayer(layerCountryArea)
        mapIDsToBeDisplayed.extend(
            [layerOcean.id(), layerCountryArea.id(), stateLayerBackground.id()]
        )

        layersToShow = [stateLayerBackground, layerCountryArea, layerOcean]

        self.updateComposition(composition, layersToShow, mapAreaLayer, mapExtents)
        # # Adding layers
        for layer in layersToShow:
            instance.addMapLayer(layer, False)

        instance.addMapLayer(mapAreaLayer, False)
        # Updating composition

        if showLayers:
            localizationGroupNode = QgsLayerTreeGroup("localization")
            localizationGroupNode.setItemVisibilityChecked(False)
            for layer in [mapAreaLayer, *layersToShow]:
                localizationGroupNode.addLayer(layer)
            root = instance.layerTreeRoot()
            root.addChildNode(localizationGroupNode)

        return mapIDsToBeDisplayed

    def getExtent(
        self,
        selectedFeature: QgsFeature,
        stateLayer: QgsVectorLayer,
        isInternational: bool,
    ) -> QgsRectangle:
        """Gets the component extents by checking intersections between selectedFeature and
        stateLayer.
        """
        self.estados = set()
        self.paises = set()
        geom = selectedFeature.geometry()
        geomBbox = geom.boundingBox()
        rectBounds = [geomBbox]
        request = QgsFeatureRequest().setFilterRect(geomBbox)
        for stateFeature in stateLayer.getFeatures(request):
            if not isInternational and stateFeature["SIGLA_PAIS"] != "BR":
                continue
            stateGeom = stateFeature.geometry()
            if stateGeom.isMultipart():
                parts = stateGeom.asGeometryCollection()
                for part in parts:
                    if geom.intersects(part):
                        self.estados.add(stateFeature["SIGLA_UF"])
                        self.paises.add(stateFeature["SIGLA_PAIS"])
                        rectBounds.append(part.boundingBox())
            elif geom.intersects(stateGeom):
                self.estados.add(stateFeature["SIGLA_UF"])
                self.paises.add(stateFeature["SIGLA_PAIS"])
                rectBounds.append(stateGeom.boundingBox())
        bound = rectBounds[0]
        if len(rectBounds) > 1:
            for stateBound in rectBounds[1:]:
                bound.combineExtentWith(stateBound)
        return bound

    def getExtent2(self, mapAreaFeature: QgsFeature):
        gridBound = mapAreaFeature.geometry().boundingBox()
        x_min, x_max = gridBound.xMinimum(), gridBound.xMaximum()
        delta = round(abs(x_max - x_min) * 60)
        angle_spliter = delta
        centroid = mapAreaFeature.geometry().centroid()
        x = centroid.asPoint().x()
        x_min = x - (1 / 60) * angle_spliter
        x_max = x + (1 / 60) * angle_spliter
        y = centroid.asPoint().y()
        y_min = y - (1 / 60) * angle_spliter
        y_max = y + (1 / 60) * angle_spliter
        return QgsRectangle(x_min, y_min, x_max, y_max)

    def createGridRectangle(
        self, mapBounds: QgsRectangle, data: dict, layerName: str
    ) -> QgsVectorLayer:
        """Creates the mapArea layer for this component by using mapBounds.
        Also sets its style.
        """
        productType = data.get("productType")
        mapBoundsLayer = self.createVectorLayerFromIter(
            layerName, [QgsGeometry.fromRect(mapBounds)]
        )
        if productType == "omMap":
            stylePath = self.stylesFolder / "localizationMapAreaForOmMap.qml"
        else:
            stylePath = self.stylesFolder / "localizationMapArea.qml"
        self.loadStyleToLayer(mapBoundsLayer, stylePath)
        return mapBoundsLayer

    def createStateRule(self, rootRule, label):
        """
        Creates a copy of the root rule and sets its filter expression based on the field SIGLA_UF
        """
        rule = rootRule.children()[0].clone()
        rule.setLabel(label)
        expression = " \"SIGLA_UF\" = '{}'".format(label)
        rule.setFilterExpression(expression)
        return rule

    def setupBackgroundLayer(self, stateLayer: QgsVectorLayer):
        """
        Sets symbol rules for background layer in localization component
        """
        stateLayer.startEditing()
        for f in stateLayer.getFeatures():
            if f["SIGLA_UF"] in self.estados:
                f["SELECT"] = 1
            if f["SIGLA_PAIS"] in self.paises:
                f["SHOW"] = 1
            stateLayer.updateFeature(f)
        stateLayer.commitChanges()
        stateLayer.triggerRepaint()

    def setupCountryLayer(self, countryLayer: QgsVectorLayer):
        countryLayer.startEditing()
        for f in countryLayer.getFeatures():
            if f["sigla"] in self.paises:
                f["SELECT"] = 1
            countryLayer.updateFeature(f)
        countryLayer.commitChanges()
        countryLayer.triggerRepaint()

    def setLabel(
        self, stateLayer: QgsVectorLayer, isInternational, mapExtents=QgsRectangle()
    ):
        """
        Sets label rules for layer in localization component
        """
        # Getting base rule
        if isInternational:
            # pass
            stateLayer.startEditing()
            for f in stateLayer.getFeatures():
                f["NOME"] = f["NOME"] + " - " + f["SIGLA_PAIS"]
                stateLayer.updateFeature(f)
            stateLayer.commitChanges()
        if mapExtents != QgsRectangle():
            stateLayer.startEditing()
            extent = QgsGeometry().fromRect(mapExtents)
            mapExtents = self.squareOutsideRectangle(mapExtents)
            request = QgsFeatureRequest().setFilterRect(mapExtents)
            for f in stateLayer.getFeatures(request):
                if len(self.estados) == 1 and f["SIGLA_UF"] in self.estados:
                    if (
                        mapExtents.area() < 0.5
                    ):  # menor que 0.5 graus, considerar caso ilha
                        f["SOLO"] = 1
                    stateLayer.updateFeature(f)
                    continue
                if f["SIGLA_PAIS"] not in self.paises:
                    continue
                intersectionGeometry = extent.intersection(f.geometry())
                pointGeom, radius = intersectionGeometry.poleOfInaccessibility(0.0001)
                if pointGeom.isNull():
                    continue
                maxChar = 15
                height = (
                    (2 / 1000) * self.scale / 111000
                )  # altura para caber uma letra, 2mm
                if len(f["NOME"]) > maxChar:
                    height *= 2.5
                pointPoI = pointGeom.asPoint()
                radius_m = radius * 111000
                diam_mm = 2 * 1000 * radius_m / self.scale
                # pode haver limitacao vertical, mas o rotulo ainda caber horizontalmente, por isso, verificar maior retangulo interno
                # para simplificar foi procurado maior retangulo interno centrado em um ponto (PoI) e altura fixa
                maxRect = self.largestRectangleOnPoint(
                    height, pointPoI, intersectionGeometry, 5
                )  # 5 graus deve pegar todos os estados
                maxRectWidth_m = maxRect.width() * 111000
                maxRectWidth_mm = 1000 * maxRectWidth_m / self.scale
                # maxWordLen = max([self.text_size_six_pt_in_mm(word) for word in f["NOME"].split(' ')])
                maxWordLen = self.text_size_six_pt_in_mm(
                    self.truncate_string(f["NOME"], maxChar)
                )
                pointRect = maxRect.center()
                tolerancia_deslocamento_mm = (
                    200.2  # pode deslocar rotulo ate 2.2mm, valor empirico, arbitrario
                )
                distancia_pontos_mm = (
                    1000 * pointRect.distance(pointPoI) * 110000 / self.scale
                )
                # point = pointRect if maxRectWidth_mm>diam_mm else pointPoI
                point = pointRect
                # maxWidth_mm = maxRectWidth_mm if distancia_pontos_mm<tolerancia_deslocamento_mm else diam_mm
                # maxWidth_mm = max(diam_mm, maxRectWidth_mm)
                maxWidth_mm = maxRectWidth_mm
                if maxWidth_mm < maxWordLen * 1.2:  # checar se rotulo cabe no poligono
                    f["NOME"] = (
                        f["SIGLA_UF"] + " - " + f["SIGLA_PAIS"]
                        if isInternational
                        else f["SIGLA_UF"]
                    )
                    height = (
                        (2 / 1000) * self.scale / 111000
                    )  # altura para caber uma letra, 2mm
                    maxRect = self.largestRectangleOnPoint(
                        height, pointPoI, intersectionGeometry, 5
                    )  # 5 graus deve pegar todos os estados
                    maxRectWidth_m = maxRect.width() * 111000
                    maxRectWidth_mm = 1000 * maxRectWidth_m / self.scale
                    maxWidth_mm = maxRectWidth_mm
                    pointRect = maxRect.center()
                    point = pointRect
                    # maxWordLen = max([self.text_size_six_pt_in_mm(word) for word in f["NOME"].split(' ')])
                    maxWordLen = self.text_size_six_pt_in_mm(
                        self.truncate_string(f["NOME"], maxChar)
                    )
                    if maxWidth_mm < self.text_size_six_pt_in_mm(f["NOME"]) * 1.15:
                        f["NOME"] = ""
                        stateLayer.updateFeature(f)
                        continue
                f["LABEL_X"] = point.x()
                f["LABEL_Y"] = point.y()
                stateLayer.updateFeature(f)
            stateLayer.commitChanges()
        stateLayer.triggerRepaint()

    def squareOutsideRectangle(self, rect: QgsRectangle):
        xmin = rect.xMinimum()
        ymin = rect.yMinimum()
        xmax = rect.xMaximum()
        ymax = rect.yMaximum()
        width = rect.width()
        height = rect.height()
        largest_length = max(width, height)
        center_x = (xmin + xmax) / 2.0
        center_y = (ymin + ymax) / 2.0
        new_square_xmin = center_x - largest_length / 2.0
        new_square_ymin = center_y - largest_length / 2.0
        new_square_xmax = center_x + largest_length / 2.0
        new_square_ymax = center_y + largest_length / 2.0
        return QgsRectangle(
            new_square_xmin, new_square_ymin, new_square_xmax, new_square_ymax
        )

    def truncate_string(self, input_string, max_char):
        if len(input_string) <= max_char:
            return input_string
        truncated = input_string[:max_char]
        last_space = truncated.rfind(" ")
        if last_space == -1:
            return truncated
        return truncated[:last_space]

    def text_size_six_pt_in_mm(self, text):
        points_to_mm = 0.352778
        char_widths = {
            "a": 3.0,
            "b": 3.0,
            "c": 3.0,
            "d": 3.0,
            "e": 3.0,
            "f": 2.0,
            "g": 3.0,
            "h": 3.0,
            "i": 1.5,
            "j": 1.5,
            "k": 3.0,
            "l": 1.5,
            "m": 4.5,
            "n": 3.0,
            "o": 3.0,
            "p": 3.0,
            "q": 3.0,
            "r": 2.0,
            "s": 3.0,
            "t": 2.0,
            "u": 3.0,
            "v": 3.0,
            "w": 4.5,
            "x": 3.0,
            "y": 3.0,
            "z": 3.0,
            "A": 4.5,
            "B": 4.5,
            "C": 4.5,
            "D": 4.5,
            "E": 4.5,
            "F": 4.5,
            "G": 4.5,
            "H": 4.5,
            "I": 1.5,
            "J": 3.0,
            "K": 4.5,
            "L": 4.5,
            "M": 5.0,
            "N": 4.5,
            "O": 4.5,
            "P": 4.5,
            "Q": 4.5,
            "R": 4.5,
            "S": 4.5,
            "T": 4.5,
            "U": 4.5,
            "V": 4.5,
            "W": 5.0,
            "X": 4.5,
            "Y": 4.5,
            "Z": 4.5,
            "0": 3.0,
            "1": 3.0,
            "2": 3.0,
            "3": 3.0,
            "4": 3.0,
            "5": 3.0,
            "6": 3.0,
            "7": 3.0,
            "8": 3.0,
            "9": 3.0,
            " ": 5.0,
            "/": 2.0,
            ":": 1.5,
            ";": 1.5,
            ",": 1.5,
            ".": 1.5,
            "-": 2.0,
            "_": 3.0,
            "+": 3.0,
            "=": 3.0,
            "!": 1.5,
            "?": 3.0,
            "@": 5.0,
            "#": 3.0,
            "$": 3.0,
            "%": 5.0,
            "^": 3.0,
            "&": 4.0,
            "*": 3.0,
            "(": 2.0,
            ")": 2.0,
            "[": 2.0,
            "]": 2.0,
            "{": 2.0,
            "}": 2.0,
            "<": 3.0,
            ">": 3.0,
            "|": 1.5,
            "\\": 2.0,
            "'": 1.5,
            '"': 2.0,
        }  # Estimativa ChatGPT 4o

        # Calculate the width in points
        width_in_points = sum(
            char_widths.get(char, 3.0) for char in text
        )  # Default width is 3.0 if character not found
        height_in_points = 6
        # Convert points to millimeters
        width_in_mm = width_in_points * points_to_mm
        # height_in_mm = height_in_points * points_to_mm
        return width_in_mm

    def largestRectangleOnPoint(
        self, height, center: QgsPointXY, polygon, maxWidth=5
    ) -> QgsRectangle:
        maxRect = QgsRectangle(
            center.x() - maxWidth / 2,
            center.y() - height / 2,
            center.x() + maxWidth / 2,
            center.y() + height / 2,
        )
        maxRectGeom = QgsGeometry.fromRect(maxRect)
        inter = maxRectGeom.intersection(polygon)
        minY = min(set(v.y() for v in inter.vertices()))
        maxY = max(set(v.y() for v in inter.vertices()))
        xSmaller = set(v.x() for v in inter.vertices() if v.x() < center.x())
        xBigger = set(v.x() for v in inter.vertices() if v.x() > center.x())
        minX = max(xSmaller)
        maxX = min(xBigger)
        return QgsRectangle(minX, minY, maxX, maxY)

    def updateComposition(
        self,
        composition: QgsPrintLayout,
        layersToShow: tuple[QgsVectorLayer],
        mapAreaLayer: QgsVectorLayer,
        bounds: QgsRectangle,
    ):
        if (mapItem := composition.itemById("localization")) is not None:
            mapSize = mapItem.sizeWithUnits()
            mapItem.setFixedSize(mapSize)
            mapItem.zoomToExtent(bounds)
            mapItem.setCrs(QgsCoordinateReferenceSystem("EPSG:4674"))
            mapItem.setLayers([mapAreaLayer, *layersToShow])
            mapItem.refresh()
