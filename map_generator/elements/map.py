import os
from pathlib import Path
from PyQt5.QtGui import *
from PyQt5.QtCore import QVariant
from qgis.core import (
    QgsVectorLayer, QgsField, QgsCoordinateReferenceSystem, QgsProject,
    QgsCoordinateTransform, QgsFeature, QgsLayerTreeGroup, QgsLayoutSize,
    QgsUnitTypes, QgsUnitTypes, QgsLayoutItem
)

from .map_utils import MapParent

class Map(MapParent):
    def __init__(self, iface, GLC):
        self.GLC = GLC
        self.group_name = 'map'
        self.folder_estilos = Path(__file__).parent.parent / 'estilos' / 'map'

    def setMapSize(self, map_width=588, map_height=588):
        self.map_width = map_width
        self.map_height = map_height

    def getExtent(self, feat):
        return feat.geometry().boundingBox()

    # A feição criada irá servir de base para o grid
    def createLayerForGrid(self, grid_layer, selected_feature):
        # Create memory layer
        uri_shape = "Polygon"
        baseuri = uri_shape + "?crs=epsg:"
        crs_epsg = '4326'
        uri = baseuri + self.epsg
        layer_auxiliarMoldura = QgsVectorLayer(uri, 'auxiliar_moldura', "memory")

        # Start editing memory layer, set all grid fields to memory layer
        layer_auxiliarMoldura.startEditing()
        pr = layer_auxiliarMoldura.dataProvider()
        fieldnames_gridlayer = [field.name() for field in grid_layer.fields()]
        pr.addAttributes(grid_layer.fields())

        # Cria id caso nao exista na camada de moldura
        if 'id' not in fieldnames_gridlayer:
            pr.addAttributes([QgsField("id",  QVariant.String)])
        layer_auxiliarMoldura.updateFields()

        # Adiciona uma feição com o mesmo contorno da moldura
        geom = selected_feature.geometry()
        convexhull = geom.convexHull()
        crsSrc = QgsCoordinateReferenceSystem(4326)    # WGS 84
        self.crs_moldura = QgsCoordinateReferenceSystem(
            int(self.epsg), QgsCoordinateReferenceSystem.EpsgCrsId)  # WGS 84 / UTM zone 33N
        self.geom_transformation = QgsCoordinateTransform(
            crsSrc, self.crs_moldura, QgsProject.instance())
        convexhull.transform(self.geom_transformation)

        # Tenho que remover o boundTest
        boundingBox_transformed = convexhull.boundingBox()

        # Adiciono a feição do contorno
        fet = QgsFeature(layer_auxiliarMoldura.fields())
        fet.setGeometry(convexhull)
        fet['id'] = '1'
        '''
        fet_attributes = selected_feature.attributes()
        
        # coloco como id um caso não tenha id 
        idx = layer_auxiliarMoldura.fields().indexFromName('id')
        if 'id' not in fieldnames_gridlayer:
            idx = -1			
        fet_attributes[idx] = '1'			
        fet.setAttributes(fet_attributes)
        '''
        pr.addFeatures([fet])

        # Commit changes
        layer_auxiliarMoldura.commitChanges()

        return layer_auxiliarMoldura, boundingBox_transformed

    def setSpacingFromScale(self, scale):
        self.id_attr = 'id'
        self.id_value = 1
        self.scale = scale
        self.spacing = int(40*scale)

    def setGridAndLabelParameters(self, crossX, crossY, fontSize, font, fontLL, llcolor, linwidth_geo, linwidth_utm, linwidth_buffer_geo, linwidth_buffer_utm, geo_grid_color, utm_grid_color, geo_grid_buffer_color, utm_grid_buffer_color, masks_check):
        self.crossX = crossX
        self.crossY = crossY
        self.fontSize = fontSize
        self.font = font
        self.fontLL = fontLL
        self.llcolor = llcolor
        self.linwidth_geo = linwidth_geo
        self.linwidth_utm = linwidth_utm
        self.linwidth_buffer_geo = linwidth_buffer_geo
        self.linwidth_buffer_utm = linwidth_buffer_utm
        self.geo_grid_color = geo_grid_color
        self.utm_grid_color = utm_grid_color
        self.geo_grid_buffer_color = geo_grid_buffer_color
        self.utm_grid_buffer_color = utm_grid_buffer_color
        self.masks_check = masks_check

    def generateGridStyleForLayer(self, layer_auxiliarMoldura):
        layer = layer_auxiliarMoldura

        layer_bound = layer
        projCRS = layer_bound.crs().authid()
        utmSRID = projCRS.replace('EPSG:', '')

        feature_bound = [feat for feat in layer_auxiliarMoldura.getFeatures()][0]
        feature_geometry = feature_bound.geometry()

        # self.GLC.geo_test(feature_geometry, layer_bound, utmSRID, self.id_attr, self.grid_id_value, self.spacing, self.crossX, self.crossY, self.scale, self.color, self.fontSize, self.font, self.fontLL, self.llcolor, self.linwidth_geo, self.linwidth_utm)
        self.GLC.styleCreator(feature_geometry, layer_bound, utmSRID, self.id_attr, self.id_value, self.spacing, self.crossX, self.crossY, self.scale, self.fontSize, self.font, self.fontLL, self.llcolor,
                              self.linwidth_geo, self.linwidth_utm, self.linwidth_buffer_geo, self.linwidth_buffer_utm, self.geo_grid_color, self.utm_grid_color, self.geo_grid_buffer_color, self.utm_grid_buffer_color, self.masks_check)

    def make(self, composition, grid_layer, selected_feature, layers, showLayers=False):
        # Deletendo o grupo
        map_layers = []
        self.deleteGroups(['map'])

        # Cria o grupo map
        root = QgsProject.instance().layerTreeRoot()
        mapGroup_node = QgsLayerTreeGroup('map')
        mapGroup_node.setItemVisibilityChecked(False)

        # Criando o layer do grid e estilizando
        map_extent = self.getExtent(selected_feature)
        layer_grid_styled, map_extent_transformed = self.createLayerForGrid(
            grid_layer, selected_feature)
        QgsProject.instance().addMapLayer(layer_grid_styled, False)
        copy = self.cloneVectorLayer(layer_grid_styled, 'aux_moldura')
        # copy = layer_grid_styled.clone()
        copyStyle = Path(__file__).parent.parent / 'estilos' / 'grid' / 'style.qml'
        copy.loadNamedStyle(str(copyStyle))
        QgsProject.instance().addMapLayer(copy, False)
        map_layers.append(copy.id())
        map_layers.append(layer_grid_styled.id())
        mapGroup_node.addLayer(layer_grid_styled)
        self.generateGridStyleForLayer(layer_grid_styled)
        layer_grid_styled.triggerRepaint()

        # Criando o layer de mascara de rotulos
        layer_mascara_rotulo = self.createMaskLayer(selected_feature)
        QgsProject.instance().addMapLayer(layer_mascara_rotulo, False)
        map_layers.append(layer_mascara_rotulo.id())

        layers_to_lock = [layer_mascara_rotulo]
        layers_to_lock.extend([copy])
        layers_to_lock.extend(layers['map'])
        layers_to_lock.extend(layers['images'])
        self.updateMapItem2(composition, map_extent, map_extent_transformed,
                            layer_grid_styled, layers_to_lock)
        map_layers.extend(layers['id_map'])

        if showLayers:
            for map_layer in layers_to_lock:
                mapGroup_node.addLayer(map_layer)

            root = QgsProject.instance().layerTreeRoot()
            root.addChildNode(mapGroup_node)

        return map_layers

    def createMaskLayer(self, selected_feature):
        bound = selected_feature.geometry()
        buffered_bound = bound.buffer(0.3, 2)
        dif_bound = buffered_bound.difference(bound)
        layer_mascara_rotulo = self.createGridRectangleLayer('mascara_rotulo', [dif_bound])
        caminho_estilo_mascara = os.path.join(self.folder_estilos, 'mascara_rotulos.qml')
        layer_mascara_rotulo.loadNamedStyle(caminho_estilo_mascara)
        layer_mascara_rotulo.triggerRepaint()
        return layer_mascara_rotulo
        # QgsProject.instance().addMapLayer(grid_rectangle_layer, True)

    def updateMapItem2(self, composition, map_extent, map_extent_transformed, layer_auxiliarMoldura, layers_to_lock):
        theScale = self.scale*1000.0
        mapItem = composition.itemById("the_map")
        mapItem.setExtent(map_extent)
        mapItem.setScale(theScale)
        if layers_to_lock is not None:
            layers_to_set = [layer_auxiliarMoldura]
            layers_to_set.extend(layers_to_lock)
            mapItem.setLayers(layers_to_set)
        else:
            mapItem.setLayers([layer_auxiliarMoldura])
        mapItem.refresh()
        mapItem.setCrs(self.crs_moldura)
        mapItem.setExtent(map_extent_transformed)
        mapItem.setScale(theScale)
        if theScale == 250000:
            self.map_height = 494
            self.map_width = 724
        mapItem.attemptResize(QgsLayoutSize(
            self.map_width,  self.map_height, QgsUnitTypes.LayoutMillimeters))
        mapItem.setScale(theScale)
        mapItem.refresh()
        self.centerMapInAreaCarta(composition)

    def centerMapInAreaCarta(self, composition):
        item_area_reservada_carta = composition.itemById('area_reservada_carta')
        if item_area_reservada_carta is not None:
            item_area_reservada_carta.setReferencePoint(QgsLayoutItem.Middle)
            item_area_reservada_carta.refresh()
            position_area_reservada_carta = item_area_reservada_carta.positionWithUnits()

            item_the_map = composition.itemById('the_map')
            item_the_map.setReferencePoint(QgsLayoutItem.Middle)
            item_the_map.attemptMove(position_area_reservada_carta)
    # spacing = int(40*self.scale)
    # div.setGridLabelParameters(attribute, id_attr, id_value, spacing, crossX, crossY, self.scale, fontSize, font, fontLL, llcolor, linwidth_geo, linwidth_utm, linwidth_buffer_geo, linwidth_buffer_utm, geo_grid_color, utm_grid_color, geo_grid_buffer_color, utm_grid_buffer_color)
