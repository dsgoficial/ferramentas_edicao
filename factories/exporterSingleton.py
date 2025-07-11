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
import subprocess
from pathlib import Path
from typing import NamedTuple, Dict

from qgis.core import (
    QgsLayoutExporter,
    QgsPrintLayout,
    QgsRasterLayer,
    QgsProject,
    QgsLayoutItemMap,
)
from qgis import utils


class ExporterSingleton:

    exportNameDict = {
        "orthoMap": "Carta_Ortoimagem",
        "topoMap": "Carta_Topografica",
        "omMap": "Carta_Especial",
        "omMap": "Carta_Especial",
        "militaryOrthoMap": "Carta_Ortoimagem_Militar",
        "militaryTopoMap": "Carta_Topografica_Militar",
    }

    def setParams(self, dlg: NamedTuple, data: Dict, debugMode: bool):
        """Sets parameters for each export process
        Args:
            dlg: holds the interface info
            data: has the json data
            debugMode: whether the debug mode is on of off
        """
        if data.get("omTemplateType"):
            self.basename = data.get("nome")
        else:
            self.basename = data.get("mi") or data.get("inom")
        self.productName = data.get("productName")
        self.productVersion = data.get("productVersion")
        self.basename = (
            (f"{self.exportNameDict.get(data.get('productType'))}_{self.basename}")
            if self.basename != "Especial"
            else f"{self.exportNameDict.get(data.get('productType'))}_{self.basename}_{data.get('scale')}k_{data.get('nome')}"
        )
        self.exportFolder = dlg.exportFolder
        self.exportTiff = dlg.exportTiff
        self.exportTiffWithoutGrid = dlg.exportTiffWithoutGrid
        self.debugMode = debugMode
        self.dpi = int(data.get("dpi", 300))

    def setMetadata(self):
        metadata = QgsProject.instance().metadata()
        dsgToolsVersion = utils.pluginMetadata("DsgTools", "version")
        FEVersion = utils.pluginMetadata("ferramentas_edicao", "version")
        metadata.setAbstract(
            f"DSGTools: {dsgToolsVersion}; ferramentas_edicao: {FEVersion}; Produto: {self.productName} {self.productVersion}; {self.dpi} dpi"
        )
        metadata.setAuthor("Diretoria de Serviço Geográfico")
        metadata.setTitle(f"{self.basename}")
        QgsProject.instance().setMetadata(metadata)

    def export(self, composition: QgsPrintLayout) -> bool:
        """Creates a QgsLayoutExporter per composition to be exported
        Args:
            composition: The composition which will be used in the export process
        Returns:
            The export status
        """
        exporter = QgsLayoutExporter(composition)
        exportStatus = 0
        errorMessage = ""
        self.setMetadata()
        if not self.debugMode:
            pdfFilePath = Path(self.exportFolder, f"{self.basename}.pdf")
            pdfExportSettings = QgsLayoutExporter.PdfExportSettings()
            pdfExportSettings.rasterizeWholeImage = False
            pdfExportSettings.simplifyGeometries = False
            pdfExportSettings.appendGeoreference = True
            pdfExportSettings.exportMetadata = True
            pdfExportSettings.dpi = self.dpi
            exportStatus += exporter.exportToPdf(str(pdfFilePath), pdfExportSettings)
            errorMessage += self.getErrorMessage(exportStatus)
        if self.exportTiff:
            tiffFilePath = Path(self.exportFolder, f"{self.basename}.tif")
            tiffExporterSettings = QgsLayoutExporter.ImageExportSettings()
            tiffExporterSettings.dpi = self.dpi
            statusTiff = exporter.exportToImage(str(tiffFilePath), tiffExporterSettings)
            errorMessage += self.getErrorMessage(exportStatus, fileType="tif")
            exportStatus += statusTiff
            self.reproject(tiffFilePath)
            self.compress(tiffFilePath)
            self.cleanup(tiffFilePath)
        if self.exportTiffWithoutGrid:
            tiffFilePath = Path(self.exportFolder, f"{self.basename}_sem_grid.tif")
            self.removeGrid()
            tiffExporterSettings = QgsLayoutExporter.ImageExportSettings()
            tiffExporterSettings.dpi = self.dpi
            statusTiff = exporter.exportToImage(str(tiffFilePath), tiffExporterSettings)
            errorMessage += self.getErrorMessage(exportStatus, fileType="tif")
            exportStatus += statusTiff
            self.reproject(tiffFilePath)
            self.compress(tiffFilePath)
            self.cleanup(tiffFilePath)
        # del exporter
        return not bool(exportStatus), errorMessage

    def getErrorMessage(self, exportStatus, fileType=None):
        fileType = "pdf" if fileType is None else fileType
        if exportStatus == QgsLayoutExporter.Success:
            return ""
        elif exportStatus == QgsLayoutExporter.Canceled:
            return "Processo cancelado pelo usuário.\n"
        elif exportStatus == QgsLayoutExporter.MemoryError:
            return "Erro de memória. Não foi possível alocar a memória necessária para a exportação.\n"
        elif exportStatus == QgsLayoutExporter.FileError:
            return f"Não foi possível escrever no arquivo de destino. Provavelmente o arquivo {fileType} está aberto por outro programa. Feche o arquivo e tente novamente.\n"
        elif exportStatus == QgsLayoutExporter.PrintError:
            return "Não foi possível iniciar a impressão no dispositivo escolhido.\n"
        elif exportStatus == QgsLayoutExporter.SvgLayerError:
            return "Não foi possível criar o arquivo SVG de destino.\n"
        elif exportStatus == QgsLayoutExporter.IteratorError:
            return "Erro ao iterar sobre o layout.\n"
        else:
            return "Erro desconhecido.\n"

    def reproject(self, path: Path):
        """Calls gdalwarp to reproject a tiff file to EPSG:4674 (BDGEx default)
        Args:
            path: Path instance of original exported tiff file
        """
        srcEpsg = QgsRasterLayer(str(path), "tmp").crs().postgisSrid()
        p = subprocess.Popen(
            [
                "gdalwarp",
                "-overwrite",
                "-s_srs",
                f"EPSG:{srcEpsg}",
                "-t_srs",
                "EPSG:4674",
                "-of",
                "GTiff",
                path,
                path.with_stem("reproject"),
            ],
            shell=True,
        )
        p.wait()

    def compress(self, path: Path):
        """Calls gdal_translate to use JPEG compression on a tiff file
        Args:
            path: Path instance of original exported tiff file
        """
        p = subprocess.Popen(
            [
                "gdal_translate",
                "-b",
                "1",
                "-b",
                "2",
                "-b",
                "3",
                "-co",
                "COMPRESS=JPEG",
                "-co",
                "TILED=YES",
                "-co",
                "PHOTOMETRIC=YCBCR",
                path.with_stem("reproject"),
                path.with_stem("compress"),
            ],
            shell=True,
        )
        p.wait()

    def removeGrid(self):
        """
        Removes the grid from the map layout by unckecking the visibility of the item grid
        """
        project = QgsProject.instance()
        for layerName in [
            "aux_label",
            "edicao_grid_edicao_l",
            "edicao_grid_numerico_p",
        ]:
            layer = project.mapLayersByName(layerName)[0]
            root = project.layerTreeRoot()
            layer_node = root.findLayer(layer.id())
            if layer_node:
                layer_node.setItemVisibilityChecked(False)

    def cleanup(self, path: Path):
        """Unlink intermediate files (reproject and compress) created by reproject and compress functions.
        Args:
            path: Path instance of original exported tiff file
        """
        compressPath = path.with_stem("compress")
        reprojectPath = path.with_stem("reproject")
        path.unlink(missing_ok=True)
        reprojectPath.unlink(missing_ok=True)
        compressPath.rename(path)
