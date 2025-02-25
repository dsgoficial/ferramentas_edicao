from pathlib import Path
from qgis.core import (
    QgsDistanceArea,
    QgsCoordinateReferenceSystem,
    QgsProject,
    QgsCoordinateTransformContext,
    QgsUnitTypes,
    Qgis,
    QgsGeometry,
)
from .baseTools import BaseTools
from PyQt5.QtWidgets import QMessageBox


class CycleLabelPosition(BaseTools):

    horizontalAnchorCodelist = {"Left": 1, "Center": 2, "Right": 3}
    verticalAnchorCodelist = {"Bottom": 1, "Half": 2, "Top": 3}

    def __init__(self, toolBar, iface, scaleSelector) -> None:
        self.toolBar = toolBar
        self.iface = iface
        self.scaleSelector = scaleSelector
        self.mapCanvas = iface.mapCanvas()
        self.pos = 0
        dist = 2 ** (1 / 2) / 2
        self.ord = [
            (dist, dist),
            (-dist, dist),
            (dist, -dist),
            (-dist, -dist),
            (0, 1),
            (1, 0),
            (-1, 0),
            (0, -1),
        ]
        self.currentFeats = set()

    def setupUi(self):
        buttonImg = Path(__file__).parent / "icons" / "Alternar_rotulo.png"
        self._action = self.createAction(
            "Alternar rótulo de Ponto Cotado",
            buttonImg,
            self.run,
            self.tr(
                'Alterna as âncoras verticais e horizontais da camada "elemnat_ponto_cotado_p"'
            ),
            self.tr(
                'Alterna as âncoras verticais e horizontais da camada "elemnat_ponto_cotado_p"'
            ),
            self.iface,
        )
        self.toolBar.addAction(self._action)
        self.iface.registerMainWindowAction(self._action, "")

    def getUpdateValue(self, feat, featXIdx, featYIdx):
        centroid = feat.geometry().centroid().vertexAt(0)
        refX, refY = centroid.x(), centroid.y()
        attrXValue = feat.attribute(featXIdx)
        attrYValue = feat.attribute(featYIdx)
        if not any((attrXValue, attrYValue)):
            return self.ord[0][0] * self.d + refX, self.ord[0][1] * self.d + refY
        return (
            self.ord[self.pos][0] * self.d + refX,
            self.ord[self.pos][1] * self.d + refY,
        )

    def updateCurrentPos(self):
        self.pos = (self.pos + 1) % 8

    def getLabelAnchor(self):
        if self.pos == 0:  # Top right
            horizontalAnchor = "Left"
            verticalAnchor = "Bottom"
        elif self.pos == 1:  # Top left
            horizontalAnchor = "Right"
            verticalAnchor = "Bottom"
        elif self.pos == 2:  # Bottom right
            horizontalAnchor = "Left"
            verticalAnchor = "Top"
        elif self.pos == 3:  # Bottom left
            horizontalAnchor = "Right"
            verticalAnchor = "Top"
        elif self.pos == 4:  # Top
            horizontalAnchor = "Center"
            verticalAnchor = "Bottom"
        elif self.pos == 5:  # Right
            horizontalAnchor = "Left"
            verticalAnchor = "Half"
        elif self.pos == 6:  # Left
            horizontalAnchor = "Right"
            verticalAnchor = "Half"
        elif self.pos == 7:  # Bottom
            horizontalAnchor = "Center"
            verticalAnchor = "Top"
        return horizontalAnchor, verticalAnchor

    def setTolerance(self, mapSettings):
        self.d = mapSettings.mapUnitsPerPixel() * 8

    def run(self):
        if not (lyr := self.iface.activeLayer()):
            self.displayErrorMessage(self.tr("Nenhuma camada selecionada"))
        else:
            fieldXIdx = lyr.dataProvider().fieldNameIndex("label_x")
            fieldYIdx = lyr.dataProvider().fieldNameIndex("label_y")
            fieldAncH = lyr.dataProvider().fieldNameIndex("ancora_horizontal")
            fieldAncV = lyr.dataProvider().fieldNameIndex("ancora_vertical")
            if any(
                (fieldXIdx == -1, fieldYIdx == -1, fieldAncH == -1, fieldAncV == -1)
            ):
                self.displayErrorMessage(
                    self.tr(
                        'atributos "label_x" ou "label_y" ou "ancora_horizontal" ou "ancora_vertical" não existem na camada selecionada'
                    )
                )
            else:
                lyr = self.iface.activeLayer()
                selectedFeature = lyr.getSelectedFeatures()
                if lyr.selectedFeatureCount() == 0:
                    self.displayErrorMessage(self.tr("Não há feições selecionadas"))
                crsLyr = lyr.crs()
                featIn = BaseTools().featInCanvas(selectedFeature, crsLyr)
                if not featIn:
                    confirm = BaseTools().confirmation()
                    if not confirm:
                        self.iface.messageBar().pushMessage(
                            "Cancelado",
                            "ação cancelada pelo usuário",
                            level=Qgis.Warning,
                            duration=5,
                        )
                        return
                lyr.startEditing()
                mapSettings = self.iface.mapCanvas().mapSettings()
                self.setTolerance(mapSettings)
                if len(self.currentFeats) > 0 and self.currentFeats != set(
                    x.id() for x in lyr.getSelectedFeatures()
                ):
                    self.pos = 0
                    self.currentFeats = set()
                for feat in lyr.getSelectedFeatures():
                    newX, newY = self.getUpdateValue(feat, fieldXIdx, fieldYIdx)
                    horizontalAnchor, verticalAnchor = self.getLabelAnchor()
                    lyr.changeAttributeValue(feat.id(), fieldXIdx, newX)
                    lyr.changeAttributeValue(feat.id(), fieldYIdx, newY)
                    lyr.changeAttributeValue(
                        feat.id(),
                        fieldAncH,
                        self.horizontalAnchorCodelist.get(horizontalAnchor),
                    )
                    lyr.changeAttributeValue(
                        feat.id(),
                        fieldAncV,
                        self.verticalAnchorCodelist.get(verticalAnchor),
                    )
                    self.currentFeats.add(feat.id())
                self.updateCurrentPos()
                lyr.triggerRepaint()

