# -*- coding: utf-8 -*-
"""
/***************************************************************************
 ferramentas_edicao
                                 A QGIS plugin
 Brazilian Army Cartographic Finishing Tools
                              -------------------
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
import json
import os
from argparse import Namespace
from collections import namedtuple
from pathlib import Path
from typing import Any, NamedTuple, Tuple, Union

from ..config.logging_setup import get_logger

logger = get_logger(__name__)

from qgis.PyQt.QtCore import QFile, QFileInfo
from qgis.core import (
    Qgis,
    QgsApplication,
    QgsFeature,
    QgsSymbolLayerUtils,
    QgsUserColorScheme,
    QgsVectorLayer,
    QgsDataSourceUri,
)
from qgis.gui import QgisInterface
from qgis.PyQt.QtWidgets import QDialog, QMessageBox

from DsgTools.core.dsgEnums import DsgEnums
from DsgTools.core.Factories.DbFactory.dbFactory import DbFactory

from ..config import jsonStructure
from ..config.configDefaults import ConfigDefaults
from ..factories.compositionSingleton import CompositionSingleton
from ..factories.connectionSingleton import ConnectionSingleton
from ..factories.exporterSingleton import ExporterSingleton
from ..factories.militaryOrthoMapBuilder import MilitaryOrthoMapBuilder
from ..factories.militaryTopoMapBuilder import MilitaryTopoMapBuilder
from ..factories.mapBuilderUtils import MapBuilderUtils
from ..factories.omMapbuilder import OmMapBuilder
from ..factories.orthoMapBuilder import OrthoMapBuilder
from ..factories.topoMapBuilder import TopoMapBuilder
from ..modules.mapBuilder.factories.componentFactory import ComponentFactory
from ..modules.mapBuilder.factories.gridFactory.gridFactory import GridFactory
from .mapBuilderControllerUtils import MapBuildControllerUtils


class MapBuildController(MapBuildControllerUtils):
    def __init__(
        self,
        dlg: Union[QDialog, Namespace],
        iface: Union[QgisInterface, None],
        defaults: Union[ConfigDefaults, None] = None,
    ) -> None:
        super().__init__()
        self.dlg = dlg
        self.iface = iface
        self.defaults = ConfigDefaults() if defaults is None else defaults
        self.grid = GridFactory()
        self.conn = ConnectionSingleton()
        self.compositions = CompositionSingleton(defaults)
        self.debugMode = (Path(__file__).parent.parent / ".env").exists()
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
            "paleta.gpl",
        )
        fileInfo = QFileInfo(filePath)
        importedColors = QgsSymbolLayerUtils.importColorsFromGpl(
            QFile(filePath), schemeName
        )
        currentScheme = None
        schemes = QgsApplication.colorSchemeRegistry().schemes()
        for s in schemes:
            if not (s.schemeName() == schemeName):
                continue
            currentScheme = s
        if currentScheme:
            currentScheme.setColors(importedColors[0])
        else:
            currentScheme = QgsUserColorScheme(fileInfo.fileName())
            currentScheme.setName(schemeName)
            currentScheme.setColors(importedColors[0])
            QgsApplication.colorSchemeRegistry().addColorScheme(currentScheme)

    def readJson(self, jsonPath: Path) -> dict:
        """Reads the json file
        Args:
            jsonPath: Path instance
        Returns:
            json object (dict)
        """
        with open(jsonPath, "r", encoding="utf-8-sig") as fp:
            data = json.load(fp)
        return data

    def getComplementaryData(self, jsonData: dict) -> Tuple[QgsVectorLayer, QgsFeature]:
        """Gets, if necessary, complemetar data to generate a map, such as mi, scale, etc.
        The complementar data is used to update jsonData.
        Args:
            jsonData: JSON object (dict) containing map metadata
        Returns:
            Tuple containing a feature of the map area and a layer containing that feature
        """
        if inom := jsonData.get("inom"):
            mi = self.grid.get_MI_MIR_from_inom(inom)
            scale = self.grid.getScale(inom)
            mapExtentsLyr, mapExtentsFeat = self.grid.getNewGridFromInom(inom)
        elif center := jsonData.get("center"):
            mi = "Especial"
            scale = int(jsonData["escala"] / 1000)
            lat = center.get("latitude")
            lon = center.get("longitude")
            inom = self.grid.get_INOM_from_lat_lon(lon, lat, scale)
            mapExtentsLyr, mapExtentsFeat = self.createLayerFromLatLong(
                self.grid, lon, lat, scale
            )
        elif polygonWkt := jsonData.get("poligono"):
            mi = "Especial"
            mapExtentsLyr, mapExtentsFeat = self.createLayerFromWkt(polygonWkt)
            centroid = mapExtentsFeat.geometry().centroid().asPoint()
            lat, lon = centroid.y(), centroid.x()
            inom = self.grid.get_INOM_from_lat_lon(lon, lat, 1)
            epsg = self.getEpsg(inom[0], int(inom[3:5]))
            if (angle := jsonData.get("rotacao_poligono")) and (
                orientedBbox := jsonData.get("poligono_rotacionado")
            ):
                templateType, scale = self.getInfoOmMapGivenRotation(orientedBbox, epsg)
            else:
                templateType, scale, angle = self.getInfoOmMap(polygonWkt, epsg)
            jsonData.update({"omTemplateType": templateType, "rotationAngle": angle})

        equidistanciaDefault = {"25": 10, "50": 20, "100": 40, "250": 100}
        info_tecnica = jsonData.get("info_tecnica")
        equidistancia = info_tecnica.get(
            "equidistancia_personalizada", equidistanciaDefault.get(str(scale), 0)
        )
        exibirAuxiliar = info_tecnica.get("exibir_curva_auxiliar", 0)
        exibirAuxiliar = int(exibirAuxiliar)

        jsonData.update(
            {
                "mi": mi,
                "inom": inom,
                "hemisphere": inom[0],
                "timeZone": int(inom[3:5]),
                "scale": scale,
                "epsg": self.getEpsg(inom[0], int(inom[3:5])),
                "equidistancia": equidistancia,
                "exibirAuxiliar": exibirAuxiliar,
            }
        )
        return mapExtentsLyr, mapExtentsFeat

    def qptDlg(self):
        qptCheck = QMessageBox(self.dlg)
        qptCheck.setIcon(QMessageBox.Icon.Question)
        qptCheck.setText("Deseja gerar o QPT para esse produto?")
        qptCheck.setStandardButtons(QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No)
        result = qptCheck.exec()
        if result == QMessageBox.StandardButton.Yes:
            self.debugMode = True
        else:
            self.debugMode = False
        return self.qptDlg

    def setupDlgCfg(self, dlg: Union[QDialog, Namespace]) -> NamedTuple:
        """Organizes the configuration according to its origin (dialog or headless).
        Args:
            dlg: A Dialog object or a Namespace containing te interface info
        Returns:
            dlgCfg: A NamedTuple with necessary configurations to run the export
        """
        _dlgCfg = namedtuple(
            "dlgCfg",
            [
                "instance",
                "productType",
                "jsonFilePaths",
                "exportFolder",
                "username",
                "password",
                "exportTiff",
                "exportTiffWithoutGrid",
                "disableAdditionalMasks",
            ],
        )
        if isinstance(dlg, QDialog):
            dlgCfg = _dlgCfg(
                "qgis",
                dlg.productType.currentText(),
                dlg.jsonConfigs.splitFilePaths(dlg.jsonConfigs.filePath()),
                Path(dlg.exportFolder.filePath()),
                dlg.username.text(),
                dlg.password.text(),
                dlg.checkBoxExportGeotiff.isChecked(),
                dlg.checkBoxExportGeotiffWithoutGrid.isChecked(),
                dlg.checkBoxDisableAdditionalMasks.isChecked(),
            )
        elif isinstance(dlg, Namespace):
            dlgCfg = _dlgCfg(
                "headless",
                dlg.tipo,
                [Path(x) for x in dlg.json],
                Path(dlg.exportFolder),
                dlg.username,
                dlg.password,
                dlg.exportTiff,
                dlg.exportTiffWithoutGrid,
                getattr(dlg, "disableAdditionalMasks", False),
            )
        return dlgCfg

    def getProductType(self, comboBoxDisplayString: str) -> Tuple[str, str, str, str]:
        """Gets the product type and its string representation
        Args:
            productType: The product type in format lower_case or Upper Case
        Returns:
            A tuple with the product type, product name, product version and version folder
        """
        *strList, productVersion = comboBoxDisplayString.split(" ")
        productType = " ".join(strList)
        versionFolder = productVersion.replace(".", "_")
        if productType == "Carta Ortoimagem":
            return "orthoMap", productType, productVersion, versionFolder
        if productType == "Carta Topográfica":
            return "topoMap", productType, productVersion, versionFolder
        if productType == "Carta Ortoimagem SARP":
            return "omMap", "Carta Especial", productVersion, versionFolder
        if productType == "Carta Ortoimagem Militar":
            return (
                "militaryOrthoMap",
                "Carta Ortoimagem Militar",
                productVersion,
                versionFolder,
            )
        if productType == "Carta Topográfica Militar":
            return (
                "militaryTopoMap",
                "Carta Topográfica Militar",
                productVersion,
                versionFolder,
            )

    def unload(self):
        """Unloads the Controller. It's called when the plugin is uninstalled or reloaded"""
        CompositionSingleton.reset()
        ConnectionSingleton.reset()
        ExporterSingleton.reset()
        self.builders = dict()

    def getProductBuilder(
        self, productType: str, versionFolder: str
    ) -> Union[OrthoMapBuilder, TopoMapBuilder, OmMapBuilder]:
        """Gets a builder for the desired product and stores it in self.builders;
        Args:
            productType (str): product type
        Returns:
            A builder for the desired product type
        """
        if productType == "orthoMap" and productType not in self.builders:
            self.builders.update(
                {
                    productType: OrthoMapBuilder(
                        componentFactory=ComponentFactory(), versionFolder=versionFolder
                    )
                }
            )
        elif productType == "topoMap" and productType not in self.builders:
            self.builders.update(
                {
                    productType: TopoMapBuilder(
                        componentFactory=ComponentFactory(),
                        versionFolder=versionFolder,
                    ),
                }
            )
        elif productType == "omMap" and productType not in self.builders:
            self.builders.update(
                {
                    productType: OmMapBuilder(
                        componentFactory=ComponentFactory(), versionFolder=versionFolder
                    )
                }
            )
        elif productType == "militaryOrthoMap" and productType not in self.builders:
            self.builders.update(
                {
                    productType: MilitaryOrthoMapBuilder(
                        componentFactory=ComponentFactory(), versionFolder=versionFolder
                    )
                }
            )
        elif productType == "militaryTopoMap" and productType not in self.builders:
            self.builders.update(
                {
                    productType: MilitaryTopoMapBuilder(
                        componentFactory=ComponentFactory(), versionFolder=versionFolder
                    )
                }
            )
        return self.builders.get(productType)

    def getExporter(
        self, dlg: NamedTuple, data: dict, debugMode: bool
    ) -> ExporterSingleton:
        """Sets up the exporter configuration and returns it
        Args:
            dlg (NamedTuple): Configuration details from the plugin window or cmd
            data (dict): current map info
            debugMode (bool): Debug flag
        Returns:
            An exporter singleton
        """
        self.exporter.setParams(dlg, data, debugMode)
        return self.exporter

    def run(self):
        # TODO: run in a different thread
        # TODO: better layers / composition cleanup
        """Runs the specified MapBuilder according to dlg / json preferences"""
        dlgCfg = self.setupDlgCfg(self.dlg)
        productType, productName, productVersion, versionFolder = self.getProductType(
            dlgCfg.productType
        )
        builder = None
        is_headless = dlgCfg.instance == "headless"
        if self.debugMode:
            logger.warning(
                "debugMode ligado (há um arquivo .env na raiz do plugin): a validação do JSON e a exportação de PDF/GeoTIFF serão PULADAS (modo de geração de QPT)."
            )
        if Qgis.QGIS_VERSION_INT < 40000:
            if is_headless:
                logger.error(
                    "Exportação disponível apenas no QGIS 4.0 ou superior."
                )
            else:
                QMessageBox.warning(
                    self.dlg,
                    "Erro",
                    "Exportação disponível apenas no QGIS 4.0 ou superior.",
                )
            return
        MapBuilderUtils().cleanProject(self.debugMode)
        if dlgCfg.jsonFilePaths == []:
            if is_headless:
                logger.error(
                    "Não foi inserido um arquivo ou pasta de JSON para produto solicitado."
                )
            else:
                QMessageBox.warning(
                    self.dlg,
                    "Erro",
                    f"Não foi inserido um arquivo ou pasta de JSON para produto solicitado.",
                )
            return
        if dlgCfg.exportFolder == "":
            if is_headless:
                logger.error("Não foi inserida uma pasta de saída para o produto solicitado.")
            else:
                QMessageBox.warning(
                    self.dlg,
                    "Erro",
                    f"Não foi inserida uma pasta de saída para o produto solicitado.",
                )
            return
        if not is_headless and "Carta Ortoimagem SARP" in dlgCfg.productType:
            self.qptDlg()
        exportResult, exportMessage = False, ""
        successCount = 0
        for jsonPath in dlgCfg.jsonFilePaths:
            self.setColorPalette()
            jsonData = self.readJson(jsonPath)
            if "tipo_produto" not in jsonData:
                if is_headless:
                    logger.error(
                        "A chave tipo_produto não foi encontrada no json de entrada, ignorando produto."
                    )
                else:
                    QMessageBox.warning(
                        self.dlg,
                        "Erro",
                        f"A chave tipo_produto não foi encontrada no json de entrada {jsonPath}, ignorando produto."
                        "Adicione a chave e tente novamente.",
                    )
                exportResult = False
                continue
            if not self.debugMode and not jsonStructure.validate_dict(
                jsonData, product_type=jsonData["tipo_produto"]
            ):
                if "licenca_produto" in jsonData and jsonData[
                    "licenca_produto"
                ] not in ["CC-BY-SA 4.0", "CC-BY-NC-SA 4.0"]:
                    if is_headless:
                        logger.error(
                            """Licença inválida no json. Os únicos valores possíveis aceitos são "CC-BY-SA 4.0" ou "CC-BY-NC-SA 4.0" """
                        )
                    else:
                        QMessageBox.warning(
                            self.dlg,
                            "Erro",
                            """Licença inválida no json. Os únicos valores possíveis aceitos são "CC-BY-SA 4.0" ou "CC-BY-NC-SA 4.0" """
                            "Corrija o json e tente novamente.",
                        )
                missingKeySet = jsonStructure.find_missing_required_keys_on_dict(
                    jsonData, product_type=jsonData["tipo_produto"]
                )
                missingKeyText = ",".join(list(missingKeySet))
                if is_headless:
                    logger.error(
                        "Há erros de validação no json de entrada. Faltam as seguintes chaves obrigatórias: %s.",
                        missingKeyText,
                    )
                else:
                    QMessageBox.warning(
                        self.dlg,
                        "Erro",
                        f"Há erros de validação no json de entrada. Faltam as seguintes chaves obrigatórias: {missingKeyText}. "
                        "Corrija o json e tente novamente.",
                    )
                exportResult = False
                continue
            filePathError = jsonStructure.validate_file_paths(jsonData)
            if filePathError != "":
                if is_headless:
                    logger.error("Erro no arquivo do diagrama de elevação.")
                else:
                    QMessageBox.warning(
                        self.dlg,
                        "Erro",
                        f"Erro: {filePathError}" "",
                    )
                exportResult = False
                continue
            internationalError = jsonStructure.validate_international_territory(jsonData)
            if internationalError != "":
                if is_headless:
                    logger.error("Erro: %s", internationalError)
                else:
                    QMessageBox.warning(
                        self.dlg,
                        "Erro",
                        f"Erro: {internationalError}",
                    )
                exportResult = False
                continue
            if (
                productName != "Carta Especial"
                and productName != jsonData["tipo_produto"]
            ):
                if is_headless:
                    logger.error(
                        "O tipo de produto escolhido na interface não corresponde à chave tipo_produto informada no arquivo json, ignorando produto."
                    )
                else:
                    QMessageBox.warning(
                        self.dlg,
                        "Erro",
                        f"O tipo de produto escolhido na interface não corresponde à chave tipo_produto informada no arquivo json {jsonPath}, ignorando produto. "
                        "Escolha corretamente o produto ou altere o json de entrada e tente novamente.",
                    )
                exportResult = False
                continue
            if (
                "versao_produto" in jsonData
                and productVersion != jsonData["versao_produto"]
            ):
                if is_headless:
                    logger.error(
                        "O tipo de produto escolhido na interface não corresponde à chave tipo_produto informada no arquivo json, ignorando produto."
                    )
                else:
                    QMessageBox.warning(
                        self.dlg,
                        "Erro",
                        f"O tipo de produto escolhido na interface não corresponde à chave versao_produto informada no arquivo json {jsonPath}, ignorando produto. "
                        "Escolha corretamente o produto ou altere o json de entrada e tente novamente.",
                    )
                exportResult = False
                continue
            jsonData.update(
                {
                    "productType": productType,
                    "productName": productName,
                    "productVersion": productVersion,
                    "versionFolder": versionFolder,
                }
            )
            mapExtentsLyr, mapExtentsFeat = self.getComplementaryData(jsonData)
            if productType != "omMap":
                try:
                    abstractDb = self.getAbstractDb(jsonData, dlgCfg)
                except Exception:
                    if is_headless:
                        logger.error(
                            "Conexão inválida com o banco de dados. Verifique as configurações de conexão no json e as informações de usuário e senha."
                        )
                    else:
                        QMessageBox.warning(
                            self.dlg,
                            "Erro",
                            f"Conexão inválida com o banco de dados, ignorando produto. "
                            "Verifique as configurações de conexão no json e as informações de usuário e senha e tente novamente.",
                        )
                    exportResult = False
                    continue
                if not self.validateProductTypeAgainstDatabaseMetadata(
                    abstractDb, jsonData
                ):
                    if is_headless:
                        logger.error(
                            "O tipo de produto em exportação não corresponde ao produto com a modelagem de banco de dados adequada."
                        )
                    else:
                        QMessageBox.warning(
                            self.dlg,
                            "Erro",
                            f"O tipo de produto em exportação não corresponde ao produto com a modelagem de banco de dados adequada, ignorando produto. "
                            "Escolha corretamente o produto ou altere o json de entrada e tente novamente.",
                        )
                    exportResult = False
                    continue
                del abstractDb
            imageError = jsonStructure.validate_rasters_against_extents(
                frameLyr=mapExtentsLyr, input_dict=jsonData
            )
            if imageError != "":
                if is_headless:
                    logger.error("Erro: %s", imageError)
                else:
                    QMessageBox.warning(
                        self.dlg,
                        "Erro",
                        f"Erro: {imageError}" "",
                    )
                exportResult = False
                continue

            builder = self.getProductBuilder(productType, versionFolder)
            # builder.removeLayers(False)
            composition = self.compositions.getComposition(jsonData).clone()
            connection = (
                self.conn.getConnection(
                    jsonData.get("banco"), dlgCfg.username, dlgCfg.password
                )
                if productType != "omMap"
                else None
            )
            if productType != "omMap" and not self.validate_numeric_grid(connection):
                if is_headless:
                    logger.error(
                        "A camada edicao_grid_numerico_p está vazia. Gere o grid numérico e tente novamente."
                    )
                else:
                    QMessageBox.warning(
                        self.dlg,
                        "Erro",
                        f"A camada edicao_grid_numerico_p está vazia. Gere o grid numérico e tente novamente.",
                    )
                exportResult = False
                continue
            # Build components
            builder.setParams(
                jsonData,
                self.defaults,
                connection,
                composition,
                mapExtentsFeat,
                mapExtentsLyr,
            )
            builder.disableAdditionalMasks = dlgCfg.disableAdditionalMasks
            try:
                builder.run(self.debugMode)
                exporter = self.getExporter(dlgCfg, jsonData, self.debugMode)
                exportResult, exportMessage = exporter.export(composition)
                if exportResult:
                    successCount += 1
            except Exception as e:
                exportResult = False
                exportMessage = f"{type(e).__name__}: {e}"
                logger.exception("[export] falha ao construir ou exportar carta")
            finally:
                builder.removeLayers(self.debugMode)

        messageType = "Informação"
        if not builder:
            if dlgCfg.instance == "headless":
                logger.warning("Não há cartas a serem exportadas")
                return
            QMessageBox.warning(
                self.dlg, messageType, "Não há cartas a serem exportadas"
            )
            return
        builder.cleanProject(self.debugMode)
        total = len(dlgCfg.jsonFilePaths)
        allOk = successCount == total
        messageType = "Informação" if allOk else "Erro"
        msg = f"Exportação finalizada: {successCount}/{total} produto(s) com sucesso."
        if not allOk and exportMessage:
            msg += f" Último erro: {exportMessage}"
        if dlgCfg.instance == "headless":
            (logger.info if allOk else logger.warning)(msg)
            return
        QMessageBox.warning(self.dlg, messageType, msg)

    def validateProductTypeAgainstDatabaseMetadata(self, abstractDb, jsonData):
        if jsonData["tipo_produto"] == "Carta Ortoimagem SARP":
            return True
        version = abstractDb.getDatabaseVersion()
        if "orto" in jsonData["tipo_produto"].lower() and "orto" not in version.lower():
            return False
        return True

    def getAbstractDb(self, jsonData, dlgCfg):
        dbData = jsonData.get("banco")
        abstractDb = DbFactory().createDbFactory(driver=DsgEnums.DriverPostGIS)
        if not abstractDb.testCredentials(
            host=dbData.get("servidor"),
            port=dbData.get("porta"),
            database=dbData.get("nome"),
            user=dlgCfg.username,
            password=dlgCfg.password,
        ):
            raise Exception("Connection error")
        abstractDb.connectDatabaseWithParameters(
            host=dbData.get("servidor"),
            port=dbData.get("porta"),
            database=dbData.get("nome"),
            user=dlgCfg.username,
            password=dlgCfg.password,
        )
        return abstractDb

    def validate_numeric_grid(self, uri: QgsDataSourceUri) -> bool:
        uri = QgsDataSourceUri(uri)
        numeric_grid_layer = MapBuilderUtils().getLayerFromPostgres(
            uri,
            {"table": "edicao_grid_numerico_p", "schema": "edgv"}
        )
        return not numeric_grid_layer.featureCount() == 0
