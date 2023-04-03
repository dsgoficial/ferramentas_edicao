import json
import os
from argparse import Namespace
from collections import namedtuple
from pathlib import Path
from typing import Any, NamedTuple, Tuple, Union

from PyQt5.QtCore import QFile, QFileInfo
from qgis.core import (QgsApplication, QgsFeature, QgsSymbolLayerUtils,
                       QgsUserColorScheme, QgsVectorLayer)
from qgis.gui import QgisInterface
from qgis.PyQt.QtWidgets import QDialog, QMessageBox

from ..config import jsonStructure
from ..config.configDefaults import ConfigDefaults
from ..factories.compositionSingleton import CompositionSingleton
from ..factories.connectionSingleton import ConnectionSingleton
from ..factories.exporterSingleton import ExporterSingleton
from ..factories.militaryOrthoMapBuilder import MilitaryOrthoMapBuilder
from ..factories.omMapbuilder import OmMapBuilder
from ..factories.orthoMapBuilder import OrthoMapBuilder
from ..factories.topoMapBuilder import TopoMapBuilder
from ..modules.mapBuilder.factories.componentFactory import ComponentFactory
from ..modules.mapBuilder.factories.gridFactory.gridFactory import GridFactory
from .mapBuilderControllerUtils import MapBuildControllerUtils


class MapBuildController(MapBuildControllerUtils):
    
    def __init__(self, dlg: Union[QDialog,Namespace], iface: Union[QgisInterface,None], defaults: ConfigDefaults = ConfigDefaults()) -> None:
        super().__init__()
        self.dlg = dlg
        self.iface = iface
        self.defaults = defaults
        self.grid = GridFactory()
        self.conn = ConnectionSingleton()
        self.compositions = CompositionSingleton(defaults)
        self.debugMode = (Path(__file__).parent.parent / '.env').exists()
        self.exporter = ExporterSingleton()
        self.builders = dict()

    def setColorPalette(self):
        schemeName = "Project colors"
        filePath = os.path.join(
            os.path.abspath(os.path.dirname(__file__)),
            "..", 
            "modules",
            "mapBuilder",
            "resources",
            "products",
            "common",
            "paleta.gpl"
        )
        fileInfo = QFileInfo(filePath)
        importedColors = QgsSymbolLayerUtils.importColorsFromGpl(QFile(filePath), schemeName)
        currentScheme = None
        schemes = QgsApplication.colorSchemeRegistry().schemes()
        for s in schemes:
            if not(s.schemeName() == schemeName):
                continue
            currentScheme = s
        if currentScheme:
            currentScheme.setColors(importedColors[0])
        else:
            currentScheme = QgsUserColorScheme(fileInfo.fileName())
            currentScheme.setName(schemeName)
            currentScheme.setColors(importedColors[0])
            QgsApplication.colorSchemeRegistry().addColorScheme(currentScheme)

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
        with open(jsonPath, 'r', encoding='utf-8-sig') as fp:
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
            mi = 'Especial'
            scale = int(jsonData['escala']/1000)
            lat = center.get('latitude')
            lon = center.get('longitude')
            inom = self.grid.get_INOM_from_lat_lon(lon, lat, scale)
            mapExtentsLyr, mapExtentsFeat = self.createLayerFromLatLong(self.grid, lon, lat, scale)
        elif polygonWkt:= jsonData.get('poligono'):
            mi = 'Especial'
            mapExtentsLyr, mapExtentsFeat = self.createLayerFromWkt(polygonWkt)
            centroid = mapExtentsFeat.geometry().centroid().asPoint()
            lat, lon = centroid.y(), centroid.x()
            inom = self.grid.get_INOM_from_lat_lon(lon, lat, 1)
            epsg = self.getEpsg(inom[0], int(inom[3:5]))
            if (angle:=jsonData.get('rotacao_poligono')) and (orientedBbox:=jsonData.get('poligono_rotacionado')):
                templateType, scale = self.getInfoOmMapGivenRotation(orientedBbox, epsg)
            else:
                templateType, scale, angle = self.getInfoOmMap(polygonWkt, epsg)
            jsonData.update({
                'omTemplateType': templateType,
                'rotationAngle': angle})


        equidistanciaDefault = {
            "25": 10,
            "50": 20,
            "100": 40,
            "250": 100
        }
        info_tecnica = jsonData.get('info_tecnica')
        equidistancia = info_tecnica.get('equidistancia_personalizada', equidistanciaDefault.get(str(scale), 0))
        exibirAuxiliar = info_tecnica.get('exibir_curva_auxiliar', 0)
        exibirAuxiliar = int(exibirAuxiliar)

        jsonData.update({
            'mi': mi,
            'inom': inom,
            'hemisphere': inom[0],
            'timeZone': int(inom[3:5]),
            'scale': scale,
            'epsg': self.getEpsg(inom[0], int(inom[3:5])),
            'equidistancia': equidistancia,
            'exibirAuxiliar': exibirAuxiliar
        })
        return mapExtentsLyr, mapExtentsFeat

    def qptDlg(self):
        qptCheck = QMessageBox(self.dlg)
        qptCheck.setIcon(QMessageBox.Question)
        qptCheck.setText('Deseja gerar o QPT para esse produto?')
        qptCheck.setStandardButtons(QMessageBox.Yes | QMessageBox.No)
        result = qptCheck.exec_()
        if result == QMessageBox.Yes:
            self.debugMode = True
        else:
            self.debugMode = False
        return self.qptDlg

    def setupDlgCfg(self, dlg: Union[QDialog,Namespace]) -> NamedTuple:
        '''Organizes the configuration according to its origin (dialog or headless).
        Args:
            dlg: A Dialog object or a Namespace containing te interface info
        Returns:
            dlgCfg: A NamedTuple with necessary configurations to run the export
        '''
        _dlgCfg = namedtuple('dlgCfg', ['instance','productType','jsonFilePaths','exportFolder', 'username', 'password','exportTiff'])
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
            return 'orthoMap', 'Carta Ortoimagem'
        if productType == 'Carta Ortoimagem':
            return 'orthoMap', productType
        if productType == 'carta_topografica':
            return 'topoMap', 'Carta Topográfica'
        if productType == 'Carta Topográfica':
            return 'topoMap', productType
        if productType == 'carta_om':
            return 'omMap', 'Carta Especial'
        if productType == 'Carta Ortoimagem OM':
            return 'omMap', 'Carta Especial'
        if productType == 'Carta Ortoimagem Militar':
            return 'militaryOrthoMap', 'Carta Ortoimagem Militar'

    def unload(self):
        ''' Unloads the Controller. It's called when the plugin is uninstalled or reloaded
        '''
        self.conn.conn = None
        self.compositions.compositions = dict()
        self.compositions.previousQpts = {}
        self.compositions.lastComposition = None
        self.builders = dict()

    def getProductBuilder(self, productType: str) -> Union[OrthoMapBuilder,TopoMapBuilder,OmMapBuilder]:
        '''Gets a builder for the desired product and stores it in self.builders;
        Args:
            productType (str): product type
        Returns:
            A builder for the desired product type
        '''
        if productType == 'orthoMap' and productType not in self.builders:
            self.builders.update({productType: OrthoMapBuilder(ComponentFactory())})
        elif productType == 'topoMap' and productType not in self.builders:
            self.builders.update({productType: TopoMapBuilder(ComponentFactory())})
        elif productType == 'omMap' and productType not in self.builders:
            self.builders.update({productType: OmMapBuilder(ComponentFactory())})
        elif productType == 'militaryOrthoMap' and productType not in self.builders:
            self.builders.update({productType: MilitaryOrthoMapBuilder(ComponentFactory())})
        return self.builders.get(productType)

    def getExporter(self, dlg: NamedTuple, data: dict, debugMode: bool) -> ExporterSingleton:
        '''Sets up the exporter configuration and returns it
        Args:
            dlg (NamedTuple): Configuration details from the plugin window or cmd
            data (dict): current map info
            debugMode (bool): Debug flag
        Returns:
            An exporter singleton
        '''
        self.exporter.setParams(dlg, data, debugMode)
        return self.exporter

    def run(self):
        # TODO: run in a different thread
        # TODO: better layers / composition cleanup
        '''Runs the specified MapBuilder according to dlg / json preferences'''
        self.setColorPalette()
        dlgCfg = self.setupDlgCfg(self.dlg)
        productType, productName = self.getProductType(dlgCfg.productType)
        builder = None
        if self.dlg.jsonConfigs.filePath() == '':
            QMessageBox.warning(
                    self.dlg,
                    "Erro",
                    f"Não foi inserido um arquivo ou pasta de JSON para produto solicitado."
                )
            return
        if self.dlg.exportFolder.filePath() == '':
            QMessageBox.warning(
                    self.dlg,
                    "Erro",
                    f"Não foi inserida uma pasta de saída para o produto solicitado."
                )
            return
        if self.dlg.productType.currentText() == 'Carta Ortoimagem OM':
            self.qptDlg()
        for jsonPath in dlgCfg.jsonFilePaths:
            jsonData = self.readJson(jsonPath)
            if 'tipo_produto' not in jsonData:
                QMessageBox.warning(
                    self.dlg,
                    "Erro",
                    f"A chave tipo_produto não foi encontrada no json de entrada {jsonPath}, ignorando produto. "
                    "Adicione a chave e tente novamente."
                )
                continue
            if not self.debugMode and not jsonStructure.validate_dict(jsonData, product_type=jsonData['tipo_produto']):
                missingKeySet = jsonStructure.find_missing_required_keys_on_dict(jsonData, product_type=jsonData['tipo_produto'])
                missingKeyText = ",".join(list(missingKeySet))
                QMessageBox.warning(
                    self.dlg,
                    "Erro",
                    f"Há erros de validação no json de entrada. Faltam as seguintes chaves obrigatórias: {missingKeyText}. "
                    "Corrija o json e tente novamente."
                )
                continue
            if dlgCfg.productType != jsonData['tipo_produto']:
                QMessageBox.warning(
                    self.dlg,
                    "Erro", 
                    f"O tipo de produto escolhido na interface não corresponde à chave tipo_produto informada no arquivo json {jsonPath}, ignorando produto. "
                    "Escolha corretamente o produto ou altere o json de entrada e tente novamente."
                )
                continue
            jsonData.update({'productType':productType,'productName': productName})
            mapExtentsLyr, mapExtentsFeat = self.getComplementaryData(jsonData)
            builder = self.getProductBuilder(productType)
            # builder.cleanProject(False)
            # builder.removeLayers(False)
            composition = self.compositions.getComposition(jsonData).clone()
            connection = self.conn.getConnection(jsonData.get('banco'), dlgCfg.username, dlgCfg.password)
            # Build components
            builder.setParams(jsonData, self.defaults, connection, composition, mapExtentsFeat, mapExtentsLyr)
            builder.run(self.debugMode)
            # Export
            exporter = self.getExporter(dlgCfg, jsonData, self.debugMode)
            exportResult, exportMessage = exporter.export(composition)
            builder.removeLayers(self.debugMode)
        
        messageType = "Informação"
        if builder:
            builder.cleanProject(self.debugMode)
            messageType = "Informação" if exportResult == True else "Erro"
            msg = "A exportação foi concluída com sucesso." if exportResult == True else f"Ocorreu um erro durante a exportação: {exportMessage}"
        else:
            msg = "Não há cartas a serem exportadas"
        QMessageBox.warning(self.dlg, messageType, msg)
