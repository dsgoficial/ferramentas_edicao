import subprocess
from pathlib import Path
from typing import NamedTuple, Dict

from qgis.core import QgsLayoutExporter, QgsPrintLayout, QgsRasterLayer


class ExporterSingleton:

    exportNameDict = {
        'orthoMap': 'Carta_Ortoimagem',
        'topoMap': 'Carta_Topografica',
        'omMap': 'Carta_Especial',
        'omMap': 'Carta_Especial',
        'militaryOrthoMap': 'Carta_Ortoimagem_Militar',
    }

    def setParams(self, dlg: NamedTuple, data: Dict, debugMode: bool):
        '''Sets parameters for each export process
        Args:
            dlg: holds the interface info
            data: has the json data
            debugMode: whether the debug mode is on of off 
        '''
        if data.get('omTemplateType'):
            self.basename = data.get('nome')
        else:
            self.basename = data.get('mi') or data.get('inom')
        self.basename = f"{self.exportNameDict.get(data.get('productType'))}_{self.basename}"
        self.exportFolder = dlg.exportFolder
        self.exportTiff = dlg.exportTiff
        self.debugMode = debugMode
        self.dpi = int(data.get('dpi', 400))

    def export(self, composition: QgsPrintLayout) -> bool:
        ''' Creates a QgsLayoutExporter per composition to be exported
        Args:
            composition: The composition which will be used in the export process
        Returns:
            The export status
        '''
        exporter = QgsLayoutExporter(composition)
        exportStatus = 0
        errorMessage = ''
        if not self.debugMode:
            pdfFilePath = Path(self.exportFolder, f'{self.basename}.pdf')
            pdfExportSettings = QgsLayoutExporter.PdfExportSettings()
            pdfExportSettings.rasterizeWholeImage = True
            pdfExportSettings.simplifyGeometries = False
            pdfExportSettings.appendGeoreference = True
            pdfExportSettings.exportMetadata = False
            pdfExportSettings.dpi = self.dpi
            exportStatus += exporter.exportToPdf(str(pdfFilePath), pdfExportSettings)
            errorMessage += self.getErrorMessage(exportStatus)
        if self.exportTiff:
            tiffFilePath = Path(self.exportFolder, f'{self.basename}.tif')
            tiffExporterSettings = QgsLayoutExporter.ImageExportSettings()
            tiffExporterSettings.dpi = self.dpi
            statusTiff = exporter.exportToImage(str(tiffFilePath), tiffExporterSettings)
            errorMessage += self.getErrorMessage(exportStatus, fileType='tif')
            exportStatus += statusTiff
            self.reproject(tiffFilePath)
            self.compress(tiffFilePath)
            self.cleanup(tiffFilePath)
        # del exporter
        return not bool(exportStatus), errorMessage
    
    def getErrorMessage(self, exportStatus, fileType=None):
        fileType = 'pdf' if fileType is None else fileType
        if exportStatus == QgsLayoutExporter.Success:
            return ''
        elif exportStatus == QgsLayoutExporter.Canceled:
            return 'Processo cancelado pelo usuário.\n'
        elif exportStatus == QgsLayoutExporter.MemoryError:
            return 'Erro de memória. Não foi possível alocar a memória necessária para a exportação.\n'
        elif exportStatus == QgsLayoutExporter.FileError:
            return f'Não foi possível escrever no arquivo de destino. Provavelmente o arquivo {fileType} está aberto por outro programa. Feche o arquivo e tente novamente.\n'
        elif exportStatus == QgsLayoutExporter.PrintError:
            return 'Não foi possível iniciar a impressão no dispositivo escolhido.\n'
        elif exportStatus == QgsLayoutExporter.SvgLayerError:
            return 'Não foi possível criar o arquivo SVG de destino.\n'
        elif exportStatus == QgsLayoutExporter.IteratorError:
            return 'Erro ao iterar sobre o layout.\n'
        else:
            return 'Erro desconhecido.\n'

    def reproject(self, path: Path):
        '''Calls gdalwarp to reproject a tiff file to EPSG:4674 (BDGEx default)
        Args:
            path: Path instance of original exported tiff file
        '''
        srcEpsg = QgsRasterLayer(str(path), "tmp").crs().postgisSrid()
        p = subprocess.Popen([
            'gdalwarp', '-overwrite', '-s_srs',
            f'EPSG:{srcEpsg}', '-t_srs', 'EPSG:4674',
            '-of', 'GTiff', path, path.with_stem('reproject')], shell=True)
        p.wait()

    def compress(self, path: Path):
        '''Calls gdal_translate to use JPEG compression on a tiff file
        Args:
            path: Path instance of original exported tiff file
        '''
        p = subprocess.Popen([
            'gdal_translate', '-b', '1', '-b', '2', '-b', '3', 
            '-co', 'COMPRESS=JPEG', '-co', 'TILED=YES', '-co', 'PHOTOMETRIC=YCBCR',
            path.with_stem('reproject'),
            path.with_stem('compress')], shell=True)
        p.wait()
    
    def cleanup(self, path: Path):
        '''Unlink intermediate files (reproject and compress) created by reproject and compress functions.
        Args:
            path: Path instance of original exported tiff file
        '''
        compressPath = path.with_stem('compress')
        reprojectPath = path.with_stem('reproject')
        path.unlink(missing_ok=True)
        reprojectPath.unlink(missing_ok=True)
        compressPath.rename(path)
