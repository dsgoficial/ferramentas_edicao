# -*- coding: utf-8 -*-
"""
/***************************************************************************
 ferramentas_edicao
                                 A QGIS plugin
 Brazilian Army Cartographic Finishing Tools
                              -------------------
 ***************************************************************************/
/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/
"""
from pymaging import Image
from pymaging.colors import RGB
from pymaging.formats import registry
from pymaging.shapes import Line
from pymaging.webcolors import Black, White
from pymaging_png.png import PNG

from ..image.base import BaseImage


class PymagingImage(BaseImage):
    """
    pymaging image builder, default format is PNG.
    """

    kind = "PNG"
    allowed_kinds = ("PNG",)

    def __init__(self, *args, **kwargs):
        """
        Register PNG with pymaging.
        """
        registry.formats = []
        registry.names = {}
        registry._populate()
        registry.register(PNG)

        super(PymagingImage, self).__init__(*args, **kwargs)

    def new_image(self, **kwargs):
        return Image.new(RGB, self.pixel_size, self.pixel_size, White)

    def drawrect(self, row, col):
        (x, y), (x2, y2) = self.pixel_box(row, col)
        for r in range(self.box_size):
            line_y = y + r
            line = Line(x, line_y, x2, line_y)
            self._img.draw(line, Black)

    def save(self, stream, kind=None):
        self._img.save(stream, self.check_kind(kind))

    def check_kind(self, kind, transform=None, **kwargs):
        """
        pymaging (pymaging_png at least) uses lower case for the type.
        """
        if transform is None:
            transform = lambda x: x.lower()
        return super(PymagingImage, self).check_kind(
            kind, transform=transform, **kwargs
        )
