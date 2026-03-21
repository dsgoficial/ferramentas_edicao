# -*- coding: utf-8 -*-
"""
Precise label polygon generation using character-level tight bounding rects.

Renders off-screen via QgsMapRendererSequentialJob, collects QgsLabelPosition
objects (which include the actual label bounding polygon), then decomposes
each horizontal label into character-level tight bounding rectangles using
QFontMetricsF. The union of character polygons gives a precise representation
of the label's actual occupied area.

For curved labels, falls back to the label bounding polygon from the renderer.
"""

import math

from qgis.core import (
    QgsVectorLayer,
    QgsFeature,
    QgsField,
    QgsGeometry,
    QgsPointXY,
    QgsWkbTypes,
    QgsMapSettings,
    QgsMapRendererSequentialJob,
    QgsUnitTypes,
    QgsPalLayerSettings,
)
from qgis.PyQt.QtCore import QSize, QMetaType
from qgis.PyQt.QtGui import QFont, QFontMetricsF


MAX_PX_PER_SIDE = 16384


class LabelFontInfo:
    """Extracts all relevant text properties from a layer's labeling settings."""

    def __init__(self, layer, mu_per_px, dpi):
        self.valid = False
        self.font = QFont("Sans Serif", 10)
        self.letter_spacing = 0.0
        self.word_spacing = 0.0
        self.buffer_size_mu = 0.0
        self.is_curved = False
        self.placement = None
        self.wrap_char = ""
        self.auto_wrap_length = 0
        self.multiline_align = 0  # 0=Left, 1=Center, 2=Right, 3=Follow

        if layer is None or not layer.labelsEnabled():
            return
        labeling = layer.labeling()
        if labeling is None:
            return
        try:
            settings = labeling.settings()
        except Exception:
            return

        text_format = settings.format()

        # Placement
        try:
            self.placement = settings.placement
            self.is_curved = self.placement in (
                QgsPalLayerSettings.Curved,
                QgsPalLayerSettings.PerimeterCurved,
            )
        except Exception:
            pass

        # Multi-line
        try:
            self.wrap_char = settings.wrapChar or ""
        except Exception:
            pass
        try:
            self.auto_wrap_length = settings.autoWrapLength or 0
        except Exception:
            pass
        try:
            self.multiline_align = settings.multilineAlign
        except Exception:
            pass

        # Build QFont
        base_font = text_format.font()
        font_size = text_format.size()
        size_unit = text_format.sizeUnit()

        if size_unit == QgsUnitTypes.RenderPoints:
            font_size_px = font_size * dpi / 72.0
        elif size_unit == QgsUnitTypes.RenderMillimeters:
            font_size_px = font_size * dpi / 25.4
        elif size_unit == QgsUnitTypes.RenderPixels:
            font_size_px = font_size
        elif size_unit == QgsUnitTypes.RenderMapUnits:
            font_size_px = font_size / mu_per_px if mu_per_px > 0 else font_size
        else:
            font_size_px = font_size * dpi / 72.0

        f = QFont(base_font.family())
        f.setPixelSize(max(1, int(round(font_size_px))))
        f.setBold(base_font.bold())
        f.setItalic(base_font.italic())
        f.setWeight(base_font.weight())

        if hasattr(base_font, "styleName") and base_font.styleName():
            f.setStyleName(base_font.styleName())

        stretch = base_font.stretch()
        if stretch > 0:
            f.setStretch(stretch)

        f.setCapitalization(base_font.capitalization())
        f.setStrikeOut(base_font.strikeOut())
        f.setUnderline(base_font.underline())

        letter_sp = base_font.letterSpacing()
        ls_type = base_font.letterSpacingType()
        if ls_type == QFont.PercentageSpacing:
            fm_temp = QFontMetricsF(f)
            avg_w = fm_temp.averageCharWidth()
            letter_sp_abs = avg_w * (letter_sp - 100.0) / 100.0
        else:
            letter_sp_abs = letter_sp

        word_sp = base_font.wordSpacing()
        f.setLetterSpacing(QFont.AbsoluteSpacing, letter_sp_abs)
        f.setWordSpacing(word_sp)

        self.font = f
        self.letter_spacing = letter_sp_abs
        self.word_spacing = word_sp

        # Buffer (halo)
        buf = text_format.buffer()
        if buf.enabled():
            buf_size = buf.size()
            buf_unit = buf.sizeUnit()
            if buf_unit == QgsUnitTypes.RenderMillimeters:
                buf_px = buf_size * dpi / 25.4
            elif buf_unit == QgsUnitTypes.RenderPoints:
                buf_px = buf_size * dpi / 72.0
            elif buf_unit == QgsUnitTypes.RenderPixels:
                buf_px = buf_size
            elif buf_unit == QgsUnitTypes.RenderMapUnits:
                buf_px = buf_size / mu_per_px if mu_per_px > 0 else buf_size
            else:
                buf_px = buf_size * dpi / 25.4
            self.buffer_size_mu = buf_px * mu_per_px

        self.fm = QFontMetricsF(f)
        self.valid = True


def _decompose_label_geometry(corners):
    """Decompose label bounding polygon into origin + directional vectors."""
    if len(corners) < 4:
        return None
    p0, p1, p2, p3 = corners[0], corners[1], corners[2], corners[3]

    s01 = math.hypot(p1.x() - p0.x(), p1.y() - p0.y())
    s12 = math.hypot(p2.x() - p1.x(), p2.y() - p1.y())

    if s01 >= s12:
        origin = p0
        ux = (p1.x() - p0.x()) / s01 if s01 > 0 else 1.0
        uy = (p1.y() - p0.y()) / s01 if s01 > 0 else 0.0
        width = s01
        s03 = math.hypot(p3.x() - p0.x(), p3.y() - p0.y())
        vx = (p3.x() - p0.x()) / s03 if s03 > 0 else 0.0
        vy = (p3.y() - p0.y()) / s03 if s03 > 0 else 1.0
        height = s03
    else:
        origin = p1
        ux = (p2.x() - p1.x()) / s12 if s12 > 0 else 1.0
        uy = (p2.y() - p1.y()) / s12 if s12 > 0 else 0.0
        width = s12
        vx = (p0.x() - p1.x()) / s01 if s01 > 0 else 0.0
        vy = (p0.y() - p1.y()) / s01 if s01 > 0 else 1.0
        height = s01

    if width == 0:
        return None

    return {
        "origin": origin,
        "ux": ux,
        "uy": uy,
        "vx": vx,
        "vy": vy,
        "width": width,
        "height": height,
    }


def _split_label_into_lines(text, fi):
    """Split label text into lines (replicates QGIS wrapping logic)."""
    if fi.wrap_char:
        lines = text.split(fi.wrap_char)
    else:
        lines = text.split("\n")

    if fi.auto_wrap_length > 0:
        new_lines = []
        for line in lines:
            if len(line) <= fi.auto_wrap_length:
                new_lines.append(line)
                continue
            words = line.split(" ")
            current = ""
            for word in words:
                test = (current + " " + word) if current else word
                if current and len(test) > fi.auto_wrap_length:
                    new_lines.append(current)
                    current = word
                else:
                    current = test
            if current:
                new_lines.append(current)
        lines = new_lines

    while lines and lines[0].strip() == "":
        lines.pop(0)
    while lines and lines[-1].strip() == "":
        lines.pop()

    return lines if lines else [text]


def _create_horizontal_char_polygons(label_geom, label_text, fi):
    """
    Create precise character-level polygons for a horizontal label.

    Decomposes the label bounding polygon, then uses QFontMetricsF with
    tightBoundingRect to create a tight polygon per character.

    Returns list of QgsGeometry (one polygon per non-space character).
    """
    poly = label_geom.asPolygon()
    if not poly or not poly[0] or len(poly[0]) < 5:
        return [label_geom]

    corners = poly[0]
    geo_info = _decompose_label_geometry(corners)
    if geo_info is None:
        return [label_geom]

    origin = geo_info["origin"]
    ux, uy = geo_info["ux"], geo_info["uy"]
    vx, vy = geo_info["vx"], geo_info["vy"]
    total_width = geo_info["width"]
    total_height = geo_info["height"]

    if not fi.valid:
        return [label_geom]

    cap = fi.font.capitalization()

    def display_transform(t):
        if cap == QFont.AllUppercase:
            return t.upper()
        elif cap == QFont.AllLowercase:
            return t.lower()
        elif cap == QFont.Capitalize:
            return t.title()
        return t

    fm = fi.fm

    # Split into lines
    lines = _split_label_into_lines(label_text, fi)
    n_lines = len(lines)

    # Compute advances per line
    line_data = []
    for line in lines:
        disp = display_transform(line)
        advances = []
        for ch in disp:
            try:
                adv = fm.horizontalAdvance(ch)
            except AttributeError:
                adv = fm.width(ch)
            advances.append(max(adv, 0.001))
        total = sum(advances)
        line_data.append((line, disp, advances, total))

    widest_advance = max(ld[3] for ld in line_data) if line_data else 1.0
    if widest_advance <= 0:
        return [label_geom]

    scale_factor = total_width / widest_advance
    line_height_mu = total_height / n_lines if n_lines > 0 else total_height

    font_line_height = fm.height()
    v_scale = line_height_mu / font_line_height if font_line_height > 0 else 1.0

    buf = fi.buffer_size_mu
    align = fi.multiline_align
    if align == 3:  # Follow → treat as Center
        align = 1

    char_geoms = []

    for line_idx, (line_orig, line_disp, advances, line_total) in enumerate(
        line_data
    ):
        line_width_mu = line_total * scale_factor
        n_chars_line = len(line_orig)

        if align == 1:  # Center
            h_offset = (total_width - line_width_mu) / 2.0
        elif align == 2:  # Right
            h_offset = total_width - line_width_mu
        else:  # Left
            h_offset = 0.0

        v_offset = (n_lines - 1 - line_idx) * line_height_mu

        line_ox = origin.x() + h_offset * ux + v_offset * vx
        line_oy = origin.y() + h_offset * uy + v_offset * vy

        char_offset = 0.0
        for ch_idx, ch in enumerate(line_orig):
            ratio = (
                advances[ch_idx] / line_total
                if line_total > 0
                else 1.0 / max(n_chars_line, 1)
            )
            char_w = ratio * line_width_mu

            tight = fm.tightBoundingRect(line_disp[ch_idx])

            if tight.height() > 0 and ch.strip():
                y_top = fm.ascent() + tight.top()
                y_bottom = y_top + tight.height()

                char_v_bottom = line_height_mu - y_bottom * v_scale
                char_v_top = line_height_mu - y_top * v_scale

                char_v_bottom -= buf / 2
                char_v_top += buf / 2
                char_h_mu = char_v_top - char_v_bottom
            else:
                # Skip whitespace characters
                char_offset += char_w
                continue

            extra_left = buf / 2 if ch_idx == 0 else 0.0
            extra_right = buf / 2 if ch_idx == n_chars_line - 1 else 0.0
            final_w = char_w + extra_left + extra_right

            cx = line_ox + (char_offset - extra_left) * ux + char_v_bottom * vx
            cy = line_oy + (char_offset - extra_left) * uy + char_v_bottom * vy

            c0 = QgsPointXY(cx, cy)
            c1 = QgsPointXY(cx + final_w * ux, cy + final_w * uy)
            c2 = QgsPointXY(
                cx + final_w * ux + char_h_mu * vx,
                cy + final_w * uy + char_h_mu * vy,
            )
            c3 = QgsPointXY(cx + char_h_mu * vx, cy + char_h_mu * vy)

            char_geom = QgsGeometry.fromPolygonXY([[c0, c1, c2, c3, c0]])
            if not char_geom.isEmpty():
                char_geoms.append(char_geom)

            char_offset += char_w

    return char_geoms if char_geoms else [label_geom]


def _get_visible_layers(project):
    """Get all visible spatial layers from the project."""
    root = project.layerTreeRoot()
    visible = []
    for layer in project.mapLayers().values():
        if not layer.isSpatial():
            continue
        tree_layer = root.findLayer(layer.id())
        if tree_layer is None or not tree_layer.isVisible():
            continue
        visible.append(layer)
    return visible


def _render_labels(extent, scale, project_crs, visible_layers, dpi):
    """Render off-screen and return list of QgsLabelPosition, or empty list."""
    mu_per_px = scale * 0.0254 / dpi
    ext_w = extent.width()
    ext_h = extent.height()
    if ext_w <= 0 or ext_h <= 0:
        return []

    px_w = max(64, int(math.ceil(ext_w / mu_per_px)))
    px_h = max(64, int(math.ceil(ext_h / mu_per_px)))

    if px_w > MAX_PX_PER_SIDE or px_h > MAX_PX_PER_SIDE:
        ratio = min(MAX_PX_PER_SIDE / px_w, MAX_PX_PER_SIDE / px_h)
        px_w = max(64, int(px_w * ratio))
        px_h = max(64, int(px_h * ratio))

    settings = QgsMapSettings()
    settings.setOutputSize(QSize(px_w, px_h))
    settings.setOutputDpi(dpi)
    settings.setDestinationCrs(project_crs)
    settings.setExtent(extent)
    settings.setLayers(visible_layers)
    settings.setFlag(QgsMapSettings.UseAdvancedEffects, True)
    settings.setFlag(QgsMapSettings.DrawLabeling, True)

    job = QgsMapRendererSequentialJob(settings)
    job.start()
    job.waitForFinished()

    labeling_results = job.takeLabelingResults()
    if labeling_results is None:
        return []
    try:
        return labeling_results.allLabels()
    except AttributeError:
        return []


def build_font_info_cache(visible_layers, layer_name_filter, scale, dpi):
    """
    Build a font info cache and labeled layer lookup for the given layers.

    Returns (labeled_layers dict, font_info_cache dict).
    """
    mu_per_px = scale * 0.0254 / dpi
    labeled_layers = {}
    for layer in visible_layers:
        if hasattr(layer, "labelsEnabled") and layer.labelsEnabled():
            if layer.name() in layer_name_filter:
                labeled_layers[layer.id()] = layer

    font_info_cache = {}
    for layer_id, layer in labeled_layers.items():
        font_info_cache[layer_id] = LabelFontInfo(layer, mu_per_px, dpi)

    return labeled_layers, font_info_cache


def render_and_create_precise_label_polygons(
    extent,
    scale,
    project,
    layer_name_filter,
    dpi=300,
    seen=None,
    visible_layers=None,
    labeled_layers=None,
    font_info_cache=None,
):
    """
    Render off-screen, collect label positions, and create precise
    character-level polygons for each label.

    For horizontal labels: MultiPolygon of tight character bounding rects.
    For curved labels or missing font info: the label bounding polygon
    from the renderer.

    Args:
        extent: QgsRectangle for the render area
        scale: Scale denominator (e.g., 25000)
        project: QgsProject instance
        layer_name_filter: set of layer names to include
        dpi: Render DPI (default 300)
        seen: Optional set for deduplication across multiple calls.
        visible_layers: Pre-computed visible layers (avoids rebuilding).
        labeled_layers: Pre-computed labeled layer lookup.
        font_info_cache: Pre-computed font info cache.

    Returns:
        QgsVectorLayer with polygon geometries and fields
        (Layer, LabelText, featid), or None if no labels found.
    """
    if seen is None:
        seen = set()

    project_crs = project.crs()

    if visible_layers is None:
        visible_layers = _get_visible_layers(project)
    if not visible_layers:
        return None

    if labeled_layers is None or font_info_cache is None:
        labeled_layers, font_info_cache = build_font_info_cache(
            visible_layers, layer_name_filter, scale, dpi
        )

    label_positions = _render_labels(
        extent, scale, project_crs, visible_layers, dpi
    )
    if not label_positions:
        return None

    # Create output layer
    output_layer = QgsVectorLayer(
        f"Polygon?crs={project_crs.authid()}",
        "precise_label_polygons",
        "memory",
    )
    output_layer.startEditing()
    dp = output_layer.dataProvider()
    dp.addAttributes(
        [
            QgsField("Layer", QMetaType.Type.QString),
            QgsField("LabelText", QMetaType.Type.QString),
            QgsField("featid", QMetaType.Type.Int),
        ]
    )
    output_layer.updateFields()
    output_layer.beginEditCommand("Creating precise label polygons")

    feat_id = 0

    for lbl_pos in label_positions:
        layer_id = lbl_pos.layerID
        if layer_id not in labeled_layers:
            continue

        label_text = lbl_pos.labelText
        if not label_text:
            continue

        lkey = (layer_id, lbl_pos.featureId, label_text)
        if lkey in seen:
            continue
        seen.add(lkey)

        label_geom = lbl_pos.labelGeometry
        if label_geom.isEmpty():
            continue

        layer_name = labeled_layers[layer_id].name()
        fi = font_info_cache.get(layer_id)

        # Create precise polygons for horizontal labels
        if fi is not None and fi.valid and not fi.is_curved:
            char_geoms = _create_horizontal_char_polygons(
                label_geom, label_text, fi
            )
            if len(char_geoms) > 1:
                combined = QgsGeometry.collectGeometry(char_geoms)
            elif char_geoms:
                combined = char_geoms[0]
            else:
                combined = label_geom
        else:
            # Fallback for curved labels or missing font info
            combined = label_geom

        if combined.isEmpty():
            combined = label_geom

        feat = QgsFeature(output_layer.fields())
        feat.setGeometry(combined)
        feat["Layer"] = layer_name
        feat["LabelText"] = label_text
        feat["featid"] = feat_id
        output_layer.addFeature(feat)
        feat_id += 1

    output_layer.endEditCommand()
    output_layer.commitChanges()

    if feat_id == 0:
        return None

    return output_layer
