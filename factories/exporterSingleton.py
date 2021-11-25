from pathlib import Path
from typing import List
from qgis.core import QgsPrintLayout, QgsLayoutExporter
from typing import NamedTuple

class ExporterSingleton:

    def __init__(self, debugMode, exportFolder) -> None:
        self.debugMode = debugMode
        self.exportFolder = exportFolder

    def export(self, composition: QgsPrintLayout, jsonData: dict, dlg: NamedTuple):
        ''' Creates a QgsLayoutExporter per composition to be exported
        '''
        basename = jsonData.get('mi') or jsonData.get('inom')
        exporter = QgsLayoutExporter(composition)
        exportStatus = 0
        if not self.debugMode:
            pdfFilePath = Path(self.exportFolder, f'{basename}.pdf')
            pdfExportSettings = QgsLayoutExporter.PdfExportSettings()
            pdfExportSettings.rasterizeWholeImage = True
            pdfExportSettings.simplifyGeometries = False
            pdfExportSettings.appendGeoreference = True
            pdfExportSettings.exportMetadata = False
            pdfExportSettings.dpi = 400
            exportStatus += exporter.exportToPdf(pdfFilePath, pdfExportSettings)
        if dlg.exportTiff:
            tiffFilePath = Path(self.exportFolder, f'{basename}.tif')
            tiffExporterSettings = QgsLayoutExporter.ImageExportSettings()
            tiffExporterSettings.dpi = 400
            statusTiff = exporter.exportToImage(tiffFilePath, tiffExporterSettings)
            exportStatus += statusTiff
        del exporter
        return not bool(exportStatus)

    def convert(self):
        pass
