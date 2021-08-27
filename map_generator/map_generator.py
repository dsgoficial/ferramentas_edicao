from qgis.core import QgsProject, QgsCoordinateReferenceSystem

from .elements.MiniMapCoordAndOthers import MiniMapCoordAndOthers
from .elements.escala_carta import EscalaCarta as HandleScale
from .elements.localizacao import Localizacao
from .elements.divisao import Divisao
from .elements.articulacao import Articulation
from .elements.map_info import HtmlData
from .elements.minimap import MiniMap
from .elements.map import Map
from .elements.handle_diagram import HandleAngles
from .elements.legend import Legend
from .elements.map_utils import MapParent
from .elements.map_identification import editMapName
from .elements.map_identification import replaceLabelRegiao
from .elements.map_index.map_index import UtmGrid
from .elements.subtitulo import Subtitulo
from .elements.qrcode_picture import create_qrcode_from_feature, replace_qrCode
from .utils import MapTools

class MapManager(MapTools):
	def __init__(self, iface, dlg, GLC):
		super().__init__(iface, dlg)
		self.mc = MapParent()
		self.GLC = GLC
		self.map_height = 570-15*2 # milimiters
		self.utm_grid = UtmGrid()
		
	def set_products_parameters(self, products_parameters):
		self.products_parameters = products_parameters
	
	def setElementsConfig(self, product):
		self.productType = product
		self.map.setGridAndLabelParameters(**self.products_parameters[product]['grid'])
		self.map.setMapSize(588,588)
				
	def create_map_instances(self):
		# Map
		self.map = Map(self.GLC)
		# Minimapa
		self.miniMap = MiniMap()
		# Coordenadas do Minimapa
		self.miniMapCoordAndOthers = MiniMapCoordAndOthers()
		# Divisao			
		self.divisao = Divisao()
		# Localização
		self.localizacao = Localizacao()
		# Articulação		
		self.articulacao = Articulation()
		# Diagrama de convergência e declinação
		self.handle_angles = HandleAngles(self.iface)				
		# Dados de info tecnica e orto
		self.htmlData = HtmlData()
		# Dados de escala
		self.dados_de_escala = HandleScale()
		# Subtítulo
		self.subtitulo = Subtitulo()
		# Legend
		self.legend = Legend()

	# Obtem as informacoes do mapa: inom, nome, mi, escala..
	def setDefaultFeatureData(self, jsonData):
		feature_map_extent = layer_feature_map_extent = None
		inom_text = inomen = mi = 'Especial'
		escala = '25'
		
		if jsonData.get('inom'):
			inom_text = jsonData['inom']
			inomen = jsonData['inom']
			mi = self.utm_grid.get_MI_MIR_from_inom(inomen)
			escala = self.utm_grid.getScale(inomen)
			layer_feature_map_extent, feature_map_extent = self.utm_grid.getNewGridFromInom(inomen)
		elif jsonData.get('center'):
			escala = int(jsonData['escala']/1000) # transformar para 250000
			center = jsonData['center']
			longitude = center['longitude']
			latitude = center['latitude']
			inomen = self.utm_grid.get_INOM_from_lat_lon(longitude, latitude, escala)	
			layer_feature_map_extent, feature_map_extent = self.create_layer_from_center_and_escala(longitude, latitude,escala)
			# layer_feature_map_extent, features_map_extent = self.getNewGridFromInom(longitude, latitude,escala)

		self.inom = inom_text
		self.mi = mi
		self.hemisferio = inomen[0]
		self.fuso = inomen[3:5]
		self.selectedFeature_id = 'id'
		self.selectEpsg(self.hemisferio, self.fuso)
		self.scale = escala
		return feature_map_extent, layer_feature_map_extent
	
	def getScaleHemisferioFusoFromInom(self, inom):
		hemisferio = inom[0]
		fuso = inom[3:5]
		scale = self.utm_grid.getScale(inom)
		return scale, hemisferio, fuso

	def createMap(self, composition, grid_layer, selected_feature, layers, showLayers=False):
		map_layers = []
		self.map.setEPSG(self.hemisferio, self.fuso)
		self.map.setSpacingFromScale(self.scale)				
		map_layers = self.map.make(composition, grid_layer, selected_feature, layers, showLayers)
		return map_layers

	def createAll(self, composition, inomen,  map_extent_feature, layer_feature_map_extent, layers, jsonData, showLayers = False):
		# Store temporary map layers ids
		ids_maplayers = []
			
		ids_maplayers.append(layer_feature_map_extent.id()) # Add layer feature map extent to remove after

		QgsProject.instance().setCrs(QgsCoordinateReferenceSystem(4326,QgsCoordinateReferenceSystem.EpsgCrsId))			
		if composition.itemById("the_map") is not None:
			ids_maplayers.extend(self.createMap(composition, layer_feature_map_extent, map_extent_feature, layers, showLayers))

		# Mini mapa
		if composition.itemById("map_miniMap") is not None:			
			ids_maplayers.extend(self.miniMap.make(composition, map_extent_feature, layers, showLayers))
			self.miniMapCoordAndOthers.make(composition, map_extent_feature, addDataToMarginal = False)	

		# Adicionando as imagens nos ids para remover
		ids_maplayers.extend(layers['id_images'])

		# Mapa de Divisão
		if composition.itemById("map_divisao") is not None:
			self.divisao.setEPSG(self.hemisferio, self.fuso)
			ids_maplayers.extend(self.divisao.make(composition, map_extent_feature, showLayers, jsonData.get('territorio_internacional')))

		# Mapa de Articulação
		if composition.itemById("map_articulacao") is not None:
			self.articulacao.setScale(self.scale)
			ids_maplayers.extend(self.articulacao.make(composition, inomen, layer_feature_map_extent, showLayers))					

		# Diagrama de convergência e declinação
		self.handle_angles.make(composition, map_extent_feature)	

		# Dados de escala e nome
		self.dados_de_escala.setScale(self.scale*1000)
		self.dados_de_escala.changeScaleLabels(composition)
		editMapName(composition, jsonData.get('nome'), self.mi, self.inom)

		if composition.itemById('label_convencoes') is not None and self.productType == 'carta_ortoimagem':
			self.legend.make(composition, self.scale, jsonData.get('classes_complementares', list()), self.defaults)

		# Mapa de Localização
		if composition.itemById("map_localizacao") is not None:
			mapLayers_loocalizacao = self.localizacao.make(composition, map_extent_feature, False,  showLayers, jsonData.get('territorio_internacional'))
			ids_maplayers.extend(mapLayers_loocalizacao)
			# linhas para comentar quando subtitulo estiver funcionado
			#regioes = self.localizacao.regioes
			#replaceLabelRegiao(composition, regioes)

		# Region label
		if composition.itemById("label_regiao") is not None:
			self.subtitulo.make(composition, map_extent_feature, jsonData.get('territorio_internacional'))

		# Generating qrcode
		if jsonData.get('acesso_restrito'):
			composition.itemById('label_bdgexQR').setVisible(False)
			composition.itemById('label_bdgexWeb').setVisible(False)
			composition.itemById('label_classified').setVisible(True)
			composition.itemById('symbol_QRCODE').setVisible(False)
		else:
			try:
				composition.itemById('label_classified').setVisible(False)
			except Exception:
				pass
			composition.itemById('label_bdgexQR').setVisible(True)
			composition.itemById('label_bdgexWeb').setVisible(True)
			composition.itemById('symbol_QRCODE').setVisible(True)
			camadas_adicionar = ["localidades", "mosaico_topograficas"]
			path_qrCode = create_qrcode_from_feature(map_extent_feature, str(self.scale), camadas_adicionar)
			replace_qrCode(composition, path_qrCode)

		# Add grid layer
		return ids_maplayers
		#ids_maplayers.extend([grid_layer.id()])
		
		# if not showLayers:
			# self.deleteMaps(ids_maplayers)
			# delete_file(path_qrCode) # deleting qrCode