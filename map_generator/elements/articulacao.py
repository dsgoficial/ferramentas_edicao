import os

from qgis.core import (
	QgsLayerTreeGroup, QgsProject, QgsVectorLayer,
	QgsSymbol, QgsRuleBasedRenderer
)
from PyQt5.QtGui import QColor

from .map_utils import MapParent


class Articulacao(MapParent):
    def __init__(self):
        super().__init__()
        self.customMode = True
        self.gridMode = True
        self.group_name = 'articulacao'
        self.folder_estilos = os.path.join(os.path.dirname(
            os.path.dirname(__file__)), 'estilos', 'articulacao')

    def make(self, composition, inomen, layer_feature_map_extent, gridMode, showLayers):
        # Deletando as variaveis
        self.deleteGroups(['articulacao'])
        map_layers = []

        articulacaoGroup_node = QgsLayerTreeGroup('articulacao')
        articulacaoGroup_node.setItemVisibilityChecked(False)

        # Create the grid layer
        grid_layer, grid_layerId = self.createGridLayer(inomen)
        map_layers.append(grid_layerId)

        layer_moldura_mi, moldura_layer_name = self.addLayerMoldura_v2(grid_layer)
        map_layers.append(layer_moldura_mi.id())

        # Adicionamos o layer ao mapa e ao grupo
        QgsProject.instance().addMapLayer(layer_moldura_mi, False)
        articulacaoGroup_node.addLayer(layer_moldura_mi)

        # Criar um layer para o map_extent_feature
        layer_map_extent = self.createLocalizacaoMILayer(
            'map_extent', [feat for feat in layer_feature_map_extent.getFeatures()])
        self.loadStyleToLayer(layer_map_extent, os.path.join(self.folder_estilos, 'roi_2.qml'))
        QgsProject.instance().addMapLayer(layer_map_extent, False)
        articulacaoGroup_node.addLayer(layer_map_extent)
        map_layers.append(layer_map_extent.id())
        # Alterar o estilo do layer do map_extent_feature
        # Seleciona a articulação central e a extensão do mapa
        # self.setLayerROI(grid_layer)

        # Adicionar o id do layer map_extent_feature para map_layers

        # articulacao_map_extent = self.getExtentFromCenter(map_extent_feature, layer_moldura_mi)
        articulacao_map_extent = grid_layer.extent()
        # map_extent = self.getExtentFromGrid()

        # Adicionamos a simbologia
        # self.setSymbol(map_extent_feature,  layer_moldura_mi)

        if not gridMode:
            self.setLayerROI(grid_layer)

            style_file = os.path.join(self.folder_estilos, 'moldura_feature_carta_especial_v3.qml')
            self.loadStyleToLayer(self.layer_roi, style_file)

        # Atualiza o map item
        self.specialMapUpdateMapItem(composition, articulacao_map_extent,
                                     layer_map_extent,  layer_moldura_mi)

        if showLayers:
            root = QgsProject.instance().layerTreeRoot()
            root.addChildNode(articulacaoGroup_node)
        return map_layers

    def addLayerMoldura_v2(self, grid_layer):
        layer_file = ''
        moldura_layer_name = 'moldura_articulacao'
        feats = [feat for feat in grid_layer.getFeatures()]
        epsg = grid_layer.crs().postgisSrid()
        self.layer_moldura_mi = QgsVectorLayer(
            "Polygon?crs=epsg:{epsg}".format(epsg=epsg), moldura_layer_name, "memory")
        mem_layer_data = self.layer_moldura_mi.dataProvider()
        attr = grid_layer.dataProvider().fields().toList()
        mem_layer_data.addAttributes(attr)
        self.layer_moldura_mi.updateFields()
        mem_layer_data.addFeatures(feats)
        QgsProject.instance().addMapLayer(self.layer_moldura_mi, False)
        style_file = os.path.join(self.folder_estilos, 'articulacao_especial_25k_v6.qml')
        if self.scale == 250:
            style_file = os.path.join(self.folder_estilos, 'articulacao_especial_25k_v6_250.qml')
        self.layer_moldura_mi.loadNamedStyle(style_file)
        self.layer_moldura_mi.triggerRepaint()
        return self.layer_moldura_mi, moldura_layer_name

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

    def specialMapUpdateMapItem(self, composition, map_extent, layer_roi,  layer_moldura_mi, mapItem=None):
        if mapItem is None:
            mapItem = composition.itemById("map_articulacao")
        if mapItem is not None:
            mapSize = mapItem.sizeWithUnits()
            mapItem.setFixedSize(mapSize)
            mapItem.setExtent(map_extent)
            if self.gridMode:
                mapItem.setLayers([layer_roi, layer_moldura_mi])
            else:
                mapItem.setLayers([layer_moldura_mi, self.layer_roi])
            mapItem.refresh()
