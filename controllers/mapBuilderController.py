import json
from argparse import Namespace
from collections import namedtuple
from pathlib import Path

from config.configDefaults import ConfigDefaults
from modules.mapBuilder.factories.gridFactory.gridFactory import GridFactory
from factories.exporterSingleton import ExporterSingleton
from qgis.core import QgsFeature, QgsVectorLayer
from qgis.gui import QgisInterface
from qgis.PyQt.QtWidgets import QDialog

from .mapBuilderControllerUtils import MapBuildControllerUtils
from factories.connectionSingleton import ConnectionSingleton
from factories.compositionSingleton import CompositionSingleton
from factories.orthoMapBuilder import OrthoMapBuilder
from factories.topoMapBuilder import TopoMapBuilder
from factories.omMapbuilder import OmMapbuilder
from typing import Any, NamedTuple, Tuple, Union

from modules.mapBuilder.factories.componentFactory import ComponentFactory


class MapBuildController(MapBuildControllerUtils):
    
    def __init__(self, dlg: Union[QDialog,Namespace], iface: QgisInterface, defaults: ConfigDefaults = ConfigDefaults()) -> None:
        super().__init__()
        self.dlg = self.setupDlgCfg(dlg)
        self.iface = iface
        self.defaults = defaults
        self.grid = GridFactory()
        self.conn = ConnectionSingleton()
        self.compositions = CompositionSingleton(defaults)
        self.debugMode = (Path(__file__).parent.parent / '.env').exists()
        self.exporter = ExporterSingleton(self.debugMode, self.dlg.exportFolder)
        self.builders = dict()

    def checkJsonFiles(self):
        '''Verify consistency of JSON files'''
        pass

    def readJson(self, jsonPath: Path) -> dict:
        ''' Reads the json file
        Args:
            jsonPath: Path instance
        Returns:
            json object (dict)
        '''
        with open(jsonPath, 'r', encoding='utf-8') as fp:
            data = json.load(fp)
        return data

    def getComplementaryData(self, jsonData: dict) -> Tuple[QgsVectorLayer,QgsFeature]:
        ''' Gets, if necessary, complemetar data to generate a map, such as mi, scale, etc.
        The complementar data is used to update jsonData.
        Args:
            jsonData: JSON object (dict) containing map metadata
        Returns:
            Tuple containing a feature of the map area and a layer containing that feature
        '''
        if inom:=jsonData.get('inom'):
            mi = self.grid.get_MI_MIR_from_inom(inom)
            scale = self.grid.getScale(inom)
            mapExtentsLyr, mapExtentsFeat = self.grid.getNewGridFromInom(inom)
        elif center:=jsonData.get('center'):
            scale = int(jsonData['escala']/1000)
            lat = center.get('latitude')
            lon = center.get('longitude')
            inom = self.grid.get_INOM_from_lat_lon(lon, lat, scale)
            mapExtentsLyr, mapExtentsFeat = self.createLayerFromLatLong(self.grid, lon, lat, scale)
        jsonData.update({
            'mi': mi,
            'inom': inom,
            'hemisphere': inom[0],
            'timeZone': int(inom[3-5]),
            'scale': scale,
            'epsg': self.getEpsg(inom[0], int(inom[3-5]))
        })
        return mapExtentsLyr, mapExtentsFeat

    def setupDlgCfg(self, dlg: Union[QDialog,Namespace]) -> NamedTuple:
        '''Organizes the configuration according to its origin (dialog or headless).
        Args:
            dlg: A Dialog object or a Namespace containing te interface info
        Returns:
            dlgCfg: A NamedTuple with necessary configurations to run the export
        '''
        _dlgCfg = namedtuple('dlgCfg', ['isntance','productType','jsonFilePaths','exportFolder', 'username', 'password','exportTiff'])
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
        elif isinstance(dlg, Namespace):
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

    def getProductType(self, productType: str) -> Tuple[str,str]:
        '''Gets the product type and its string representation
        Args:
            productType: The product type in format lower_case or Upper Case
        Returns:
            A tuple with the product type and product name
        '''
        if productType == 'carta_ortoimagem':
            return productType, 'Carta Ortoimagem'
        elif productType == 'Carta Ortoimagem':
            return 'carta_ortoimagem', productType
        elif productType == 'carta_topografica':
            return productType, 'Carta Topográfica'
        elif productType == 'Carta Topográfica':
            return 'carta_topografica', productType

    def getProductBuilder(self, productType: str) -> Any[OrthoMapBuilder,TopoMapBuilder,OmMapbuilder]:
        if productType == 'carta_ortoimagem' and productType not in self.builders:
            self.builders.update({productType: OrthoMapBuilder(ComponentFactory())})
        elif productType == 'carta_topografica' and productType not in self.builders:
            self.builders.update({productType: TopoMapBuilder(ComponentFactory())})
        elif productType == 'carta_om' and productType not in self.builders:
            self.builders.update({productType: OmMapbuilder(ComponentFactory())})
        return self.builders.get(productType)

    def run(self):
        '''Runs the specified MapBuilder according to dlg / json preferences'''
        for jsonPath in self.dlg.jsonFilePaths:
            jsonData = self.readJson(jsonPath)
            productType, productName = self.getProductType(self.dlgCfg.productType)
            jsonData.update({'productType':productType,'productName': productName})
            mapExtentsLyr, mapExtentsFeat = self.getComplementaryData(jsonData)
            builder = self.getProductBuilder(productType)
            composition = self.compositions.getComposition(jsonData)
            connection = self.conn.getConnection(jsonData.get('banco'), self.dlg.username, self.dlg.password)
            # Build components
            builder.setParams(jsonData, self.defaults, connection, composition, mapExtentsFeat)
            builder.run()
            # Export
            
