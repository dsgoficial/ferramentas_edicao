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
#subprocess.check_call(['pip', 'install', 'pyshp'])
from qgis.PyQt import sip
import os
import re
from datetime import datetime
from qgis.utils import iface
from PyQt5.QtGui import QColor
from PyQt5.QtGui import * 
from PyQt5.QtCore import QSettings, QVariant
from qgis.core import QgsApplication
import math
import json

from .map_utils import MapParent

class MiniMap(MapParent):
	def __init__(self):		
		self.group_name = 'minimap'
		self.layers_to_show = []
		self.mapItem = None

	def setParams(self):
		pass

	def make(self, composition, selected_feature, layers):	
		self.deleteGroups(['minimap'])	

		root = QgsProject.instance().layerTreeRoot()		
		miniMapGroup_node = QgsLayerTreeGroup(self.group_name)									
		
		map_extent = selected_feature.geometry().convexHull().boundingBox()
		
		# Creating layers to lock map
		layers_to_lock = []
        layers_to_lock.extend(layers['minimap'])
        layers_to_lock.extend(layers['images'])
		self.updateMapItem(composition, map_extent, layers_to_lock)		

		return layers['id_minimap']
		
		#  quando as camadas forem passadas como parametro
		# miniMapGroup_node.setItemVisibilityChecked(False)
		# QgsProject.instance().addMapLayer(camadaAdicionada, False)
		# miniMapGroup_node.addLayer(camadaAdicionada)
		# root = QgsProject.instance().layerTreeRoot()		
		# root.addChildNode(miniMapGroup_node)

	def make2(self, composition, selected_feature):
		self.layers_to_show = []		
		self.defaultCreateGroup()
		map_extent =selected_feature.geometry().boundingBox()	
		self.updateMapItem(composition, map_extent)
		self.lockLegendItems()
		return [ layer_to_lock.id() for layer_to_lock in self.layers_to_lock]
    
	def updateMapItem(self, composition, map_extent):    	
		if self.mapItem is None:
			self.mapItem = composition.itemById("map_miniMap")
		if self.mapItem is not None:
			mapSize = self.mapItem.sizeWithUnits()
			self.mapItem.setFixedSize(mapSize)			
			if is not None:		 	
				self.mapItem.setLayers(layers_to_lock)
			self.mapItem.setExtent(map_extent)		
			self.mapItem.refresh()
