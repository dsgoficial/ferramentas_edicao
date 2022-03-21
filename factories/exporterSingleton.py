import subprocess
from pathlib import Path
from typing import NamedTuple

from qgis.core import QgsLayoutExporter, QgsPrintLayout, QgsRasterLayer


class ExporterSingleton:

    def setParams(self, dlg: NamedTuple, data: dict, debugMode: bool):
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
        self.exportFolder = dlg.exportFolder
        self.exportTiff = dlg.exportTiff
        self.debugMode = debugMode
        self.dpi = int(data.get('dpi')) or 400

    def export(self, composition: QgsPrintLayout) -> bool:
        ''' Creates a QgsLayoutExporter per composition to be exported
        Args:
            composition: The composition which will be used in the export process
        Returns:
            The export status
        '''
        exporter = QgsLayoutExporter(composition)
        exportStatus = 0
        if not self.debugMode:
            pdfFilePath = Path(self.exportFolder, f'{self.basename}.pdf')
            pdfExportSettings = QgsLayoutExporter.PdfExportSettings()
            pdfExportSettings.rasterizeWholeImage = True
            pdfExportSettings.simplifyGeometries = False
            pdfExportSettings.appendGeoreference = True
            pdfExportSettings.exportMetadata = False
            pdfExportSettings.dpi = self.dpi
            exportStatus += exporter.exportToPdf(str(pdfFilePath), pdfExportSettings)
        if self.exportTiff:
            tiffFilePath = Path(self.exportFolder, f'{self.basename}.tif')
            tiffExporterSettings = QgsLayoutExporter.ImageExportSettings()
            tiffExporterSettings.dpi = self.dpi
            statusTiff = exporter.exportToImage(str(tiffFilePath), tiffExporterSettings)
            exportStatus += statusTiff
            self.reproject(tiffFilePath)
            self.compress(tiffFilePath)
            self.cleanup(tiffFilePath)
        # del exporter
        return not bool(exportStatus)

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
