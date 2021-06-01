import tempfile
from pathlib import Path
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

def createQRCode(dest_path, latitude, longitude, camadas_adicionar, escala, nivel_de_zoom = None):
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

def create_qrcode_from_feature(selected_feature, escala, camadas_adicionar, inom ):
    centroid_pt = selected_feature.geometry().centroid().asPoint()
    latitude, longitude = centroid_pt.y(), centroid_pt.x()
    dest_path = tempfile.NamedTemporaryFile(suffix='.png')
    dest_path = Path(dest_path.name)
    createQRCode(dest_path, latitude, longitude, camadas_adicionar, escala)
    success = True
    return success, dest_path

def replace_qrCode(composition, path_qrCode, idPicture_qrCode="symbol_QRCODE"):
    if composition.itemById(idPicture_qrCode) is not None:
        picture_QRCode = composition.itemById(idPicture_qrCode)
        picture_QRCode.setPicturePath(str(path_qrCode))
        picture_QRCode.refresh()

if __name__ == "__main__":
    pontos = QgsProject.instance().mapLayersByName('roi')[0]
    selected_feature = pontos.selectedFeatures()[0]
    camadas_adicionar = ["localidades", "mosaico_topograficas"]
    escala = "25"
    inom = "SG-21"
    dest_path = create_qrcode_from_feature(selected_feature, escala, camadas_adicionar, inom)
