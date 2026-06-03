# -*- coding: utf-8 -*-
import json
import math

from qgis.PyQt.QtCore import QObject, QPoint, QRectF, Qt
from qgis.PyQt.QtGui import QColor, QCursor, QFont, QPainter, QPainterPath
from qgis.PyQt.QtWidgets import QToolTip, QWidget
from qgis.core import Qgis

# Radii
_INNER_R   = 30    # inner hole
_CONTENT_R = 70    # outer edge of icon area
_BAND_R    = 88    # outer edge of accent band
_PADDING   = 4     # extra widget margin beyond band
_ICON_SIZE = 22    # icon pixels
_GAP_DEG   = 1.5   # gap between sectors (degrees)

# Colors — default (generic) actions
_COL_DEF_FILL = QColor(255, 255, 255)
_COL_DEF_BAND = QColor(35, 105, 210)

# Colors — specific (layer-contextual) actions
_COL_SPC_FILL = QColor(255, 255, 255)
_COL_SPC_BAND = QColor(165, 88, 22)


def _screen_pos(cx, cy, r, angle_deg):
    """Convert (r, angle) to screen (x, y). angle: 0=top, CW positive."""
    rad = math.radians(angle_deg)
    return cx + r * math.sin(rad), cy - r * math.cos(rad)


def _sector_path(cx, cy, r1, r2, start_deg, span_deg):
    """Donut sector from r1 to r2. start_deg/span_deg: 0=top, CW positive."""
    qt_start = 90.0 - start_deg
    qt_span  = -span_deg
    outer = QRectF(cx - r2, cy - r2, 2 * r2, 2 * r2)
    inner = QRectF(cx - r1, cy - r1, 2 * r1, 2 * r1)
    ox, oy = _screen_pos(cx, cy, r2, start_deg)
    path = QPainterPath()
    path.moveTo(ox, oy)
    path.arcTo(outer, qt_start, qt_span)
    path.arcTo(inner, qt_start + qt_span, -qt_span)
    path.closeSubpath()
    return path


class RadialMenu(QWidget):
    def __init__(self, default_actions, specific_actions=None, parent=None):
        super().__init__(parent, Qt.WindowType.Popup | Qt.WindowType.FramelessWindowHint | Qt.WindowType.NoDropShadowWindowHint)
        self.setAttribute(Qt.WidgetAttribute.WA_TranslucentBackground)
        self._default  = list(default_actions)
        self._specific = list(specific_actions or [])
        self._all      = [(a, True) for a in self._default] + [(a, False) for a in self._specific]
        self._hovered  = -1

        total = 2 * (_BAND_R + _PADDING)
        self._center = float(_BAND_R + _PADDING)
        self.setFixedSize(total, total)
        self.setMouseTracking(True)

    def _hitTest(self, pos):
        cx = cy = self._center
        dx = pos.x() - cx
        dy = pos.y() - cy
        r = math.hypot(dx, dy)
        if r < _INNER_R or r > _BAND_R:
            return -1
        n = len(self._all)
        if n == 0:
            return -1
        angle = math.degrees(math.atan2(dx, -dy)) % 360
        return int(angle / (360.0 / n))

    def mouseMoveEvent(self, event):
        idx = self._hitTest(event.pos())
        if idx != self._hovered:
            self._hovered = idx
            self.update()
        if 0 <= idx < len(self._all):
            self.setCursor(Qt.CursorShape.PointingHandCursor)
            QToolTip.showText(self.mapToGlobal(event.pos()), self._all[idx][0].text(), self)
        else:
            self.setCursor(Qt.CursorShape.ArrowCursor)
            QToolTip.hideText()

    def leaveEvent(self, event):
        if self._hovered != -1:
            self._hovered = -1
            self.update()

    def mousePressEvent(self, event):
        if event.button() == Qt.MouseButton.LeftButton:
            idx = self._hitTest(event.pos())
            if 0 <= idx < len(self._all):
                action, _ = self._all[idx]
                self.close()
                action.trigger()

    def paintEvent(self, event):
        n = len(self._all)
        if n == 0:
            return
        painter = QPainter(self)
        painter.setRenderHint(QPainter.RenderHint.Antialiasing)
        cx = cy = self._center
        span = 360.0 / n
        font = QFont()
        font.setPointSize(7)
        font.setBold(True)
        painter.setFont(font)

        for i, (action, is_default) in enumerate(self._all):
            start      = i * span
            draw_start = start + _GAP_DEG / 2
            draw_span  = span - _GAP_DEG

            fill = _COL_DEF_FILL if is_default else _COL_SPC_FILL
            band = _COL_DEF_BAND if is_default else _COL_SPC_BAND

            if i == self._hovered:
                fill = fill.lighter(118)
                band = band.lighter(125)

            painter.fillPath(_sector_path(cx, cy, _INNER_R, _CONTENT_R, draw_start, draw_span), fill)
            painter.fillPath(_sector_path(cx, cy, _CONTENT_R, _BAND_R,    draw_start, draw_span), band)

            # Icon (or short text fallback) centered in the content area
            mid_angle = start + span / 2
            mid_r = (_INNER_R + _CONTENT_R) / 2
            ix, iy = _screen_pos(cx, cy, mid_r, mid_angle)
            icon = action.icon()
            if not icon.isNull():
                px = icon.pixmap(_ICON_SIZE, _ICON_SIZE)
                painter.drawPixmap(int(ix - _ICON_SIZE / 2), int(iy - _ICON_SIZE / 2), px)
            else:
                text_col = QColor(40, 55, 80) if is_default else QColor(100, 55, 15)
                painter.setPen(text_col)
                painter.drawText(
                    QRectF(ix - 20, iy - 8, 40, 16),
                    Qt.AlignmentFlag.AlignCenter,
                    action.text()[:5],
                )

        painter.end()

    def show_at(self, global_pos):
        half = self.width() // 2
        self.move(global_pos - QPoint(half, half))
        self.show()

    def keyPressEvent(self, event):
        if event.key() == Qt.Key.Key_Escape:
            self.close()
        super().keyPressEvent(event)


class RadialMenuTrigger(QObject):
    def __init__(self, iface, actions_map, config_path, product_selector=None, scale_selector=None):
        super().__init__(iface.mainWindow())
        self._iface            = iface
        self._actions_map      = actions_map
        self._product_selector = product_selector
        self._scale_selector   = scale_selector
        self._menu             = None
        self._config           = self._loadConfig(config_path)

        from qgis.PyQt.QtWidgets import QAction
        self._action = QAction("Abrir Menu Radial", iface.mainWindow())
        self._action.triggered.connect(lambda _checked=False: self._showMenu())
        iface.registerMainWindowAction(self._action, "")
        iface.mainWindow().addAction(self._action)

    def _loadConfig(self, path):
        try:
            with open(path, encoding="utf-8") as f:
                return json.load(f)
        except Exception:
            return {}

    def setActionsMap(self, actions_map):
        self._actions_map = actions_map

    def _queryActions(self):
        default_texts  = self._config.get("_default", [])
        default_actions = [self._actions_map[t] for t in default_texts if t in self._actions_map]

        active_layer = self._iface.activeLayer()
        specific_actions = []
        if active_layer:
            specific_texts = self._config.get(active_layer.name(), [])
            specific_actions = [self._actions_map[t] for t in specific_texts if t in self._actions_map]

        return default_actions, specific_actions

    def _showMenu(self):
        canvas = self._iface.mapCanvas()
        if not canvas.rect().contains(canvas.mapFromGlobal(QCursor.pos())):
            return
        not_configured = (
            self._product_selector is not None and self._product_selector.currentIndex() == 0
        ) or (
            self._scale_selector is not None and self._scale_selector.currentIndex() == 0
        )
        if not_configured:
            self._iface.messageBar().pushMessage(
                "Ferramentas de Edição",
                "Selecione o produto e a escala na barra de ferramentas antes de usar o menu radial.",
                level=Qgis.MessageLevel.Warning,
                duration=5,
            )
            return
        default_actions, specific_actions = self._queryActions()
        if self._menu is not None:
            self._menu.close()
            self._menu = None
        self._menu = RadialMenu(default_actions, specific_actions)
        self._menu.destroyed.connect(self._onMenuDestroyed)
        self._menu.show_at(QCursor.pos())

    def _onMenuDestroyed(self):
        self._menu = None

    def unload(self):
        self._iface.mainWindow().removeAction(self._action)
        self._iface.unregisterMainWindowAction(self._action)
        if self._menu is not None:
            try:
                self._menu.close()
            except RuntimeError:
                pass
        self._menu = None
