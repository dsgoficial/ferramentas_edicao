from qgis.core import QgsFeature, QgsPrintLayout, QgsProject, QgsVectorLayer

from ....interfaces.iComponent import IComponent
from .componentUtils import ComponentUtils


class MiniMapCoords(ComponentUtils,IComponent):
	# This function populates: Nome da carta, Indíce da carta, MI da carta e as coordenadas do minimapa
	def __init__(self, *args, **kwargs):		
		pass
	
	def build(self, composition: QgsPrintLayout, mapAreaFeature: QgsFeature):
		nome, mi, indice, minimap_layer = self.createConvexHull(mapAreaFeature)
		minimap_points = self.customgetMiniMaPointsCoordinates(mapAreaFeature, minimap_layer)
		self.updateComposition(composition, minimap_points)

	def createConvexHull(self, selectedFeature):  
		mi_attr = 'mi' 
		nome_attr = 'NOME_DEFIN'
		inom_attr = 'inom'
		convex_layer = None
		nome = None
		mi = None
		indice = None

		mi = selectedFeature[mi_attr]
		nome = mi
		if nome_attr in selectedFeature:
			nome = selectedFeature[nome_attr]
		indice = selectedFeature[inom_attr]
		geom = selectedFeature.geometry()
		convexhull = geom.convexHull()
		#Extract CRS from layer
		# CRS = self.grid_layer.crs().postgisSrid()
		CRS = 4326
		URI = "Polygon?crs=epsg:"+str(CRS)+"&field=id:integer""&index=yes"
		#Create polygon layer for convexHull
		convex_layer = QgsVectorLayer(URI,"convexhull","memory")
		#add Map Layer to Registry
		QgsProject.instance().addMapLayer(convex_layer)
		#Prepare mem_layer for editing
		convex_layer.startEditing()
		#Set feature for convexHull
		feat2 = QgsFeature()
		#Set geometry for convexHull
		feat2.setGeometry(convexhull)
		#set attributes values for convexHull
		feat2.setAttributes([1])
		convex_layer.addFeature(feat2)
		#stop editing and save changes
		convex_layer.commitChanges()
		return nome, mi, indice, convex_layer

	def dd_to_dms_FR(self, grid_number,grid_axis):
	    degree_sign= u'\N{DEGREE SIGN}'
	    is_positive = grid_number >= 0

	    if grid_axis == 'x' :
	      letter = 'E' if is_positive else 'W'
	    else :
	      letter = 'N' if is_positive else 'S'

	    dd = abs(grid_number)
	    minutes,seconds = divmod(round(dd*3600),60)
	    degrees,minutes = divmod(minutes,60)
	    #Uncomment below to get negative values
	    #degrees = degrees if is_positive else -degrees
	    output =  "%s%s%02d'%02d\" %s"  %(int(degrees),degree_sign ,int(minutes),int(seconds),letter)
	    #To pad with zero the minutes/seconds (ex: 45° 01' 02"), use the following line
	    #output =  "%s %s %02d' %02d '' %s"  %(int(degrees),degree_sign ,int(minutes),int(seconds),letter)
	    return output

	def customgetMiniMaPointsCoordinates(self, selectedFeature, miniMapLayer):
		minimap_points = []
		nome = None
		
		geom = selectedFeature.geometry()
		geom_vertices = [vertice for vertice in geom.vertices()]
		for count, vertice in enumerate(geom.vertices()):
			point = {}
			point['x'] = vertice.x()
			point['y'] = vertice.y()
			long_p = self.dd_to_dms_FR(vertice.x(), 'x')
			lat_p = self.dd_to_dms_FR(vertice.y(), 'y')
			point['lat'] = lat_p
			point['long'] = long_p
			minimap_points.append(point)

		# verificando o tipo de ponto		
		orderedy_minimap_points_y  = sorted(minimap_points, key=lambda k: k['y'])
		y_sup = orderedy_minimap_points_y[-1]['lat']
		y_inf = orderedy_minimap_points_y[0]['lat']		
		orderedy_minimap_points_x  = sorted(minimap_points, key=lambda k: k['x'])
		x_dir = orderedy_minimap_points_x[-1]['long']
		x_esq = orderedy_minimap_points_x[0]['long']
		ponto_superior_esquerdo	= {}
		ponto_superior_direito  = {}
		ponto_inferior_esquerdo	= {}
		ponto_inferior_direito  = {}
		ponto_superior_esquerdo['posicao']  = 'se'
		ponto_superior_esquerdo['lat']  	= y_sup
		ponto_superior_esquerdo['long']  	= x_esq

		ponto_superior_direito['posicao']   = 'sd'
		ponto_superior_direito['lat']   	= y_sup
		ponto_superior_direito['long']   	= x_dir

		ponto_inferior_esquerdo['posicao']  = 'ie'
		ponto_inferior_esquerdo['lat']  	= y_inf
		ponto_inferior_esquerdo['long']  	= x_esq
		
		ponto_inferior_direito['posicao']   = 'id'
		ponto_inferior_direito['lat']   	= y_inf
		ponto_inferior_direito['long']   	= x_dir

		pontos = [ponto_inferior_esquerdo, ponto_inferior_direito, ponto_superior_esquerdo, ponto_superior_direito]  
		QgsProject.instance().removeMapLayers( [miniMapLayer.id()] )  
		return pontos

	def getMiniMaPointsCoordinates(self, miniMapLayer):
		minimap_points = []
		nome = None

		for selectedFeature in miniMapLayer.getFeatures():
			geom = selectedFeature.geometry()
			for count, vertice in enumerate(geom.vertices()):
				if count ==4:
					break
				point = {}
				point['x'] = vertice.x()
				point['y'] = vertice.y()
				long_p = self.dd_to_dms_FR(vertice.x(), 'x')
				lat_p = self.dd_to_dms_FR(vertice.y(), 'y')
				point['lat'] = lat_p
				point['long'] = long_p
				minimap_points.append(point)

		# verificando o tipo de ponto
		orderedy_minimap_points  = sorted(minimap_points, key=lambda k: k['y'])

		pontos_inferiores, pontos_superiores = sorted(orderedy_minimap_points[0:2], key=lambda k: k['x']), sorted(orderedy_minimap_points[2:], key=lambda k: k['x'])
		ponto_superior_esquerdo, ponto_superior_direito  = pontos_superiores[0],pontos_superiores[1]
		ponto_inferior_esquerdo, ponto_inferior_direito  = pontos_inferiores[0],pontos_inferiores[1]
		ponto_superior_esquerdo['posicao']  = 'se'
		ponto_superior_direito['posicao']   = 'sd'
		ponto_inferior_esquerdo['posicao']  = 'ie'
		ponto_inferior_direito['posicao']   = 'id'
		pontos = [ponto_inferior_esquerdo, ponto_inferior_direito, ponto_superior_esquerdo, ponto_superior_direito]  
		QgsProject.instance().removeMapLayers( [miniMapLayer.id()] )  
		return pontos

	def updateComposition(self, composition: QgsPrintLayout, pontos: list[dict]):
	    for ponto in pontos:
	        itemname_lat = 'minimap_coord_' + ponto['posicao'] + '_lat'
	        pos_lat = composition.itemById(itemname_lat)    
	        pos_lat.setText(ponto['lat'])
	        pos_lat.refresh()
	        itemname_long = 'minimap_coord_' + ponto['posicao'] + '_long'
	        pos_long = composition.itemById(itemname_long)    
	        pos_long.setText(ponto['long'])
	        pos_long.refresh()
