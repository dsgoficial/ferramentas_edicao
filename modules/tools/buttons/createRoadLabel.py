# -*- coding: utf-8 -*-
from pathlib import Path
import numpy as np

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

from .baseTools import BaseTools
from .utils.comboBox import ComboBox


class CreateRoadLabel(QgsMapToolEmitPoint, BaseTools):
    # Construtor da classe
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
        self.tipoDict = {
            2: "Estrada/Rodovia (2)",
            3: "Caminho carroçável (3)",
            4: "Auto-estrada (4)",
            5: "Arruamento (5)",
            6: "Trilha ou Picada (6)"
        }
        self.sitFisicaDict = {
            1: "Abandonada",
            3: "Construída",
            0: "Desconhecida",
            2: "Destruída",
            4: "Em construção"
        }

    # User interface, botão e descrição
    def setupUi(self):
        buttonImg = Path(__file__).parent / "icons" / "Rotulo_faixa.png"
        self._action = self.createAction(
            "Número de Faixas",
            buttonImg,
            lambda _: None,
            self.tr(
                'Cria o texto de número de faixas em "edicao_texto_generico_l" baseadas na proximidade com o atributo de "nr faixas"'
            ),
            self.tr(
                'Cria o texto de número de faixas em "edicao_texto_generico_l" baseadas na proximidade com o atributo de "nr faixas"'
            ),
            self.iface,
        )
        self._action.setCheckable(True)
        self.setAction(self._action)
        self.toolBar.addAction(self._action)
        self.iface.registerMainWindowAction(self._action, "")

    # Capturar a feição infra_via_deslocamento_l mais próxima do clique do cursor e criar a feição em edicao_texto_generico_l
    def mouseClick(self, pos, btn):
        if not (self.isActive() and self.dstLyr):
            return
        closestSpatialID = self.spatialIndex.nearestNeighbor(
            pos, maxDistance = 2 * self.tolerance
        )
        request = QgsFeatureRequest().setFilterFids(closestSpatialID)
        closestFeat = self.srcLyr.getFeatures(request)
        if not closestSpatialID:
            self.displayErrorMessage(
                'Não foram encontradas feições em "infra_via_deslocamento_l"'
            )
            return
        feat = next(closestFeat)
        attr = feat.attribute("nr_faixas")
        if not self.checkFeature(feat) or int(attr) <= 2:
            self.displayErrorMessage(
                self.tr(
                    'Feição inválida. Verifique o "nr_faixas" na camada "elemnat_trecho_drenagem_l"'
                )
            )
            return
        attr_tipo =  feat.attribute("tipo")
        if not self.checkFeature(feat) or attr_tipo in (3, 5, 6):
            self.displayErrorMessage(
                self.tr(
                    f'Feição inválida. {self.tipoDict[attr_tipo]} não recebe "nr_faixas"'
                )
            )
            return
        self.createFeature(feat, pos)

    # Função para criar feição na camada edicao_texto_generico_l
    def createFeature(self, feat, pos):
        toInsert = QgsFeature(self.dstLyr.fields())
        toInsert = self.setAttributes(feat, toInsert)
        if toInsert is None:
            return
        toInsertGeom = self.getLabelGeometry(feat, pos, 6)
        toInsert.setGeometry(toInsertGeom)
        self.dstLyr.startEditing()
        self.dstLyr.addFeature(toInsert)
        self.dstLyr.triggerRepaint()
   
    # Definir os atributos a serem preenchidos
    def setAttributes(self, feat, toInsert, outsidePolygon=False):
        toInsert = QgsFeature(self.dstLyr.fields())
        if feat.attribute("tipo") in (3, 5, 6) :
            return None
        if feat.attribute("situacao_fisica") not in (0, 3):
            texto_edicao = (f'(' + self.sitFisicaDict[int(feat.attribute("situacao_fisica"))] + ')')
        else:
            texto_edicao = (feat.attribute("nr_faixas") + ' FAIXAS')
        toInsert.setAttribute("texto_edicao", texto_edicao)
        toInsert.setAttribute("estilo_fonte", "Condensed Italic")
        toInsert.setAttribute("espacamento", 0)
        if self.productTypeSelector.currentIndex() == 0: # Ortoimagem
            color = "#ffffff" 
        else:
            color = "#241f21"
        toInsert.setAttribute("cor", color)
        toInsert.setAttribute("tamanho_txt", 6)
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
        return toInsert

    def convertLength(self, feat):
        convertLength = QgsDistanceArea()
        convertLength.setEllipsoid(self.lyrCrs.authid())
        measure = convertLength.measureLength(feat.geometry())
        return convertLength.convertLengthMeasurement(
            measure, QgsUnitTypes.DistanceMeters
        )

    @staticmethod
    def checkFeature(feat):
        return not not feat.attribute("nr_faixas")

    def getLabelGeometry(self, feat, clickPos, labelSize):
        geom = feat.geometry()
        texto = str(feat.attribute("nr_faixas")) + ' FAIXAS'
        interpolateSize = labelSize * len(texto) * self.tolerance / 20
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
        while (observedLength / realLength) > 0.6 and maxCount < 10:
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
        f = np.poly1d(np.polyfit(xVert, yVert, 1))
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

    # Verificar a existência das camadas de infra_via_deslocamento_l e edicao_texto_generico_l
    def getLayers(self):
        srcLyr = QgsProject.instance().mapLayersByName(
            "infra_via_deslocamento_l"
        )
        dstLyr = QgsProject.instance().mapLayersByName("edicao_texto_generico_l")
        if not len(srcLyr) == 1:
            self.displayErrorMessage(
                self.tr('Camada "infra_via_deslocamento_l" não encontrada')
            )
            return None
        if not len(dstLyr) == 1:
            self.displayErrorMessage(
                self.tr('Camada "edicao_texto_generico_l" não encontrada')
            )
            return None
        self.srcLyr = srcLyr[0]
        self.dstLyr = dstLyr[0]
        self.lyrCrs = self.srcLyr.dataProvider().crs()
        if self.lyrCrs.isGeographic():
            d = QgsDistanceArea()
            d.setSourceCrs(
                QgsCoordinateReferenceSystem("EPSG:3857"),
                QgsCoordinateTransformContext(),
            )
            self.tolerance = d.convertLengthMeasurement(
                self.getScale() * 0.003, QgsUnitTypes.DistanceDegrees
            )
        else:
            self.tolerance = self.getScale() * 0.003
        self.spatialIndex = QgsSpatialIndex(
            srcLyr[0].getFeatures(), flags = QgsSpatialIndex.FlagStoreFeatureGeometries
        )
        return True
