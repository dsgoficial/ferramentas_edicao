from pathlib import Path

from ....interfaces.iComponent import IComponent
from qgis.core import (QgsCoordinateReferenceSystem, QgsLayerTreeGroup,
                       QgsPrintLayout, QgsProject, QgsVectorLayer)

from .componentUtils import ComponentUtils


class Articulation(ComponentUtils,IComponent):
    def __init__(self, *args, **kwargs):
        self.stylesFolder =  Path(__file__).parent.parent / 'resources' / 'styles' / 'articulation'

    def build(
        self, composition: QgsPrintLayout,  data: dict, mapAreaLayer: QgsVectorLayer,  showLayers: bool=False):
        # TODO: build mapAreaLayer with mapAreaFeat or just clone the layer

        mapIDsToBeDisplayed = []
        instance = QgsProject.instance()

        # Creating the articulation frame
        gridLayer = self.createGridLayer(data.get('inom'))
        self.loadStyleToGridLayer(gridLayer, data.get('scale'))
        instance.addMapLayer(gridLayer, False)
        mapIDsToBeDisplayed.append(gridLayer.id())

        # Creating a copy of mapAreaLayer
        mapAreaLayer = self.createVectorLayerFromIter('articulationMapArea', mapAreaLayer.getFeatures())
        self.loadStyleToLayer(mapAreaLayer, self.stylesFolder / 'mapExtentStyle.qml')
        instance.addMapLayer(mapAreaLayer, False)
        mapIDsToBeDisplayed.append(mapAreaLayer.id())

        # Updates composition
        self.updateComposition(composition, gridLayer, mapAreaLayer)

        if showLayers:
            articulationNodeGroup = QgsLayerTreeGroup('articulation')
            articulationNodeGroup.setItemVisibilityChecked(False)
            for layer in (gridLayer, mapAreaLayer):
                articulationNodeGroup.addLayer(layer)
            root = instance.layerTreeRoot()
            root.addChildNode(articulationNodeGroup)
        
        return mapIDsToBeDisplayed

    def loadStyleToGridLayer(self, layer: QgsVectorLayer, scale: int) -> QgsVectorLayer:
        if scale == 250:
            styleFile = self.stylesFolder / 'articulacao_especial_25k_v6_250.qml'
        else:
            styleFile = self.stylesFolder / 'articulacao_especial_25k_v6.qml'
        layer.loadNamedStyle(str(styleFile))
        layer.triggerRepaint()
        return layer

    def updateComposition(self, composition: QgsPrintLayout, gridLayer: QgsVectorLayer, mapAreaLayer: QgsVectorLayer):
        if (mapItem:=composition.itemById("articulation")) is not None:
            mapSize = mapItem.sizeWithUnits()
            mapItem.setFixedSize(mapSize)
            mapItem.setExtent(gridLayer.extent())
            mapItem.setLayers([gridLayer, mapAreaLayer])
            mapItem.setCrs(QgsCoordinateReferenceSystem('EPSG:4674'))
            mapItem.refresh()
