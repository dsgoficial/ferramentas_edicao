from pathlib import Path

from qgis.core import QgsFeature, QgsFeatureRequest, QgsPrintLayout, QgsVectorLayer

from ....interfaces.iComponent import IComponent
from .componentUtils import ComponentUtils


class Subtitle(ComponentUtils, IComponent):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

    def build(
        self, composition: QgsPrintLayout, data: dict, mapAreaFeature: QgsFeature
    ):
        """Populates the region label (and city/state for OM maps)
        Args:
            composition (QgsPrintLayout): composition to be updated
            data (dict): holds the map information
            mapAreaFeature (QgsFeature): holds the map extents
        """
        if isInternational := bool(data.get("territorio_internacional")):
            pathShpCountries = (
                Path(__file__).parent.parent
                / "resources"
                / "limits"
                / "2020"
                / "Paises_2020.shp"
            )
            layer = self.loadShapeLayer(pathShpCountries, "", "countries")
        else:
            pathShpStates = (
                Path(__file__).parent.parent
                / "resources"
                / "limits"
                / "2020"
                / "Estados_2020.shp"
            )
            layer = self.loadShapeLayer(pathShpStates, "", "states")

        regionsIntersected = self.getIntersections(
            mapAreaFeature, layer, isInternational
        )
        self.updateComposition(composition, data, regionsIntersected, isInternational)

    def getIntersections(
        self, mapAreaFeature: QgsFeature, layer: QgsVectorLayer, isInternational: bool
    ) -> set[str]:
        """Checks intersections between mapArea and states or countries based on key isInternational
        Args:
            mapAreaFeature (QgsFeature): holds the map extents
            layer (QgsVectorLayer): Countries or States layer, will be used to get intersections
            inInternational (bool): flag to define if the map contains international area
        Returns:
            Names of intersected features from layer
        """
        intersections = set()
        request = QgsFeatureRequest().setFilterRect(
            mapAreaFeature.geometry().boundingBox()
        )
        for feat in layer.getFeatures(request):
            if not feat.geometry().intersects(mapAreaFeature.geometry()):
                continue
            if isInternational:
                if name := feat.attribute("nome"):
                    intersections.add(name)
            else:
                if name := feat.attribute("REGIAO"):
                    intersections.add(feat.attribute("REGIAO"))
        return intersections

    def updateComposition(
        self,
        composition: QgsPrintLayout,
        data: dict,
        regionsIntersected: set[str],
        isInternational: bool,
    ):
        """Updates multiple labels in the composition: region, product name, map name, map MI and map indice.
        Args:
            composition (QgsPrintLayout): composition to be updated
            data (dict): holds the map information
            regionsIntersected (set): Intersected features with map area
            inInternational (bool): flag to define if the map contains international area
        """
        regionsIntersected = [regiao.upper() for regiao in regionsIntersected]
        name = data.get("nome")
        mi = data.get("mi")
        inom = data.get("inom")
        scale = data.get("scale")
        productName = data.get("productName", "").upper()
        if regionLabel := composition.itemById("label_regiao"):
            if isInternational:
                labelText = " E ".join(regionsIntersected)
            else:
                sortedRegion = sorted(set(regionsIntersected))
                labelText = (
                    "REGIÃO {lista_regiao} E {ultima_regiao} DO BRASIL".format(
                        lista_regiao=", ".join(sortedRegion[:-1]),
                        ultima_regiao=sortedRegion[-1],
                    )
                    if len(sortedRegion) > 2
                    else "REGIÃO {regiao} DO BRASIL".format(
                        regiao=" E ".join(regionsIntersected)
                    )
                )
                case1 = set(["SUL", "SUDESTE", "CENTRO-OESTE"])  # 11
                case2 = set(["NORDESTE", "SUDESTE", "CENTRO-OESTE"])  # 10
                case3 = set(["NORTE", "SUDESTE", "CENTRO-OESTE"])  # 10
                labelFont = regionLabel.font()
                if regionsIntersected == case1:
                    labelFont.setPointSize(11)
                    regionLabel.setFont(labelFont)
                if regionsIntersected == case2 or regionsIntersected == case3:
                    labelFont.setPointSize(10)
                    regionLabel.setFont(labelFont)
            regionLabel.setText(labelText)
            regionLabel.refresh()
        if productTypeLabel := composition.itemById("label_nome_produto"):
            productTypeLabel.setText(productName)
            productTypeLabel.refresh()
        if mapNameLabel := composition.itemById("label_nomeCarta"):
            mapText = name.upper() if name else "ESPECIAL"
            mapNameLabel.setText(mapText)
            mapNameLabel.refresh()
        if indiceLabel := composition.itemById("label_indice"):
            if inom != "Especial":
                indiceText = "ÍNDICE: " + inom
                indiceLabel.setVisible(True)
                indiceLabel.setText(indiceText)
            else:
                indiceLabel.setVisible(False)
            indiceLabel.refresh()
        if miLabel := composition.itemById("label_mi"):
            if mi and mi != "Especial":
                miText = f'{"MIR" if int(scale) == 250 else "MI"}: {mi}'
                miLabel.setVisible(True)
                miLabel.setText(miText)
            else:
                miLabel.setVisible(False)
            miLabel.refresh()
