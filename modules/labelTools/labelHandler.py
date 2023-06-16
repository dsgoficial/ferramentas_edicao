from typing_extensions import Literal
from qgis.PyQt.QtCore import QCoreApplication
from qgis.core import (
    QgsField,
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingMultiStepFeedback,
    QgsProcessingParameterVectorLayer,
    QgsProcessingParameterBoolean,
    QgsVectorLayerUtils,
    QgsGeometry,
    QgsGeometryUtils,
    QgsSpatialIndex,
    QgsFeature,
    QgsPointXY,
    QgsCoordinateReferenceSystem,
    QgsVectorLayer,
    QgsFeatureRequest,
    QgsProject,
    QgsMapLayer,
    QgsDistanceArea,
    QgsCoordinateTransformContext,
    QgsUnitTypes,
    NULL,
)


def __init__(self, iface, toolBar, scaleSelector, productTypeSelector):
    super().__init__(iface.mapCanvas())
    self.iface = iface
    self.toolBar = toolBar
    self.dstLyr1 = None
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
def createLabelFromLayerAToLayerB(
    pos,
    scale: int,
    functionName: Literal["createroadlabel"],
    productTypeName: Literal["orto", "topo"],
    crsString="EPSG:3857",
):
    if functionName not in ["createroadlabel"]:
        raise AttributeError(f"functionName '{functionName}' não encontrado")
    if productTypeName not in ["orto", "topo"]:
        raise AttributeError(f"productTypeName '{productTypeName}' não encontrado")
    productTypeDict = {"orto": 0, "topo": 1}
    productType = productTypeDict[productTypeName]

    if functionName == "createroadlabel":
        createRoadLabel(pos, scale, productType, crsString)


def createRoadLabel(pos, scale, productType, crsString):
    srcLyrName = "infra_via_deslocamento_l"
    srcLyr = getLayerByName(srcLyrName)
    dstLyrName = "edicao_texto_generico_l"
    dstLyr = getLayerByName(dstLyrName)
    tolerance = getToleranceForLyr(srcLyr, scale, crsString)
    feat = getNearestFeat(pos, srcLyr, tolerance)
    attrNameLane = "nr_faixas"
    attr = feat.attribute(attrNameLane)
    if int(attr) <= 2:
        raise NameError(
            tr(
                f"Feição inválida. Verifique o atributo {attrNameLane} na camada '{srcLyrName}'"
            )
        )
    attrNameType = "tipo"
    attr_tipo = feat.attribute(attrNameType)
    tipoDict = {
        2: "Estrada/Rodovia (2)",
        3: "Caminho carroçável (3)",
        4: "Auto-estrada (4)",
        5: "Arruamento (5)",
        6: "Trilha ou Picada (6)",
    }
    if attr_tipo in (3, 5, 6):
        raise NameError(
            tr(
                f"Feição inválida. {tipoDict[attr_tipo]} não recebe o atributo {attrNameLane}"
            )
        )
    toInsert = QgsFeature(dstLyr.fields())
    toInsert = setRoadAttributes(feat, toInsert, productType)
    if toInsert is None:
        return
    toInsertGeom = self.getLabelGeometry(feat, pos, 6)
    toInsert.setGeometry(toInsertGeom)
    dstLyr.startEditing()
    dstLyr.addFeature(toInsert)
    dstLyr.triggerRepaint()


def getNearestFeat(pos, lyr: QgsVectorLayer, tolerance) -> QgsFeature:
    spatialIndex = QgsSpatialIndex(
        lyr.getFeatures(), flags=QgsSpatialIndex.FlagStoreFeatureGeometries
    )
    closestSpatialID = spatialIndex.nearestNeighbor(pos, maxDistance=2 * tolerance)
    request = QgsFeatureRequest().setFilterFids(closestSpatialID)
    closestFeat = lyr.getFeatures(request)
    if not closestSpatialID:
        # melhorar raise type
        raise NameError(f"Não foram encontradas feições em '{lyr.name()}'")
    feat = next(closestFeat)
    return feat


def getToleranceForLyr(lyr: QgsMapLayer, scale, crsString="EPSG:3857"):
    lyrCrs = lyr.dataProvider().crs()
    if lyrCrs.isGeographic():
        d = QgsDistanceArea()
        d.setSourceCrs(
            QgsCoordinateReferenceSystem(crsString),
            QgsCoordinateTransformContext(),
        )
        tolerance = d.convertLengthMeasurement(
            scale * 0.003, QgsUnitTypes.DistanceDegrees
        )
    else:
        tolerance = scale * 0.003

    return tolerance


# Definir os atributos a serem preenchidos
def setRoadAttributes(feat: QgsFeature, toInsert: QgsFeature, productType):
    sitFisicaDict = {
        1: "Abandonada",
        3: "Construída",
        0: "Desconhecida",
        2: "Destruída",
        4: "Em construção",
    }
    if feat.attribute("tipo") in (3, 5, 6):
        return None
    if int(feat.attribute("situacao_fisica")) not in (0, 3):
        texto_edicao = (
            f"(" + sitFisicaDict[int(feat.attribute("situacao_fisica"))] + ")"
        )
    else:
        texto_edicao = feat.attribute("nr_faixas") + " FAIXAS"
    toInsert.setAttribute("texto_edicao", texto_edicao)
    toInsert.setAttribute("estilo_fonte", "Condensed Italic")
    toInsert.setAttribute("espacamento", 0)
    if productType == 0:  # Ortoimagem
        color = "#ffffff"
    else:
        color = "#241f21"
    toInsert.setAttribute("cor", color)
    toInsert.setAttribute("tamanho_txt", 6)
    if productType == 0:  # Ortoimagem
        if "tamanho_buffer" not in toInsert.attributeMap():
            raise NameError(
                tr(
                    "O campo tamanho_buffer não existe na modelagem em questão. Verifique a modelagem e o tipo de produto selecionado e tente novamente."
                )
            )
        toInsert.setAttribute("tamanho_buffer", 1)
        toInsert.setAttribute("cor_buffer", "#00a0df")
    return toInsert


# Converter distâncias, graus para metros e metros para grau
def convertLength(self, feat):
    convertLength = QgsDistanceArea()
    convertLength.setEllipsoid(self.lyrCrs.ellipsoidAcronym())
    measure = convertLength.measureLength(feat.geometry())
    return convertLength.convertLengthMeasurement(measure, QgsUnitTypes.DistanceMeters)


def convertLengthToDegrees(self, d):
    convertLength = QgsDistanceArea()
    convertLength.setEllipsoid(self.lyrCrs.ellipsoidAcronym())
    return convertLength.convertLengthMeasurement(d, QgsUnitTypes.DistanceDegrees)


# Verificar se existe o atributo "nr_faixas"
@staticmethod
def checkFeature(feat):
    return not not feat.attribute("nr_faixas")


# Posicionar o texto em edicao_texto_generico_l
def getLabelGeometry(feat, clickPos, labelSize):
    geom = feat.geometry()
    texto = str(feat.attribute("nr_faixas")) + " FAIXAS"
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


# Tamanho do buffer para recorte da feição
def getBufferSize(self, text):
    crs = self.srcLyr.crs()
    if crs.isGeographic():
        return len(text) * self.avgLetterSizeInDegrees
    avgLetterSizeInMeters = self.convertLength(self.srcLyr, self.avgLetterSizeInDegrees)
    return len(text) * avgLetterSizeInMeters


def getTranslate(self, d, clickedPositionGeom, projectedPointOnLineGeom):
    xp, yp = projectedPointOnLineGeom.asPoint()
    xc, yc = clickedPositionGeom.asPoint()
    norm = sqrt((xp - xc) ** 2 + (yp - yc) ** 2)
    return d * (xc - xp) / norm, d * (yc - yp) / norm


def buildLineFromGeomDist(self, start, end, geom):
    xCoords, yCoords = [], []
    iterator = geom.asMultiPolyline()[0] if geom.isMultipart() else geom.asPolyline()
    for point in iterator:
        xCoords.append(point.x())
        yCoords.append(point.y())
    return QgsLineString(xCoords, yCoords).curveSubstring(start, end)


# Verificar a existência das camadas de infra_via_deslocamento_l e edicao_texto_generico_l
def getLayerByName(self, name) -> QgsMapLayer:
    lyr = QgsProject.instance().mapLayersByName(name)
    if not len(lyr) == 1:
        if len(lyr) > 1:
            raise NameError(self.tr(f"Mais de uma camada '{name}' encontrada"))
        raise NameError(self.tr(f"Camada '{name}' não encontrada"))
    return lyr[0]


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


def tr(message):
    return QCoreApplication.translate("FerramentasEdicao", message)
