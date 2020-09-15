# -*- coding: utf-8 -*-
"""
/***************************************************************************
 EditionPlugin
                                 A QGIS plugin
 This plugin helps the edition of maps.
                              -------------------
        begin                : 2020-09-13
        git sha              : $Format:%H$
        copyright            : (C) 2020 by Ronaldo Martins da Silva Junior
        email                : ronaldo.rmsjr@gmail.com
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/
"""
import qgis  # NOQA
from qgis.core import *
from qgis.gui import *

from qgis.PyQt import sip
import os
import re
from datetime import datetime
from PyQt5.QtGui import QColor
from PyQt5.QtGui import * 
from PyQt5.QtCore import QSettings, QVariant
from qgis.core import QgsApplication
import math
import json

from .map_utils import MapParent

class Localizacao(MapParent):
	def __init__(self):			
		self.scale = 25000
		self.adaptacao_nome = True		
		self.mapItem = None
		self.folder_estilos = os.path.join(os.path.dirname(os.path.dirname(__file__)),'estilos','localizacao')

	def changeMapGrid(self):
		parameters = [
			{
				'estados':['RS'],
				'intervalX':3,
				'intervalY':3,
				'OffsetX':0,
				'OffsetY':0,
			},
			{
				'estados':['RS', 'SC'],
				'intervalX':3,
				'intervalY':3,
				'OffsetX':1,
				'OffsetY':0,
			},
			{
				'estados':['SC'],
				'intervalX':2,
				'intervalY':2,
				'OffsetX':1,
				'OffsetY':0,
			},
			{
				'estados':['SC','PR'],
				'intervalX':3,
				'intervalY':3,
				'OffsetX':0,
				'OffsetY':1,
			},
			{
				'estados':['PR'],
				'intervalX':3,
				'intervalY':3,
				'OffsetX':0,
				'OffsetY':2,
			},
			{
				'estados':['PR', 'MS'],
				'intervalX':3,
				'intervalY':3,
				'OffsetX':1,
				'OffsetY':1,
			}			
		]
		grid_data = next((item for item in parameters if set(item['estados']) == set(self.estados)), None)
		if grid_data is not None:
			intervalX = grid_data['intervalX']
			intervalY = grid_data['intervalY']
			OffsetX = grid_data['OffsetX']
			OffsetY = grid_data['OffsetY']		
			self.mapItem.grid().setIntervalX(intervalX)
			self.mapItem.grid().setIntervalY(intervalY)
			self.mapItem.grid().setOffsetX(OffsetX)
			self.mapItem.grid().setOffsetY(OffsetY)
		else:
			self.mapItem.grid().setIntervalX(3)
			self.mapItem.grid().setIntervalY(3)
			self.mapItem.grid().setOffsetX(0)
			self.mapItem.grid().setOffsetY(0)
		
	def setAdaptacaoNome(self, adaptacaoNome):
		self.adaptacaoNome = adaptacaoNome

	def make(self, composition, selectedFeature, adaptacaoNome=True):				
		# Deletando as variaveis
		self.deleteGroups(['localizacao','localizacao_nome_estado'])		
		map_layers = []

		# Criando novas
		self.localizacaoGroup_node = QgsLayerTreeGroup('localizacao')			
		self.localizacaoNomeEstadoGroup_node = QgsLayerTreeGroup('localizacao_nome_estado')			

		# Criamos o layer para os estados e adicionamos no grupo 
		estados_layer = self.createLayersGroup2('estados')
		map_layers.append(estados_layer.id())				

		# Criamos layer para a área do mapa
		grid_bound = selectedFeature.geometry().convexHull()
		grid_rectangleLayer = self.createGridRectangle(grid_bound, 'localizacao_gridbound')
		map_layers.append(grid_rectangleLayer.id())
		
		# Obtemos extent do mapa de localização e intersecoes de estados com a área do mapa e o 
		map_extent = self.getExtent(selectedFeature, estados_layer) 		
		self.setSymbol(estados_layer)		
		self.setFilter(estados_layer)
		
		# Adiciona layers aos grupos		
		self.localizacaoGroup_node.addLayer(grid_rectangleLayer)		
		self.localizacaoGroup_node.addLayer(estados_layer)
		self.localizacaoGroup_node.setItemVisibilityChecked(False)
		
		# Atualizamos o mapa				
		QgsProject.instance().addMapLayer(estados_layer, False)
		QgsProject.instance().addMapLayer(grid_rectangleLayer, False)
		# self.changeMapGrid()
		self.updateMapItem(composition, estados_layer, grid_rectangleLayer,map_extent)				
		
		# Lidando com adaptação para os nomes
		if adaptacaoNome == False:
			self.setLabel(estados_layer)
		else:			
			layer_estadosnames = self.createLayerNomeGroup('estados_nome')	
			map_layers.append(layer_estadosnames.id())		
			QgsProject.instance().addMapLayer(layer_estadosnames, False)
			self.localizacaoNomeEstadoGroup_node.addLayer(layer_estadosnames)					

			self.setFilterAndStyleNameLayer(layer_estadosnames)

			self.updateNameEstadosMapItem(composition, map_extent, layer_estadosnames)						

			self.localizacaoNomeEstadoGroup_node.setItemVisibilityChecked(False)
								
		root = QgsProject.instance().layerTreeRoot()		
		#root.addChildNode(self.localizacaoGroup_node)
		#root.addChildNode(self.localizacaoNomeEstadoGroup_node)

		
		return map_layers
		
	def createLayersGroup2(self, estados_layer_name):
		estado_uri = os.path.join(os.path.dirname(os.path.dirname(__file__)),'limites','estados_2019.shp')
		estados_layer = QgsVectorLayer(estado_uri,estados_layer_name,'ogr')
		#QgsProject.instance().addMapLayer(estados_layer)
		if (estados_layer.isValid()):
			# Start - Add no layer to estados			
			style_file = os.path.join(self.folder_estilos, 'no_labels_style.qml')
			estados_layer.loadNamedStyle(style_file)
			estados_layer.triggerRepaint()
			estados_layer.setProviderEncoding(u'UTF-8')
			estados_layer.dataProvider().setEncoding(u'UTF-8')
			# End - Add no layer to estados
		return estados_layer 
			

	def createLayerNomeGroup(self, layername_estadosnames):
		estado_uri = os.path.join(os.path.dirname(os.path.dirname(__file__)),'limites','estados_2019.shp')
		layer_estadosnames = QgsVectorLayer(estado_uri,layername_estadosnames,'ogr')
		#QgsProject.instance().addMapLayer(self.estados_layer)
		if (layer_estadosnames.isValid()):
			layer_estadosnames.setProviderEncoding(u'UTF-8')
			layer_estadosnames.dataProvider().setEncoding(u'UTF-8')
		return layer_estadosnames

	def getExtent(self, selectedFeature, estados_layer):
		bounding = []
		self.estados = []
		self.regioes = []		
		self.grid_bound = selectedFeature.geometry().convexHull()
		for count, estado_feature in enumerate(estados_layer.getFeatures()):
			if selectedFeature.geometry().intersects(estado_feature.geometry()):
				self.regioes.append(estado_feature['REGIAO'])				
				self.estados.append(estado_feature['UF'])
				bounding.append(estado_feature.geometry().boundingBox())
		self.regioes = list(set(self.regioes))
		bound = bounding[0]
		if len(bounding) > 1: 
			for estado_bound in bounding[1:]:
				bound.combineExtentWith(estado_bound)
		bound.grow(0.8)
		return bound
		
	def createTemporaryRectangleStyle(self):
		symbol = QgsSymbol.defaultSymbol(self.auxiliarRectangleLayer.geometryType())
		renderer = QgsRuleBasedRenderer(symbol)
		root_rule = renderer.rootRule()
		rule = root_rule.children()[0].clone()
		rule.symbol().setColor(QColor('white'))
		root_rule.appendChild(rule)
		root_rule.removeChildAt(0)
		self.auxiliarRectangleLayer.setRenderer(renderer)
		self.auxiliarRectangleLayer.triggerRepaint()

	def createAuxiliarRectFeat(self):
		self.auxiliarRectFeat = QgsFeature()
		auxiliarRectangleLayer_bound = QgsRectangle(self.bound)
		auxiliarRectangleLayer_bound.grow(10)
		self.auxiliarRectFeat.setGeometry( QgsGeometry.fromRect(auxiliarRectangleLayer_bound))

	def createGridRectangle(self, grid_bound, layer_name):
		# geometries = [QgsGeometry.fromRect(grid_bound)]
		geometries = [grid_bound]
		grid_rectangleLayer = self.createGridRectangleLayer(layer_name, geometries)

		# Setting configuration
		symbol = QgsSymbol.defaultSymbol(grid_rectangleLayer.geometryType())

		renderer = QgsRuleBasedRenderer(symbol)
		root_rule = renderer.rootRule()
		mi_rule = root_rule.children()[0].clone()	    
		mi_rule.symbol().setColor(QColor(213,242,213))
		root_rule.appendChild(mi_rule)
		root_rule.removeChildAt(0)
		grid_rectangleLayer.setRenderer(renderer)
		grid_rectangleLayer.triggerRepaint()		
		
		# Testing mini scale
		if self.scale < 10000:			
			style_file = os.path.join(self.folder_estilos, 'simbologia_localizacao.qml')
			self.loadStyleToLayer(grid_rectangleLayer, style_file)
		elif self.scale == 25000:			
			style_file = os.path.join(self.folder_estilos, 'simbologia_localizacao_moldura_grandes_escalas_v2.qml')
			self.loadStyleToLayer(grid_rectangleLayer, style_file)
		else:			
			style_file = os.path.join(self.folder_estilos, 'simbologia_localizacao_ge_v3.qml')
			self.loadStyleToLayer(grid_rectangleLayer, style_file)
		return grid_rectangleLayer


	def setFilterAndStyleNameLayer(self, layer):
		style_file = os.path.join(self.folder_estilos, 'no_symbology_style.qml')
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
			textFormat.setColor(QColor(0,0,0,255))
			textFormat.setSize(6)

			textBuffer = QgsTextBufferSettings()
			textBuffer.setColor(QColor(255,255,255,255))
			textBuffer.setSize(0.5)
			textBuffer.setEnabled(True)
			textFormat.setBuffer(textBuffer)
			
			settings.setFormat(textFormat)
			#create and append a new rule
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
		style_file = os.path.join(self.folder_estilos, 'divisao_estado_no_label.qml')		
		
		estados_layer.loadNamedStyle(style_file)
		estados_layer.triggerRepaint()
		renderer = estados_layer.renderer()							    
		root_rule = renderer.rootRule()
		for uf_estado in self.estados:
			# create a clone (i.e. a copy) of the default rule     
			label = uf_estado 
			# create a clone (i.e. a copy) of the default rule
			rule = root_rule.children()[0].clone()
			# set the label, expression and color
			rule.setLabel(label)
			expression = ' \"UF\" = \'{}\''.format(uf_estado)
			rule.setFilterExpression(expression)	        

			# append the rule to the list of rules
			root_rule.appendChild(rule)
		# delete the default rule
		root_rule.removeChildAt(0)
		# apply the renderer to the layer
		estados_layer.setRenderer(renderer)
		estados_layer.triggerRepaint()


	def createEstadoRule(self,root_rule, symbol, label, uf_estado):
	    rule = root_rule.children()[0].clone()
	    # set the label, expression and color
	    rule.setLabel(label)
	    expression = ' \"UF\" = \'{}\''.format(uf_estado)
	    rule.setFilterExpression(expression)
	    #rule.symbol().setColor(QColor(color_name))
	    return rule

	def setSymbol(self, estados_layer):
	    #self.estados_layer = QgsProject.instance().mapLayersByName('estados')[0]
	    registry = QgsSymbolLayerRegistry()
	    
	    #Line layer
	    lineMeta = registry.symbolLayerMetadata("SimpleLine")    
	    lineLayer = lineMeta.createSymbolLayer({'line_width': '0.00', 'color': '0,0,0', 'offset': '0', 'penstyle': 'solid', 'use_custom_dash': '0', 'joinstyle': 'bevel', 'capstyle': 'square'})
	    
	    fillMeta = registry.symbolLayerMetadata("SimpleFill")
	    fillLayer = lineMeta.createSymbolLayer({'color': '178,178,178'})

	    symbol = QgsSymbol.defaultSymbol(estados_layer.geometryType())
	    #Replace the default layer with our two custom layers
	    symbol.deleteSymbolLayer(0)
	    symbol.appendSymbolLayer(lineLayer)
	    #symbol.appendSymbolLayer(fillLayer)

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
		settings.fieldName = 'upper("ESTADOS")'
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
		textFormat.setColor(QColor(0,0,0,255))
		textFormat.setSize(10)

		textBuffer = QgsTextBufferSettings()
		textBuffer.setColor(QColor(255,255,255,255))
		textBuffer.setSize(1)
		textBuffer.setEnabled(True)
		textFormat.setBuffer(textBuffer)
		
		settings.setFormat(textFormat)
		#create and append a new rule
		#root = QgsRuleBasedLabeling.Rule(QgsPalLayerSettings())
		rule = QgsRuleBasedLabeling.Rule(settings)
		rule.setActive(True)
		# Add rule
		root.appendChild(rule)
		rules = QgsRuleBasedLabeling(root)
		estados_layer.setLabeling(rules)
		estados_layer.setLabelsEnabled(True)
		estados_layer.triggerRepaint()

	def updateMapItem(self,composition, estados_layer, grid_rectangleLayer, bound):
		if self.mapItem is None:
			self.mapItem = composition.itemById("map_localizacao")
		if self.mapItem is not None:
			mapSize = self.mapItem.sizeWithUnits()
			self.mapItem.setFixedSize(mapSize)		
			self.mapItem.setExtent(bound)		
			self.mapItem.refresh()		
			self.mapItem.setLayers([ grid_rectangleLayer, estados_layer])

	def updateNameEstadosMapItem(self, composition, bound, layer_estadosnames):
		nameEstadosMapItem = composition.itemById("map_localizacao_adaptacao")
		if nameEstadosMapItem is not None:
			mapSize = self.mapItem.sizeWithUnits()						
			nameEstadosMapItem.setBackgroundEnabled(False)
			nameEstadosMapItem.setFixedSize(QgsLayoutSize(74,74))
			nameEstadosMapItem.setExtent(bound)		
			nameEstadosMapItem.refresh()
			nameEstadosMapItem.setLayers([layer_estadosnames])
