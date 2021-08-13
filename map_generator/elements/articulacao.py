import os
from pathlib import Path

from PyQt5.QtGui import QColor
from qgis.core import (QgsLayerTreeGroup, QgsProject, QgsRuleBasedRenderer,
                       QgsSymbol, QgsVectorLayer)

from .map_utils import MapParent


class Articulation(MapParent):
    def __init__(self):
        super().__init__()
        self.stylesFolder = Path(__file__).parent.parent / 'styles' / 'articulation'

    def make(self, composition, inomen, mapAreaLayer, showLayers):
        # Cleanup
        self.deleteGroups(['articulation'])
        mapIDsToBeDisplayed = []

        articulationNodeGroup = QgsLayerTreeGroup('articulation')
        articulationNodeGroup.setItemVisibilityChecked(False)

        # Creating the articulation frame
        gridLayer = self.createGridLayer(inomen)
        mapIDsToBeDisplayed.append(gridLayer.id())

        articulationFrameLayer = self.createArticulationFrame(gridLayer)
        mapIDsToBeDisplayed.append(articulationFrameLayer.id())
        # QgsProject.instance().addMapLayer(articulationFrameLayer, False)
        articulationNodeGroup.addLayer(articulationFrameLayer)

        # Creating a copy of mapAreaLayer
        mapAreaLayer = self.createVectorLayerFromIter(
            'articulationMapArea', mapAreaLayer.getFeatures()
        )
        self.loadStyleToLayer(mapAreaLayer, os.path.join(self.stylesFolder, 'mapExtentStyle.qml'))
        QgsProject.instance().addMapLayer(mapAreaLayer, False)
        articulationNodeGroup.addLayer(mapAreaLayer)
        mapIDsToBeDisplayed.append(mapAreaLayer.id())

        # Updates composition
        self.updateComposition(
            composition, gridLayer.extent(), mapAreaLayer,  articulationFrameLayer)

        if showLayers:
            root = QgsProject.instance().layerTreeRoot()
            root.addChildNode(articulationNodeGroup)
        
        return mapIDsToBeDisplayed

    def createArticulationFrame(self, gridLayer):
        epsg = gridLayer.crs().postgisSrid()
        articulationLayer = QgsVectorLayer(f"Polygon?crs=epsg:{epsg}", 'articulationFrame', "memory")
        articulationLayerProvider = articulationLayer.dataProvider()
        attr = gridLayer.dataProvider().fields().toList()
        articulationLayerProvider.addAttributes(attr)
        articulationLayer.updateFields()
        articulationLayerProvider.addFeatures(gridLayer.getFeatures())
        QgsProject.instance().addMapLayer(articulationLayer, False)
        styleFile = self.stylesFolder / 'articulacao_especial_25k_v6.qml'
        if self.scale == 250:
            styleFile = self.stylesFolder / 'articulacao_especial_25k_v6_250.qml'
        articulationLayer.loadNamedStyle(styleFile)
        articulationLayer.triggerRepaint()
        return articulationLayer

    def getExtentFromCenter(self, selectedFeature, layer_moldura_mi):
        selection_ids = []

        feature_of_center = None
        id_feature_of_center = None
        feat_centroid = selectedFeature.geometry().centroid()
        for moldura_feature in layer_moldura_mi.getFeatures():
            if moldura_feature.geometry().contains(feat_centroid):
                feature_of_center = moldura_feature
                selection_ids.append(id_feature_of_center)
        # Bound
        bounding = []
        feature_of_center_geometry_bound = feature_of_center.geometry().buffer(0.05, 0)
        for moldura_feature in layer_moldura_mi.getFeatures():
            if moldura_feature.geometry().intersects(feature_of_center_geometry_bound):
                bounding.append(moldura_feature.geometry().boundingBox())
        map_extent = bounding[0]
        if len(bounding) > 1:
            for estado_bound in bounding[1:]:
                map_extent.combineExtentWith(estado_bound)
        return map_extent

    def getExtentFromGrid(self, grid_layer):
        selectedFeature = grid_layer.selectedFeatures()[0]
        feature_of_center = selectedFeature
        self.mi = feature_of_center['inom']

        bounding = []
        for moldura_feature in grid_layer.getFeatures():
            if moldura_feature.geometry().intersects(feature_of_center.geometry()):
                bounding.append(moldura_feature.geometry().boundingBox())
        map_extent = bounding[0]

        if len(bounding) > 1:
            for estado_bound in bounding[1:]:
                map_extent.combineExtentWith(estado_bound)
        return map_extent

    def setSymbol(self, selected_feature, layer_moldura_mi):
        symbol = QgsSymbol.defaultSymbol(layer_moldura_mi.geometryType())
        renderer = QgsRuleBasedRenderer(symbol)
        root_rule = renderer.rootRule()

        # Regra para o mi analisado
        mi_rule = root_rule.children()[0].clone()
        field = "inom"
        # value = self.mi
        value = selected_feature[field]
        expression = ' \"{}\" =  \'{}\''.format(field, value)
        mi_rule.setFilterExpression(expression)
        mi_rule.symbol().setColor(QColor(213, 242, 213))
        root_rule.appendChild(mi_rule)

        expression = 'ELSE'
        neighbor_rule = root_rule.children()[0].clone()
        neighbor_rule.setFilterExpression(expression)
        neighbor_rule.symbol().setColor(QColor("white"))
        root_rule.appendChild(neighbor_rule)
        root_rule.removeChildAt(0)

        layer_moldura_mi.setRenderer(renderer)
        layer_moldura_mi.triggerRepaint()

    def updateComposition(self, composition, mapExtents, mapAreaLayer,  articulationFrameLayer):
        if (mapItem:=composition.itemById("map_articulacao")) is not None:
            mapSize = mapItem.sizeWithUnits()
            mapItem.setFixedSize(mapSize)
            mapItem.setExtent(mapExtents)
            mapItem.setLayers([articulationFrameLayer, mapAreaLayer])
            mapItem.refresh()
