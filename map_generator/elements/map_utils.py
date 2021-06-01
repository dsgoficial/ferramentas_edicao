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
import subprocess
from qgis.core import *
from qgis.gui import *
#subprocess.check_call(['pip', 'install', 'pyshp'])
from qgis.PyQt import sip
import tempfile
import shutil
import os
from datetime import datetime
import re
from datetime import datetime
from qgis.utils import iface
from PyQt5.QtGui import QColor
from PyQt5.QtGui import * 
from PyQt5.QtCore import QSettings, QVariant, QPoint
from PyQt5.QtXml import QDomDocument
from qgis.core import QgsApplication
import processing
import math
import shapely.wkt
import shapely.geometry
import json
from qgis.core import QgsVectorLayer, QgsDataSourceUri
from .map_index.map_index import UtmGrid

class MapParent:
	def __init__(self):
		self.mapItem = None
		self.selectedMapItem = None
		self.utm_grid		= UtmGrid()

	def setFeatureId(self, id):
		self.selectedFeatureId = id
	
	def getLayersFrom(self):
		orders = {		
			'grupo':[
				{
					"schema": "",
					"tabela": "",
				},
				{
					"schema": "",
					"tabela": "",
				},
				{
					"schema": "",
					"tabela": "",
				}				
			],
			'grupo2':[
				{
					"schema": "",
					"tabela": "",
				},
				{
					"schema": "",
					"tabela": "",
				},
				{
					"schema": "",
					"tabela": "",
				}				
			]
		}

	def getPrintLayoutFromQptPath(self, path, novo_valor):
		project = QgsProject.instance()

		# Load template from file
		created_layout = QgsPrintLayout(project)
		# self.update_qpt_variables(created_layout, novo_valor)
		# created_layout.initializeDefaults()		
		myTemplateFile = open(path, 'rt')
		myTemplateContent = myTemplateFile.read()
		myTemplateFile.close()
		doc = QDomDocument()
		doc.setContent(myTemplateContent)

		# adding to existing items
		#items, ok = created_layout.loadFromTemplate(doc, QgsReadWriteContext(), False)
		created_layout.loadFromTemplate(doc, QgsReadWriteContext())
		self.update_qpt_variables(created_layout, novo_valor)
		return created_layout

	def create_Multipolygon_layer_copy(self, new_layer_name, layer_to_copy):		
		attr_to_copy = layer_to_copy.dataProvider().fields().toList()
		#new_layer = QgsVectorLayer("Multipolygon?crs=epsg:{epsg}".format(epsg=layer_to_copy.crs().postgisSrid()),new_layer_name, "memory")
		new_layer = QgsVectorLayer("Polygon?crs=EPSG:4326",new_layer_name, "memory")
		new_layer.startEditing()  
		new_layer_provider = new_layer.dataProvider()
		new_layer.startEditing()  
		new_layer_provider.addAttributes(attr_to_copy)
		new_layer.updateFields()		
		new_layer_provider.addFeatures([feat for feat in layer_to_copy.getFeatures()])
		new_layer.commitChanges()
		return new_layer

		
	def update_qpt_variables(self, composition, novo_valor, chave='edition_folder'):        
		if 'variableNames' in composition.customProperties():
			chaves = composition.customProperty('variableNames')
			valores = composition.customProperty('variableValues')
			index_of_key = -1
			if chave in chaves:
				index_of_key = chaves.index(chave)		
				if isinstance(valores, str):
					valores = novo_valor
				else:
					valores[index_of_key] = novo_valor
				composition.setCustomProperty('variableValues', valores)
			else:
				chaves.append(chave)
				valores.append(novo_valor)
				composition.setCustomProperty('variableNames', chaves)
				composition.setCustomProperty('variableValues', valores)
		else:
			composition.setCustomProperty('variableNames', [chave] )
			composition.setCustomProperty('variableValues', [novo_valor])

	def setGridLayerAndComposition(self, grid_layer, composition):
		self.grid_layer = grid_layer
		self.composition = composition

	def setGridLayer(self, grid_layer):
		self.grid_layer = grid_layer	
	
	def setComposition(self, composition):
		self.composition = composition

	def load_shp_layer(self, caminho_shp, caminho_estilo, nome_camada):
		if os.path.exists(caminho_shp):
			estados_layer = QgsVectorLayer(caminho_shp,nome_camada,'ogr')
			#QgsProject.instance().addMapLayer(estados_layer)
			if (estados_layer.isValid()):
								
				if os.path.exists(caminho_estilo):
					estados_layer.loadNamedStyle(caminho_estilo)
					estados_layer.triggerRepaint()
				estados_layer.setProviderEncoding(u'UTF-8')
				estados_layer.dataProvider().setEncoding(u'UTF-8')                
			return estados_layer
		else:
			return None
	def setConnectedUri(self, connected_uri):
		self.connected_uri = connected_uri

	def createLayersRasters(self, list_dict_images, key_image, key_style, key_epsg):
		layers_image = []
		layersId_image = []
		for dict_image in list_dict_images:
			path_raster = dict_image[key_image]
			# Estilo
			path_style = None			
			if key_style in dict_image:
				if dict_image[key_style] != "":
					path_style 	= dict_image[key_style]	
			layername_raster = os.path.basename(path_raster).split('.')[0] 		
			success, layer_raster = self.createLayerRaster(path_raster, path_style)
			if success:
				# EPSG
				if dict_image[key_epsg] != "":
					epsg 	= dict_image[key_epsg]						
					layer_raster.setCrs( QgsCoordinateReferenceSystem(int(epsg), QgsCoordinateReferenceSystem.EpsgCrsId) )
				layers_image.insert(0, (layer_raster))
				layersId_image.insert(0,(layer_raster.id()))
				QgsProject.instance().addMapLayer(layer_raster, False)
		return layers_image, layersId_image

	def createLayerRaster(self,path_raster, path_style=None):
		rasterBasename = os.path.basename(path_raster).split('.')[0]
		layer_raster = QgsRasterLayer(path_raster, rasterBasename)
		if not layer_raster.isValid():
			return False, None
		else:
			# CRS = layer_raster.crs()
			# source_epsg = CRS.postgisSrid()
			if path_style is not None:						
				layer_raster.loadNamedStyle(path_style)
				layer_raster.triggerRepaint()
			return True, layer_raster	

	def createLayerVector(self,path_vector, path_style):
		baseName_vector = os.path.basename(path_vector).split('.')[0]
		layer_vector = QgsVectorLayer(path_vector, baseName_vector)
		if not layer_vector.isValid():
			print("Layer failed to load!")
			return None
		else:
			CRS = layer_vector.crs()
			source_epsg = CRS.postgisSrid()
			if path_style is not None:						
				layer_vector.loadNamedStyle(path_style)
				layer_vector.triggerRepaint()
			return layer_vector

	def deleteGroups(self, groups):
		root = QgsProject.instance().layerTreeRoot()
		for group_to_delete in groups:			
			root.removeChildNode (root.findGroup(group_to_delete))

	def setCustomMode(self):
		self.customMode = True	

	def setMapItem(self, mapItem):
		self.mapItem = mapItem

	def loadStyleToLayer(self, layer, style_file):
		if (layer.isValid()):				
			layer.loadNamedStyle(style_file)
			layer.triggerRepaint()

	def setGridMode(self, gridMode = True):
		self.gridMode = gridMode

	def setFuso(self, fuso):
		self.fuso = fuso

	def setEPSG(self, hemisferio, fuso):
		self.epsg = "319"
		if hemisferio == 'N':
			self.epsg = self.epsg + str(72 + fuso-18)
		elif hemisferio == 'S':
			self.epsg = self.epsg + str(78 + fuso-18)
		#self.GLC.setFusoHemisferio(fuso,hemisferio)

	def insertLayersToGroup(self):
		for layer_name in self.layers_toshow:
			legend_layer_name = self.group_name + '_' + layer_name 
			self.mp.insertLayerToGroup(self.group_name,legend_layer_name)

	def setLayerData(self, path_shp, id_attr):
		self.path_principalShp = path_shp
		self.idAttr_principalShp = id_attr

	def setImageLayerName(self, image_layername):
		self.image_layername = image_layername

	def setLayersToLock(self, layers_to_lock):
		self.layers_to_lock = layers_to_lock

	def setLayerToShow(self, layers_to_show):
		self.layers_to_show = layers_to_show

	def setQueryId(self, id_attr, id_value):
		self.id_attr = id_attr
		self.id_value = id_value

	def setScale(self, scale):
		self.scale = scale

	def setProjectProjection(self, projection = "useProject"):
		settings = QSettings()
		oldProjValue = settings.value("/Projections/defaultBehavior", "prompt", type=str)
		settings.setValue( "/Projections/defaultBehavior", projection)
		return oldProjValue

	def setLayerROI(self,layer_roi):
		self.layer_roi = layer_roi

	def readConfigFile(self, configFilePath):
		with open(configFilePath, 'r') as myfile:
			data=myfile.read()
		obj = json.loads(data)
		return obj

	def createGridLayer(self, inom):		
		grid_layer, center_feat = self.utm_grid.get_neighbors_inom(inom)
		grid_layerId = grid_layer.id()
		QgsProject.instance().addMapLayer(grid_layer, False)
		return grid_layer, grid_layerId

	def createLocalizacaoMILayer(self, layer_name, feats):
		baseuri = "Polygon"
		uri = baseuri + "?crs=EPSG:4326"   
		grid_rectangleLayer = QgsVectorLayer(uri, layer_name, "memory")

		# Start Editing
		grid_rectangleLayer.startEditing()    
		pr = grid_rectangleLayer.dataProvider()
		grid_rectangleLayer.startEditing()

		# Feature
		# Create feature 
		# n_feats		
		n_feats = []
		for feat in feats:
			fet = QgsFeature()
			fet.setGeometry(feat.geometry())
			n_feats.append(fet)
		pr.addFeatures(n_feats)

		# Commit changes
		grid_rectangleLayer.commitChanges()
		return grid_rectangleLayer

	def createGridRectangleLayer(self, layer_name, geometries):
		baseuri = "Polygon"
		uri = baseuri + "?crs=EPSG:4326"   
		grid_rectangleLayer = QgsVectorLayer(uri, layer_name, "memory")

		# Start Editing
		grid_rectangleLayer.startEditing()    
		pr = grid_rectangleLayer.dataProvider()
		grid_rectangleLayer.startEditing()

		# Feature
		# Create feature 
		feats = []
		for geom in geometries:
			fet = QgsFeature()
			fet.setGeometry(geom)
			feats.append(fet)
		pr.addFeatures(feats)

		# Commit changes
		grid_rectangleLayer.commitChanges()
		return grid_rectangleLayer

	def create_layer_from_features(self, layer_name, feats):
		baseuri = "Polygon"
		uri = baseuri + "?crs=EPSG:4326"   
		grid_rectangleLayer = QgsVectorLayer(uri, layer_name, "memory")

		# Start Editing
		grid_rectangleLayer.startEditing()    
		pr = grid_rectangleLayer.dataProvider()
		grid_rectangleLayer.startEditing()

		# Feature
		# Create feature 
		pr.addFeatures(feats)

		# Commit changes
		grid_rectangleLayer.commitChanges()
		return grid_rectangleLayer

	def getFeature(self):
		if self.customMode:
			self.grid_layer.selectByIds(self.selectedFeatureId)
			self.selectedFeature = self.grid_layer.selectedFeatures()[0]
		else:
			self.selectedFeature = self.grid_layer.selectedFeatures()[0]

	def defaultCreateGroup(self, layernames_layer_to_remove_ = [], groupVisibility = True):
		self.groupNode = (self.mp.groupExists(self.group_name))
		if self.groupNode: 	
			for layername_layer_to_remove in layernames_layer_to_remove_:
				layer_to_remove = QgsProject.instance().mapLayersByName(layername_layer_to_remove)
				if len(layer_to_remove)>0:
					self.mp.removeChildFromGroup(self.group_name, layer_to_remove[0])
					# QgsProject.instance().removeMapLayers( [(layer_to_remove[0]).id()] )
			self.groupNode.setItemVisibilityChecked(True)			
		else:
			self.mp.createGroup(self.group_name)
			self.mp.bringGroupFirst(self.group_name)

	def lockLegendItems(self):
		self.groupNode = (self.mp.groupExists(self.group_name))
		self.groupNode.setItemVisibilityChecked(False)
		#self.mp.hideGroup(self.groupNode, True)

class MapCreator:
	def __init__(self, iface):
		"""Constructor.

		:param iface: An interface instance that will be passed to this class
		which provides the hook by which you can manipulate the QGIS
		application at run time.
		:type iface: QgsInterface
		"""
		# Save reference to the QGIS interface
		self.iface = iface
		pass

	def hideGroup(self, node, bHide=True):
		ltv = self.iface.layerTreeView()
		model = ltv.model()
		root = QgsProject.instance().layerTreeRoot()
		if type( node ) in ( QgsLayerTreeLayer, QgsLayerTreeGroup ):
			index = model.node2index( node )
			ltv.setRowHidden( index.row(), index.parent(), bHide )
			node.setCustomProperty( 'nodeHidden', 'true' if bHide else 'false' )
			ltv.setCurrentIndex( model.node2index( root ) )


	def removeGroup(self, group_name):
		root = QgsProject.instance().layerTreeRoot()
		parent = root.findGroup(group_name)
		root.removeChildNode(parent)
		pass



def qptSizeOk(doc, str_size="110,70,mm"):   
	layoutItems = doc.elementsByTagName('LayoutItem')     
	page_layout = layoutItems.at(0)
	pg_attr = page_layout.attributes()
	size_attr = pg_attr.namedItem('size')
	size_value = size_attr.nodeValue()
	if size_value == str_size:
		return True
	else:
		return False        

def cloneItem(item, composition_dest, x_0, y_0 ):
	ref_point = item.referencePoint()
	item.setReferencePoint(QgsLayoutItem.UpperLeft)    
	original_x = item.pagePos().x()
	original_y = item.pagePos().y()
	final_x = original_x  + x_0
	final_y = original_y  + y_0

	# Create doc xml
	doc = QDomDocument('Clipboard')
	element = doc.createElement('Copied items')
	context = QgsReadWriteContext()
	item.writeXml(element, doc, context)
	
	# Add doc xml
	composition_dest.addItemsFromXml(element, doc, context, QPoint(final_x,final_y))        
	composition_dest.itemById(item.id()).attemptMove(QgsLayoutPoint (final_x, final_y))
	composition_dest.itemById(item.id()).refresh()
	item.setReferencePoint(ref_point)


def copyQptToCompositor(path_sourceQpt, composition_dest, x_0, y_0, qpt_width, qpt_height):
	p = QgsProject()
	l = QgsLayout(p)
	myTemplateFile = open(path_sourceQpt, 'rt')
	myTemplateContent = myTemplateFile.read()
	myTemplateFile.close()

	doc = QDomDocument()
	doc.setContent(myTemplateContent)   

	items, ok = l.loadFromTemplate(doc, QgsReadWriteContext(), False)
	if ok:
		str_size = str(qpt_width) + "," +  str(qpt_height) + "," + "mm" # "110,70,mm"
		if qptSizeOk(doc,str_size):
			for item in items:
				cloneItem(item, composition_dest, x_0, y_0 )
			return True
		else:
			return False
		