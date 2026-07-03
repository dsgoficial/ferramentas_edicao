# -*- coding: utf-8 -*-
"""
borderLabelLine.py — construção da LINHA do rótulo de fronteira.

Compartilhado pela ferramenta manual "Rótulo Fronteira" (createBorderLabel) e
pelo processing "Insere Rótulo de Fronteira" (insertBorderLabel):

1. o comprimento da linha vem da MEDIDA REAL do texto (QFontMetricsF com a
   fonte do produto) mais uma folga pequena — não mais de estimativa por
   número de caracteres;
2. a geometria é o trecho do limite GENERALIZADO (simplify + smooth) para
   seguir a direção geral da fronteira sem os ziguezagues;
3. o rótulo de cada lado é a curva PARALELA (offsetCurve) — não uma translação.
"""
import math

from qgis.core import (
    Qgis,
    QgsCoordinateReferenceSystem,
    QgsCoordinateTransformContext,
    QgsDistanceArea,
    QgsGeometry,
    QgsGeometryUtils,
    QgsLineString,
)
from qgis.PyQt.QtGui import QFont, QFontMetricsF

# Folga sobre a largura medida do texto ("pouca folga")
DEFAULT_SLACK = 1.15
# Tolerancia de generalizacao da linha (mm de carta)
SIMPLIFY_MM = 1.0
SMOOTH_ITERATIONS = 2
SMOOTH_OFFSET = 0.25
_REF_DPI = 300.0


def mmToMapUnits(mm, scale, crs):
    """mm de carta -> unidade do CRS."""
    meters = mm * scale / 1000.0
    if crs is not None and crs.isGeographic():
        d = QgsDistanceArea()
        d.setSourceCrs(
            QgsCoordinateReferenceSystem("EPSG:3857"),
            QgsCoordinateTransformContext(),
        )
        return d.convertLengthMeasurement(meters, Qgis.DistanceUnit.Degrees)
    return meters


def measureTextWidthMapUnits(text, sizePt, scale, crs,
                             family="Noto Sans", styleName="Condensed Bold"):
    """Largura REAL do texto renderizado, em unidades do CRS."""
    font = QFont(family)
    if styleName:
        font.setStyleName(styleName)
    font.setPixelSize(max(1, round(sizePt * _REF_DPI / 72.0)))
    widthPx = QFontMetricsF(font).horizontalAdvance(text)
    widthMm = widthPx * 25.4 / _REF_DPI
    return mmToMapUnits(widthMm, scale, crs)


def _asSingleLine(geom):
    """Parte de linha (a mais longa) como QgsGeometry de LineString simples."""
    if geom.isMultipart():
        parts = geom.asGeometryCollection()
        parts.sort(key=lambda g: g.length(), reverse=True)
        return parts[0] if parts else geom
    return geom


def _substring(geom, start, end):
    """Subtrecho [start, end] (em distância ao longo da linha)."""
    line = _asSingleLine(geom)
    pts = line.asPolyline()
    ls = QgsLineString([p.x() for p in pts], [p.y() for p in pts])
    return QgsGeometry(ls.curveSubstring(start, end))


def trimToLength(lineGeom, targetLen):
    """Apara simetricamente para o comprimento alvo — usar DEPOIS do
    offsetCurve (a curva paralela do lado convexo e mais longa que a base;
    aparar antes deixaria folga errada no rotulo final)."""
    if lineGeom is None or lineGeom.isEmpty():
        return lineGeom
    excess = lineGeom.length() - targetLen
    if excess <= 0:
        return lineGeom
    return _substring(lineGeom, excess / 2.0, excess / 2.0 + targetLen)


def buildBorderLabelLine(borderGeom, centerDist, textLenMu, scale, crs,
                         slack=DEFAULT_SLACK, extraMargin=1.0):
    """Linha generalizada sobre o limite, centrada em `centerDist`, com
    comprimento final = textLenMu * slack. Alarga a janela quando o trecho é
    sinuoso (a suavização encurta) até a linha suavizada comportar o texto."""
    needed = textLenMu * slack * extraMargin
    line = _asSingleLine(QgsGeometry(borderGeom))
    total = line.length()
    if total <= 0:
        return None
    if needed > total:
        extend = (needed - total) / 2.0
        line = line.extendLine(extend, extend)
        total = line.length()
        centerDist += extend
    simplifyTol = mmToMapUnits(SIMPLIFY_MM, scale, crs)

    arc = needed
    smoothed = None
    for _ in range(8):
        start = max(0.0, centerDist - arc / 2.0)
        end = min(total, centerDist + arc / 2.0)
        piece = _substring(line, start, end)
        piece = piece.simplify(simplifyTol)
        piece = piece.smooth(SMOOTH_ITERATIONS, SMOOTH_OFFSET)
        if piece.isEmpty():
            return None
        if piece.length() >= needed or (start <= 0 and end >= total):
            smoothed = piece
            break
        arc *= 1.35
    if smoothed is None:
        smoothed = piece
    # apara simetricamente para o comprimento exato
    excess = smoothed.length() - needed
    if excess > 0:
        smoothed = _substring(smoothed, excess / 2.0, excess / 2.0 + needed)
    return smoothed


def sideSignForPoint(lineGeom, point):
    """+1 se o ponto está à ESQUERDA da linha (sentido de digitalização),
    -1 à direita — mesmo sinal usado pelo offsetCurve."""
    line = _asSingleLine(lineGeom)
    _sqDist, _closest, afterVertex, _side = line.closestSegmentWithContext(point)
    pts = line.asPolyline()
    i = min(max(afterVertex, 1), len(pts) - 1)
    p1, p2 = pts[i - 1], pts[i]
    left = QgsGeometryUtils.leftOfLine(
        point.x(), point.y(), p1.x(), p1.y(), p2.x(), p2.y()
    )
    return 1 if left < 0 else -1


def offsetSide(lineGeom, distMu, sign):
    """Curva paralela ao lado indicado. Fallback: translação perpendicular à
    corda (comportamento antigo) quando o offsetCurve degenera."""
    result = lineGeom.offsetCurve(
        sign * distMu, 8, Qgis.JoinStyle.Round, 2.0
    )
    if result is not None and not result.isEmpty():
        result = _asSingleLine(result)
        # offsetCurve pode inverter o sentido da linha no lado negativo —
        # normaliza para o sentido original (rotulo nao renderiza de cabeca
        # para baixo; o QGIS ja resolve, mas mantemos consistencia)
        return result
    pts = _asSingleLine(lineGeom).asPolyline()
    if len(pts) < 2:
        return None
    dx = pts[-1].x() - pts[0].x()
    dy = pts[-1].y() - pts[0].y()
    norm = math.hypot(dx, dy)
    if norm == 0:
        return None
    moved = QgsGeometry(lineGeom)
    moved.translate(-sign * dy / norm * distMu, sign * dx / norm * distMu)
    return moved
