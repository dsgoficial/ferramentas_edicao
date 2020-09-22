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

	def changeMapGrid(self, mapItem):
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
				'OffsetX':0,
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
			},
			{
				'estados':['RJ'],
				'intervalX':2,
				'intervalY':2,
				'OffsetX':1,
				'OffsetY':0,
			},
			{
				'estados':['RJ', 'MG'],
				'intervalX':3,
				'intervalY':3,
				'OffsetX':1,
				'OffsetY':1,
			},
			{
				'estados':['BA'],
				'intervalX':3,
				'intervalY':3,
				'OffsetX':0,
				'OffsetY':0,
			}	
					
		]
		grid_data = next((item for item in parameters if set(item['estados']) == set(self.estados)), None)
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

	def make(self, composition, selected_feature, adaptacaoNome=False, showLayers = False):				
		# Deletando as variaveis
		self.deleteGroups(['localizacao','localizacao_nome_estado'])		
		map_layers = []

		# Criando novas
		localizacaoGroup_node = QgsLayerTreeGroup('localizacao')			
		localizacaoGroup_node.setItemVisibilityChecked(False)
		localizacaoNomeEstadoGroup_node = QgsLayerTreeGroup('localizacao_nome_estado')		
		localizacaoNomeEstadoGroup_node.setItemVisibilityChecked(False)	

		# Criamos layer para a área do mapa
		#grid_bound = selected_feature.geometry().convexHull()
		grid_bound = selected_feature.geometry().boundingBox()		
		grid_rectangleLayer = self.createGridRectangle(grid_bound, 'localizacao_gridbound')				
		map_layers.append(grid_rectangleLayer.id())

		# Criamos o layer para os estados e adicionamos no grupo 
		caminho_shp_estado = os.path.join(os.path.dirname(os.path.dirname(__file__)),'limites','estados_2019.shp')
		caminho_estilo_estado = os.path.join(self.folder_estilos, 'no_labels_style.qml')		
		estados_layer_fundo = self.load_shp_layer(caminho_shp_estado, caminho_estilo_estado, 'estados')
		map_layers.append(estados_layer_fundo.id())				
		
		# Obtemos extent do mapa de localização e intersecoes de estados com a área do mapa e o 
		map_extent = self.getExtent(selected_feature, estados_layer_fundo) 		
		self.setSymbol(estados_layer_fundo)						
		estados_layer_fundo.loadNamedStyle(os.path.join(self.folder_estilos, 'localizacao_cinza_estado_sem_traco.qml'))
		estados_layer_fundo.triggerRepaint()
		self.setFilter(estados_layer_fundo)

		caminho_estilo_estado_frente = os.path.join(self.folder_estilos, 'contorno_linha_simples_traco_fino.qml')		
		layer_estados_frente = self.load_shp_layer(caminho_shp_estado, caminho_estilo_estado_frente, 'estados_frente')
		map_layers.append(layer_estados_frente.id())
		self.setFilter(layer_estados_frente)		

		# Adiciona layers aos grupos		
		localizacaoGroup_node.addLayer(layer_estados_frente)		
		localizacaoGroup_node.addLayer(grid_rectangleLayer)		
		localizacaoGroup_node.addLayer(estados_layer_fundo)
				
		# Atualizamos o mapa				
		QgsProject.instance().addMapLayer(estados_layer_fundo, False)
		QgsProject.instance().addMapLayer(layer_estados_frente, False)
		QgsProject.instance().addMapLayer(grid_rectangleLayer, False)
		
		# self.changeMapGrid()
		self.updateMapItem(composition, layer_estados_frente, estados_layer_fundo, grid_rectangleLayer,map_extent)				
		
		# Lidando com adaptação para os nomes
		if adaptacaoNome:			
			layer_estadosnames = self.createLayerNomeGroup('estados_nome')	
			map_layers.append(layer_estadosnames.id())		
			QgsProject.instance().addMapLayer(layer_estadosnames, False)
			localizacaoNomeEstadoGroup_node.addLayer(layer_estadosnames)					

			self.setFilterAndStyleNameLayer(layer_estadosnames)

			self.updateNameEstadosMapItem(composition, map_extent, layer_estadosnames)						
		else:					
			nameEstadosMapItem = composition.itemById("map_localizacao_adaptacao")
			if nameEstadosMapItem is not None:
				nameEstadosMapItem.setVisibility(False)
			self.setLabel(estados_layer_fundo)
		if showLayers:
			root = QgsProject.instance().layerTreeRoot()					
			root.addChildNode(localizacaoGroup_node)
			root.addChildNode(localizacaoNomeEstadoGroup_node)

		return map_layers


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
		geometries = [QgsGeometry.fromRect(grid_bound)]
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
			# style_file = os.path.join(self.folder_estilos, 'simbologia_localizacao_moldura_grandes_escalas_v2.qml')
			style_file = os.path.join(self.folder_estilos, 'simbologia_roi_em_escala.qml')
			self.loadStyleToLayer(grid_rectangleLayer, style_file)
		else:			
			# style_file = os.path.join(self.folder_estilos, 'simbologia_localizacao_ge_v3.qml')
			style_file = os.path.join(self.folder_estilos, 'simbologia_roi_em_escala.qml')			
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
		settings.fieldName = 'upper("nome")'
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
		# textFormat.setSize(10)
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
		rule.setActive(True)
		# Add rule
		root.appendChild(rule)
		rules = QgsRuleBasedLabeling(root)
		estados_layer.setLabeling(rules)
		estados_layer.setLabelsEnabled(True)
		estados_layer.triggerRepaint()

	def updateMapItem(self,composition, layer_estados_frente, estados_layer, grid_rectangleLayer, bound, mapItem=None):		
		if mapItem is None:
			mapItem = composition.itemById("map_localizacao")
		if mapItem is not None:
			mapSize = mapItem.sizeWithUnits()
			mapItem.setFixedSize(mapSize)		
			mapItem.setCrs(QgsCoordinateReferenceSystem(4326,QgsCoordinateReferenceSystem.EpsgCrsId))
			mapItem.setExtent(bound)		
			mapItem.refresh()	
			self.changeMapGrid(mapItem)	
			mapItem.setLayers([layer_estados_frente, grid_rectangleLayer, estados_layer])

	def updateNameEstadosMapItem(self, composition, bound, layer_estadosnames):
		nameEstadosMapItem = composition.itemById("map_localizacao_adaptacao")
		if nameEstadosMapItem is not None:
			nameEstadosMapItem.setVisibility(True)
			mapSize = self.mapItem.sizeWithUnits()						
			nameEstadosMapItem.setBackgroundEnabled(False)
			nameEstadosMapItem.setFixedSize(QgsLayoutSize(74,74))
			nameEstadosMapItem.setExtent(bound)		
			nameEstadosMapItem.refresh()
			nameEstadosMapItem.setLayers([layer_estadosnames])
