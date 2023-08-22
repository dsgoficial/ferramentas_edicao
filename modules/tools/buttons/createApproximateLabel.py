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
        buttonImg = Path(__file__).parent / "icons" / "aproximado.png"
        self._action = self.createAction(
            "Rótulo Aproximado",
            buttonImg,
            lambda _: None,
            self.tr(
                'Cria feições com o texto "(APROXIMADO)" em "edicao_texto_generico_l" baseadas na proximidade na camada "edicao_limite_legal_l" e/ou "edicao_limite_especial_l" (e correspondentes para Carta Ortoimagem)'
            ),
            self.tr(
                'Cria feições com o texto "(APROXIMADO)" em "edicao_texto_generico_l" baseadas na proximidade na camada "edicao_limite_legal_l" e/ou "edicao_limite_especial_l" (e correspondentes para Carta Ortoimagem)'
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
        if self.productTypeSelector.currentIndex() == 1:
            closestSpatialID = self.spatialIndexLegal.nearestNeighbor(
                pos, maxDistance=2 * self.tolerance
            )
            request = QgsFeatureRequest().setFilterFids(closestSpatialID)
            closestFeat = self.srcLyrLegal.getFeatures(request)
            if len(closestSpatialID) == 0:
                try:
                    closestSpatialID = self.spatialIndexEspecial.nearestNeighbor(
                        pos, maxDistance=2 * self.tolerance
                    )
                    request = QgsFeatureRequest().setFilterFids(closestSpatialID)
                    closestFeat = self.srcLyrEspecial.getFeatures(request)
                except:
                    pass
            if not closestSpatialID:
                self.displayErrorMessage(
                    "Não foram encontradas feições nas camadas de edição."
                )
                return
            feat = next(closestFeat)
            self.createFeature(feat, pos)

        if self.productTypeSelector.currentIndex() == 0:
            closestSpatialID = self.spatialIndexLegal.nearestNeighbor(
                pos, maxDistance=2 * self.tolerance
            )
            request = QgsFeatureRequest().setFilterFids(closestSpatialID)
            closestFeat = self.srcLyrLegal.getFeatures(request)
            if len(closestSpatialID) == 0:
                try:
                    closestSpatialID = self.spatialIndexAreaPubMil.nearestNeighbor(
                        pos, maxDistance=2 * self.tolerance
                    )
                    request = QgsFeatureRequest().setFilterFids(closestSpatialID)
                    closestFeat = self.srcLyrAreaPubMil.getFeatures(request)
                except:
                    pass
            if len(closestSpatialID) == 0:
                try:
                    closestSpatialID = self.spatialIndexTerraInd.nearestNeighbor(
                        pos, maxDistance=2 * self.tolerance
                    )
                    request = QgsFeatureRequest().setFilterFids(closestSpatialID)
                    closestFeat = self.srcLyrTerraInd.getFeatures(request)
                except:
                    pass
            if len(closestSpatialID) == 0:
                try:
                    closestSpatialID = self.spatialIndexUnidConserv.nearestNeighbor(
                        pos, maxDistance=2 * self.tolerance
                    )
                    request = QgsFeatureRequest().setFilterFids(closestSpatialID)
                    closestFeat = self.srcLyrUnidConserv.getFeatures(request)
                except:
                    pass
            if not closestSpatialID:
                self.displayErrorMessage(
                    "Não foram encontradas feições nas camadas de edição."
                )
                return
            feat = next(closestFeat)
            self.createFeature(feat, pos)

    def createFeature(self, feat, pos):
        toInsert = QgsFeature(self.dstLyr.fields())
        toInsert = self.setAttributes(feat, toInsert)
        if toInsert is None:
            return
        toInsertGeom = self.getLabelGeometry(feat, pos)
        toInsert.setGeometry(toInsertGeom)
        self.dstLyr.startEditing()
        self.dstLyr.addFeature(toInsert)
        self.dstLyr.triggerRepaint()

    def setAttributes(self, feat, toInsert):
        toInsert = QgsFeature(self.dstLyr.fields())
        toInsert.setAttribute("texto_edicao", "(APROXIMADO)")
        toInsert.setAttribute("estilo_fonte", "Condensed")
        toInsert.setAttribute("espacamento", 0)
        color = "#ffffff" if self.productTypeSelector.currentIndex() == 0 else "#232323"
        toInsert.setAttribute("cor", color)
        labelSize = 6
        toInsert.setAttribute("tamanho_txt", labelSize)
        if self.productTypeSelector.currentIndex() == 0:  # Ortoimagem
            if "tamanho_buffer" not in toInsert.attributeMap():
                self.displayErrorMessage(
                    self.tr(
                        "O campo tamanho_buffer não existe na modelagem em questão. Verifique a modelagem e o tipo de produto selecionado e tente novamente."
                    )
                )
                return None, None
            toInsert.setAttribute("tamanho_buffer", 1)
            toInsert.setAttribute("cor_buffer", "#000000")
        return toInsert

    def convertLength(self, feat):
        convertLength = QgsDistanceArea()
        convertLength.setEllipsoid(self.lyrCrs.ellipsoidAcronym())
        measure = convertLength.measureLength(feat.geometry())
        return convertLength.convertLengthMeasurement(
            measure, QgsUnitTypes.DistanceMeters
        )

    @staticmethod
    def checkFeature(feat):
        return not not feat.attribute("nome")

    def getLabelGeometry(self, feat, clickPos):
        geom = feat.geometry()
        interpolateSize = 150 * self.tolerance / 20
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
        f = np.poly1d(np.polyfit(xVert, yVert, 5))
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
        return (xRefTranslate + xCentroidTranslate) / 4, (
            yRefTranslate + yCentroidTranslate
        ) / 4

    def scaleTransform(self, x, y):
        d = self.tolerance + 0.001
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
        dstLyr = QgsProject.instance().mapLayersByName("edicao_texto_generico_l")
        self.dstLyr = dstLyr[0]
        if not len(dstLyr) >= 1:
            self.displayErrorMessage(
                self.tr('Camada "edicao_texto_generico_l" não encontrada')
            )
            return None
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
        srcLyr_legal = QgsProject.instance().mapLayersByName("edicao_limite_legal_l")

        if self.productTypeSelector.currentIndex() == 1:
            srcLyr_especial = QgsProject.instance().mapLayersByName(
                "edicao_limite_especial_l"
            )

            if len(srcLyr_legal) == 0 and len(srcLyr_especial) == 0:
                self.displayErrorMessage(
                    self.tr(
                        'Camada "edicao_limite_legal_l" e "edicao_limite_especial_l" não encontrada.'
                    )
                )
                return None

            if len(srcLyr_legal) >= 1:
                srcLyrLegal = srcLyr_legal[0]
                self.srcLyrLegal = srcLyrLegal
                self.spatialIndexLegal = QgsSpatialIndex(
                    srcLyrLegal.getFeatures(),
                    flags=QgsSpatialIndex.FlagStoreFeatureGeometries,
                )

            if len(srcLyr_especial) >= 1:
                srcLyrEspecial = srcLyr_especial[0]
                self.srcLyrEspecial = srcLyrEspecial
                self.spatialIndexEspecial = QgsSpatialIndex(
                    srcLyrEspecial.getFeatures(),
                    flags=QgsSpatialIndex.FlagStoreFeatureGeometries,
                )
        if self.productTypeSelector.currentIndex() == 0:
            srcLyr_area_pub_militar = QgsProject.instance().mapLayersByName(
                "edicao_area_pub_militar_l"
            )

            srcLyr_terra_indigena = QgsProject.instance().mapLayersByName(
                "edicao_terra_indigena_l"
            )

            srcLyr_unid_conservacao = QgsProject.instance().mapLayersByName(
                "edicao_unidade_conservacao_l"
            )

            if (
                len(srcLyr_terra_indigena) == 0
                and len(srcLyr_area_pub_militar) == 0
                and len(srcLyr_unid_conservacao) == 0
            ):
                self.displayErrorMessage(
                    self.tr(
                        'Camada "edicao_area_pub_militar_l", "edicao_terra_indigena_l" e "edicao_unidade_conservacao_l" não encontrada.'
                    )
                )
                return None

            if len(srcLyr_legal) >= 1:
                self.srcLyrLegal = srcLyrLegal
                self.spatialIndexLegal = QgsSpatialIndex(
                    srcLyrLegal.getFeatures(),
                    flags=QgsSpatialIndex.FlagStoreFeatureGeometries,
                )

            if len(srcLyr_area_pub_militar) >= 1:
                srcLyrAreaPubMil = srcLyr_area_pub_militar[0]
                self.srcLyrAreaPubMil = srcLyrAreaPubMil
                self.spatialIndexAreaPubMil = QgsSpatialIndex(
                    srcLyrAreaPubMil.getFeatures(),
                    flags=QgsSpatialIndex.FlagStoreFeatureGeometries,
                )

            if len(srcLyr_terra_indigena) >= 1:
                srcLyrTerraInd = srcLyr_terra_indigena[0]
                self.srcLyrTerraInd = srcLyrTerraInd
                self.spatialIndexTerraInd = QgsSpatialIndex(
                    srcLyrTerraInd.getFeatures(),
                    flags=QgsSpatialIndex.FlagStoreFeatureGeometries,
                )

            if len(srcLyr_unid_conservacao) >= 1:
                srcLyrUnidConserv = srcLyr_unid_conservacao[0]
                self.srcLyrUnidConserv = srcLyrUnidConserv
                self.spatialIndexUnidConserv = QgsSpatialIndex(
                    srcLyrUnidConserv.getFeatures(),
                    flags=QgsSpatialIndex.FlagStoreFeatureGeometries,
                )

        return True
