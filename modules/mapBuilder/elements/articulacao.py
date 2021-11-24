from pathlib import Path

from qgis.core import (QgsCoordinateReferenceSystem, QgsLayerTreeGroup,
                       QgsProject)

from .map_utils import MapParent


class Articulation(MapParent):
    def __init__(self):
        super().__init__()
        self.stylesFolder = Path(__file__).parent.parent / 'styles' / 'articulation'

    def make(self, composition, inomen, mapAreaLayer, showLayers):
        # Cleanup
        self.deleteGroups(['articulation'])
        mapIDsToBeDisplayed = []
        instance = QgsProject.instance()

        # Creating the articulation frame
        gridLayer = self.createGridLayer(inomen)
        self.loadStyleToGridLayer(gridLayer)
        instance.addMapLayer(gridLayer, False)
        mapIDsToBeDisplayed.append(gridLayer.id())

        # Creating a copy of mapAreaLayer
        mapAreaLayer = self.createVectorLayerFromIter('articulationMapArea', mapAreaLayer.getFeatures())
        self.loadStyleToLayer(mapAreaLayer, self.stylesFolder / 'mapExtentStyle.qml')
        instance.addMapLayer(mapAreaLayer, False)
        mapIDsToBeDisplayed.append(mapAreaLayer.id())

        # Updates composition
        self.updateMapItem(composition, gridLayer, mapAreaLayer)

        if showLayers:
            articulationNodeGroup = QgsLayerTreeGroup('articulation')
            articulationNodeGroup.setItemVisibilityChecked(False)
            for layer in (gridLayer, mapAreaLayer):
                articulationNodeGroup.addLayer(layer)
            root = instance.layerTreeRoot()
            root.addChildNode(articulationNodeGroup)
        
        return mapIDsToBeDisplayed

    def loadStyleToGridLayer(self, layer):
        styleFile = self.stylesFolder / 'articulacao_especial_25k_v6.qml'
        if self.scale == 250:
            styleFile = self.stylesFolder / 'articulacao_especial_25k_v6_250.qml'
        layer.loadNamedStyle(str(styleFile))
        layer.triggerRepaint()
        return layer

    def updateMapItem(self, composition, gridLayer, mapAreaLayer):
        if (mapItem:=composition.itemById("map_articulacao")) is not None:
            mapSize = mapItem.sizeWithUnits()
            mapItem.setFixedSize(mapSize)
            mapItem.setExtent(gridLayer.extent())
            mapItem.setLayers([gridLayer, mapAreaLayer])
            mapItem.setCrs(QgsCoordinateReferenceSystem('EPSG:4674'))
            mapItem.refresh()
