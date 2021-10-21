import os
from pathlib import Path

from PyQt5.QtGui import QColor
from qgis.core import (QgsGeometry, QgsLayerTreeGroup, QgsFeatureRequest,
                       QgsPalLayerSettings, QgsProject,
                       QgsRuleBasedRenderer, QgsSymbol,
					   QgsRuleBasedLabeling, QgsTextFormat,
					   QgsSymbolLayerRegistry, QgsCoordinateReferenceSystem)
from qgis.gui import *

from .map_utils import MapParent


class Localizacao(MapParent):
    def __init__(self):
        self.scale = 25000
        self.stylesFolder = Path(__file__).parent.parent / 'styles' / 'localizacao'

    def make(self, composition, mapAreaFeature, showLayers=False, isInternational=False):
        # Deleting old groups if necessary
        self.deleteGroups(['localizacao'])
        mapLayers = []

        # Creating nodes
        localizationGroupNode = QgsLayerTreeGroup('localizacao')
        localizationGroupNode.setItemVisibilityChecked(False)

        # Creating layer for mapArea
        mapAreaBoundingBox = mapAreaFeature.geometry().boundingBox()
        mapAreaLayer = self.createGridRectangle(mapAreaBoundingBox, 'localizationMapArea')
        mapLayers.append(mapAreaLayer.id())

        # Getting state layer
        stateShpPath = Path(__file__).parent.parent / 'limites' / '2020' / 'Estados_2020.shp'
        stateLayerBackground = self.loadShapeLayer(stateShpPath, '', 'backgroundStates')
        mapExtents = self.getExtent(mapAreaFeature, stateLayerBackground, isInternational)
        self.setupBackgroundLayer(stateLayerBackground)
        self.setLabel(stateLayerBackground, isInternational)
        mapLayers.append(stateLayerBackground.id())

        # Adding into localization node
        localizationGroupNode.addLayer(mapAreaLayer)
        localizationGroupNode.addLayer(stateLayerBackground)

        # Adding layers
        QgsProject.instance().addMapLayer(stateLayerBackground, False)
        QgsProject.instance().addMapLayer(mapAreaLayer, False)

        # Updating composition
        self.updateMapItem(composition, stateLayerBackground, mapAreaLayer, mapExtents)

        if showLayers:
            root = QgsProject.instance().layerTreeRoot()
            root.addChildNode(localizationGroupNode)

        return mapLayers

    def getExtent(self, selectedFeature, stateLayer, isInternational):
        '''Gets the component extents by checking intersections between selectedFeature and 
        stateLayer. 
        '''
        self.estados = set()
        geom = selectedFeature.geometry()
        geomBbox = geom.boundingBox()
        rectBounds = [geomBbox]
        request = QgsFeatureRequest().setFilterRect(geomBbox)
        for stateFeature in stateLayer.getFeatures(request):
            # Does not display foreign states if isInternational is false
            if not isInternational and stateFeature['SIGLA_PAIS'] != 'BR':
                continue
            stateGeom = stateFeature.geometry()
            if stateGeom.isMultipart():
                for singleStateItem in stateGeom.constParts():
                    singleStateAbsGeom = singleStateItem.boundary()
                    if singleStateAbsGeom.boundingBoxIntersects(geomBbox):
                        self.estados.add(stateFeature['SIGLA_UF'])
                        rectBounds.append(singleStateAbsGeom.calculateBoundingBox())
            elif geom.intersects(stateGeom):
                self.estados.add(stateFeature['SIGLA_UF'])
                rectBounds.append(stateGeom.boundingBox())
        bound = rectBounds[0]
        if len(rectBounds) > 1:
            for stateBound in rectBounds[1:]:
                bound.combineExtentWith(stateBound)
        self.growBound(bound)
        return bound

    @staticmethod
    def growBound(bounds):
        ''' Grows the area ("zooms out") based on bounds area
        '''
        area = bounds.area()
        if area < 1:
            bounds.grow(.1)
        elif 1 < area < 10:
            bounds.grow(.3)
        elif 10 < area < 50:
            bounds.grow(.5)
        else:
            bounds.grow(.8) 

    def createGridRectangle(self, mapBounds, layerName):
        ''' Creates the mapArea layer for this component by using mapBounds.
        Also sets its style.
        '''
        mapBoundsLayer = self.createVectorLayerFromIter(layerName, [QgsGeometry.fromRect(mapBounds)])
        stylePath = str(self.stylesFolder / 'localizationMapArea.qml')
        self.loadStyleToLayer(mapBoundsLayer, stylePath)
        return mapBoundsLayer

    def createStateRule(self, rootRule, label):
        '''
        Creates a copy of the root rule and sets its filter expression based on the field SIGLA_UF
        '''
        rule = rootRule.children()[0].clone()
        rule.setLabel(label)
        expression = ' \"SIGLA_UF\" = \'{}\''.format(label)
        rule.setFilterExpression(expression)
        return rule

    def setupBackgroundLayer(self, stateLayer):
        '''
        Sets symbol rules for background layer in localization component
        '''
        symbol = QgsSymbol.defaultSymbol(stateLayer.geometryType())
        registry = QgsSymbolLayerRegistry()
        fillMeta = registry.symbolLayerMetadata("SimpleFill")
        fillSymbolLayer = fillMeta.createSymbolLayer({'color': '178,178,178' })
        # Replace the default style
        symbol.deleteSymbolLayer(0)
        symbol.appendSymbolLayer(fillSymbolLayer)

        renderer = QgsRuleBasedRenderer(symbol)
        rootRule = renderer.rootRule()
        for state in self.estados:
            # Appends the rule to the rootRule
            rule = self.createStateRule(rootRule, state)
            rootRule.appendChild(rule)
        # Delete the default rule
        rootRule.removeChildAt(0)
        # Apply the renderer to the layer
        stateLayer.setRenderer(renderer)
        stateLayer.triggerRepaint()

    def setLabel(self, stateLayer, isInternational):
        '''
        Sets label rules for layer in localization component
        '''
        # Getting base rule
        root = QgsRuleBasedLabeling.Rule(QgsPalLayerSettings())

        # Creating Rule
        settings = QgsPalLayerSettings()
        if isInternational:
            settings.fieldName = 'concat(upper("nome"), \' - \', upper("SIGLA_PAIS"))'
        else:
            settings.fieldName = 'upper("nome")'
        settings.placement = QgsPalLayerSettings.Horizontal
        settings.centroidInside = True
        settings.isExpression = True

        textFormat = QgsTextFormat()
        textFormat.setColor(QColor(0, 0, 0, 255))
        textFormat.setSize(6)
        settings.setFormat(textFormat)

        # Add rule to root and apply to stateLayer
        rule = QgsRuleBasedLabeling.Rule(settings)
        rule.setActive(True)
        root.appendChild(rule)
        rules = QgsRuleBasedLabeling(root)
        stateLayer.setLabeling(rules)
        stateLayer.setLabelsEnabled(True)
        stateLayer.triggerRepaint()

    def updateMapItem(self, composition, stateLayer, mapAreaLayer, bound, mapItem=None):
        if (mapItem := composition.itemById("map_localizacao")) is not None:
            mapSize = mapItem.sizeWithUnits()
            mapItem.setFixedSize(mapSize)
            mapItem.setCrs(QgsCoordinateReferenceSystem('EPSG:4674'))
            mapItem.setExtent(bound)
            mapItem.refresh()
            mapItem.setLayers([mapAreaLayer, stateLayer])