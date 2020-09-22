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
import datetime
import time
import math
import os
import shapely.wkt
import shapely.geometry

class MapTools:
    def __init__(self, iface, plugin_dir, dlg):
        self.iface 			= iface
        self.dlg 			= dlg       
        self.selectedMapItem = None 

    def check_files_existence(self, filepaths):
        pass

    def readJsonFromPath(self, path_json):        
        json_file = open(path_json)
        json_str = json_file.read()
        json_data = json.loads(json_str)
        json_file.close()
        return json_data
        
    def selectEpsg(self, hemisferio, fuso):		
        self.epsg_selected = True				
        self.hemisferio = hemisferio
        self.fuso = int(fuso)
        epsg = "319"
        if self.hemisferio == 'N':
            epsg = epsg + str(72 + self.fuso-18)
        elif self.hemisferio == 'S':
            epsg = epsg + str(78 + self.fuso-18)
        self.epsg = int(epsg)

    def checkSelectedLayerFeatures(self, layer):
        error = False
        text_message = ""
        # Check if moldura layer has only one Feature
        if layer:
            roi_selected_features = layer.selectedFeatureCount()
            if roi_selected_features == 0:
                text_message = "Sem feições selecionadas da camada moldura. A camada moldura deve possuir uma feição selecionada."
                error = True
            if error:
                self.iface.messageBar().pushMessage("Gerar Area:", text_message, level=Qgis.Info, duration=3)
                return False
            else:
                return True
        else:
            self.iface.messageBar().pushMessage("Layer de moldura não selecionado.", text_message, level=Qgis.Info, duration=3)
            return False

    def exportPDF(self):
        folder = self.saveFolder + '/'			
        pdf_filename = os.path.join(self.saveFolder, 'PDFs',self.inom + ".pdf") 
        tiff_filename = os.path.join(self.saveFolder, 'Images', self.inom + ".tif")
        exporter = QgsLayoutExporter(self.composition)
        if self.dlg.checkBox_exportPDF.isChecked():
            pdfExport_result = exporter.exportToPdf(pdf_filename, QgsLayoutExporter.PdfExportSettings())				
        if self.dlg.checkBox_exportTIF.isChecked():
            imageExport_result = exporter.exportToImage(tiff_filename, QgsLayoutExporter.ImageExportSettings())		

    def removeCreationDataGroups(self, map_groups = ['localizacao' , 'articulacao', 'map','minimap',  'divisao', 'localizacao_nome_estado']):
        root = QgsProject.instance().layerTreeRoot()
        for group in map_groups:
            group_localizacao = root.findGroup(group)
            root.removeChildNode(group_localizacao)

    def reprojectTiffs(self):
        for file in os.listdir(self.saveFolder):
            if file.endswith(".tif"):				
                rasterPath = os.path.join(self.saveFolder, file)
                rlayer = QgsRasterLayer(rasterPath, "reproject")
                if not rlayer.isValid():
                    print("Layer failed to load!")
                CRS = rlayer.crs()
                source_epsg = CRS.postgisSrid()
                del rlayer

                rasterSource = rasterPath
                # rasterSource = provider.dataSourceUri()

                source_path = " -of GTiff " + rasterSource				
                target_path  = self.saveFolder + dt.now().strftime('%Y_%m_%d_%H_%M_%S') + '.tif'

                new_espg = 4674
                target_epsg = " -t_srs EPSG:" + str(new_espg)

                cmd = "gdalwarp  -co COMPRESS=LZW -overwrite -s_srs EPSG:" + \
                str(source_epsg) + \
                target_epsg + \
                source_path + \
                " " + \
                target_path										
                os.system(cmd)

    def createTifPdfFolders(self, saveFolder, createPDF, createImage ):
        if createImage or createPDF:
            os.mkdir(saveFolder)				
            os.mkdir(os.path.join(saveFolder, 'Images'))
            os.mkdir(os.path.join(saveFolder, 'PDFs'))

    def deleteMaps(self, ids_maplayers, remove=False):	
        if remove:	
            for id_mapLayer in ids_maplayers:
                QgsProject.instance().removeMapLayer(id_mapLayer)

    def changeProjectVariable(self):
        project = QgsProject.instance()
        scope = QgsExpressionContextUtils.projectScope(project)
        QgsExpressionContextUtils.setProjectVariable(project, "escala", str(int(self.scale)))
        QgsExpressionContextUtils.setProjectVariable(project, "mi", self.mi)
        self.iface.mapCanvas().refreshAllLayers()
