import os
from pathlib import Path
from typing import List

from qgis.core import (
    QgsCoordinateReferenceSystem,
    QgsFeature,
    QgsFeatureRequest,
    QgsGeometry,
    QgsLayerTreeGroup,
    QgsPalLayerSettings,
    QgsPrintLayout,
    QgsProject,
    QgsRectangle,
    QgsRuleBasedRenderer,
    QgsStringUtils,
    QgsSymbol,
    QgsSymbolLayerRegistry,
    QgsTextFormat,
    QgsVectorLayer,
    QgsVectorLayerSimpleLabeling,
)

from ....interfaces.iComponent import IComponent
from .componentUtils import ComponentUtils


class DivisionOM(ComponentUtils, IComponent):
    def __init__(self, *args, **kwargs):
        self.shpFolder = Path(__file__).parent.parent / "resources" / "limits" / "2020"
        self.styleFolder = (
            Path(__file__).parent.parent / "resources" / "styles" / "division"
        )

    def build(
        self,
        composition: QgsPrintLayout,
        data: dict,
        mapAreaFeature: QgsFeature,
        showLayers: bool = False,
    ):
        """Builds the component and updates the composition. In this component (DivisionOM), we have two lawers:
        the mapArea (with default style) and the county layer (which rendering is adjusted by this component)
        Args:
            composition: the map print layout (QgsPrintLayout)
            data: dict with map parameters
            mapAreaFeature: a QgsFeature holding the OM area
            showLayers: debug flag
        """
        mapIDsToBeDisplayed = []
        instance = QgsProject.instance()

        # Creating mapAreaLayer and countyLayer
        mapAreaLayer = self.createMapAreaLayer(
            "divisionMapArea", mapAreaFeature.geometry().boundingBox()
        )
        countyLayer, countyExtents = self.createCountyLayer(mapAreaFeature)

        # Register of created map layers
        mapIDsToBeDisplayed.extend([mapAreaLayer.id(), countyLayer.id()])

        # Setting display order
        layersToShow = (mapAreaLayer, countyLayer)
        for layer in layersToShow:
            instance.addMapLayer(layer, False)

        # Displaying layers if in debug mode
        if showLayers:
            divisionGroupNode = QgsLayerTreeGroup("division")
            divisionGroupNode.setItemVisibilityChecked(False)
            root = instance.layerTreeRoot()
            for layer in layersToShow:
                divisionGroupNode.addLayer(layer)
            root.addChildNode(divisionGroupNode)

        # Updating composition
        self.updateComposition(composition, countyExtents, layersToShow)

        return mapIDsToBeDisplayed

    def createCountyLayer(
        self, mapAreaFeature: QgsFeature
    ) -> tuple[QgsVectorLayer, QgsRectangle]:
        """Generates the county layer for DivisionOM component and the component's extents.
        Also sets up the layer rendering (style)
        Args:
            mapAreaFeature: a QgsFeature holding the OM area
        Returns:
            countyLayer: a QgsVectorLayer holding the OM area
            countyLayerExtents: a QgsRectangle representing the component extents
        """
        uriPath = self.shpFolder / "Municipios_2020.shp"
        stylePath = self.styleFolder / "municipio_l.qml"
        countyLayer = self.loadShapeLayer(uriPath, stylePath, "counties")
        countyFeatList, countyLayerExtents = self.getCountyLayerExtents(
            mapAreaFeature, countyLayer
        )
        self.updateCountyLayerStyle(countyFeatList, countyLayer)
        return countyLayer, countyLayerExtents

    def getCountyLayerExtents(
        self, mapAreaFeature: QgsFeature, countyLayer: QgsVectorLayer
    ) -> tuple[List[QgsFeature], QgsRectangle]:
        """Calculates the DivisionOM extents and the county which will be displayed.
        Args:
            mapAreaFeature: a QgsFeature holding the OM area
        Returns:
            county: a QgsFeature from the States shapefile the county to be displayed
            countyExtents: a QgsRectangle representing the component extents
        """
        geom = mapAreaFeature.geometry()
        request = QgsFeatureRequest().setFilterRect(geom.boundingBox())
        countyFeatList = [
            f for f in countyLayer.getFeatures(request) if f.geometry().intersects(geom)
        ]
        countyExtents = countyFeatList[0].geometry().boundingBox()
        for other in countyFeatList[1::]:
            otherExtents = other.geometry().boundingBox()
            countyExtents.combineExtentWith(otherExtents)
        countyExtents.grow(0.1)
        return countyFeatList, countyExtents

    def updateCountyLayerStyle(
        self, countyFeatList: List[QgsFeature], countyLayer: QgsVectorLayer
    ):
        """Creates the rendering rules for countyLayer by handling its simbology and labeling.
        Args:
            county: a QgsFeature from the States shapefile the county to be displayed
            countyLayer: a QgsVectorLayer holding the OM area
        """
        # SimpleFill style
        symbol = QgsSymbol.defaultSymbol(countyLayer.geometryType())
        registry = QgsSymbolLayerRegistry()
        fillMeta = registry.symbolLayerMetadata("SimpleFill")
        fillSymbolLayer = fillMeta.createSymbolLayer(
            {"color": "201,201,201", "outline_width": 0.1}
        )
        # Replace the default style
        symbol.deleteSymbolLayer(0)
        symbol.appendSymbolLayer(fillSymbolLayer)

        # Creating a QgsRuleBasedRenderer for the county which contains the mapAreaFeature
        renderer = QgsRuleBasedRenderer(symbol)
        rootRule = renderer.rootRule()
        for county in countyFeatList:
            nome = county.attribute("NOME").replace("'", "\\'")
            countyRule = self.createCountyRenderingRule(rootRule, nome)
            rootRule.appendChild(countyRule)
        rootRule.removeChildAt(0)
        countyLayer.setRenderer(renderer)

        # Creating a QgsRuleBasedLabeling for the county which contains the mapAreaFeature
        labelRule = self.createCountyLabelingRule()
        countyLayer.setLabeling(labelRule)
        countyLayer.setLabelsEnabled(True)

        countyLayer.triggerRepaint()

    def createCountyRenderingRule(
        self, rootRule: QgsRuleBasedRenderer.Rule, countyName: str
    ) -> QgsRuleBasedRenderer.Rule:
        """Creates a QgsRuleBasedRenderer rule with predefined expression.
        Args:
            rootRule: a rootRole for the default QgsRuleBasedRenderer
            countyName: county name
        Returns:
            A QgsRuleBasedRenderer rule
        """
        rule = rootRule.children()[0].clone()
        rule.setLabel(countyName)
        expression = "\"NOME\" = '{}'".format(countyName)
        rule.setFilterExpression(expression)
        return rule

    def createCountyLabelingRule(self) -> QgsVectorLayerSimpleLabeling:
        """Creates a QgsVectorLayerSimpleLabeling for the county layer.
        Returns:
            A QgsVectorLayerSimpleLabeling for the county layer.
        """
        settings = QgsPalLayerSettings()
        settings.fieldName = "NOME"
        settings.isExpression = False
        textFormat = QgsTextFormat()
        textFormat.setSize(6)
        textFormat.setCapitalization(QgsStringUtils.Capitalization.AllUppercase)
        settings.setFormat(textFormat)
        return QgsVectorLayerSimpleLabeling(settings)

    def createMapAreaLayer(
        self, layerName: str, mapAreaBoundingBox: QgsRectangle
    ) -> QgsVectorLayer:
        """Creates a QgsVectorLayer holding a feature corresponding to mapAreaBoundingBox.
        Args:
            layerName: layer name
            mapAreaBoundingBox: a QgsRectangle representing the mapArea
        Returns:
            a QgsVectorLayer with one feature which represents the mapArea
        """
        mapAreaLayer = self.createVectorLayerFromIter(
            layerName, [QgsGeometry.fromRect(mapAreaBoundingBox)]
        )
        styleFilePath = os.path.join(self.styleFolder, "divisionMapAreaForOmMap.qml")
        mapAreaLayer.loadNamedStyle(styleFilePath)
        mapAreaLayer.triggerRepaint()
        return mapAreaLayer

    def updateComposition(
        self,
        composition: QgsPrintLayout,
        mapExtent: QgsRectangle,
        layersToShow: tuple[QgsVectorLayer],
    ):
        """Updates the composition.
        Args:
            composition: a QgsPrintLayout for the OM map
            mapExtent: a QgsRectangle holding the component extents
            layersToShow: tuple holding layers to be displayed in this component's mapItem
        """
        if (mapItem := composition.itemById("map_divisao")) is not None:
            mapItem.setFixedSize(mapItem.sizeWithUnits())
            mapItem.setExtent(mapExtent)
            mapItem.setLayers(layersToShow)
            mapItem.setCrs(QgsCoordinateReferenceSystem("EPSG:4674"))
            mapItem.refresh()
