import codecs
import json
import os
from pathlib import Path
import subprocess

from PyQt5.QtCore import QVariant
from qgis import processing
from qgis.core import (Qgis, QgsCredentials, QgsDataSourceUri, QgsFeature,
                       QgsField, QgsFields, QgsGeometry, QgsLayoutExporter,
                       QgsProject, QgsRasterLayer, QgsRectangle,
                       QgsVectorLayer)

from .elements.map_index.map_index import UtmGrid


class MapTools:
    def __init__(self, iface, dlg):
        self.iface = iface
        self.dlg = dlg
        self.utm_grid = UtmGrid()

    def readJsonFromPath(self, path_json):
        with codecs.open(path_json, 'r', 'utf-8-sig') as json_file:
            json_data = json.load(json_file)
        return json_data

    def create_layer_from_center_and_escala(self, longitude, latitude, escala):
        x = longitude
        spacing_x = self.utm_grid.getSpacingX(escala)
        x_min = x - spacing_x/2
        x_max = x + spacing_x/2
        y = latitude
        spacing_y = self.utm_grid.getSpacingX(escala)
        y_min = y - spacing_y/2
        y_max = y + spacing_y/2
        rect = QgsRectangle(x_min, y_min, x_max, y_max)
        geom = QgsGeometry.fromRect(rect)
        layer, feat = self.create_layer_from_geometry('map_extent', geom)
        return layer, feat

    def editComposition(self, jsonData, compositionDict, productType, oldQptsPaths):
        '''
        Checks if a custom header / footer qpt was included in json. If yes, compositionDict will be refreshed
        if jsonData provides a new qpt.
        '''
        qptList = list()
        compositor = compositionDict.get(next(iter(compositionDict)))
        headerQptPath = self.setupPath(jsonData.get('cabecalho')) or self.defaultPaths.header
        footerQptPath = self.setupPath(jsonData.get('projeto')) or self.defaultPaths.footer
        bdgexInfoQptPath = self.setupPath(jsonData.get('acesso_informacao')) or self.defaultPaths.bdgexAcessInfo
        if headerQptPath != oldQptsPaths[0]:
            oldQptsPaths[0] = headerQptPath
            dictHeader = self.products_parameters[productType]['qpt'][f'{self.scale}']['cabecalho'].copy()
            dictHeader.update({'caminho': headerQptPath})
            qptList.append(dictHeader)
        if footerQptPath != oldQptsPaths[1]:
            oldQptsPaths[1] = footerQptPath
            dictFooter = self.products_parameters[productType]['qpt'][f'{self.scale}']['projeto'].copy()
            dictFooter.update({'caminho': footerQptPath})
            qptList.append(dictFooter)
        if productType == 'carta_ortoimagem' and bdgexInfoQptPath != oldQptsPaths[2]:
            oldQptsPaths[2] = bdgexInfoQptPath
            dictBdgexAcessInfo = self.products_parameters[productType]['qpt'][f'{self.scale}']['bdgexAcessInfo'].copy()
            dictBdgexAcessInfo.update({'caminho': bdgexInfoQptPath})
            qptList.append(dictBdgexAcessInfo)

        self.htmlData.editQpts(compositor, qptList)
        return oldQptsPaths

    def create_layer_from_geometry(self, name, geom, layerType='Multipolygon', crsAuthId='4326'):
        layer = QgsVectorLayer('%s?crs=EPSG:%s' % (layerType, crsAuthId), name, 'memory')
        if not layer.isValid():
            return None
        else:
            provider = layer.dataProvider()
            fields = QgsFields()
            fields.append(QgsField('inom', QVariant.String))
            fields.append(QgsField('mi', QVariant.String))
            fields.append(QgsField('id', QVariant.String))
            provider.addAttributes(fields)
            layer.updateFields()

            layer.startEditing()
            feat = QgsFeature(fields)
            feat['id'] = '1'
            feat.setGeometry(geom)
            provider.addFeatures([feat])

            # Commit changes
            layer.commitChanges()
            return layer, feat

    def update_qpt_variables(self, composition, novo_valor, chave='edition_folder'):
        if 'variableNames' in composition.customProperties():
            chaves = composition.customProperty('variableNames')
            valores = composition.customProperty('variableValues')
            index_of_key = -1
            if chave in chaves:
                index_of_key = chaves.index(chave)
                valores[index_of_key] = novo_valor
                composition.setCustomProperty('variableValues', valores)
            else:
                chaves.append(chave)
                valores.append(novo_valor)
                composition.setCustomProperty('variableNames', chaves)
                composition.setCustomProperty('variableValues', valores)
        else:
            composition.setCustomProperty('variableNames', [chave])
            composition.setCustomProperty('variableValues', [novo_valor])

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

    def getDictWithEqualKeys(self, list_of_dict, dict_to_check, equal_keys):
        for dict_in_list in list_of_dict:
            for key in equal_keys:
                if dict_to_check[key] != dict_in_list[key]:
                    continue
            return dict_in_list

    def getMapLayers(self, connectedUri,  list_dict_maptables, list_dict_minimaptables, tipo_produto, escala):
        map_layers_db, map_layersId_db = self.getLayersFromDB(
            connectedUri,  list_dict_maptables, "carta",  tipo_produto, escala)
        minimap_layers_db, minimap_layersId_db = self.getLayersFromDB(
            connectedUri, list_dict_minimaptables, "carta_mini",   tipo_produto, escala)
        return map_layers_db, map_layersId_db, minimap_layers_db, minimap_layersId_db

    def getDBConnection(self, connectionDict, oldUri=None):
        if not connectionDict:
            return False, None

        host = connectionDict.get('servidor')
        port = connectionDict.get('porta')
        db_name = connectionDict.get('nome')

        if oldUri and oldUri.host() == host and oldUri.port() == port and oldUri.database() == db_name:
            return True, oldUri

        uri = QgsDataSourceUri()
        uri.setConnection(host, port, db_name, None, None)
        connInfo = uri.connectionInfo()
        instance = QgsCredentials.instance()
        success, user, passwd = instance.get(connInfo, None, None)
        if success:
            uri.setUsername(user)
            uri.setPassword(passwd)
            instance.put(connInfo, user, passwd)
            return success, uri
        else:
            return success, None

    def getLayer(self, connectedUri, dict_layer, grupo):
        schema = dict_layer['schema']
        tablename = dict_layer['tabela']
        # geometrycol = dict_layer['geometrycol']
        geometrycol = 'geom'
        layername = tablename + '_' + grupo

        # uri.setDataSource('', '(' + sql + ')', 'geom', '', 'id')
        connectedUri.setDataSource(schema, tablename, geometrycol)

        layer = QgsVectorLayer(connectedUri.uri(False), layername, "postgres")
        return layer

    def getLayersFromDB(self, connectedUri, tables_dict, grupo, tipo_produto, escala):
        layers_db = []
        layersId_db = []
        style_folder = os.path.join(os.path.dirname(__file__), 'produtos',
                                    tipo_produto, 'estilos', escala, grupo)
        if connectedUri is not None:
            for dict_layer in tables_dict:
                layer_db = self.getLayer(connectedUri, dict_layer, grupo)
                if (layer_db.isValid()):
                    QgsProject.instance().addMapLayer(layer_db, False)
                    style_file = os.path.join(style_folder, dict_layer['tabela'] + '.qml')
                    if os.path.exists(style_file):
                        _, status = layer_db.loadNamedStyle(style_file, True)
                        layer_db.triggerRepaint()
                    layers_db.append(layer_db)
                    layersId_db.append(layer_db.id())
        return layers_db, layersId_db

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
            self.iface.messageBar().pushMessage("Layer de moldura não selecionado.",
                                                text_message, level=Qgis.Info, duration=3)
            return False

    def exportMap(self, composition):
        basename = self.mi + '_' + self.inom if self.mi else self.inom
        exporter = QgsLayoutExporter(composition)
        if self.dlg.checkBoxExportPdf.isChecked():
            pdfFilePath = os.path.join(self.exportFolder, f'{basename}.pdf')
            pdfExporterSettings = QgsLayoutExporter.PdfExportSettings()
            pdfExporterSettings.rasterizeWholeImage = True
            pdfExporterSettings.simplifyGeometries = False
            pdfExporterSettings.appendGeoreference = True
            pdfExporterSettings.exportMetadata = False
            pdfExporterSettings.dpi = 400
            exporter.exportToPdf(pdfFilePath, pdfExporterSettings)
        if self.dlg.checkBoxExportGeotiff.isChecked():
            tiffFilePath = os.path.join(self.exportFolder, f'{basename}.tif')
            tiffExporterSettings = QgsLayoutExporter.ImageExportSettings()
            tiffExporterSettings.dpi = 400
            exporter.exportToImage(tiffFilePath, tiffExporterSettings)
        del exporter

    def removeCreationDataGroups(self, map_groups=['localizacao', 'articulacao', 'map', 'minimap',  'divisao']):
        root = QgsProject.instance().layerTreeRoot()
        for group in map_groups:
            group_localizacao = root.findGroup(group)
            root.removeChildNode(group_localizacao)

    def reproject(self, srcPath, dstPath, srcEPSG, dstEPSG=4674):
        return subprocess.run([
            'gdalwarp', '-overwrite',
            '-s_srs', f'EPSG:{srcEPSG}',
            '-t_srs', f'EPSG:{dstEPSG}',
            '-of', 'GTiff', srcPath, dstPath
        ])

    def compressRaster(self, srcPath, dstPath):
        return subprocess.run([
            'gdal_translate', '-b', '1', '-b', '2', '-b', '3', 
            '-co', 'COMPRESS=JPEG', '-co', 'TILED=YES', '-co', 'PHOTOMETRIC=YCBCR',
            srcPath, dstPath
        ])

    def setupMasks(self, produto):
        pathJson = Path(__file__).parent / 'produtos' / produto / 'mascaras.json'
        if pathJson.exists():
            processing.run(
                'FerramentasExperimentaisProvider:loadmasks',
                {'JSON_FILE': str(pathJson),
                    'GROUP': 'map'
                }
            )

    def reprojectTiffs(self):
        dstPath = os.path.join(self.exportFolder, 'padrao_bdgex')
        os.mkdir(dstPath)
        for file in os.listdir(self.exportFolder):
            if file.endswith(".tif"):
                rasterPath = os.path.join(self.exportFolder, file)
                _lyr = QgsRasterLayer(rasterPath, "reproject")
                srcEPSG = _lyr.crs().postgisSrid()
                del _lyr
                filename = (file.split('.'))[0]
                
                reprojectPath = os.path.join(dstPath, filename + '_reprojetado.tif')
                self.reproject(rasterPath, reprojectPath, srcEPSG, 4674)

                target_path = os.path.join(dstPath, filename + '.tif')
                self.compressRaster(reprojectPath, target_path)

                os.remove(reprojectPath)

    def deleteMaps(self, idsMapLayers):
        QgsProject.instance().removeMapLayers(idsMapLayers)

    def cleanLayerTreeRoot(self):
        QgsProject.instance().layerTreeRoot().removeAllChildren()

    def setupPath(self, path, isDir=False):
        pathObj = Path(path) if path else None
        if pathObj:
            if (isDir and pathObj.is_dir()) or (not isDir and pathObj.is_file()):
                return pathObj
