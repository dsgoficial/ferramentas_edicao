import tempfile
from pathlib import Path

from qgis.core import QgsPrintLayout, QgsFeature

from ...qrcode.main import make

camadas_ligadas = {
    "localidades":"963",
    "mosaico_topograficas":"953",
    "carta_topografica_25":"899",
    "carta_topografica_50":"898",
    "carta_topografica_100":"897",
    "carta_topografica_250":"870"
}

niveis_de_zoom = {
    "25":"10",
    "50":"8",
    "100":"7",
    "250":"6",
}

class Qrcode:

    def createQRCode(self, dest_path, latitude, longitude, camadas_adicionar, escala, nivel_de_zoom = None):
        # Layers    
        layers = ','.join([camadas_ligadas[camada] for camada in camadas_adicionar])

        # Niveis de zoom    
        if nivel_de_zoom is None and escala in niveis_de_zoom:
            nivel_de_zoom = niveis_de_zoom[escala]

        # https://bdgex.eb.mil.br/bdgex/mobile/?l=963,953&c=-53.708451,-26.680751&z=10
        original_path = "https://bdgex.eb.mil.br/bdgexapp/mobile/?l={layers}&c={longitude},{latitude}&z={nivel_de_zoom}"
        custom_path = original_path.format(layers=layers, latitude=latitude, longitude=longitude, nivel_de_zoom=nivel_de_zoom)    

        # Save svg file somewhere
        img = make(custom_path)
        img.save(dest_path)

    def build(self, composition: QgsPrintLayout, data: dict, mapAreaFeature: QgsFeature):
        camadas_adicionar = ["localidades", "mosaico_topograficas"]
        scale = data.get('scale')
        centroid_pt = mapAreaFeature.geometry().centroid().asPoint()
        latitude, longitude = centroid_pt.y(), centroid_pt.x()
        dest_path = tempfile.NamedTemporaryFile(suffix='.png')
        dest_path = Path(dest_path.name)
        self.createQRCode(dest_path, latitude, longitude, camadas_adicionar, scale)
        self.updateComposition(composition,dest_path)

    def updateComposition(self, composition: QgsPrintLayout, qrCodePath: Path):
        if (layoutItem:=composition.itemById('symbol_QRCODE')) is not None:
            layoutItem.setPicturePath(str(qrCodePath))
            layoutItem.refresh()