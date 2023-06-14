from pathlib import Path
import numpy as np
from .baseTools import BaseTools
from .utils.comboBox import ComboBox
from qgis.core import (
    QgsCoordinateReferenceSystem,
    QgsCoordinateTransformContext,
    QgsDistanceArea,
    QgsFeature,
    QgsFeatureRequest,
    QgsGeometry,
    QgsLineString,
    QgsProject,
    QgsSpatialIndex,
    QgsUnitTypes,
    QgsPointXY,
)
from qgis.gui import QgsMapToolEmitPoint
from qgis import processing
class CreateAproximateLabel(QgsMapToolEmitPoint, BaseTools):
    def __init__(self, iface, toolBar, scaleSelector, productTypeSelector):
        super().__init__(iface.mapCanvas())
        self.iface = iface
        self.toolBar = toolBar
        self.dstLyr = None
        self.scaleSelector = scaleSelector
        self.productTypeSelector = productTypeSelector
        self.mapCanvas = iface.mapCanvas()
        self.box = ComboBox(self.iface.mainWindow())
        self.canvasClicked.connect(self.mouseClick)

    def setupUi(self):
        buttonImg = Path(__file__).parent / "icons" / "Rotulo_rio.png"
        self._action = self.createAction(
            "Rótulo Aproximado",
            buttonImg,
            lambda _: None,
            self.tr(
                'Cria feições com o texto "APROXIMADO" em "edicao_texto_generico_l" baseadas na proximidade na camada "edicao_limite_legal_l"'
            ),
            self.tr(
                'Cria feições com o texto "APROXIMADO" em "edicao_texto_generico_l" baseadas na proximidade na camada "edicao_limite_legal_l"'
            ),
            self.iface,
        )
        self._action.setCheckable(True)
        self.setAction(self._action)
        self.toolBar.addAction(self._action)
        self.iface.registerMainWindowAction(self._action, "")

    def mouseClick(self, pos, btn):
        if not (self.isActive() and self.dstLyr):
            return
        layer = ['edicao_limite_legal_l']
        if layer in self.layerlist:
            self.spatialIndex = QgsSpatialIndex(
            layer.getFeatures(), flags = QgsSpatialIndex.FlagStoreFeatureGeometries
        )
            closestSpatialID = self.spatialIndex.nearestNeighbor(
                pos, maxDistance=2 * self.tolerance
            )
            request = QgsFeatureRequest().setFilterFids(closestSpatialID)
            closestFeat = layer.getFeatures(request)
            feat = next(closestFeat)
            self.createFeature(feat, pos)

    def createFeature(self, feat, pos):
        toInsert = QgsFeature(self.dstLyr.fields())
        toInsert, labelSize = self.setAttributes(
            feat, toInsert
        )
        if toInsert is None:
            return
        toInsertGeom = self.getLabelGeometry(feat, pos, labelSize)
        toInsert.setGeometry(toInsertGeom)
        self.dstLyr.startEditing()
        self.dstLyr.addFeature(toInsert)
        self.dstLyr.triggerRepaint()

    def setAttributes(self, feat, toInsert):
        toInsert = QgsFeature(self.dstLyr.fields())
        toInsert.setAttribute("texto_edicao", "APROXIMADO")
        toInsert.setAttribute("estilo_fonte", "Condensed Bold")
        toInsert.setAttribute("espacamento", 0)
        color = "#ffffff" if self.productTypeSelector.currentIndex() == 0 else "#241f21"
        toInsert.setAttribute("cor", color)
        toInsert.setAttribute("tamanho_txt", 6)
        # Verificar com Cap Diniz
        if self.productTypeSelector.currentIndex() == 0:  # Ortoimagem
            if "tamanho_buffer" not in toInsert.attributeMap():
                self.displayErrorMessage(
                    self.tr(
                        "O campo tamanho_buffer não existe na modelagem em questão. Verifique a modelagem e o tipo de produto selecionado e tente novamente."
                    )
                )
                return None
            toInsert.setAttribute("tamanho_buffer", 1)
            toInsert.setAttribute("cor_buffer", "#00a0df")
        return toInsert, 6

    def getLabelGeometry(self, feat, clickPos, labelSize):
        geom = feat.geometry()
        interpolateSize = labelSize * 20 * self.tolerance / 20
        clickPosGeom = QgsGeometry.fromWkt(clickPos.asWkt())
        posClosestV = geom.lineLocatePoint(clickPosGeom)
        start = posClosestV - interpolateSize / 2
        end = posClosestV + interpolateSize / 2
        if interpolateSize > geom.length():
            toExtend = interpolateSize - geom.length()
            geom = geom.extendLine(toExtend / 2, toExtend / 2)
        elif posClosestV + interpolateSize / 2 > geom.length():
            diff = (posClosestV + interpolateSize / 2) - geom.length()
            geom = geom.extendLine(0, diff)
            end = geom.length()
        elif posClosestV - interpolateSize / 2 < 0:
            diff = interpolateSize / 2 - posClosestV
            geom = geom.extendLine(diff, 0)
            start = 0
            end += diff
        closestV = geom.interpolate(posClosestV)
        start, end = self.adjustGeomLength(geom, start, end)
        toInsertGeom = QgsGeometry(self.buildLineFromGeomDist(start, end, geom))
        toInsertGeom = self.polynomialFit(toInsertGeom)
        toInsertGeom.translate(
            *self.getTransformParams(toInsertGeom, closestV, clickPos)
        )
        return toInsertGeom

    def adjustGeomLength(self, geom, start, end):
        if not (geom.interpolate(start) and geom.interpolate(end)):
            return start, end
        firstV = geom.interpolate(start).asPoint()
        lastV = geom.interpolate(end).asPoint()
        realLength = (
            (firstV.x() - lastV.x()) ** 2 + (firstV.y() - lastV.y()) ** 2
        ) ** 0.5
        observedLength = end - start
        maxCount = 0
        while (observedLength / realLength) > 1.2 and maxCount < 10:
            start, end = start - self.tolerance, end + self.tolerance
            start = max(start, 0)
            end = min(end, geom.length())
            firstV = geom.interpolate(start).asPoint()
            lastV = geom.interpolate(end).asPoint()
            realLength = (
                (firstV.x() - lastV.x()) ** 2 + (firstV.y() - lastV.y()) ** 2
            ) ** 0.5
            maxCount += 1
        return start, end

    def polynomialFit(self, geom):
        orientedGeom, area, angle, w, h = geom.orientedMinimumBoundingBox()
        firstPoint = QgsPointXY(geom.vertexAt(0))
        geom.rotate(90 - angle, firstPoint)
        xVert = [p.x() for p in geom.vertices()]
        yVert = [p.y() for p in geom.vertices()]
        f = np.poly1d(np.polyfit(xVert, yVert, 2))
        xVert = sorted(xVert)
        newYVert = f(xVert)
        rotatedParabola = QgsGeometry(QgsLineString(xVert, newYVert.tolist()))
        rotatedParabola.rotate(270 + angle, firstPoint)
        rotatedParabola = rotatedParabola.simplify(self.tolerance / 10)
        return rotatedParabola

    def getTransformParams(self, toInsertGeom, ref, clickPos):
        ref = ref.asPoint()
        centroid = toInsertGeom.centroid().asPoint()
        dx = clickPos.x() - centroid.x()
        dy = clickPos.y() - centroid.y()
        xRefTranslate = clickPos.x() - ref.x()
        yRefTranslate = clickPos.y() - ref.y()
        xRefTranslate, yRefTranslate = self.scaleTransform(xRefTranslate, yRefTranslate)
        xCentroidTranslate, yCentroidTranslate = self.scaleTransform(dx, dy)
        return (xRefTranslate + xCentroidTranslate) / 2, (
            yRefTranslate + yCentroidTranslate
        ) / 2

    def scaleTransform(self, x, y):
        d = self.tolerance
        # scaleFactor = 1
        scaleFactor = (d**2 / ((x**2 + y**2))) ** 0.5
        return scaleFactor * x, scaleFactor * y

    def buildLineFromGeomDist(self, start, end, geom):
        xCoords, yCoords = [], []
        iterator = (
            geom.asMultiPolyline()[0] if geom.isMultipart() else geom.asPolyline()
        )
        for point in iterator:
            xCoords.append(point.x())
            yCoords.append(point.y())
        return QgsLineString(xCoords, yCoords).curveSubstring(start, end)

    def getLayers(self):
        srcLyr = QgsProject.instance().mapLayersByName(
            "edicao_limite_legal_l"
        )
        srcLyrAdd = QgsProject.instance().mapLayersByName(
            "edicao_limite_especial_l"
        )
        srcLyr.append(srcLyrAdd[0])
        self.layerlist = srcLyr
        dstLyr = QgsProject.instance().mapLayersByName("edicao_texto_generico_l")
        if not len(srcLyr) >= 1:
            self.displayErrorMessage(
                self.tr('Camada "edicao_limite_legal_l" não encontrada')
            )
            return None
        if not len(dstLyr) == 1:
            self.displayErrorMessage(
                self.tr('Camada "edicao_texto_generico_l" não encontrada')
            )
            return None
        self.dstLyr = dstLyr[0]
        self.lyrCrs = self.dstLyr.dataProvider().crs()
        if self.lyrCrs.isGeographic():
            d = QgsDistanceArea()
            d.setSourceCrs(
                QgsCoordinateReferenceSystem("EPSG:3857"),
                QgsCoordinateTransformContext(),
            )
            self.tolerance = d.convertLengthMeasurement(
                self.getScale() * 0.005, QgsUnitTypes.DistanceDegrees
            )
        else:
            self.tolerance = self.getScale() * 0.005

        return True
