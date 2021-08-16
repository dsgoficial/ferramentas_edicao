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
    def __init__(self, iface, dlg, GLC):
        super().__init__(iface, dlg, GLC)
        self.MapC = MapConnection()
        self.GLC = GLC
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
        Setting map configurations
        '''
        inomen = 'Especial'
        if 'inom' in jsonData:
            inomen = jsonData['inom']
            escala = str(self.utm_grid.getScale(inomen))

        if 'center' in jsonData:
            escala = int(jsonData.get('escala')/1000)
            _center = jsonData.get('center')
            longitude = _center.get('longitude')
            latitude = _center.get('latitude')
            inomen = self.utm_grid.get_INOM_from_lat_lon(longitude, latitude, escala)

        # Tipo de produto
        str_tipo_produto = self.dlg.productType.currentText()
        tipo_produto = '_'.join(str_tipo_produto.lower().split(' '))
        if str_tipo_produto == 'Carta Topográfica':
            tipo_produto = 'carta_topografica'

        # Print Layout para o produto
        composition = compositionDict[escala]
        self.htmlData.setComposition(composition)

        # Camadas para o produto
        path_json_produto = os.path.join(os.path.dirname(os.path.dirname(
            __file__)), 'map_generator', 'produtos', tipo_produto, 'camadas.json')
        productLayersDict = self.readJsonFromPath(path_json_produto)

        # Maptables e Minimaptables
        list_dict_maptables = productLayersDict[str(escala)]['carta']
        list_dict_minimaptables = productLayersDict[str(escala)]['carta_mini']

        # Etapas
        self.htmlData.customEtapa(composition, jsonData['fases'])

        # Sensores
        self.htmlData.customSensores(composition, jsonData.get('sensores', ()))

        # Info tecnica carta
        scale, hemisferio, fuso = self.getScaleHemisferioFusoFromInom(inomen)
        self.htmlData.customTecnicalInfo(
            composition, scale, hemisferio, fuso, str_tipo_produto, jsonData.get('info_tecnica'),
            jsonData.get('territorio_internacional'), mapAreaFeature)

        # Banco
        if connectedUri:
            connectedUri.setDatabase(jsonData['banco']['nome'])

        # Carrega camadas do banco
        map_layers_db, map_layersId_db, minimap_layers_db, minimap_layersId_db = self.getMapLayers(
            connectedUri,  list_dict_maptables, list_dict_minimaptables, tipo_produto, str(scale))

        # Carrega imagens

        image_layers, image_layersId = self.MapC.createLayersRasters(jsonData.get('imagens', ()))

        # Adiciona camadas e imagens para serem mostradas no mapa e minimapa
        layers = {
            'map': map_layers_db,
            'id_map': map_layersId_db,
            'minimap': minimap_layers_db,
            'id_minimap': minimap_layersId_db,
            'images': image_layers,
            'id_images': image_layersId,
        }

        return composition, inomen, layers

    def createCompositions(self, scales, tipo_produto):
        compositionDict = {}
        novo_valor = os.path.join(os.path.dirname(__file__), '..',
                                  'map_generator', 'produtos', tipo_produto)
        for scale in scales:
            if scale == 250:
                caminho_layout = os.path.join(os.path.dirname(
                    __file__), '..', 'map_generator', 'produtos', tipo_produto, tipo_produto + '_250' + '.qpt')
                composition = self.MapC.getPrintLayoutFromQptPath(caminho_layout, novo_valor)
                composition.refresh()
                compositionDict[250] = composition
            else:
                caminho_layout = os.path.join(os.path.dirname(
                    __file__), '..', 'map_generator', 'produtos', tipo_produto, tipo_produto + '.qpt')
                composition = self.MapC.getPrintLayoutFromQptPath(caminho_layout, novo_valor)
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
                jsonErrors = namedtuple(jsonPath.stem.replace('-', '_'), 'errors')
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
                    _scale = int(jsonMapData['escala']/1000)
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
        showLayers = True

        # Set project crs
        oldProjValue = self.mc.setProjectProjection()

        # Creating map instances
        self.create_map_instances()

        # Getting product type from ui
        productType = self.dlg.productType.currentText()
        strProductType = '_'.join(productType.lower().split(' '))
        if productType == 'Carta Topográfica':
            strProductType = 'carta_topografica'

        # Setting export folder
        exportFolder = Path(self.dlg.exportFolder.filePath())

        # Refreshing layout
        if showLayers:
            manager = QgsProject.instance().layoutManager()
            if manager.layoutByName(productType):
                manager.removeLayout(manager.layoutByName(productType))

        # Obtaining json config files and checking their consistency
        jsonFilesPaths = self.dlg.jsonConfigs.splitFilePaths(self.dlg.jsonConfigs.filePath())
        success, logs, list_of_scales = self.checkJsonFiles(jsonFilesPaths)

        # Edit composition with project and credits qpt
        compositionDict = self.createCompositions(list_of_scales, strProductType)
        # self.editCompositions(strProductType, compositionDict)

        if success:
            self.exportFolder = exportFolder / datetime.now().strftime('%Y_%m_%d_%H_%M_%S')
            self.exportFolder.mkdir(exist_ok=True)
            for jsonPath in jsonFilesPaths:
                jsonData = self.readJsonFromPath(jsonPath)
                feature_map_extent, layer_feature_map_extent = self.setDefaultFeatureData(jsonData)
                oldQptsPaths = self.editComposition(jsonData, compositionDict, strProductType, oldQptsPaths) if 'oldQptsPaths' in locals() \
                    else self.editComposition(jsonData, compositionDict, strProductType, ['','',''])
                connectionSucess, connectedUri = self.getDBConnection(jsonData['banco'], connectedUri) if 'connectedUri' in locals() \
                    else self.getDBConnection(jsonData['banco'])
                # Set config for html labels
                composition, inomen, layers = self.setCartaConfig(
                    jsonData, connectedUri, compositionDict, feature_map_extent)

                # Get feature data for maps
                QgsProject.instance().addMapLayer(layer_feature_map_extent, False)

                self.setElementsConfig(strProductType)
                ids_maplayer = self.createAll(composition, inomen, feature_map_extent,
                               layer_feature_map_extent, layers, jsonData, showLayers)
                if showLayers:
                    manager = QgsProject.instance().layoutManager()
                    composition.setName(productType)
                    manager.addLayout(composition)
                    self.setupMasks(strProductType)
                self.exportMap(composition)
                # QgsProject.instance().removeMapLayers(ids_maplayer)
        # Reprojeta se for o caso
        if self.dlg.checkBoxExportGeotiff.isChecked():
            self.reprojectTiffs()

        # if not showLayers:
        self.mc.setProjectProjection(oldProjValue)

        self.iface.messageBar().pushMessage('Status', f'Exportação concluída: {len(jsonFilesPaths)} mapas foram exportados', Qgis.Success)
        # self.cleanLayerTreeRoot()