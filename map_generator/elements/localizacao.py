import os
from pathlib import Path

from PyQt5.QtGui import QColor
from qgis.core import (QgsCoordinateReferenceSystem, QgsFeature, QgsGeometry,
                       QgsLayerTreeGroup, QgsLayoutSize, QgsPalLayerSettings,
                       QgsProject, QgsRectangle, QgsRuleBasedLabeling,
                       QgsRuleBasedRenderer, QgsSymbol, QgsSymbolLayerRegistry,
                       QgsTextBufferSettings, QgsTextFormat, QgsVectorLayer)
from qgis.gui import *

from .map_utils import MapParent


class Localizacao(MapParent):
    def __init__(self):
        self.scale = 25000
        self.adaptacao_nome = True
        self.pais_analisado = 'paisA'
        self.stylesFolder = Path(__file__).parent.parent / 'estilos' / 'localizacao'
        self.shp_paises_exterior = Path(__file__).parent.parent / 'limites' / '2020'

    def changeMapGrid(self, mapItem):
        parameters = [
            {
                'estados': ['RS'],
                'intervalX':3,
                'intervalY':3,
                'OffsetX':0,
                'OffsetY':0,
            },
            {
                'estados': ['RS', 'SC'],
                'intervalX':3,
                'intervalY':3,
                'OffsetX':1,
                'OffsetY':0,
            },
            {
                'estados': ['SC'],
                'intervalX':2,
                'intervalY':2,
                'OffsetX':0,
                'OffsetY':0,
            },
            {
                'estados': ['SC', 'PR'],
                'intervalX':3,
                'intervalY':3,
                'OffsetX':0,
                'OffsetY':1,
            },
            {
                'estados': ['PR'],
                'intervalX':3,
                'intervalY':3,
                'OffsetX':0,
                'OffsetY':2,
            },
            {
                'estados': ['PR', 'MS'],
                'intervalX':3,
                'intervalY':3,
                'OffsetX':1,
                'OffsetY':1,
            },
            {
                'estados': ['RJ'],
                'intervalX':2,
                'intervalY':2,
                'OffsetX':1,
                'OffsetY':0,
            },
            {
                'estados': ['RJ', 'MG'],
                'intervalX':3,
                'intervalY':3,
                'OffsetX':1,
                'OffsetY':1,
            },
            {
                'estados': ['BA'],
                'intervalX':3,
                'intervalY':3,
                'OffsetX':0,
                'OffsetY':0,
            }

        ]
        grid_data = next((item for item in parameters if set(
            item['estados']) == set(self.estados)), None)
        if grid_data is not None:
            intervalX = grid_data['intervalX']
            intervalY = grid_data['intervalY']
            OffsetX = grid_data['OffsetX']
            OffsetY = grid_data['OffsetY']
            mapItem.grid().setIntervalX(intervalX)
            mapItem.grid().setIntervalY(intervalY)
            mapItem.grid().setOffsetX(OffsetX)
            mapItem.grid().setOffsetY(OffsetY)
        else:
            mapItem.grid().setIntervalX(3)
            mapItem.grid().setIntervalY(3)
            mapItem.grid().setOffsetX(0)
            mapItem.grid().setOffsetY(0)

    def setAdaptacaoNome(self, adaptacaoNome):
        self.adaptacaoNome = adaptacaoNome

    def make(self, composition, mapArea, showLayers=False):
        # Deletando as variaveis
        self.deleteGroups(['localizacao'])
        mapLayers = []

        # Creating layer group
        localizationGroupNode = QgsLayerTreeGroup('localizacao')
        localizationGroupNode.setItemVisibilityChecked(False)

        # Layer for map area
        grid_bound = mapArea.geometry().boundingBox()
        mapBoundsRectangle = self.createGridRectangle(grid_bound, 'mapBounds')
        mapLayers.append(mapBoundsRectangle.id())

        # Inserting the states layer
        stateVectorPath = Path(__file__).parent.parent / 'limites' / '2020' / 'Estados_2020.shp'
        stateVectorStylePath = self.stylesFolder / 'stateStyle.qml'
        stateVectorLayer = self.loadShapeLayer(
            stateVectorPath, stateVectorStylePath, 'estados')
        mapLayers.append(stateVectorLayer.id())

        # Obtemos extent do mapa de localização e intersecoes de estados com a área do mapa e o
        mapExtents = self.getExtent(mapArea, stateVectorLayer)
        self.setSymbol(stateVectorLayer)
        stateVectorLayer.loadNamedStyle(os.path.join(
            self.stylesFolder, 'localizacao_cinza_estado_sem_traco.qml'))
        self.setFilter(stateVectorLayer)
        stateVectorLayer.triggerRepaint()

        # Adiciona layers aos grupos
        localizationGroupNode.addLayer(mapBoundsRectangle)
        localizationGroupNode.addLayer(stateVectorLayer)

        # Atualizamos o mapa
        QgsProject.instance().addMapLayer(mapBoundsRectangle, False)
        QgsProject.instance().addMapLayer(stateVectorLayer, False)

        # self.changeMapGrid()
        self.updateMapItem(composition, None,
                           stateVectorLayer, mapBoundsRectangle, mapExtents)

        if showLayers:
            root = QgsProject.instance().layerTreeRoot()
            root.addChildNode(localizationGroupNode)

        return mapLayers

    def getExtent(self, selectedFeature, estados_layer):
        bounding = []
        self.estados = []
        self.grid_bound = selectedFeature.geometry().convexHull()
        for count, estado_feature in enumerate(estados_layer.getFeatures()):
            if selectedFeature.geometry().intersects(estado_feature.geometry()):
                self.estados.append(estado_feature['SIGLA_UF'])
                bounding.append(estado_feature.geometry().boundingBox())
        bound = bounding[0]
        if len(bounding) > 1:
            for estado_bound in bounding[1:]:
                bound.combineExtentWith(estado_bound)
        bound.grow(0.8)
        return bound

    def createGridRectangle(self, grid_bound, layer_name):
        geometries = [QgsGeometry.fromRect(grid_bound)]
        mapBoundsRectangle = self.createGridRectangleLayer(layer_name, geometries)

        # Setting configuration
        symbol = QgsSymbol.defaultSymbol(mapBoundsRectangle.geometryType())

        renderer = QgsRuleBasedRenderer(symbol)
        root_rule = renderer.rootRule()
        mi_rule = root_rule.children()[0].clone()
        mi_rule.symbol().setColor(QColor(213, 242, 213))
        root_rule.appendChild(mi_rule)
        root_rule.removeChildAt(0)
        mapBoundsRectangle.setRenderer(renderer)
        mapBoundsRectangle.triggerRepaint()

        # Testing mini scale
        if self.scale < 10000:
            style_file = os.path.join(self.stylesFolder, 'simbologia_localizacao.qml')
            self.loadStyleToLayer(mapBoundsRectangle, style_file)
        elif self.scale == 25000:
            # style_file = os.path.join(self.stylesFolder, 'simbologia_localizacao_moldura_grandes_escalas_v2.qml')
            style_file = os.path.join(self.stylesFolder, 'simbologia_roi_em_escala.qml')
            self.loadStyleToLayer(mapBoundsRectangle, style_file)
        else:
            # style_file = os.path.join(self.stylesFolder, 'simbologia_localizacao_ge_v3.qml')
            style_file = os.path.join(self.stylesFolder, 'simbologia_roi_em_escala.qml')
            self.loadStyleToLayer(mapBoundsRectangle, style_file)
        return mapBoundsRectangle

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
            expression = ' \"UF\" = \'{}\''.format(uf_estado)
            rule.setFilterExpression(expression)
            rule.setActive(True)

            # Add rule
            root.appendChild(rule)
        rules = QgsRuleBasedLabeling(root)
        layer.setLabeling(rules)
        layer.setLabelsEnabled(True)
        layer.triggerRepaint()

    def setFilter(self, estados_layer):

        renderer = estados_layer.renderer()
        root_rule = renderer.rootRule()
        for uf_estado in self.estados:
            # create a clone (i.e. a copy) of the default rule
            label = uf_estado
            # create a clone (i.e. a copy) of the default rule
            rule = root_rule.children()[0].clone()
            # set the label, expression and color
            rule.setLabel(label)
            expression = ' \"SIGLA_UF\" = \'{}\''.format(uf_estado)
            rule.setFilterExpression(expression)

            # append the rule to the list of rules
            root_rule.appendChild(rule)
        # delete the default rule
        root_rule.removeChildAt(0)
        # apply the renderer to the layer
        estados_layer.setRenderer(renderer)
        estados_layer.triggerRepaint()

    def createEstadoRule(self, root_rule, symbol, label, uf_estado):
        rule = root_rule.children()[0].clone()
        # set the label, expression and color
        rule.setLabel(label)
        expression = ' \"UF\" = \'{}\''.format(uf_estado)
        rule.setFilterExpression(expression)
        # rule.symbol().setColor(QColor(color_name))
        return rule

    def setSymbol(self, estados_layer):
        #self.estados_layer = QgsProject.instance().mapLayersByName('estados')[0]
        registry = QgsSymbolLayerRegistry()

        # Line layer
        lineMeta = registry.symbolLayerMetadata("SimpleLine")
        lineLayer = lineMeta.createSymbolLayer({'line_width': '0.20', 'color': '0,0,0', 'offset': '0',
                                               'penstyle': 'solid', 'use_custom_dash': '0', 'joinstyle': 'bevel', 'capstyle': 'square'})

        fillMeta = registry.symbolLayerMetadata("SimpleFill")
        fillLayer = lineMeta.createSymbolLayer({'color': '178,178,178'})

        symbol = QgsSymbol.defaultSymbol(estados_layer.geometryType())
        # Replace the default layer with our two custom layers
        symbol.deleteSymbolLayer(0)
        symbol.appendSymbolLayer(lineLayer)
        # symbol.appendSymbolLayer(fillLayer)

        renderer = QgsRuleBasedRenderer(symbol)

        root_rule = renderer.rootRule()
        for uf_estado in self.estados:
            # create a clone (i.e. a copy) of the default rule
            label = uf_estado
            rule = self.createEstadoRule(root_rule, symbol, label, uf_estado)
            # append the rule to the list of rules
            root_rule.appendChild(rule)
        # delete the default rule
        root_rule.removeChildAt(0)
        # apply the renderer to the layer
        estados_layer.setRenderer(renderer)
        estados_layer.triggerRepaint()

    def setLabel(self, estados_layer):
        # Getting base rule
        symbol = QgsSymbol.defaultSymbol(estados_layer.geometryType())
        renderer = QgsRuleBasedRenderer(symbol)
        root = QgsRuleBasedLabeling.Rule(QgsPalLayerSettings())
        # Creating Rule
        label = 'Estados'
        settings = QgsPalLayerSettings()
        settings.fieldName = 'upper("nome")'
        test = True
        if test:
            settings.Placement = QgsPalLayerSettings.OrderedPositionsAroundPoint
            #settings.OrderedPositionsAroundPoint = QgsPalLayerSettings.MiddleLeft

        else:
            settings.placement = 1
            settings.quadOffset = 7

        settings.centroidInside = True
        settings.isExpression = True
        textFormat = QgsTextFormat()
        textFormat.setColor(QColor(0, 0, 0, 255))
        textFormat.setSize(6)

        # textBuffer = QgsTextBufferSettings()
        # textBuffer.setColor(QColor(255, 255, 255, 255))
        # textBuffer.setSize(0.5)
        # textBuffer.setEnabled(True)
        # textFormat.setBuffer(textBuffer)

        settings.setFormat(textFormat)
        # create and append a new rule
        #root = QgsRuleBasedLabeling.Rule(QgsPalLayerSettings())
        rule = QgsRuleBasedLabeling.Rule(settings)
        rule.setActive(True)
        # Add rule
        root.appendChild(rule)
        rules = QgsRuleBasedLabeling(root)
        estados_layer.setLabeling(rules)
        estados_layer.setLabelsEnabled(True)
        estados_layer.triggerRepaint()

    def updateMapItem(self, composition, layer_estados_frente, estados_layer, mapBoundsRectangle, bound, mapItem=None):
        if mapItem is None:
            mapItem = composition.itemById("map_localizacao")
        if mapItem is not None:
            mapSize = mapItem.sizeWithUnits()
            mapItem.setFixedSize(mapSize)
            mapItem.setCrs(QgsCoordinateReferenceSystem(
                4326, QgsCoordinateReferenceSystem.EpsgCrsId))
            mapItem.setExtent(bound)
            mapItem.refresh()
            # self.changeMapGrid(mapItem)
            mapItem.setLayers([mapBoundsRectangle, estados_layer])

    def updateNameEstadosMapItem(self, composition, bound, layer_estadosnames):
        nameEstadosMapItem = composition.itemById("map_localizacao_adaptacao")
        if nameEstadosMapItem is not None:
            nameEstadosMapItem.setVisibility(False)
        #     nameEstadosMapItem.setBackgroundEnabled(False)
        #     nameEstadosMapItem.setFixedSize(QgsLayoutSize(74, 74))
        #     nameEstadosMapItem.setExtent(bound)
        #     nameEstadosMapItem.refresh()
        #     nameEstadosMapItem.setLayers([layer_estadosnames])
