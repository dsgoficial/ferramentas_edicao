from qgis.core import QgsLayerTreeGroup, QgsProject, QgsCoordinateReferenceSystem

from .map_utils import MapParent


class MiniMap(MapParent):

	def make(self, composition, mapArea, layers, showLayers=False):	
		self.deleteGroups(['minimap'])	

		mapExtents = mapArea.geometry().convexHull().boundingBox()
		# Creating layers to lock map
		layersToLock = []
		layersToLock.extend(layers['minimap'])
		layersToLock.extend(layers['images'])
		self.updateMapItem(composition, mapExtents, layersToLock)	

		if showLayers:
			miniMapGroupNode = QgsLayerTreeGroup('minimap')	
			miniMapGroupNode.setItemVisibilityChecked(False)								
			for layer in layersToLock:
				miniMapGroupNode.addLayer(layer)
			root = QgsProject.instance().layerTreeRoot()		
			root.addChildNode(miniMapGroupNode)

		return layers['id_minimap']
    
	@staticmethod
	def updateMapItem(composition, mapExtents, layersToLock):    	
		if (mapItem:=composition.itemById("map_miniMap")) is not None:
			mapSize = mapItem.sizeWithUnits()
			mapItem.setFixedSize(mapSize)
			if layersToLock is not None:
				mapItem.setLayers(layersToLock)
			mapItem.setExtent(mapExtents)
			mapItem.setCrs(QgsCoordinateReferenceSystem('EPSG:4674'))
			mapItem.refresh()
