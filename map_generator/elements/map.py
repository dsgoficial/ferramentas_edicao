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
import qgis  # NOQA
from qgis.core import *
from qgis.gui import *
#subprocess.check_call(['pip', 'install', 'pyshp'])
from qgis.PyQt import sip
import os
import re
from datetime import datetime
from qgis.utils import iface
from PyQt5.QtGui import QColor
from PyQt5.QtGui import * 
from PyQt5.QtCore import QSettings, QVariant
from qgis.core import QgsApplication
import math
import json

from .map_utils import MapParent
from .map_utils import MapCreator
from gridGenerator.gui.gridAndLabelCreator import GridAndLabelCreator



class Map(MapParent):
    def __init__(self, iface, GLC):
        self.GLC = GLC
        self.mp = MapCreator(iface)                    
        self.group_name = 'map'
        self.layerName_auxiliarMoldura = "auxiliar_moldura"
        self.layer_auxiliarMoldura = None
        self.boundTeste = None
        self.mapItem = None

    def setMapSize(self, map_width=588, map_height=588):
        self.map_width = map_width
        self.map_height = map_height

    def getExtent(self, selected_feature):
        bound = selected_feature.geometry().boundingBox()
        return bound		

    # A feição criada irá servir de base para o grid
    def createLayerForGrid(self,grid_layer, selected_feature):
        # Create memory layer
        uri_shape = "Polygon"
        baseuri = uri_shape + "?crs=epsg:"			
        crs_epsg = '4326'			
        uri = baseuri + self.epsg
        layer_auxiliarMoldura = QgsVectorLayer(uri, self.layerName_auxiliarMoldura, "memory")						

        # Start editing memory layer, set all grid fields to memory layer
        layer_auxiliarMoldura.startEditing()    
        pr = layer_auxiliarMoldura.dataProvider()							
        fieldnames_gridlayer = [field.name() for field in grid_layer.fields()]
        pr.addAttributes( grid_layer.fields() )
        
        # Cria id caso nao exista na camada de moldura
        if 'id' not in fieldnames_gridlayer:
            pr.addAttributes([QgsField("id",  QVariant.String)])
        layer_auxiliarMoldura.updateFields()   			

        # Adiciona uma feição com o mesmo contorno da moldura
        geom = selected_feature.geometry()
        convexhull = geom.convexHull()
        crsSrc = QgsCoordinateReferenceSystem(4326)    # WGS 84
        self.crs_moldura = QgsCoordinateReferenceSystem(int(self.epsg), QgsCoordinateReferenceSystem.EpsgCrsId)  # WGS 84 / UTM zone 33N
        self.geom_transformation = QgsCoordinateTransform(crsSrc, self.crs_moldura, QgsProject.instance())
        convexhull.transform(self.geom_transformation)
        
        # Tenho que remover o boundTest
        boundingBox_transformed = convexhull.boundingBox()			

        # Adiciono a feição do contorno
        fet = QgsFeature()			
        fet.setGeometry(convexhull)                
        fet_attributes = selected_feature.attributes()
        
        # coloco como id um caso não tenha id 
        idx = layer_auxiliarMoldura.fields().indexFromName('id')
        if 'id' not in fieldnames_gridlayer:
            idx = -1			
        fet_attributes[idx] = '1'			
        fet.setAttributes(fet_attributes)
        pr.addFeatures([fet])			

        # Commit changes
        layer_auxiliarMoldura.commitChanges()
        
        return layer_auxiliarMoldura, boundingBox_transformed

    def setSpacingFromScale(self, scale):
        self.id_attr = 'id'
        self.id_value = 1        
        self.scale = scale
        self.spacing = int(40*scale)                

    def setGridAndLabelParameters(self, crossX, crossY, fontSize, font, fontLL, llcolor, linwidth_geo, linwidth_utm, linwidth_buffer_geo, linwidth_buffer_utm, geo_grid_color, utm_grid_color, geo_grid_buffer_color, utm_grid_buffer_color):   
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

    def generateGridStyleForLayer(self, layer_auxiliarMoldura):
        layer = layer_auxiliarMoldura
        
        layer_bound = layer
        projCRS = layer_bound.crs().authid()
        utmSRID = projCRS.replace('EPSG:', '')
        
        feature_bound = [feat for feat in layer_auxiliarMoldura.getFeatures()][0]
        feature_geometry = feature_bound.geometry()
        
        # self.GLC.geo_test(feature_geometry, layer_bound, utmSRID, self.id_attr, self.grid_id_value, self.spacing, self.crossX, self.crossY, self.scale, self.color, self.fontSize, self.font, self.fontLL, self.llcolor, self.linwidth_geo, self.linwidth_utm)
        print('Creating style')
        self.GLC.styleCreator( feature_geometry, layer_bound, utmSRID, self.id_attr, self.id_value, self.spacing, self.crossX, self.crossY, self.scale, self.fontSize, self.font, self.fontLL, self.llcolor, self.linwidth_geo, self.linwidth_utm, self.linwidth_buffer_geo, self.linwidth_buffer_utm, self.geo_grid_color, self.utm_grid_color, self.geo_grid_buffer_color, self.utm_grid_buffer_color)

    def make(self, composition, grid_layer, selected_feature):
        # Deletendo o grupo		
        map_layers = []
        self.deleteGroups(['map'])
        
        # Cria o grupo map
        root = QgsProject.instance().layerTreeRoot()
        mapGroup_node = QgsLayerTreeGroup('map')
        mapGroup_node.setItemVisibilityChecked(False)	
                    
        map_extent = self.getExtent(selected_feature)
        layer_grid_styled, map_extent_transformed = self.createLayerForGrid(grid_layer, selected_feature)	
        QgsProject.instance().addMapLayer(layer_grid_styled, False)
        map_layers.append(layer_grid_styled.id())
        
        self.generateGridStyleForLayer(layer_grid_styled)

        mapGroup_node.addLayer(layer_grid_styled)		
        
        self.updateMapItem2(composition, map_extent, map_extent_transformed, layer_grid_styled)
        map_layers.extend([ layer_to_lock.id() for layer_to_lock in self.layers_to_lock])
        #  quando as camadas forem passadas como parametro
        # mapGroup_node.setItemVisibilityChecked(False)
        # QgsProject.instance().addMapLayer(camadaAdicionada, False)
        # mapGroup_node.addLayer(camadaAdicionada)
        # root = QgsProject.instance().layerTreeRoot()		
        # root.addChildNode(mapGroup_node)

        return map_layers

    def updateMapItem2(self, composition, map_extent, map_extent_transformed, layer_auxiliarMoldura):  
        theScale = self.scale*1000.0
        if self.mapItem is None:
            self.mapItem = composition.itemById("the_map")
        if self.mapItem is not None:		
            self.mapItem.setExtent(map_extent)
            self.mapItem.setScale(theScale)
            layers_return = [layer_auxiliarMoldura]
            if hasattr(self,"layers_to_lock"):                
                self.mapItem.setLayers([layer_auxiliarMoldura] + self.layers_to_lock[::-1])
                layers_return.extend(self.layers_to_lock)
            else:                
                self.mapItem.setLayers([layer_auxiliarMoldura])
            self.mapItem.refresh()
            self.mapItem.setCrs(self.crs_moldura)
            self.mapItem.setExtent(map_extent_transformed)
            self.mapItem.setScale(theScale)
            if theScale == 250000:
                self.map_height = 494
                self.map_width = 724
            self.mapItem.attemptResize(QgsLayoutSize(self.map_width,  self.map_height, QgsUnitTypes.LayoutMillimeters))
            self.mapItem.setScale(theScale)
            self.mapItem.refresh()
            self.centerMapInAreaCarta(composition)  
            return layers_return
             

    def centerMapInAreaCarta(self, composition):		
        item_area_reservada_carta = composition.itemById('area_reservada_carta') 
        if item_area_reservada_carta is not None:
            item_area_reservada_carta.setReferencePoint(QgsLayoutItem.Middle)
            item_area_reservada_carta.refresh()
            position_area_reservada_carta = item_area_reservada_carta.positionWithUnits()
            #print(position_area_reservada_carta)

            item_the_map = composition.itemById('the_map') 
            item_the_map.setReferencePoint(QgsLayoutItem.Middle)
            item_the_map.attemptMove(position_area_reservada_carta) 
    # spacing = int(40*self.scale)
    # div.setGridLabelParameters(attribute, id_attr, id_value, spacing, crossX, crossY, self.scale, fontSize, font, fontLL, llcolor, linwidth_geo, linwidth_utm, linwidth_buffer_geo, linwidth_buffer_utm, geo_grid_color, utm_grid_color, geo_grid_buffer_color, utm_grid_buffer_color)
