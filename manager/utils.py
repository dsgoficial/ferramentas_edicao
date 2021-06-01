from datetime import datetime as dt
import os
import json
from qgis.core import QgsLayoutExporter, QgsProject, QgsRasterLayer, Qgis, QgsExpressionContextUtils

class MapTools:
    def __init__(self, iface, plugin_dir, dlg):
        self.iface = iface
        self.dlg = dlg       

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

                source_path = " -of GTiff " + rasterPath				
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

    def deleteMaps(self, ids_maplayers, remove=False):	
        if remove:	
            for id_mapLayer in ids_maplayers:
                QgsProject.instance().removeMapLayer(id_mapLayer)