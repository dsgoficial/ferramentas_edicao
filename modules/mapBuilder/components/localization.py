from pathlib import Path

from PyQt5.QtGui import QColor
from qgis.core import (QgsCoordinateReferenceSystem, QgsFeature,
                       QgsFeatureRequest, QgsGeometry, QgsLayerTreeGroup,
                       QgsPalLayerSettings, QgsPrintLayout, QgsProject,
                       QgsRectangle, QgsRuleBasedLabeling,
                       QgsRuleBasedRenderer, QgsSymbol, QgsSymbolLayerRegistry,
                       QgsTextFormat, QgsVectorLayer)

from ....interfaces.iComponent import IComponent
from .componentUtils import ComponentUtils


class Localization(ComponentUtils,IComponent):
    def __init__(self, *args, **kwargs):
        self.stylesFolder =  Path(__file__).parent.parent / 'resources' / 'styles' / 'localization'
        self.stateShpPath =  Path(__file__).parent.parent / 'resources' / 'limits' / '2020' / 'Estados_2020.shp'

    def build(
        self, composition: QgsPrintLayout, data: dict, mapAreaFeature: QgsFeature, showLayers: bool=False):
        mapIDsToBeDisplayed = []
        instance = QgsProject.instance()
        isInternational = bool(data.get('territorio_internacional'))

        # Creating layer for mapArea
        mapAreaBoundingBox = mapAreaFeature.geometry().boundingBox()
        mapAreaLayer = self.createGridRectangle(mapAreaBoundingBox, data, 'localizationMapArea')
        mapIDsToBeDisplayed.append(mapAreaLayer.id())

        # Getting state layer
        stateLayerBackground = self.loadShapeLayer(self.stateShpPath, '', 'backgroundStates')
        mapExtents = self.getExtent(mapAreaFeature, stateLayerBackground, isInternational)
        self.setupBackgroundLayer(stateLayerBackground)
        self.setLabel(stateLayerBackground, isInternational)
        mapIDsToBeDisplayed.append(stateLayerBackground.id())

        # Adding layers
        instance.addMapLayer(stateLayerBackground, False)
        instance.addMapLayer(mapAreaLayer, False)

        # Updating composition
        self.updateComposition(composition, stateLayerBackground, mapAreaLayer, mapExtents)

        if showLayers:
            localizationGroupNode = QgsLayerTreeGroup('localization')
            localizationGroupNode.setItemVisibilityChecked(False)
            for layer in (mapAreaLayer, stateLayerBackground):
                localizationGroupNode.addLayer(layer)
            root = instance.layerTreeRoot()
            root.addChildNode(localizationGroupNode)

        return mapIDsToBeDisplayed

    def getExtent(self, selectedFeature: QgsFeature, stateLayer: QgsVectorLayer, isInternational: bool):
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

    def createGridRectangle(self, mapBounds: QgsRectangle, data: dict, layerName: str) -> QgsVectorLayer:
        ''' Creates the mapArea layer for this component by using mapBounds.
        Also sets its style.
        '''
        productType = data.get('productType')
        mapBoundsLayer = self.createVectorLayerFromIter(layerName, [QgsGeometry.fromRect(mapBounds)])
        if productType == 'omMap':
            stylePath = self.stylesFolder / 'localizationMapAreaForOmMap.qml'
        else:
            stylePath = self.stylesFolder / 'localizationMapArea.qml'
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
        fillSymbolLayer = fillMeta.createSymbolLayer({
            'color': '201,201,201',
            'outline_width': 0.1
            })
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

    def updateComposition(self, composition: QgsPrintLayout, stateLayer: QgsVectorLayer, mapAreaLayer: QgsVectorLayer, bounds: QgsRectangle):
        if (mapItem := composition.itemById("localization")) is not None:
            mapSize = mapItem.sizeWithUnits()
            mapItem.setFixedSize(mapSize)
            mapItem.setExtent(bounds)
            mapItem.setCrs(QgsCoordinateReferenceSystem('EPSG:4674'))
            mapItem.setLayers([mapAreaLayer, stateLayer])
            mapItem.refresh()
