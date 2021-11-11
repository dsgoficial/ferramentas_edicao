from datetime import datetime
import os
from pathlib import Path
from collections import namedtuple

from qgis.core import QgsProject, Qgis

from .elements.map_utils import MapParent as MapConnection
from .map_generator import MapManager
from .elements.map_index.map_index import UtmGrid
from .config.managerConfig import product_parameters, Defaults

class DefaultMap(MapManager):
    def __init__(self, dlg, GLC, iface=None):
        super().__init__(dlg, GLC)
        self.MapC = MapConnection()
        self.GLC = GLC
        self.iface = iface
        self.map_height = 570-15*2  # milimiters
        self.utm_grid = UtmGrid()
        self.defaults = Defaults()
        self.products_parameters = product_parameters

    def editCompositions(self, productType, compositionDict):
        '''
        Searches .qpt files for header and footer layouts, setting its defaults otherwise.
        '''
        qptList = []
        for scale, compositor in compositionDict.items():
            headerPath = Path(self.dlg.mapHeader.filePath())
            footerPath = Path(self.dlg.mapFooter.filePath())
            if headerPath.suffix == '.qpt':
                dictHeader = self.products_parameters[productType]['qpt'][scale]['cabecalho'].copy()
                dictHeader.update({'caminho': headerPath})
                qptList.append(dictHeader)
            if footerPath.suffix == '.qpt':
                dictFooter = self.products_parameters[productType]['qpt'][scale]['projeto'].copy()
                dictFooter.update({'caminho': footerPath})
                qptList.append(dictFooter)
            # TODO: get info from json
            # if True:
            #     dict_classified = self.products_parameters[productType]['qpt'][scale]['classified'].copy()
            #     dict_classified.update({'caminho': Path(__file__).parent.parent /
            #                            'map_generator' / 'produtos' / productType / 'classified.qpt'})
            #     qptList.append(dict_classified)
            self.htmlData.editQpts(compositor, qptList)

    def setCartaConfig(self, jsonData, connectedUri, compositionDict, mapAreaFeature):
        '''
        Sets map configurations
        '''
        inomen = 'Especial'
        if 'inom' in jsonData:
            inomen = jsonData['inom']
            scaleStr = str(self.utm_grid.getScale(inomen))

        if 'center' in jsonData:
            scaleInt = int(jsonData.get('escala')/1000)
            scaleStr = str(scaleInt)
            _center = jsonData.get('center')
            longitude = _center.get('longitude')
            latitude = _center.get('latitude')
            inomen = self.utm_grid.get_INOM_from_lat_lon(longitude, latitude, scaleInt)

        # Product type
        productType = jsonData.get('productType')
        strProductType = jsonData.get('strProductType')

        # Composition
        composition = compositionDict[scaleStr]

        # Necessary layers
        productLayerDictPath = Path(__file__).parent / 'produtos' / strProductType / 'camadas.json'        
        productLayersDict = self.readJsonFromPath(productLayerDictPath)

        # Filtering layers based on classes_complementares key on carta_ortoimagem
        if strProductType == 'carta_ortoimagem':
            mapLayersDict, miniMapLayersDict = self.filterLayers(
                productLayersDict.get('carta'), productLayersDict.get('carta_mini'),
                jsonData.get('classes_complementares', list()), self.defaults)
        else:
            mapLayersDict = productLayersDict.get('carta')
            miniMapLayersDict = productLayersDict.get('carta_mini')

        # Phases table(customEtapa)
        self.htmlData.customEtapa(composition, jsonData['fases'])

        # Sensors table
        self.htmlData.customSensores(composition, jsonData.get('sensores', ()))

        # Technical info
        scale, hemisferio, fuso = self.getScaleHemisferioFusoFromInom(inomen)
        self.htmlData.customTecnicalInfo(
            composition, scale, hemisferio, fuso, productType, jsonData.get('info_tecnica'),
            jsonData.get('territorio_internacional'), mapAreaFeature)

        # Sets database
        if connectedUri:
            connectedUri.setDatabase(jsonData['banco']['nome'])

        # Getting map layers
        map_layers_db, map_layersId_db, minimap_layers_db, minimap_layersId_db = self.getMapLayers(
            connectedUri,  mapLayersDict, miniMapLayersDict, strProductType, str(scale))

        # Loading images
        image_layers, image_layersId = self.MapC.createLayersRasters(jsonData.get('imagens', ()))

        # Layers dict
        layers = {
            'map': map_layers_db,
            'id_map': map_layersId_db,
            'minimap': minimap_layers_db,
            'id_minimap': minimap_layersId_db,
            'images': image_layers,
            'id_images': image_layersId,
        }

        return composition, inomen, layers

    def createCompositions(self, scales, productType):
        compositionDict = {}
        productPath = Path(__file__).parent.parent / 'map_generator' / 'produtos' / productType
        for scale in scales:
            if scale == '250':
                layoutPath = productPath / f'{productType}_250.qpt'
                composition = self.MapC.getPrintLayoutFromQptPath(layoutPath, productPath)
            else:
                layoutPath = productPath / f'{productType}.qpt'
                composition = self.MapC.getPrintLayoutFromQptPath(layoutPath, productPath)
            composition.refresh()
            compositionDict[scale] = composition
        return compositionDict

    def checkJsonFiles(self, jsonFilesPaths):
        '''
        Verify consistency of JSON files
        '''
        logs = list()
        scales = set()
        _required_keys = ['inom', 'nome', 'imagens', 'banco', 'fases', 'sensores', 'info_tecnica']
        if len(jsonFilesPaths) > 0:
            for jsonPath in jsonFilesPaths:
                jsonPath = Path(jsonPath)
                jsonErrors = namedtuple('erro_' + jsonPath.stem.replace('-', '_'), 'errors')
                jsonErrors.errors = []

                jsonMapData = self.readJsonFromPath(jsonPath)
                _jsonKeys = jsonMapData.keys()

                # Checks if has required fields
                if set(_required_keys) != set(_jsonKeys):
                    jsonErrors.errors.append(
                        f'Missing keys: {set(_required_keys).difference(_jsonKeys)}')

                # Checks if 'name' field is not empty
                if not jsonMapData.get('nome'):
                    jsonErrors.errors.append(f'Missing name field')

                # Verify if MI or INOM are correct
                if jsonMapData.get('inom'):
                    _scale = str(self.utm_grid.getScale(jsonMapData['inom']))
                    scales.add(_scale)
                elif jsonMapData.get('escala'):
                    _scale = str(int(jsonMapData['escala']/1000))
                    scales.add(_scale)
                else:
                    jsonErrors.errors.append(f'Missing MI or INOM')

                # Verify if field 'fases' exists
                if not jsonMapData.get('fases'):
                    jsonErrors.errors.append(f'Empty key: fases')

                if jsonMapData.get('center'):
                    if not (_escala:=jsonMapData.get('escala')):
                        jsonErrors.erros.append('Missing keyword: escala')
                    else:
                        if not _escala in (25000, 50000, 100000, 250000):
                            jsonErrors.erros.append(f'Supported escala values: 25000, 50000, 100000, 250000. Got {_escala}')

                logs.append(jsonErrors)

                # Verificar se todos possuem a chave sensores

                # Verificar se todos possuem a chave info tecnica
            return True, logs, scales
        else:
            return False, None, None

    def createMaps(self):
        showLayers = (Path(__file__).parent.parent / '.env').exists()

        # Set project crs
        oldProjValue = self.mc.setProjectProjection()

        # Creating map instances
        self.create_map_instances()

        # Get dlgCfg
        self.dlgCfg = self.getDlgCfg(self.dlg)
        strProductType, productType = self.getProductType(self.dlgCfg.productType)

        # Refreshing layout
        if showLayers:
            manager = QgsProject.instance().layoutManager()
            if manager.layoutByName(productType):
                manager.removeLayout(manager.layoutByName(productType))

        # Obtaining json config files and checking their consistency
        success, logs, scales = self.checkJsonFiles(self.dlgCfg.jsonFilesPaths)

        # Edit composition with project and credits qpt
        compositionDict = self.createCompositions(scales, strProductType)
        # self.editCompositions(strProductType, compositionDict)

        if success:
            self.exportFolder = self.dlgCfg.exportFolder / datetime.now().strftime('%Y_%m_%d_%H_%M_%S')
            self.exportFolder.mkdir(exist_ok=True)
            for jsonPath in self.dlgCfg.jsonFilesPaths:
                jsonData = self.readJsonFromPath(jsonPath)
                jsonData.update({
                    'productType':productType,
                    'strProductType': strProductType})
                feature_map_extent, layer_feature_map_extent = self.setDefaultFeatureData(jsonData)
                oldQptsPaths = self.editComposition(jsonData, compositionDict, strProductType, oldQptsPaths) if 'oldQptsPaths' in locals() \
                    else self.editComposition(jsonData, compositionDict, strProductType, ['','',''])
                connectedUri = self.getDBConnection(jsonData['banco'], self.dlgCfg.username, self.dlgCfg.password)
                # Set config for html labels
                composition, inomen, layers = self.setCartaConfig(
                    jsonData, connectedUri, compositionDict, feature_map_extent)

                # Get feature data for maps
                QgsProject.instance().addMapLayer(layer_feature_map_extent, False)

                self.setElementsConfig(strProductType)
                idsMapLayers = self.createAll(composition, inomen, feature_map_extent,
                               layer_feature_map_extent, layers, jsonData, showLayers)
                if showLayers:
                    manager = QgsProject.instance().layoutManager()
                    composition.setName(productType)
                    manager.addLayout(composition)
                # self.setupMasks(strProductType)
                exportStatus = self.exportMap(composition, showLayers)
                if not showLayers:
                    self.removeMaps(idsMapLayers)
                    self.cleanLayerTreeRoot()

        if self.dlgCfg.exportTiff:
            self.reprojectTiffs()

        # if not showLayers:
        self.mc.setProjectProjection(oldProjValue)

        if hasattr(self, 'iface'):
            if exportStatus:
                self.iface.messageBar().pushMessage('Status', f'Exportação concluída: {len(self.dlgCfg.jsonFilesPaths)} mapas foram exportados', Qgis.Success)
            elif showLayers:
                pass
            else:
                self.iface.messageBar().pushMessage('Status', f'Problemas na exportação dos mapas', Qgis.Critical)
