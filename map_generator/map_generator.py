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
# Custom libraries - refatored
from .elements.MiniMapCoordAndOthers import MiniMapCoordAndOthers
from .elements.escala_carta import EscalaCarta as HandleScale
from .elements.localizacao import Localizacao
from .elements.divisao import Divisao
from .elements.articulacao import Articulacao
from .elements.map_info import HtmlData
from .elements.minimap import MiniMap
from .elements.map import Map
from .elements.handle_diagram import HandleAngles
from .elements.map_utils import MapParent
from .elements.map_utils import MapCreator

# Custom libraries
# Functions
from .elements.map_identification import editMapName
from .elements.map_identification import replaceLabelRegiao

# Classes
from .utils import MapTools

# qgis libraris
from qgis.core import *
from qgis.gui import *

# PyQT5 libraries
from PyQt5.QtCore import QSettings, QTranslator, qVersion, QCoreApplication, QAbstractTableModel, Qt, QVariant
from PyQt5.QtGui import QIcon, QFont, QColor, QImage, QPainter
from PyQt5.QtWidgets import QAction, QTableView

# Other libraries
from datetime import datetime as dt
from collections import Counter
import datetime
import time
import math
import os
import shapely.wkt
import shapely.geometry
import re
from qgis.PyQt import sip
import subprocess
import tempfile
import shutil
import json

from gridGenerator.gui.gridAndLabelCreator import GridAndLabelCreator

from .elements.map_index.map_index import UtmGrid

class MapManager(MapTools):
	def __init__(self, iface, dlg, GLC):
		super().__init__(iface, dlg)	
		self.mc = MapParent()	
		self.GLC = GLC
		self.map_height 	= 570-15*2 # milimiters		
		self.epsg_selected 	= False
		self.scale_selected = False		
		self.utm_grid		= UtmGrid()
		
	def setProductParameters(self, products_parameters):
		self.products_parameters = products_parameters
	
	def setElementsConfig(self, product):
		self.mi_attr = 'mi'
		self.inom_attr = 'inom'
		self.nome_attr = 'nome'
		self.escala_attr = 'escala'
		self.feature_selection_mode = 'json' # layer		
				
		self.map.setGridAndLabelParameters(**self.products_parameters[product]['grid'])
		self.map.setMapSize(588,588)
				
		self.articulacao.setGridMode(True)								
				
	def createMapInstances(self):
		# Map
		self.map = Map(self.iface, self.GLC)		
		# Minimapa
		self.miniMap = MiniMap()
		# Coordenadas do Minimapa
		self.miniMapCoordAndOthers = MiniMapCoordAndOthers()
		# Divisao			
		self.divisao = Divisao()
		# Localização
		self.localizacao = Localizacao()
		# Articulação		
		self.articulacao = Articulacao()
		# Diagrama de convergência e declinação
		self.handle_angles = HandleAngles(self.iface)				
		# Dados de info tecnica e orto
		self.htmlData = HtmlData()
		# Dados de escala
		self.dados_de_escala = HandleScale()

	# Obtem as informacoes do mapa: inom, nome, mi, escala..
	def getDefaultFeatureData(self, inom):		
		self.inom 		= inom
		self.mi 		= self.utm_grid.get_MI_MIR_from_inom(inom)						
		self.hemisferio = inom[0]
		self.fuso 		= inom[3:5]				
		self.selectedFeature_id = 'id'
		self.selectEpsg(self.hemisferio, self.fuso)				
		self.scale 	= self.utm_grid.getScale(inom)
		self.scale_selected = False
	
	def getScaleHemisferioFusoFromInom(self, inom):
		hemisferio = inom[0]
		fuso 		= inom[3:5]							
		scale 	= self.utm_grid.getScale(inom)
		return scale, hemisferio, fuso

	def getFirstConnection(self, caminhos_json_carta):
		success = True
		uri = None
		if len(caminhos_json_carta)>0:
			for caminho_json_carta in caminhos_json_carta:				
				dict_carta = self.readJsonFromPath(caminho_json_carta)
				dict_conexao = dict_carta['banco']
				if dict_conexao != {}:
					success, uri = self.getDBConnection(dict_conexao)
					break
				else:
					continue
		return success, uri
			
	def createMap(self, composition, grid_layer, selected_feature, layers):
		map_layers = []
		self.map.setEPSG(self.hemisferio, self.fuso)
		self.map.setCustomMode()
		self.map.setSpacingFromScale(self.scale)				
		map_layers = self.map.make(composition, grid_layer, selected_feature, layers)
		return map_layers

	def createGridLayer(self, inom):		
		grid_layer, center_feat = self.utm_grid.get_neighbors_inom(inom)
		grid_layerId = grid_layer.id()
		QgsProject.instance().addMapLayer(grid_layer, False)
		return grid_layer, grid_layerId, center_feat

	def createAll(self, composition, nome,  selected_feature, grid_layer, layers):		
		# Store temporary map layers ids
		ids_maplayers = []

	    # Composition Map Item     
		self.changeProjectVariable()
		print('Project Variable Changed - ' + str(self.mi))
			
		if composition.itemById("the_map") is not None:
			ids_maplayers.extend(self.createMap(composition, grid_layer, selected_feature, layers))

		# Mini mapa
		if composition.itemById("map_miniMap") is not None:
			if False:
				ids_maplayers.extend(self.miniMap.make(composition, selected_feature, layers))
				self.miniMapCoordAndOthers.make(composition, selected_feature, addDataToMarginal = False)	

		# Adicionando as imagens nos ids para remover
		ids_maplayers.extend(layers['id_images'])

		# Mapa de Divisão
		if composition.itemById("map_divisao") is not None:
			self.divisao.setEPSG(self.hemisferio, self.fuso)
			ids_maplayers.extend(self.divisao.make(composition, selected_feature))

		# Mapa de Articulação		
		if composition.itemById("map_articulacao") is not None: 			
			self.articulacao.setScale(self.scale)
			gridMode = True				
			ids_maplayers.extend(self.articulacao.make(composition, grid_layer, selected_feature, gridMode))					

		# Diagrama de convergência e declinação				
		self.handle_angles.make(composition, selected_feature)		

		# Dados de escala e nome
		self.dados_de_escala.setScale(self.scale*1000)
		self.dados_de_escala.setComposition(composition)
		self.dados_de_escala.changeScaleLabels()	
		editMapName(composition=composition, nome, self.mi, self.inom)

		# Mapa de Localização
		if composition.itemById("map_localizacao") is not None:
			mapLayers_loocalizacao = self.localizacao.make(composition, selected_feature)
			ids_maplayers.extend(mapLayers_loocalizacao)	
			regioes = self.localizacao.regioes
			replaceLabelRegiao(composition, regioes)	

		# Exporta os mapas
		self.exportMap(composition)

		# Reprojeta se for o caso
		if self.dlg.checkBox_exportar_padrao_bdgex.isChecked():
			self.reprojectTiffs()

		# Add grid layer
		ids_maplayers.extend([grid_layer.id()])
		self.deleteMaps(ids_maplayers, True)