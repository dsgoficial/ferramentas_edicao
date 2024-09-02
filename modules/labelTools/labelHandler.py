from typing import Literal, Union
from qgis.PyQt.QtCore import QCoreApplication
from math import sqrt
from qgis.core import (
    QgsGeometry,
    QgsSpatialIndex,
    QgsFeature,
    QgsCoordinateReferenceSystem,
    QgsVectorLayer,
    QgsFeatureRequest,
    QgsProject,
    QgsMapLayer,
    QgsDistanceArea,
    QgsCoordinateTransformContext,
    QgsUnitTypes,
)

# Captura a feição da camada de entrada mais próxima da posicao e cria a feição na camada de destino,
# as camadas ja predefinidas dependem da funcao chamada
def createLabelFromLayerAToLayerB(
    pos: QgsGeometry,
    srcLyr: QgsVectorLayer, 
    dstLyr: QgsVectorLayer, 
    attrNameLane, 
    scale: int,
    functionName: Literal["createroadlabel"],
    productTypeName: Literal["orto", "topo"],
    crsString="EPSG:3857",
) -> QgsFeature:
    label = QgsFeature()
    if functionName not in ["createroadlabel"]:
        raise AttributeError(f"functionName '{functionName}' não encontrado")
    if productTypeName not in ["orto", "topo"]:
        raise AttributeError(f"productTypeName '{productTypeName}' não encontrado")
    productTypeDict = {"orto": 0, "topo": 1}
    productType = productTypeDict[productTypeName]
    if functionName == "createroadlabel":
        label = createRoadLabel(pos, srcLyr, dstLyr, attrNameLane, scale, productType, crsString)

    return label


def createRoadLabel(pos: QgsGeometry, srcLyr, dstLyr, attrNameLane, scale, productType, crsString) -> QgsFeature:
    tolerance = getToleranceForLyr(srcLyr, scale, crsString)
    feat = getNearestFeat(pos, srcLyr, tolerance)
    attrNameLane = "nr_faixas"
    attr = feat.attribute(attrNameLane)
    if int(attr) <= 2:
        raise NameError(
            tr(
                f"Feição inválida. Verifique o atributo '{attrNameLane}' na camada '{srcLyrName}'"
            )
        )
    toInsert = QgsFeature(dstLyr.fields())
    toInsert = setRoadAttributes(feat, toInsert, productType)
    if toInsert is None:
        return
    avgLetterSizeInDegrees = 0.0006
    crs = srcLyr.crs()
    displacement = getRoadLabelDisplacement(feat, scale, crs)
    text = str(feat.attribute(attrNameLane)) + " FAIXAS"
    toInsertGeom = getLabelGeometry(
        feat,
        text,
        pos,
        crs,
        displacement,
        avgLetterSizeInDegrees=avgLetterSizeInDegrees,
    )
    toInsert.setGeometry(toInsertGeom)
    dstLyr.startEditing()
    dstLyr.addFeature(toInsert)
    dstLyr.triggerRepaint()
    return toInsert


def getNearestFeat(pos: QgsGeometry, lyr: QgsVectorLayer, tolerance) -> QgsFeature:
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


def getToleranceForLyr(lyr: QgsMapLayer, scale, crsString="EPSG:3857", distance=0.003):
    lyrCrs = lyr.dataProvider().crs()
    if lyrCrs.isGeographic():
        d = QgsDistanceArea()
        d.setSourceCrs(
            QgsCoordinateReferenceSystem(crsString),
            QgsCoordinateTransformContext(),
        )
        tolerance = d.convertLengthMeasurement(
            scale * distance, QgsUnitTypes.DistanceDegrees
        )
    else:
        tolerance = scale * distance

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
                    "O campo tamanho_buffer não existe na modelagem em questão (só existe na modelagem de carta ortoimagem). Verifique a modelagem e o tipo de produto selecionado e tente novamente. Se você está editando carta topográfica, selecione carta topográfica na barra de ferramentas."
                )
            )
        toInsert.setAttribute("tamanho_buffer", 1)
        toInsert.setAttribute("cor_buffer", "#00a0df")
    return toInsert


# Converter distâncias, graus para metros e metros para grau
def convertLengthToMeters(feat: QgsFeature, crs: QgsCoordinateReferenceSystem):
    distanceArea = QgsDistanceArea()
    distanceArea.setEllipsoid(crs.ellipsoidAcronym())
    measure = distanceArea.measureLength(feat.geometry())
    return distanceArea.convertLengthMeasurement(measure, QgsUnitTypes.DistanceMeters)


def convertLengthToDegrees(d, crs):
    convertLength = QgsDistanceArea()
    convertLength.setEllipsoid(crs.ellipsoidAcronym())
    return convertLength.convertLengthMeasurement(d, QgsUnitTypes.DistanceDegrees)


# Posicionar o texto
def getLabelGeometry(
    feat: QgsFeature,
    texto,
    posGeom: QgsGeometry,
    crs: QgsCoordinateReferenceSystem,
    displacement,
    avgLetterSizeInDegrees=0.0006,
):
    geom = feat.geometry()
    bufferSize = getBufferSize(texto, crs, feat, avgLetterSizeInDegrees)
    locatedDistance = geom.lineLocatePoint(posGeom)
    projectedPointOnLineGeom = geom.interpolate(locatedDistance)
    buffer = projectedPointOnLineGeom.buffer(bufferSize, -1)
    toInsertGeom = geom.intersection(buffer)
    dx, dy = getLabelDistance(displacement, posGeom, projectedPointOnLineGeom)
    toInsertGeom.translate(dx, dy)
    return toInsertGeom


# Tamanho do buffer para recorte da feição
def getBufferSize(
    text, crs: QgsCoordinateReferenceSystem, feat, avgLetterSizeInDegrees=0.0006
):
    if crs.isGeographic():
        return len(text) * avgLetterSizeInDegrees
    avgLetterSizeInMeters = convertLengthToMeters(feat, crs)
    return len(text) * avgLetterSizeInMeters


def getLabelDistance(
    d, positionGeom: QgsGeometry, projectedPointOnLineGeom: QgsGeometry
):
    xp, yp = projectedPointOnLineGeom.asPoint()
    xc, yc = positionGeom.asPoint()
    norm = sqrt((xp - xc) ** 2 + (yp - yc) ** 2)
    return d * (xc - xp) / norm, d * (yc - yp) / norm


# Verificar a existência da camadas
def getLayerByName(name: str) -> Union[QgsMapLayer, QgsVectorLayer]:
    lyr = QgsProject.instance().mapLayersByName(name)
    if not len(lyr) == 1:
        if len(lyr) > 1:
            raise NameError(tr(f"Mais de uma camada '{name}' encontrada"))
        return None
    return lyr[0]


def getRoadLabelDisplacement(feat, scale, crs: QgsCoordinateReferenceSystem):
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
    d_scale = d_in_meters * scale
    return d_scale if not crs.isGeographic() else convertLengthToDegrees(d_scale, crs)


def tr(message):
    return QCoreApplication.translate("FerramentasEdicao", message)
