from pathlib import Path
from typing import NamedTuple

from qgis.core import QgsLayoutExporter, QgsPrintLayout


class ExporterSingleton:

    def setParams(self, dlg: NamedTuple, data: dict, debugMode: bool):
        self.basename = data.get('mi') or data.get('inom')
        self.exportFolder = dlg.exportFolder
        self.exportTiff = dlg.exportTiff
        self.debugMode = debugMode

    def export(self, composition: QgsPrintLayout) -> bool:
        ''' Creates a QgsLayoutExporter per composition to be exported
        Args:
            composition: The composition which will be used in the export process
        Returns:
            The export status
        '''
        print(self.exportFolder)
        print(self.exportTiff)
        exporter = QgsLayoutExporter(composition)
        exportStatus = 0
        if not self.debugMode:
            pdfFilePath = Path(self.exportFolder, f'{self.basename}.pdf')
            pdfExportSettings = QgsLayoutExporter.PdfExportSettings()
            pdfExportSettings.rasterizeWholeImage = True
            pdfExportSettings.simplifyGeometries = False
            pdfExportSettings.appendGeoreference = True
            pdfExportSettings.exportMetadata = False
            pdfExportSettings.dpi = 400
            exportStatus += exporter.exportToPdf(str(pdfFilePath), pdfExportSettings)
        if self.exportTiff:
            tiffFilePath = Path(self.exportFolder, f'{self.basename}.tif')
            tiffExporterSettings = QgsLayoutExporter.ImageExportSettings()
            tiffExporterSettings.dpi = 400
            statusTiff = exporter.exportToImage(str(tiffFilePath), tiffExporterSettings)
            exportStatus += statusTiff
        # del exporter
        return not bool(exportStatus)

    def convert(self):
        pass
