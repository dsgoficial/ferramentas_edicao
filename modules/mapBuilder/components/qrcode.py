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
import tempfile
from pathlib import Path

from qgis.core import QgsFeature, QgsPrintLayout

from ...qrcode.main import make

bdgexLayersIdMap = {
    "localidades": "963",
    "mosaico_topograficas": "953",
    "carta_topografica_25": "899",
    "carta_topografica_50": "898",
    "carta_topografica_100": "897",
    "carta_topografica_250": "870",
    "carta_ortoimagem_250": "997",
    "carta_ortoimagem_100": "998",
    "carta_ortoimagem_50": "876",
    "carta_ortoimagem_25": "912",
}

zoomLevelsIdMap = {
    "25": 10,
    "50": 8,
    "100": 7,
    "250": 6,
}


class Qrcode:
    def createQRCode(
        self,
        savePath: Path,
        latitude: float,
        longitude: float,
        bdgexLayersToAdd: list,
        scale: str,
        zoomLevel: str = None,
    ):
        """Builds the map location url, setting it into the qrcode.
        Args:
            savePath (pathlib.Path): (temporary) path instance where the qrcode file wll be written
            latitude (float): map's central latitude
            latitude (float): map's central longitude
            bdgexLayersToAdd (list): list of BDGEx layers to be displayed on the webapp
            scale (str): map scale
            zoomLevel (str): on which zoom level the BDGEx web app should be rendered
        """
        layersIds = ",".join([bdgexLayersIdMap[lyr] for lyr in bdgexLayersToAdd])
        zoomLevel = zoomLevel or zoomLevelsIdMap.get(scale, 11)
        # https://bdgex.eb.mil.br/bdgex/mobile/?l=963,953&c=-53.708451,-26.680751&z=10
        urlPath = f"https://bdgex.eb.mil.br/bdgexapp/mobile/?l={layersIds}&c={longitude},{latitude}&z={zoomLevel}"
        img = make(urlPath)
        img.save(savePath)

    def build(
        self, composition: QgsPrintLayout, data: dict, mapAreaFeature: QgsFeature
    ):
        """Builds the qrcode icon and inserts it in the composition.
        Args:
            composition (QgsPrintLayout): composition to be updated
            data (dict): Python dictionary holding the map info
            mapAreaFeature (QgsFeature): feature (in geographic coords) holding the map area
        """
        scale = data.get("scale")
        bdgexLayersToAdd = ["localidades"]
        if data.get("tipo_produto") == "Carta Ortoimagem" and str(scale) != "100":
            bdgexLayersToAdd.append(f"carta_ortoimagem_{str(scale)}")
        else:
            bdgexLayersToAdd.append("mosaico_topograficas")
        centroid = mapAreaFeature.geometry().centroid().asPoint()
        latitude, longitude = centroid.y(), centroid.x()
        destPath = tempfile.NamedTemporaryFile(suffix=".png")
        destPath = Path(destPath.name)
        self.createQRCode(destPath, latitude, longitude, bdgexLayersToAdd, scale)
        self.updateComposition(composition, destPath)

    def updateComposition(self, composition: QgsPrintLayout, qrCodePath: Path):
        """Updates the qrcode path in the composition
        Args:
            composition (QgsPrintLayout): composition to be updated
            qrCodePath (pathlib.Path): path of qrcode's png file
        """
        if (layoutItem := composition.itemById("symbol_QRCODE")) is not None:
            layoutItem.setPicturePath(str(qrCodePath))
            layoutItem.refresh()
