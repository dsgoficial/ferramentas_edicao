import os
from pathlib import Path

from PyQt5.QtGui import QColor
from qgis.core import (QgsGeometry, QgsLayerTreeGroup, QgsLayoutSize,
                       QgsPalLayerSettings, QgsProject,
                       QgsRuleBasedRenderer, QgsSymbol, QgsVectorLayer,
					   QgsRuleBasedLabeling, QgsTextFormat, QgsTextBufferSettings,
					   QgsSymbolLayerRegistry, QgsCoordinateReferenceSystem)
from qgis.gui import *

from .map_utils import MapParent


class Localizacao(MapParent):
    def __init__(self):
        self.scale = 25000
        self.stylesFolder = Path(__file__).parent.parent / 'styles' / 'localizacao'

    def make(self, composition, mapAreaFeature, adaptacaoNome=False, showLayers=False, isInternational=False):
        # Deleting ond groups if necessary
        self.deleteGroups(['localizacao', 'localizacao_nome_estado'])
        mapLayers = []

        # Creating nodes
        localizationGroupNode = QgsLayerTreeGroup('localizacao')
        localizationGroupNode.setItemVisibilityChecked(False)
        localizacaoNomeEstadoGroup_node = QgsLayerTreeGroup('localizacao_nome_estado')
        localizacaoNomeEstadoGroup_node.setItemVisibilityChecked(False)

        # Creating layer for mapArea
        mapAreaBoundingBox = mapAreaFeature.geometry().boundingBox()
        mapAreaLayer = self.createGridRectangle(mapAreaBoundingBox, 'localizationMapArea')
        mapLayers.append(mapAreaLayer.id())

        # Getting state layer
        stateShpPath = Path(__file__).parent.parent / 'limites' / '2020' / 'Estados_2020.shp'
        stateLayerBackground = self.loadShapeLayer(stateShpPath, '', 'backgroundStates')
        mapLayers.append(stateLayerBackground.id())

        # Getting extents and states do be displayed
        mapExtents = self.getExtent(mapAreaFeature, stateLayerBackground, isInternational)
        self.setupBackgroundLayer(stateLayerBackground)

        stateForegroundStylePath = self.stylesFolder / 'stateForegroundWithBorder.qml'
        stateLayerForeground = self.loadShapeLayer(stateShpPath, stateForegroundStylePath, 'foregroundStates')
        mapLayers.append(stateLayerForeground.id())
        self.setupForegroundLayer(stateLayerForeground)

        # Adding into localization node
        localizationGroupNode.addLayer(stateLayerForeground)
        localizationGroupNode.addLayer(mapAreaLayer)
        localizationGroupNode.addLayer(stateLayerBackground)

        # Adding layers
        QgsProject.instance().addMapLayer(stateLayerBackground, False)
        QgsProject.instance().addMapLayer(stateLayerForeground, False)
        QgsProject.instance().addMapLayer(mapAreaLayer, False)

        # Update composition
        self.updateMapItem(composition, stateLayerForeground,
                           stateLayerBackground, mapAreaLayer, mapExtents)

        # TODO: update this section in case of ortho maps
        if adaptacaoNome:
            layer_estadosnames = self.createLayerNomeGroup('estados_nome')
            mapLayers.append(layer_estadosnames.id())
            QgsProject.instance().addMapLayer(layer_estadosnames, False)
            localizacaoNomeEstadoGroup_node.addLayer(layer_estadosnames)

            self.setFilterAndStyleNameLayer(layer_estadosnames)

            self.updateNameEstadosMapItem(composition, mapExtents, layer_estadosnames)
        else:
            nameEstadosMapItem = composition.itemById("map_localizacao_adaptacao")
            if nameEstadosMapItem is not None:
                nameEstadosMapItem.setVisibility(False)
            self.setLabel(stateLayerBackground, isInternational)
        if showLayers:
            root = QgsProject.instance().layerTreeRoot()
            root.addChildNode(localizationGroupNode)
            root.addChildNode(localizacaoNomeEstadoGroup_node)

        return mapLayers

    def createLayerNomeGroup(self, layername_estadosnames):
        estado_uri = os.path.join(os.path.dirname(
            os.path.dirname(__file__)), 'limites','2020', 'Estados_2020.shp')
        layer_estadosnames = QgsVectorLayer(estado_uri, layername_estadosnames, 'ogr')
        # QgsProject.instance().addMapLayer(self.estados_layer)
        if (layer_estadosnames.isValid()):
            layer_estadosnames.setProviderEncoding(u'UTF-8')
            layer_estadosnames.dataProvider().setEncoding(u'UTF-8')
        return layer_estadosnames

    def load_intersection_country_layers(self, names):
        list_layer_paises = []
        for name in names:
            caminho_shp_internacional = os.path.join(os.path.dirname(
                os.path.dirname(__file__)), 'limites', name + '.shp')
            caminho_estilo_internacional = os.path.join(self.stylesFolder, 'no_labels_style.qml')
            internacional_layer_fundo = self.loadShapeLayer(
                caminho_shp_internacional, caminho_estilo_internacional, name + '_unidades_federativas')
            list_layer_paises.append(internacional_layer_fundo)
        return list_layer_paises

    def getExtent(self, selectedFeature, stateLayer, isInternational):
        rectBounds = []
        self.estados = []
        for stateFeature in stateLayer.getFeatures():
            if selectedFeature.geometry().intersects(stateFeature.geometry()):
                # Does not display foreign states if isInternational is false
                if not isInternational and stateFeature['SIGLA_PAIS'] != 'BR':
                    continue
                self.estados.append(stateFeature['SIGLA_UF'])
                rectBounds.append(stateFeature.geometry().boundingBox())
        bound = rectBounds[0]
        if len(rectBounds) > 1:
            for stateBound in rectBounds[1:]:
                bound.combineExtentWith(stateBound)
        bound.grow(0.8)
        return bound

    def createGridRectangle(self, mapBounds, layerName):
        mapBoundsLayer = self.createVectorLayerFromIter(
            layerName, [QgsGeometry.fromRect(mapBounds)])

        # Setting configuration
        symbol = QgsSymbol.defaultSymbol(mapBoundsLayer.geometryType())
        renderer = QgsRuleBasedRenderer(symbol)
        rootRule = renderer.rootRule()
        rule = rootRule.children()[0].clone()
        rule.symbol().setColor(QColor(213, 242, 213))
        rootRule.appendChild(rule)
        rootRule.removeChildAt(0)
        mapBoundsLayer.setRenderer(renderer)
        mapBoundsLayer.triggerRepaint()

        # Testing mini scale
        if self.scale < 10000:
            stylePath = os.path.join(self.stylesFolder, 'simbologia_localizacao.qml')
        elif self.scale == 25000:
            stylePath = os.path.join(self.stylesFolder, 'simbologia_roi_em_escala.qml')
        else:
            stylePath = os.path.join(self.stylesFolder, 'simbologia_roi_em_escala.qml')
        self.loadStyleToLayer(mapBoundsLayer, stylePath)
        return mapBoundsLayer

    def setFilterAndStyleNameLayer(self, layer):
        style_file = os.path.join(self.stylesFolder, 'no_symbology_style.qml')
        layer.loadNamedStyle(style_file)
        layer.triggerRepaint()

        root = QgsRuleBasedLabeling.Rule(QgsPalLayerSettings())
        for uf_estado in self.estados:
            label = 'Estados'
            settings = QgsPalLayerSettings()
            settings.fieldName = label
            '''
			settings.Placement = QgsPalLayerSettings.OrderedPositionsAroundPoint 
			settings.OrderedPositionsAroundPoint = QgsPalLayerSettings.MiddleLeft 
			settings.centroidInside = True
			'''
            #settings.Placement = QgsPalLayerSettings.OverPoint
            settings.placement = 1
            settings.quadOffset = 7
            settings.centroidInside = True
            settings.isExpression = True
            textFormat = QgsTextFormat()
            textFormat.setColor(QColor(0, 0, 0, 255))
            textFormat.setSize(6)

            textBuffer = QgsTextBufferSettings()
            textBuffer.setColor(QColor(255, 255, 255, 255))
            textBuffer.setSize(0.5)
            textBuffer.setEnabled(True)
            textFormat.setBuffer(textBuffer)

            settings.setFormat(textFormat)
            # create and append a new rule
            #root = QgsRuleBasedLabeling.Rule(QgsPalLayerSettings())
            rule = QgsRuleBasedLabeling.Rule(settings)
            expression = ' \"SIGLA_UF\" = \'{}\''.format(uf_estado)
            rule.setFilterExpression(expression)
            rule.setActive(True)

            # Add rule
            root.appendChild(rule)
        rules = QgsRuleBasedLabeling(root)
        layer.setLabeling(rules)
        layer.setLabelsEnabled(True)
        layer.triggerRepaint()

    def setupForegroundLayer(self, stateLayer):
        '''
        Sets symbol rules for foreground layer in localization component
        '''
        renderer = stateLayer.renderer()
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
        fillSymbolLayer = fillMeta.createSymbolLayer({'color': '178,178,178','line_width': '0.00', 'outline_style':'no' })
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

    def updateMapItem(self, composition, stateLayerForeground, stateLayer, mapAreaLayer, bound, mapItem=None):
        if mapItem is None:
            mapItem = composition.itemById("map_localizacao")
        if mapItem is not None:
            mapSize = mapItem.sizeWithUnits()
            mapItem.setFixedSize(mapSize)
            mapItem.setCrs(QgsCoordinateReferenceSystem('EPSG:4326'))
            mapItem.setExtent(bound)
            mapItem.refresh()
            mapItem.setLayers([stateLayerForeground, mapAreaLayer, stateLayer])

    def updateNameEstadosMapItem(self, composition, bound, stateLayerNames):
        nameEstadosMapItem = composition.itemById("map_localizacao_adaptacao")
        if nameEstadosMapItem is not None:
            nameEstadosMapItem.setVisibility(True)
            nameEstadosMapItem.setBackgroundEnabled(False)
            nameEstadosMapItem.setFixedSize(QgsLayoutSize(74, 74))
            nameEstadosMapItem.setExtent(bound)
            nameEstadosMapItem.refresh()
            nameEstadosMapItem.setLayers([stateLayerNames])
