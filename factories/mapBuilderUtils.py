import json
from pathlib import Path
from typing import Callable

from qgis import processing
from qgis.core import (QgsDataSourceUri, QgsPrintLayout, QgsProject,
                       QgsVectorLayer)

from ..config.configDefaults import ConfigDefaults


class MapBuilderUtils:

    instance = QgsProject.instance()

    def getLayersFromDB(self, uri: QgsDataSourceUri, data:dict, defaults: ConfigDefaults, productPath: Path, group: str, filterF: Callable) -> tuple[list[QgsVectorLayer],list[str]]:
        layersList = []
        layersIDsList = []
        scale = data.get('scale')
        productType = data.get('productType')
        availableLayers = self.readJsonFromPath(productPath / 'camadas.json').get(group)
        availableLayers = filter(filterF, availableLayers)
        stylesFolder = productPath / 'styles' / group
        for lyr in availableLayers:
            layer = self.getLayerFromPostgres(uri, lyr)
            if layer.isValid():
                self.instance.addMapLayer(layer, False)
                if stylePath:=self.getStylePath(layer.name(), defaults, productType, stylesFolder, scale):
                    layer.loadNamedStyle(str(stylePath), True)
                    layer.triggerRepaint()
                layersList.append(layer)
                layersIDsList.append(layer.id())

        return layersList, layersIDsList

    def getLayerFromPostgres(self, uri: QgsDataSourceUri, data: dict) -> QgsVectorLayer:
        schema = data.get('schema')
        table = data.get('tabela')
        uri.setDataSource(schema, table, 'geom')
        return QgsVectorLayer(uri.uri(False), table, 'postgres')

    def classifiedMapHandler(self, composition: QgsPrintLayout, data: dict):
        if data.get('acesso_restrito'):
            composition.itemById('label_bdgexQR').setVisible(False)
            composition.itemById('label_bdgexWeb').setVisible(False)
            composition.itemById('symbol_QRCODE').setVisible(False)
            composition.itemById('label_classified').setVisible(True)
        else:
            composition.itemById('label_bdgexQR').setVisible(True)
            composition.itemById('label_bdgexWeb').setVisible(True)
            composition.itemById('symbol_QRCODE').setVisible(True)
            composition.itemById('label_classified').setVisible(False)

    def getStylePath(self, layerName: str, defaults: ConfigDefaults, productType: str, stylesFolder: Path, scale: int) -> Path:
        if productType == 'orthoMap':
            basedOnScale = defaults.scaleBasedStyleOrtho
        elif productType == 'topoMap':
            basedOnScale = defaults.scaleBasedStyleTopo
        if layerName in basedOnScale:
            p = stylesFolder / f'{layerName}_{scale}.qml'
        else:
            p = stylesFolder / f'{layerName}.qml'
        if p.exists():
            return p

    def readJsonFromPath(self, jsonPath: Path) -> dict:
        with open(jsonPath, 'r', encoding='utf-8') as fp:
            data = json.load(fp)
        return data

    def deleteLayerTreeNode(self, group: str):
        root = self.instance.layerTreeRoot()
        if foundGroup := root.findGroup(group):
            root.removeChildNode(foundGroup)

    def setupMasks(self, productPath: Path, layers: list[QgsVectorLayer]):
        pathJson = productPath / 'masks.json'
        if pathJson.exists():
            processing.run(
                'ferramentasedicao:loadmasks',
                {
                    'JSON_FILE': str(pathJson),
                    'INPUT_LAYERS': layers
                }
            )

