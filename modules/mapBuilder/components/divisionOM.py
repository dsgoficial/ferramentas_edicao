import math
import os
from pathlib import Path

import shapely.geometry
import shapely.wkt
from PyQt5.QtCore import QVariant
from PyQt5.QtGui import QColor
from qgis.core import (QgsCoordinateReferenceSystem, QgsCoordinateTransform,
                       QgsDistanceArea, QgsFeatureRequest, QgsGeometry,
                       QgsLayerTreeGroup, QgsLayoutItemLabel, QgsLineString,
                       QgsPalLayerSettings, QgsProject, QgsRectangle,
                       QgsRuleBasedLabeling, QgsTextBufferSettings,
                       QgsTextFormat, QgsPrintLayout, QgsFeature,
                       QgsVectorLayerSimpleLabeling, QgsVectorLayer, QgsSymbol, QgsRuleBasedRenderer)

from .componentUtils import ComponentUtils
from ....interfaces.iComponent import IComponent


class DivisionOM(ComponentUtils,IComponent):
    def __init__(self, *args, **kwargs):
        self.itemname_tableMunicipios = 'label_divisao_municipios'
        self.maxCountiesToDisplay = 27
        self.shpFolder = Path(__file__).parent.parent / 'resources' / 'limits' / '2020'
        self.styleFolder = Path(__file__).parent.parent / 'resources' / 'styles' / 'division'
        self.htmlTablePath = Path(__file__).parent.parent / 'html_auto' / 'divisao.html'
        self.n_maxlines = 6
        self.nameAttribute = 'NOME'
        self.countyAttribute = 'SIGLA_UF'
        self.countryAttribute = 'SIGLA_PAIS'

    def build(self, composition: QgsPrintLayout, data: dict, mapAreaFeature: QgsFeature, showLayers: bool = False):

        mapIDsToBeDisplayed = []
        instance = QgsProject.instance()

        # Create counties layer
        mapAreaLayer = self.createMapAreaLayer('divisionMapArea', mapAreaFeature.geometry().boundingBox())
        # Create counties layer with corrext style / rendering
        countyLayer, countyExtents = self.getCountyLayer(mapAreaFeature)

        mapIDsToBeDisplayed.extend([mapAreaLayer.id(),countyLayer.id()])

        # Update map in correct sequence
        layersToShow = (mapAreaLayer, countyLayer)
        for layer in layersToShow:
            instance.addMapLayer(layer, False)
        if showLayers:
            divisionGroupNode = QgsLayerTreeGroup('division')
            divisionGroupNode.setItemVisibilityChecked(False)
            root = instance.layerTreeRoot()
            for layer in layersToShow:
                divisionGroupNode.addLayer(layer)
            root.addChildNode(divisionGroupNode)
            
        self.updateComposition(composition, countyExtents, layersToShow)
        return mapIDsToBeDisplayed

    def getCountyLayer(self, mapAreaFeature: QgsFeature):
        uriPath = self.shpFolder / 'Limites_Municipios_2020.shp'
        stylePath = self.styleFolder / 'municipio_l.qml'
        countyLayer = self.loadShapeLayer(uriPath, stylePath, 'counties')
        countyLayerExtents = self.getCountyLayerExtents(mapAreaFeature, countyLayer)
        return countyLayer, countyLayerExtents

    def getCountyLayerExtents(self, mapAreaFeature: QgsFeature, countyLayer: QgsVectorLayer):
        # TODO: Intersection is not getting candidates
        geom = mapAreaFeature.geometry()
        # geomEngine = QgsGeometry.createGeometryEngine(geom.constGet())
        # geomEngine.prepareGeometry()
        print(geom.boundingBox())
        countyLayer.selectAll()
        print(countyLayer.boundingBoxOfSelected())
        request = QgsFeatureRequest().setFilterRect(geom.boundingBox())
        county: QgsFeature = next(countyLayer.getFeatures(request))
        self.updateCountyLayerStyle(county, countyLayer)
        countyExtents = county.geometry().boundingBox()
        # countyextents.grow()
        return countyExtents

    def updateCountyLayerStyle(self, county: QgsFeature, countyLayer: QgsVectorLayer):
        symbol = QgsSymbol.defaultSymbol(countyLayer.geometryType())
        renderer = QgsRuleBasedRenderer(symbol)
        rootRule = renderer.rootRule()
        countyRule = self.createCountyRenderingRule(county.attribute('NOME'))
        rootRule.appendChild(countyRule)
        rootRule.removeChildAt(0)
        countyLayer.setRenderer(renderer)
        countyLayer.triggerRepaint()

    def createCountyRenderingRule(rootRule: QgsRuleBasedRenderer.Rule, countyName: str):
        rule = rootRule.children()[0].clone()
        rule.setLabel(countyName)
        expression = '\"NOME\" = \'{}\''.format(countyName)
        rule.setFilterExpression(expression)
        return rule

    def createMapAreaLayer(self, layerName: str, mapAreaBoundingBox: QgsRectangle) -> QgsVectorLayer:
        mapAreaLayer = self.createVectorLayerFromIter(layerName, [QgsGeometry.fromRect(mapAreaBoundingBox)])
        styleFilePath = os.path.join(self.styleFolder, 'divisionMapAreaForOmMap.qml')
        mapAreaLayer.loadNamedStyle(styleFilePath)
        mapAreaLayer.triggerRepaint()
        return mapAreaLayer

    def setStyles(self, layerCounty, orderedCountiesByCentroidDistance, orderedCountiesNamesByArea):
        rulesRoot = QgsRuleBasedLabeling.Rule(QgsPalLayerSettings())
        for n in range(len(orderedCountiesNamesByArea)):
            rule = self.createRules(
                f"'{n+1}'",
                f'"{self.nameAttribute}" = \'{orderedCountiesByCentroidDistance[n][self.nameAttribute]}\'')
            rulesRoot.appendChild(rule)
        rules = QgsRuleBasedLabeling(rulesRoot)
        layerCounty.setLabeling(rules)
        layerCounty.setLabelsEnabled(True)
        layerCounty.triggerRepaint()

    def updateComposition(self, composition: QgsPrintLayout, mapExtent: QgsRectangle, layersToShow: tuple[QgsVectorLayer]):
        if (mapItem:=composition.itemById("map_divisao")) is not None:
            mapItem.setExtent(mapExtent)
            mapItem.setLayers(layersToShow)
            mapItem.setCrs(QgsCoordinateReferenceSystem('EPSG:4674'))
            mapItem.refresh()