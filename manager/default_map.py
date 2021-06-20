from datetime import datetime
import os
from pathlib import Path
from collections import namedtuple

from qgis.core import QgsProject
from qgis import processing
from PyQt5.QtGui import QFont, QColor

from ..map_generator.elements.map_utils import MapParent as MapConnection
from ..map_generator.map_generator import MapManager
from ..map_generator.elements.map_index.map_index import UtmGrid

product_parameters = {
    'topo': {
        "grid": {
            "crossX": 4,
            "crossY": 4,
            "fontSize": 1.9,
            "font": QFont("Arial"),
            "fontLL": QFont("Arial"),
            "llcolor": QColor('black'),
            "linwidth_geo": 0.3,
            "linwidth_utm": 0.2,
            "linwidth_buffer_geo": 0,
            "linwidth_buffer_utm": 0,
            "geo_grid_color": QColor('white'),
            "utm_grid_color": QColor('black'),
            "geo_grid_buffer_color": QColor('white'),
            "utm_grid_buffer_color": QColor('black')
        }
    },
    'carta_topografica': {
        "nome_produto": "Carta Topográfica",
        "required_files": [],
        "grid": {
            "crossX": 6,
            "crossY": 6,
            "fontSize": 1.9,
            "font": QFont("Arial"),
            "fontLL": QFont("Arial"),
            "llcolor": QColor('black'),
            "linwidth_geo": 0.05,
            "linwidth_utm": 0.03,
            "linwidth_buffer_geo": 0,
            "linwidth_buffer_utm": 0,
            "geo_grid_color": QColor('black'),
            "utm_grid_color": QColor('black'),
            "geo_grid_buffer_color": QColor('black'),
            "utm_grid_buffer_color": QColor('black'),
            "masks_check": True
        },
        "qpt": {
            "50": {
                "projeto": {
                    "x_0": 7,
                    "y_0": 487,
                    "width": 110,
                    "height": 70,
                },
                "cabecalho": {
                    "x_0": 7,
                    "y_0": 7,
                    "width": 110,
                    "height": 22,
                },
                "classified": {
                    "x_0": 7,
                    "y_0": 175,
                    "width": 110,
                    "height": 20
                }
            }
        }

    },
    'carta_ortoimagem_tipo_i': {
        "nome_produto": "Carta Ortoimagem Tipo I",
        "required_files": [
            ['map_generator', 'limites', 'estados_2019.shp'],
            ['map_generator', 'limites', 'internacional.shp'],
            ['map_generator', 'limites', 'municipios_2019.shp'],
            ['map_generator', 'limites', 'oceano.shp'],
            ['map_generator', 'limites', 'paises.shp']
        ],
        "qpt": {
            "25": {
                "projeto": {
                    "x_0": 7,
                    "y_0": 487,
                    "width": 110,
                    "height": 70,
                },
                "cabecalho": {
                    "x_0": 7,
                    "y_0": 7,
                    "width": 110,
                    "height": 22,
                }
            },
            "50": {
                "projeto": {
                    "x_0": 7,
                    "y_0": 487,
                    "width": 110,
                    "height": 70,
                },
                "cabecalho": {
                    "x_0": 7,
                    "y_0": 7,
                    "width": 110,
                    "height": 22,
                },
                "classified": {
                    "x_0": 7,
                    "y_0": 180,
                    "width": 120,
                    "height": 20
                }
            },
            "100": {
                "projeto": {
                    "x_0": 7,
                    "y_0": 487,
                    "width": 110,
                    "height": 70,
                },
                "cabecalho": {
                    "x_0": 7,
                    "y_0": 7,
                    "width": 110,
                    "height": 22,
                }
            },
            "250": {
                "projeto": {
                    "x_0": 7,
                    "y_0": 395,
                    "width": 110,
                    "height": 70,
                },
                "cabecalho": {
                    "x_0": 7,
                    "y_0": 7,
                    "width": 110,
                    "height": 22,
                }
            }
        },
        "html": {
            "info_tecnica": "",
        },
        "grid": {
            "crossX": 4,
            "crossY": 4,
            "fontSize": 1.9,
            "font": QFont("Arial"),
            "fontLL": QFont("Arial"),
            "llcolor": QColor('black'),
            "linwidth_geo": 0.3,
            "linwidth_utm": 0.2,
            "linwidth_buffer_geo": 0.1,
            "linwidth_buffer_utm": 0.1,
            "geo_grid_color": QColor('black'),
            "utm_grid_color": QColor('black'),
            "geo_grid_buffer_color": QColor('white'),
            "utm_grid_buffer_color": QColor('white'),
            "masks_check": True
        }
    }
}


class DefaultMap(MapManager):
    def __init__(self, iface, dlg, GLC):
        super().__init__(iface, dlg, GLC)
        self.MapC = MapConnection()
        self.GLC = GLC
        self.map_height = 570-15*2  # milimiters
        self.utm_grid = UtmGrid()
        self.set_products_parameters(product_parameters)

    def editCompositions(self, productType, dict_compositions):
        '''
        Atualiza o compositor adicionando os arquivos .qpt indicados na interface (créditos e projeto),
        além de carregar o qpt de arquivo classificado, caso indicado no json de configuração
        '''
        qptList = []
        for scale, compositor in dict_compositions.items():
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

    def setCartaConfig(self, jsonData, connectedUri, dict_compositions, mapAreaFeature):
        '''
        Setting map configurations
        '''
        inomen = 'Especial'
        mi = 'Especial'
        # inom
        if 'inom' in jsonData:
            inomen = jsonData['inom']
            mi = self.utm_grid.get_MI_MIR_from_inom(inomen)
            escala = str(self.utm_grid.getScale(inomen))

        if 'center' in jsonData:
            escala = jsonData['escala']  # transformar para 250000
            center = jsonData['center']
            longitude = center['longitude']
            latitude = center['latitude']
            inomen = self.utm_grid.get_INOM_from_lat_lon(longitude, latitude, int(escala/1000))

        # Tipo de produto
        str_tipo_produto = self.dlg.productType.currentText()
        tipo_produto = '_'.join(str_tipo_produto.lower().split(' '))
        if str_tipo_produto == 'Carta Topográfica':
            tipo_produto = 'carta_topografica'

        # Print Layout para o produto
        composition = dict_compositions[escala]
        self.htmlData.setComposition(composition)

        # Camadas para o produto
        path_json_produto = os.path.join(os.path.dirname(os.path.dirname(
            __file__)), 'map_generator', 'produtos', tipo_produto, 'camadas.json')
        productLayersDict = self.readJsonFromPath(path_json_produto)

        # Maptables e Minimaptables
        list_dict_maptables = productLayersDict[escala]['carta']
        list_dict_minimaptables = productLayersDict[escala]['carta_mini']

        # Nome
        self.nome = jsonData['nome']

        # Etapas
        self.htmlData.customEtapa(composition, jsonData['fases'])

        # Sensores
        self.htmlData.customSensores(composition, jsonData.get('sensores'))

        # Info tecnica carta
        scale, hemisferio, fuso = self.getScaleHemisferioFusoFromInom(inomen)
        self.htmlData.customTecnicalInfo(
            composition, scale, hemisferio, fuso, str_tipo_produto, jsonData.get('info_tecnica'), mapAreaFeature)

        # Banco
        if connectedUri:
            connectedUri.setDatabase(jsonData['banco']['nome'])

        # Carrega camadas do banco
        map_layers_db, map_layersId_db, minimap_layers_db, minimap_layersId_db = self.getMapLayers(
            connectedUri,  list_dict_maptables, list_dict_minimaptables, tipo_produto, str(scale))

        # Carrega imagens
        key_image = 'caminho_imagem'
        key_style = 'caminho_estilo'
        key_epsg = 'epsg'
        image_layers, image_layersId = self.MapC.createLayersRasters(
            jsonData.get('imagens', []), key_image, key_style, key_epsg)

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
        dict_compositions = {}
        novo_valor = os.path.join(os.path.dirname(__file__), '..',
                                  'map_generator', 'produtos', tipo_produto)
        for scale in scales:
            if scale == '250':
                caminho_layout = os.path.join(os.path.dirname(
                    __file__), '..', 'map_generator', 'produtos', tipo_produto, tipo_produto + '_250' + '.qpt')
                composition = self.MapC.getPrintLayoutFromQptPath(caminho_layout, novo_valor)
                composition.refresh()
                dict_compositions['250'] = composition
            else:
                caminho_layout = os.path.join(os.path.dirname(
                    __file__), '..', 'map_generator', 'produtos', tipo_produto, tipo_produto + '.qpt')
                composition = self.MapC.getPrintLayoutFromQptPath(caminho_layout, novo_valor)
                composition.refresh()
                dict_compositions[scale] = composition
        return dict_compositions

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
                    _scale = str(int(jsonMapData['denominador_escala'])/1000)
                    scales.add(_scale)
                else:
                    jsonErrors.errors.append(f'Missing MI or INOM')

                # Verify if field 'fases' exists
                if not jsonMapData.get('fases'):
                    jsonErrors.errors.append(f'Empty key: fases')

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
        dict_compositions = self.createCompositions(list_of_scales, strProductType)
        self.editCompositions(strProductType, dict_compositions)

        if success:
            self.exportFolder = exportFolder
            self.exportFolder.mkdir(exist_ok=True)
            for jsonPath in jsonFilesPaths:
                jsonData = self.readJsonFromPath(jsonPath)
                feature_map_extent, layer_feature_map_extent = self.setDefaultFeatureData(jsonData)
                connectionSucess, connectedUri = self.getDBConnection(
                    jsonData['banco'], connectedUri) if 'connectedUri' in locals() else self.getDBConnection(jsonData['banco'])
                # Set config for html labels
                composition, inomen, layers = self.setCartaConfig(
                    jsonData, connectedUri, dict_compositions, feature_map_extent)

                # Get feature data for maps
                QgsProject.instance().addMapLayer(layer_feature_map_extent, False)

                self.setElementsConfig(strProductType)
                self.createAll(composition, self.nome, inomen, feature_map_extent,
                               layer_feature_map_extent, layers, jsonData, showLayers)
                if showLayers:
                    manager = QgsProject.instance().layoutManager()
                    composition.setName(productType)
                    manager.addLayout(composition)
                    self.setupMasks(strProductType)
                self.exportMap(composition)
        # Reprojeta se for o caso
        if self.dlg.checkBoxExportGeotiff.isChecked():
            self.reprojectTiffs()

        # if not showLayers:
        self.mc.setProjectProjection(oldProjValue)

        self.cleanLayerTreeRoot()