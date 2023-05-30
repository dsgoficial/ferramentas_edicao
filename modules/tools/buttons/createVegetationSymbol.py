from pathlib import Path

from qgis.core import (
    QgsFeature,
    QgsFeatureRequest,
    QgsGeometry,
    QgsProject,
    Qgis,
    QgsRectangle,
)
from qgis.gui import QgsMapToolEmitPoint

from .baseTools import BaseTools


class CreateVegetationSymbol(QgsMapToolEmitPoint, BaseTools):
    def __init__(self, iface, toolBar, scaleSelector, productTypeSelector):
        super().__init__(iface.mapCanvas())
        self.iface = iface
        self.toolBar = toolBar
        self.mapCanvas = iface.mapCanvas()
        self.productTypeSelector = productTypeSelector
        self.scaleSelector = scaleSelector
        self.canvasClicked.connect(self.mouseClick)

    def setupUi(self):
        buttonImg = Path(__file__).parent / "icons" / "Simbolo_vegatacao.png"
        self._action = self.createAction(
            "Símbolo Vegetação",
            buttonImg,
            lambda _: None,
            self.tr(
                'Cria feições em "edicao_texto_generico_l" baseadas nos valores de "cobter_vegetacao_a"'
            ),
            self.tr(
                'Cria feições em "edicao_texto_generico_l" baseadas nos valores de "cobter_vegetacao_a"'
            ),
            self.iface,
        )
        self._action.setCheckable(True)
        self.setAction(self._action)
        self.toolBar.addAction(self._action)
        self.iface.registerMainWindowAction(self._action, "")

    def mouseClick(self, pos, btn):
        if self.isActive():
            flag = False
            posGeom = QgsGeometry.fromPointXY(pos)
            p = self.mapCanvas.mapSettings().mapToLayerCoordinates(self.srcLyr, pos)
            rect = QgsRectangle(
                p.x() - self.tol, p.y() - self.tol, p.x() + self.tol, p.y() + self.tol
            )
            feats = [x for x in self.srcLyr.getFeatures(rect)]
            if not feats:
                self.displayErrorMessage(
                    "Não foi encontrado um polígono de vegetação dentro da tolerância"
                )
                flag = True
            for feat in feats:
                if feat.geometry().intersects(posGeom):
                    toInsert = QgsFeature(self.dstLyr.fields())
                    if vegName := self.getVegetationMapping(feat):
                        toInsert.setAttribute("texto_edicao", vegName)
                        toInsert.setGeometry(posGeom)
                        self.dstLyr.startEditing()
                        self.dstLyr.addFeature(toInsert)
                        self.dstLyr.triggerRepaint()
                        flag = True
                    break
            if not flag:
                self.displayErrorMessage("Vegetação inválida")
            self.dstLyr.triggerRepaint()
            self.mapCanvas.refresh()

    @staticmethod
    def getVegetationMapping(feat):
        mapping = {1296: "Ref", 801: "Caat", 501: "Campnr", 701: "Cerr", 401: "Rest", 1003: "Rochoso"}
        return mapping.get(feat.attribute("tipo"), "")

    def setTolerance(self):
        self.tol = self.mapCanvas.mapSettings().mapUnitsPerPixel()

    def getLayers(self):
        if not self.productTypeSelector.currentIndex() == 1:  # 1 = Topografica
            self.displayErrorMessage(
                self.tr("Essa ferramenta só pode ser utilizada para Carta Topográfica")
            )
            return None
        srcLyr = QgsProject.instance().mapLayersByName("cobter_vegetacao_a")
        dstLyr = QgsProject.instance().mapLayersByName("edicao_simb_vegetacao_p")
        if len(srcLyr) == 1:
            self.srcLyr = srcLyr[0]
        else:
            self.displayErrorMessage(
                self.tr('Camada "cobter_vegetacao_a" não encontrada')
            )
            return None
        if len(dstLyr) == 1:
            self.dstLyr = dstLyr[0]
        else:
            self.displayErrorMessage(
                self.tr('Camada "edicao_simb_vegetacao_p" não encontrada')
            )
            return None
        self.setTolerance()
        return True
