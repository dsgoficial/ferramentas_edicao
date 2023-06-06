# -*- coding: utf-8 -*-
from math import sqrt
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
        self.avgLetterSizeInDegrees = 0.0006

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
    
    def convertLengthToDegrees(self, d):
        convertLength = QgsDistanceArea()
        convertLength.setEllipsoid(self.lyrCrs.authid())
        return convertLength.convertLengthMeasurement(
            d, QgsUnitTypes.DistanceDegrees
        )

    @staticmethod
    def checkFeature(feat):
        return not not feat.attribute("nr_faixas")

    def getLabelGeometry(self, feat, clickPos, labelSize):
        geom = feat.geometry()
        texto = str(feat.attribute("nr_faixas")) + ' FAIXAS'
        bufferSize = self.getBufferSize(texto)
        clickedPositionGeom = QgsGeometry.fromWkt(clickPos.asWkt())
        locatedDistance = geom.lineLocatePoint(clickedPositionGeom)
        projectedPointOnLineGeom = geom.interpolate(locatedDistance) 
        buffer = projectedPointOnLineGeom.buffer(bufferSize, -1)
        toInsertGeom = geom.intersection(buffer)
        d = self.getRoadLabelDisplacement(feat)
        dx, dy = self.getTranslate(d, clickedPositionGeom, projectedPointOnLineGeom)
        toInsertGeom.translate(dx, dy)
        return toInsertGeom
    
    def getBufferSize(self, text):
        crs = self.srcLyr.crs()
        if crs.isGeographic():
            return len(text) * self.avgLetterSizeInDegrees
        avgLetterSizeInMeters = self.convertLength(
            self.srcLyr, self.avgLetterSizeInDegrees
        )
        return len(text) * avgLetterSizeInMeters

    
    def getTranslate(self, d, clickedPositionGeom, projectedPointOnLineGeom):
        xp, yp = projectedPointOnLineGeom.asPoint()
        xc, yc = clickedPositionGeom.asPoint()
        norm = sqrt((xp-xc)**2 + (yp-yc)**2)
        return d*(xc-xp)/norm, d*(yc-yp)/norm

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

    def getRoadLabelDisplacement(self, feat):
        d_in_meters = 0.5e-3
        if feat["visivel"] == 1 and feat["tipo"] in (2,4) and feat["situacao_fisica"] in (0,3) and feat["canteiro_divisorio"] ==  1 and feat["jurisdicao"] not in (2,0):
            d_in_meters += 1.25e-3
        # if "visivel" == 1 and "tipo" in (2,4) and "situacao_fisica" in (0,3) and "revestimento" != 3 and "trafego" == 1 and "jurisdicao" in (1) and ( "nr_faixas" in (2,3) or "nr_faixas" is None):
        if feat["visivel"] == 1 and feat["tipo"] in (2,4) and feat["situacao_fisica"] in (0,3) and feat["revestimento"] != 3 and feat["trafego"] == 1 and feat["jurisdicao"] in (1,) and feat["nr_faixas"] >= 4:
            d_in_meters += 1.25e-3
        return d_in_meters if not self.srcLyr.crs().isGeographic() \
            else self.convertLengthToDegrees(
                d_in_meters
            )
