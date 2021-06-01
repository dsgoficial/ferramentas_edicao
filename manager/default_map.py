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
from ..map_generator.elements.MiniMapCoordAndOthers import MiniMapCoordAndOthers
from ..map_generator.elements.escala_carta import EscalaCarta as HandleScale
from ..map_generator.elements.localizacao import Localizacao
from ..map_generator.elements.divisao import Divisao
from ..map_generator.elements.articulacao import Articulacao
from ..map_generator.elements.map_info import HtmlData
from ..map_generator.elements.minimap import MiniMap
from ..map_generator.elements.map import Map
from ..map_generator.elements.handle_diagram import HandleAngles

# Custom libraries
# Functions
from ..map_generator.elements.map_identification import editMapName
from ..map_generator.elements.map_identification import replaceLabelRegiao
# Classes
from ..map_generator.elements.map_utils import MapParent as MapConnection
from ..map_generator.map_generator import MapManager

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
import json
import datetime
import time
import math
import os
import shapely.wkt
import shapely.geometry

# external libraries
from ..map_generator.elements.map_index.map_index import UtmGrid

product_parameters = {
	'topo':{
		"grid":{
			"crossX":4,
			"crossY":4,        
			"fontSize" : 1.9,
			"font" : QFont("Arial"),
			"fontLL" : QFont("Arial"),
			"llcolor" : QColor('black'),
			"linwidth_geo" : 0.3,
			"linwidth_utm" : 0.2,
			"linwidth_buffer_geo" : 0,
			"linwidth_buffer_utm" : 0,
			"geo_grid_color"			: QColor('white'),
			"utm_grid_color"			: QColor('black'),
			"geo_grid_buffer_color" : QColor('white'),
			"utm_grid_buffer_color" : QColor('black')
		}
	},
	'carta_topografica':{
		"nome_produto":"Carta Topográfica",
		"required_files":[],
		"grid":{
			"crossX":4,
			"crossY":4,        
			"fontSize" : 1.9,
			"font" : QFont("Arial"),
			"fontLL" : QFont("Arial"),
			"llcolor" : QColor('black'),
			"linwidth_geo" : 0.12,
			"linwidth_utm" : 0.1,
			"linwidth_buffer_geo" : 0,
			"linwidth_buffer_utm" : 0,
			"geo_grid_color"			: QColor('black'),
			"utm_grid_color"			: QColor('black'),
			"geo_grid_buffer_color" : QColor('black'),
			"utm_grid_buffer_color" : QColor('black')
		},
		"qpt":{
			"50":{
				"projeto":{
					"x_0":7,
					"y_0":487,
					"width":110,
					"height":70,				
				},
				"cabecalho":{
					"x_0":7,
					"y_0":7,
					"width":110,
					"height":22,
				}
			}
		}
		
	},
	'carta_ortoimagem_tipo_i':{
		"nome_produto":"Carta Ortoimagem Tipo I",
		"required_files":[
			['map_generator','limites','estados_2019.shp'],
			['map_generator','limites','internacional.shp'],
			['map_generator','limites','municipios_2019.shp'],
			['map_generator','limites','oceano.shp'],
			['map_generator','limites','paises.shp']
		],
		"qpt":{
			"25":{
				"projeto":{
					"x_0":7,
					"y_0":487,
					"width":110,
					"height":70,				
				},
				"cabecalho":{
					"x_0":7,
					"y_0":7,
					"width":110,
					"height":22,
				}
			},
			"50":{
				"projeto":{
					"x_0":7,
					"y_0":487,
					"width":110,
					"height":70,				
				},
				"cabecalho":{
					"x_0":7,
					"y_0":7,
					"width":110,
					"height":22,
				}
			},
			"100":{
				"projeto":{
					"x_0":7,
					"y_0":487,
					"width":110,
					"height":70,				
				},
				"cabecalho":{
					"x_0":7,
					"y_0":7,
					"width":110,
					"height":22,
				}
			},
			"250":{
				"projeto":{
					"x_0":7,
					"y_0":395,
					"width":110,
					"height":70,				
				},
				"cabecalho":{
					"x_0":7,
					"y_0":7,
					"width":110,
					"height":22,
				}
			}
		},
		"html":{
			"info_tecnica":"",			
		},
		"grid":{
			"crossX":4,
			"crossY":4,            
			"fontSize" : 1.9,
			"font" : QFont("Arial"),
			"fontLL" : QFont("Arial"),
			"llcolor" : QColor('black'),
			"linwidth_geo" : 0.3,
			"linwidth_utm" : 0.2,
			"linwidth_buffer_geo" : 0.1,
			"linwidth_buffer_utm" : 0.1,
			"geo_grid_color"			: QColor('black'),
			"utm_grid_color"			: QColor('black'),
			"geo_grid_buffer_color" : QColor('white'),
			"utm_grid_buffer_color" : QColor('white')
		}
	}
}

class DefaultMap(MapManager):
	def __init__(self, iface, dlg, GLC):			
		super().__init__(iface, dlg, GLC)
		self.MapC = MapConnection()
		self.GLC 			= GLC
		self.map_height 	= 570-15*2 # milimiters
		self.epsg_selected 	= False
		self.scale_selected = False
		self.utm_grid 		= UtmGrid()
		self.set_products_parameters(product_parameters)		
	
	def setProdutoConfig(self):
		success = True
		return_param = None
		# Define a pasta onde serao salvos os arquivos de saida
		caminho_pasta_exportar 	= self.dlg.mQgsFileWidget_pasta_exportar.splitFilePaths(self.dlg.mQgsFileWidget_pasta_exportar.filePath())
		if len(caminho_pasta_exportar)>0:
			if os.path.isdir(caminho_pasta_exportar[0]):
				self.baseSaveFolder = caminho_pasta_exportar[0]
			else:
				success = False
		else:
			self.baseSaveFolder = os.path.join(os.path.dirname(os.path.dirname(__file__)),'includes', 'output')
		return success, return_param

	def editCompositions(self, tipo_produto, dict_compositions):
		for escala, compositor in dict_compositions.items():			
			# Atualiza o compositor adicionando o qpt de creditos e do projeto
			caminho_qpt_cabecalho 	= self.dlg.mQgsFileWidget_cabecalho.splitFilePaths(self.dlg.mQgsFileWidget_cabecalho.filePath())[0]
			caminho_qpt_projeto 	= self.dlg.mQgsFileWidget_projeto.splitFilePaths(self.dlg.mQgsFileWidget_projeto.filePath())[0]		
			list_dict_qpts = []
			if len(caminho_qpt_projeto)>0:				
				dict_projeto = (self.products_parameters[tipo_produto]['qpt'][escala]['projeto']).copy()
				dict_projeto.update({'caminho':caminho_qpt_projeto})
				list_dict_qpts.append(dict_projeto)
			if len(caminho_qpt_cabecalho)>0:
				dict_cabecalho = (self.products_parameters[tipo_produto]['qpt'][escala]['cabecalho']).copy()
				dict_cabecalho.update({'caminho':caminho_qpt_cabecalho})
				list_dict_qpts.append(dict_cabecalho)		
			self.htmlData.editQpts(compositor, list_dict_qpts)
	
	def setCartaConfig(self, path_json_carta, connectedUri,  dict_compositions, teste_no_layers=False):
		# Obtendo o dict do caminho json	
		if os.path.exists(path_json_carta):
			dict_carta = self.readJsonFromPath(path_json_carta)

			inomen = 'Especial'
			mi = 'Especial'
			# inom 
			if 'inom' in dict_carta:
				inomen = dict_carta['inom']
				mi 		= self.utm_grid.get_MI_MIR_from_inom(inomen)
				escala = str(self.utm_grid.getScale(inomen))
			
			if 'center' in dict_carta:
				escala = dict_carta['escala'] # transformar para 250000
				center = dict_carta['center']
				longitude = center['longitude']
				latitude = center['latitude']
				inomen = self.utm_grid.get_INOM_from_lat_lon(longitude, latitude, int(escala/1000))			


			# Tipo de produto
			str_tipo_produto = self.dlg.comboBox_tipo_produto.currentText()
			tipo_produto = '_'.join(str_tipo_produto.lower().split(' '))
			if str_tipo_produto == 'Carta Topográfica':
				tipo_produto = 'carta_topografica'

			# Print Layout para o produto
			composition = dict_compositions[escala]
			self.htmlData.setComposition(composition)
			
			# Camadas para o produto
			path_json_produto = os.path.join(os.path.dirname(os.path.dirname(__file__)),'map_generator', 'produtos', tipo_produto, 'camadas.json')
			if teste_no_layers:
				path_json_produto = os.path.join(os.path.dirname(os.path.dirname(__file__)),'map_generator', 'produtos', tipo_produto, 'camadas.json')
			dict_camadas_produto = self.readJsonFromPath(path_json_produto)

			# Maptables e Minimaptables
			list_dict_maptables = dict_camadas_produto[escala]['carta']
			list_dict_minimaptables = dict_camadas_produto[escala]['carta_mini']

			# Nome
			nome = dict_carta['nome']
			self.nome = nome
								
			# Etapas
			list_dict_etapas = dict_carta['fases']
			self.htmlData.customEtapa( composition,list_dict_etapas)		
					
			# Sensores
			list_dict_sensores = dict_carta['sensores']
			self.htmlData.customSensores( composition,list_dict_sensores)
			
			# Info tecnica carta			
			scale, hemisferio, fuso = self.getScaleHemisferioFusoFromInom(inomen)
			dict_info_tecnica = dict_carta['info_tecnica']
			
			self.htmlData.editHTMLInfoTecCarta(composition, scale, hemisferio, fuso, str_tipo_produto, dict_info_tecnica)

			# Banco
			dict_conexao = dict_carta['banco']
			if connectedUri is not None:
				connectedUri.setDatabase(dict_conexao['nome'])
			
			# Carrega camadas do banco
			map_layers_db, map_layersId_db, minimap_layers_db, minimap_layersId_db = self.getMapLayers(connectedUri,  list_dict_maptables, list_dict_minimaptables , tipo_produto, str(scale))
			
			# Carrega imagens
			list_dict_images = dict_carta['imagens']
			key_image = 'caminho_imagem'
			key_style = 'caminho_estilo'
			key_epsg = 'epsg'
			image_layers, image_layersId = self.MapC.createLayersRasters(list_dict_images, key_image, key_style, key_epsg)
			
			# Adiciona camadas e imagens para serem mostradas no mapa e minimapa
			layers = {
				'map':map_layers_db,
				'id_map':map_layersId_db,
				'minimap':minimap_layers_db,
				'id_minimap':minimap_layersId_db,
				'images':image_layers,
				'id_images':image_layersId,

			}

			return True, composition, dict_carta, inomen, layers
		else:
			return False ,None, None, None, None
		
	def createCompositions(self, list_of_scales, tipo_produto):
		dict_compositions = {}		
		novo_valor = os.path.join(os.path.dirname(__file__),'..','map_generator','produtos', tipo_produto)
		for scale in list(set(list_of_scales)):
			if scale == '250':			
				caminho_layout = os.path.join(os.path.dirname(__file__),'..','map_generator','produtos', tipo_produto, tipo_produto + '_250' +'.qpt')		
				composition = self.MapC.getPrintLayoutFromQptPath(caminho_layout, novo_valor)					
				composition.refresh()
				dict_compositions['250'] = composition
			else:
				caminho_layout = os.path.join(os.path.dirname(__file__),'..','map_generator','produtos', tipo_produto, tipo_produto +'.qpt')		
				composition = self.MapC.getPrintLayoutFromQptPath(caminho_layout, novo_valor)		
				composition.refresh()
				dict_compositions[scale] = composition
		return dict_compositions				

	def checkJsonCarta(self, caminho_json_carta):		
		return True

	def checkJsonsCarta(self, caminhos_json_carta):
		# Checa se foi selecionado algum arquivo:
		logs = []
		list_of_dict_conexoes = []
		list_of_scales = []
		success = True
		if len(caminhos_json_carta)<0:
			success = False			
		else:
			for caminho_json_carta in caminhos_json_carta:
				error = {
					'caminho':caminho_json_carta,
					'errors':[]}

				dict_carta = self.readJsonFromPath(caminho_json_carta)

				# Checar se todos elementos possuem as chaves
				required_keys = ['inom', 'nome', 'imagens', 'banco', 'fases','sensores', 'info_tecnica']
				carta_keys = dict_carta.keys()
				if set(required_keys) == set(carta_keys):
					test_required_keys = { 'required_keys': True}
					error['errors'].append(test_required_keys)
				
				# Checar se todos elementos possuem nome
				if 'nome' in dict_carta:
					if dict_carta['nome'] == '':
						test_name = { 'nome_nao_nulo': True}
						error['errors'].append(test_name)

				# Checar se todos possuem inom e válido		
				if 'inom' in dict_carta:
					escala = str(self.utm_grid.getScale(dict_carta['inom']))
					if escala not in list_of_scales:
						list_of_scales.append(escala)
				elif 'escala' in dict_carta:
					escala = str(int(dict_carta['denominador_escala'])/1000)
					if escala not in list_of_scales:
						list_of_scales.append(escala)

					
				# Verificar se todos possuem a chave etapas
				if 'fases' in dict_carta:
					if dict_carta['fases'] == []:
						test_name = { 'etapas_vazio': True}
						error['errors'].append(test_name)

				# Verificar se todos possuem a chave sensores

				# Verificar se todos possuem a chave info tecnica
				logs.append(error)
		return success, logs, list_of_scales

	def create_temporary_folder(self):
		path_temporary_folder = os.path.join(os.path.dirname(os.path.dirname(__file__)),'includes', 'output', 'temporary')
		if not os.path.isdir(path_temporary_folder):
			os.mkdir(path_temporary_folder)
			return path_temporary_folder

	def delete_temporary_folder(self):
		path_temporary_folder = os.path.join(os.path.dirname(os.path.dirname(__file__)),'includes', 'output', 'temporary')
		if os.path.isdir(path_temporary_folder):
			os.remove(path_temporary_folder)

	def createMaps(self):
		test_noLayers = False
		showLayers = False

		# Set project crs		
		oldProjValue = self.mc.setProjectProjection()		
		
		# Cria as instancias do mapa
		self.create_map_instances()

		# Obtem o tipo de produto selecionado na Ui
		str_tipo_produto = self.dlg.comboBox_tipo_produto.currentText()
		tipo_produto = '_'.join(str_tipo_produto.lower().split(' '))
		if str_tipo_produto == 'Carta Topográfica':
			tipo_produto = 'carta_topografica'
		
		success, return_param = self.setProdutoConfig()		
		
		if showLayers:						
			manager = QgsProject.instance().layoutManager()
			if manager.layoutByName(str_tipo_produto):
				manager.removeLayout(manager.layoutByName(str_tipo_produto))
		
		# Obtendo os arquivos de carta da Ui
		caminhos_json_carta 	= self.dlg.mQgsFileWidget_json_cartas.splitFilePaths(self.dlg.mQgsFileWidget_json_cartas.filePath())
		
		# checando o json da carta		
		success, logs, list_of_scales = self.checkJsonsCarta(caminhos_json_carta)
		# success = True
		
		# Edit composition with project and credits qpt
		dict_compositions = self.createCompositions(list_of_scales, tipo_produto)
		self.editCompositions(tipo_produto, dict_compositions)		
		
		if success:
			path_temporary_folder = self.create_temporary_folder()
			success_connection, connectedUri = self.getFirstConnection( caminhos_json_carta)			
			if success_connection:
				self.saveFolder = os.path.join(self.baseSaveFolder, dt.now().strftime('%Y_%m_%d_%H_%M_%S'))
				os.mkdir(self.saveFolder)

				logs = []
				for caminho_json_carta in caminhos_json_carta:
					if self.checkJsonCarta(caminho_json_carta):
						# Set config for html labels					
						success, composition, dict_carta, inomen, layers = self.setCartaConfig(caminho_json_carta, connectedUri,  dict_compositions, test_noLayers)															
						
						# Get feature data for maps
						if dict_carta:
							feature_map_extent, layer_feature_map_extent = self.getDefaultFeatureData(dict_carta)													
							QgsProject.instance().addMapLayer(layer_feature_map_extent, False)
							
							self.setElementsConfig(tipo_produto)
							# composition = dict_compositions[str(self.utm_grid.getScale(inomen))]						
							self.createAll(composition, self.nome, inomen, feature_map_extent, layer_feature_map_extent, layers, showLayers)
							if showLayers:						
								manager = QgsProject.instance().layoutManager()						
								composition.setName(str_tipo_produto)
								manager.addLayout(composition)
								break
				# Reprojeta se for o caso		
				if self.dlg.checkBox_exportar_geotiff.isChecked():
					self.reprojectTiffs()
			
		if not showLayers:
			self.mc.setProjectProjection(oldProjValue)
			self.delete_temporary_folder()
			pass
