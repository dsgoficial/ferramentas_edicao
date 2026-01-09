# -*- coding: utf-8 -*-
import os
from qgis.PyQt import uic
from qgis.PyQt.QtWidgets import QDockWidget, QFileDialog, QMessageBox
from qgis.core import QgsRasterLayer, QgsProject
from qgis.PyQt.QtCore import Qt
import subprocess

UI_PATH = os.path.join(
    os.path.dirname(__file__),
    "forms",
    "conversao_dock.ui"
)

FORM_CLASS, _ = uic.loadUiType(UI_PATH)


class ConversaoDockWidget(QDockWidget, FORM_CLASS):
    def __init__(self, iface=None, parent=None):
        super().__init__(parent)

        self.setupUi(self)
        self.iface = iface

        # Conecta botões
        self.btn_pdf_to_tiff.clicked.connect(self.converter_pdf_para_geotiff)
        self.btn_tiff_to_pdf.clicked.connect(self.converter_geotiff_para_pdf)

    # ----------------------------------------------------------
    # 1) Converter PDF → GeoTIFF (com DPI)
    # ----------------------------------------------------------
    def converter_pdf_para_geotiff(self):
        pdf_path, _ = QFileDialog.getOpenFileName(
            self,
            "Selecione o arquivo PDF",
            "",
            "Arquivo PDF (*.pdf)"
        )

        if not pdf_path:
            return

        suggested_tiff = os.path.splitext(pdf_path)[0] + ".tif"

        tiff_path, _ = QFileDialog.getSaveFileName(
            self,
            "Salvar GeoTIFF",
            suggested_tiff,
            "GeoTIFF (*.tif)"
        )

        if not tiff_path:
            return

        dpi = self.spin_dpi.value()

        # Converter com DPI
        cmd = [
            "gdal_translate",
            "-of", "GTiff",
            "-co", f"DPI={dpi}",
            pdf_path,
            tiff_path
        ]

        try:
            subprocess.run(cmd, check=True)
        except Exception as e:
            QMessageBox.critical(self, "Erro", str(e))
            return

        lyr = QgsRasterLayer(tiff_path, os.path.basename(tiff_path))
        if lyr.isValid():
            QgsProject.instance().addMapLayer(lyr)

        self.iface.messageBar().pushSuccess(
            "Conversão",
            f"PDF convertido para GeoTIFF em {dpi} DPI"
        )

    # ----------------------------------------------------------
    # 2) Converter GeoTIFF → PDF (com DPI)
    # ----------------------------------------------------------
    def converter_geotiff_para_pdf(self):
        tiff_path, _ = QFileDialog.getOpenFileName(
            self,
            "Selecione o GeoTIFF",
            "",
            "GeoTIFF (*.tif *.tiff)"
        )

        if not tiff_path:
            return

        suggested_pdf = os.path.splitext(tiff_path)[0] + ".pdf"

        pdf_path, _ = QFileDialog.getSaveFileName(
            self,
            "Salvar PDF",
            suggested_pdf,
            "PDF (*.pdf)"
        )

        if not pdf_path:
            return

        dpi = self.spin_dpi.value()

        cmd = [
            "gdal_translate",
            "-of", "PDF",
            "-co", f"DPI={dpi}",
            tiff_path,
            pdf_path
        ]

        try:
            subprocess.run(cmd, check=True)
        except Exception as e:
            QMessageBox.critical(self, "Erro", str(e))
            return

        self.iface.messageBar().pushSuccess(
            "Conversão",
            f"GeoTIFF convertido para PDF em {dpi} DPI"
        )
