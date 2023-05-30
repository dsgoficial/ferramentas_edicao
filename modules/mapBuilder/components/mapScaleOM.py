from qgis.core import QgsPrintLayout


class MapScaleOM:
    def __init__(self, *args, **kwargs) -> None:
        pass

    def build(self, composition: QgsPrintLayout, data: dict):
        """Sets the labels for scale and scale bar.
        Args:
                composition: a QgsPrintLayout for the mapOm product
                data: dict holding the map info
        """
        scale = int(data.get("scale"))
        if item := composition.itemById("scaleLabel"):
            text = "ESCALA 1:{}".format(scale)
            item.setText(text)
        if item := composition.itemById("scaleBarLabel1"):
            text = str(round(scale / 10))
            item.setText(text)
        if item := composition.itemById("scaleBarLabel2"):
            text = str(round(2 * scale / 10))
            item.setText(text)
        if item := composition.itemById("scaleBarLabel3"):
            text = str(round(4 * scale / 10))
            item.setText(text)
        if item := composition.itemById("scaleBarLabel4"):
            text = str(round(6 * scale / 10))
            item.setText(text)
        if item := composition.itemById("scaleBarLabel5"):
            text = "{} m".format(str(round(8 * scale / 10)))
            item.setText(text)
