from math import sqrt
import math
from pathlib import Path
from .baseTools import BaseTools
from .utils.comboBox import ComboBox
from qgis.gui import QgsMapToolEmitPoint
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
            6: "Trilha ou Picada (6)",
        }
        self.sitFisicaDict = {
            1: "Abandonada",
            3: "Construída",
            0: "Desconhecida",
            2: "Destruída",
            4: "Em construção",
        }
        self.avgLetterSizeInDegrees = 0.0006
        self.avgLetterSizeInMeters = 25

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
            pos, maxDistance=2 * self.tolerance
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
                self.tr("O nr_faixas deve ser igual ou superior a 3")
            )
            return
        attr_tipo = feat.attribute("tipo")
        if not self.checkFeature(feat) or attr_tipo in (3, 5, 6):
            self.displayErrorMessage(
                self.tr(
                    f"Tipo inválido. {self.tipoDict[attr_tipo]} não recebe rótulo de número de faixas"
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
        if feat.attribute("tipo") in (3, 5, 6):
            return None
        if feat.attribute("situacao_fisica") not in (0, 3):
            texto_edicao = (
                f"(" + self.sitFisicaDict[int(feat.attribute("situacao_fisica"))] + ")"
            )
        else:
            texto_edicao = feat.attribute("nr_faixas") + " FAIXAS"
        toInsert.setAttribute("texto_edicao", texto_edicao)
        toInsert.setAttribute("estilo_fonte", "Condensed Italic")
        toInsert.setAttribute("espacamento", 0)
        if self.productTypeSelector.currentIndex() == 0:  # Ortoimagem
            color = "#ffffff"
        else:
            color = "#241f21"
        toInsert.setAttribute("cor", color)
        toInsert.setAttribute("tamanho_txt", 6)
        if self.productTypeSelector.currentIndex() == 0:  # Ortoimagem
            if "tamanho_buffer" not in toInsert.attributeMap():
                self.displayErrorMessage(
                    self.tr(
                        "O campo tamanho_buffer não existe na modelagem em questão (só existe na modelagem de carta ortoimagem). Verifique a modelagem e o tipo de produto selecionado e tente novamente. Se você está editando carta topográfica, selecione carta topográfica na barra de ferramentas."
                    )
                )
                return None
            toInsert.setAttribute("tamanho_buffer", 1)
            toInsert.setAttribute("cor_buffer", "#00a0df")
        return toInsert

    # Converter distâncias, graus para metros e metros para grau
    def convertLength(self, feat):
        convertLength = QgsDistanceArea()
        convertLength.setEllipsoid(self.lyrCrs.ellipsoidAcronym())
        measure = convertLength.measureLength(feat.geometry())
        return convertLength.convertLengthMeasurement(
            measure, QgsUnitTypes.DistanceMeters
        )

    def convertLengthToDegrees(self, d):
        convertLength = QgsDistanceArea()
        convertLength.setEllipsoid(self.lyrCrs.ellipsoidAcronym())
        return convertLength.convertLengthMeasurement(d, QgsUnitTypes.DistanceDegrees)

    # Verificar se existe o atributo "nr_faixas"
    @staticmethod
    def checkFeature(feat):
        return not not feat.attribute("nr_faixas")

    # Posicionar o texto em edicao_texto_generico_l
    def getLabelGeometry(self, feat, clickPos, labelSize):
        geom = feat.geometry()
        texto = str(feat.attribute("nr_faixas")) + " FAIXAS"
        bufferSize = self.getBufferSize(texto)
        clickedPositionGeom = QgsGeometry.fromWkt(clickPos.asWkt())
        locatedDistance = geom.lineLocatePoint(clickedPositionGeom)
        projectedPointOnLineGeom = geom.interpolate(locatedDistance)
        buffer = projectedPointOnLineGeom.buffer(bufferSize, -1)
        toInsertGeom = geom.intersection(buffer)
        if (
            self.srcLyr.crs().isGeographic()
            and toInsertGeom.length() < len(texto) * self.avgLetterSizeInDegrees
        ):
            extendDistance = len(texto) * self.avgLetterSizeInDegrees
            toInsertGeom = toInsertGeom.extendLine(
                extendDistance / 2, extendDistance / 2
            )
        elif toInsertGeom.length() < len(texto) * self.avgLetterSizeInMeters:
            extendDistance = len(texto) * self.avgLetterSizeInMeters
            toInsertGeom = toInsertGeom.extendLine(
                extendDistance / 2, extendDistance / 2
            )
        d = self.getRoadLabelDisplacement(feat)
        dx, dy = self.getTranslate(d, clickedPositionGeom, projectedPointOnLineGeom)
        toInsertGeom.translate(dx, dy)
        return toInsertGeom

    # Tamanho do buffer para recorte da feição
    def getBufferSize(self, text):
        crs = self.srcLyr.crs()
        if crs.isGeographic():
            return len(text) * self.avgLetterSizeInDegrees
        return len(text) * self.avgLetterSizeInMeters

    def getTranslate(self, d, clickedPositionGeom, projectedPointOnLineGeom):
        xp, yp = projectedPointOnLineGeom.asPoint()
        xc, yc = clickedPositionGeom.asPoint()
        norm = sqrt((xp - xc) ** 2 + (yp - yc) ** 2)
        return d * (xc - xp) / norm, d * (yc - yp) / norm

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
        srcLyr = QgsProject.instance().mapLayersByName("infra_via_deslocamento_l")
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
            srcLyr[0].getFeatures(), flags=QgsSpatialIndex.FlagStoreFeatureGeometries
        )
        return True

    def getRoadLabelDisplacement(self, feat):
        d_in_meters = 1.0e-3
        # Todos os casos de rodovias previstos na simbologia da MTM (Obs: nr_faixas = 3 vai ser rotulado)
        if (
            feat["visivel"] == 1
            and feat["tipo"] in (2, 4)
            and feat["situacao_fisica"] in (0, 3)
            and feat["canteiro_divisorio"] == 1
        ):
            if feat["jurisdicao"] not in (2, 0):
                d_in_meters += 1.25e-3  # L11302A
            if feat["revestimento"] == 3 and feat["jurisdicao"] in (2, 0):
                d_in_meters += 1.25e-3  # L11302_Est_Pav_Cant_Div
        if (
            feat["visivel"] == 1
            and feat["tipo"] in (2, 4)
            and feat["situacao_fisica"] in (0, 3)
            and feat["canteiro_divisorio"] == 2
            and feat["revestimento"] == 3
        ):
            if feat["jurisdicao"] == 1 and int(feat["nr_faixas"]) >= 3:
                d_in_meters += 0.9e-3  # L11302B
            if feat["jurisdicao"] == 1 and (
                feat["nr_faixas"] in (2, 3) or feat["nr_faixas"] is None
            ):
                d_in_meters += 0.7e-3  # L11302C
            if feat["jurisdicao"] in (0, 2) and int(feat["nr_faixas"]) >= 3:
                d_in_meters += 0.9e-3  # L11302E
            if feat["jurisdicao"] in (0, 2) and (
                feat["nr_faixas"] in (2, 3) or feat["nr_faixas"] is None
            ):
                d_in_meters += 0.7e-3  # L11302F
        if (
            feat["visivel"] == 1
            and feat["tipo"] in (2, 4)
            and feat["situacao_fisica"] in (0, 3)
            and feat["revestimento"] != 3
            and feat["trafego"] == 1
        ):
            if feat["jurisdicao"] == 1 and int(feat["nr_faixas"]) >= 4:
                d_in_meters += 0.9e-3  # L11302H
            if feat["jurisdicao"] == 1 and (
                feat["nr_faixas"] in (2, 3) or feat["nr_faixas"] is None
            ):
                d_in_meters += 0.7e-3  # L11302I
            if feat["jurisdicao"] in (0, 2) and int(feat["nr_faixas"]) >= 4:
                d_in_meters += 0.9e-3  # L11302K
            if feat["jurisdicao"] in (0, 2) and (
                feat["nr_faixas"] in (2, 3) or feat["nr_faixas"] is None
            ):
                d_in_meters += 0.7e-3  # L11302L
        if (
            feat["visivel"] == 1
            and feat["tipo"] in (2, 4)
            and feat["situacao_fisica"] in (0, 3)
            and feat["revestimento"] != 3
            and feat["trafego"] != 1
        ):
            d_in_meters += 0.5e-3  # L11302N
        if (
            feat["visivel"] == 1
            and feat["tipo"] in (2, 4)
            and feat["situacao_fisica"] not in (0, 3)
        ):
            if feat["canteiro_divisorio"] == 1:
                d_in_meters += 1.1e-3  # L11302O
            if feat["canteiro_divisorio"] == 2:
                d_in_meters += 0.7e-3  # L11302P
        d_scale = d_in_meters * self.getScale()
        return (
            d_scale
            if not self.srcLyr.crs().isGeographic()
            else self.convertLengthToDegrees(d_scale)
        )
