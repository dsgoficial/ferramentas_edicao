import codecs
from collections import namedtuple
import json
import os
from pathlib import Path
from re import U
import subprocess
import argparse

from PyQt5.QtCore import QVariant
from qgis.PyQt.QtWidgets import QDialog
from qgis import processing
from qgis.core import (Qgis, QgsCredentials, QgsDataSourceUri, QgsFeature,
                       QgsField, QgsFields, QgsGeometry, QgsLayoutExporter,
                       QgsProject, QgsRasterLayer, QgsRectangle,
                       QgsVectorLayer)

from .elements.map_index.map_index import UtmGrid


class MapTools:
    def __init__(self, dlg):
        self.dlg = dlg
        self.utm_grid = UtmGrid()
        self.conn = None

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
        spacing_y = self.utm_grid.getSpacingY(escala)
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
        headerQptPath = self.setupPath(jsonData.get('cabecalho')) or self.defaults.header
        footerQptPath = self.setupPath(jsonData.get('projeto')) or self.defaults.footer
        bdgexInfoQptPath = self.setupPath(jsonData.get('acesso_informacao')) or self.defaults.bdgexAcessInfo
        if headerQptPath != oldQptsPaths[0]:
            oldQptsPaths[0] = headerQptPath
            dictHeader = self.products_parameters[productType]['qpt'][self.scale]['cabecalho'].copy()
            dictHeader.update({'caminho': headerQptPath})
            qptList.append(dictHeader)
        if footerQptPath != oldQptsPaths[1]:
            oldQptsPaths[1] = footerQptPath
            dictFooter = self.products_parameters[productType]['qpt'][self.scale]['projeto'].copy()
            dictFooter.update({'caminho': footerQptPath})
            qptList.append(dictFooter)
        if productType == 'carta_ortoimagem' and bdgexInfoQptPath != oldQptsPaths[2]:
            oldQptsPaths[2] = bdgexInfoQptPath
            dictBdgexAcessInfo = self.products_parameters[productType]['qpt'][self.scale]['bdgexAcessInfo'].copy()
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

    def selectEpsg(self, hemisferio, fuso):
        self.hemisferio = hemisferio
        self.fuso = int(fuso)
        epsg = "319"
        if self.hemisferio == 'N':
            epsg = epsg + str(72 + self.fuso-18)
        elif self.hemisferio == 'S':
            epsg = epsg + str(78 + self.fuso-18)
        self.epsg = int(epsg)

    def getMapLayers(self, connectedUri,  list_dict_maptables, list_dict_minimaptables, tipo_produto, escala):
        map_layers_db, map_layersId_db = self.getLayersFromDB(
            connectedUri,  list_dict_maptables, "map",  tipo_produto, escala)
        minimap_layers_db, minimap_layersId_db = self.getLayersFromDB(
            connectedUri, list_dict_minimaptables, "miniMap",   tipo_produto, escala)
        return map_layers_db, map_layersId_db, minimap_layers_db, minimap_layersId_db

    def getDBConnection(self, connectionDict, user, passwd):
        host = connectionDict.get('servidor')
        port = connectionDict.get('porta')
        dbName = connectionDict.get('nome')
        if self.conn and self.conn.host() == host and self.conn.port == port and self.conn.database() == dbName:
            return self.conn
        else:
            uri = QgsDataSourceUri()
            uri.setConnection(host, port, dbName, user, passwd)
            connInfo = uri.connectionInfo()
            instance = QgsCredentials.instance()
            instance.put(connInfo, user, passwd)
            self.conn = uri
            return self.conn

    def getLayerFromPostgres(self, connectedUri, layerDict, group):
        schema = layerDict['schema']
        tableName = layerDict['tabela']
        connectedUri.setDataSource(schema, tableName, 'geom')
        return QgsVectorLayer(connectedUri.uri(False), tableName, "postgres")

    def getLayersFromDB(self, connectedUri, layersDict, group, productType, scale):
        layersList = []
        layersIDsList = []
        stylesFolder = Path(__file__).parent / 'produtos' / productType / 'styles' / group
        if connectedUri is not None:
            for layerDict in layersDict:
                layer = self.getLayerFromPostgres(connectedUri, layerDict, group)
                if layer.isValid():
                    QgsProject.instance().addMapLayer(layer, False)
                    styleFile = self.getStylePath(
                        layer.name(), self.defaults, productType, stylesFolder, scale)
                    if styleFile.exists():
                        layer.loadNamedStyle(str(styleFile), True)
                        layer.triggerRepaint()
                    layersList.append(layer)
                    layersIDsList.append(layer.id())
        return layersList, layersIDsList

    @staticmethod
    def getStylePath(layerName, defaults, productType, stylesFolder, scale):
        if productType == 'carta_ortoimagem':
            basedOnScale = defaults.scaleBasedStyleOrtho
        elif productType == 'carta_topografica':
            basedOnScale = defaults.scaleBasedStyleTopo
        if layerName in basedOnScale:
            p = stylesFolder / f'{layerName}_{scale}.qml'
            if p.exists():
                return p
        return stylesFolder / f'{layerName}.qml'

    def exportMap(self, composition, debugMode):
        basename = self.mi + '_' + self.inom if self.mi else self.inom
        exporter = QgsLayoutExporter(composition)
        if not debugMode:
            pdfFilePath = os.path.join(self.exportFolder, f'{basename}.pdf')
            pdfExporterSettings = QgsLayoutExporter.PdfExportSettings()
            pdfExporterSettings.rasterizeWholeImage = True
            pdfExporterSettings.simplifyGeometries = False
            pdfExporterSettings.appendGeoreference = True
            pdfExporterSettings.exportMetadata = False
            pdfExporterSettings.dpi = 400
            exporter.exportToPdf(pdfFilePath, pdfExporterSettings)
        if self.dlgCfg.exportTiff:
            tiffFilePath = os.path.join(self.exportFolder, f'{basename}.tif')
            tiffExporterSettings = QgsLayoutExporter.ImageExportSettings()
            tiffExporterSettings.dpi = 400
            exporter.exportToImage(tiffFilePath, tiffExporterSettings)
        del exporter

    def removeCreationDataGroups(self, map_groups=['localizacao', 'articulation', 'map', 'minimap',  'divisao']):
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

    def removeMaps(self, idsMapLayers):
        QgsProject.instance().removeMapLayers(idsMapLayers)

    def cleanLayerTreeRoot(self):
        QgsProject.instance().layerTreeRoot().removeAllChildren()

    def setupPath(self, path, isDir=False):
        pathObj = Path(path) if path else None
        if pathObj:
            if (isDir and pathObj.is_dir()) or (not isDir and pathObj.is_file()):
                return pathObj

    def getDlgCfg(self, dlg):
        '''Organizes the configuration according to its origin (dialog or headless).
        '''
        _dlgCfg = namedtuple('dlgCfg', ['isntance','productType','jsonFilesPaths','exportFolder', 'username', 'password','exportTiff'])
        if isinstance(dlg, QDialog):
            dlgCfg = _dlgCfg(
                'qgis',
                dlg.productType.currentText(),
                dlg.jsonConfigs.splitFilePaths(dlg.jsonConfigs.filePath()),
                Path(dlg.exportFolder.filePath()),
                dlg.username.text(),
                dlg.password.text(),
                dlg.checkBoxExportGeotiff.isChecked()
            )
        elif isinstance(dlg, argparse.Namespace):
            dlgCfg = _dlgCfg(
                'headless',
                dlg.tipo,
                [Path(x) for x in dlg.json],
                Path(dlg.exportFolder),
                dlg.username,
                dlg.password,
                dlg.exportTiff
            )
        return dlgCfg

    @staticmethod
    def getProductType(productType):
        '''Gets the product type and its string representation
        '''
        if productType == 'carta_ortoimagem':
            return productType, 'Carta Ortoimagem'
        elif productType == 'Carta Ortoimagem':
            return 'carta_ortoimagem', productType
        elif productType == 'carta_topografica':
            return productType, 'Carta Topográfica'
        elif productType == 'Carta Topográfica':
            return 'carta_topografica', productType

    def filterLayers(self, mapLayers, miniMapLayers, jsonData, defaults):
        '''Filters displayed classes by merging mandatory layers from managerConfig and desired classes from json file.
        '''
        _toDisplay = defaults.orthoMandatoryClasses.union(defaults.orthoOptionalClasses.intersection(set(jsonData)))
        mapLayersToDisplay = [x for x in mapLayers if x.get('tabela') in _toDisplay]
        miniMapLayersToDisplay = [x for x in miniMapLayers if x.get('tabela') in _toDisplay]
        if 'infra_elemento_energia_l' in _toDisplay:
            mapLayersToDisplay.insert(0, {
                "tabela": "edicao_simb_torre_energia_p",
                "schema": "edgv"
        })
            miniMapLayersToDisplay.insert(0, {
                "tabela": "edicao_simb_torre_energia_p",
                "schema": "edgv"
        })
        if 'elemnat_curva_nivel_l' in _toDisplay:
            mapLayersToDisplay.insert(0, {
                "tabela": "edicao_simb_cota_mestra_l",
                "schema": "edgv"
        })
            miniMapLayersToDisplay.insert(0, {
                "tabela": "edicao_simb_cota_mestra_l",
                "schema": "edgv"
        })
        return mapLayersToDisplay, miniMapLayersToDisplay

