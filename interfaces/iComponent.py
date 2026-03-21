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
from abc import ABC, abstractmethod
from typing import TYPE_CHECKING, List

if TYPE_CHECKING:
    from ..modules.mapBuilder.components.buildContext import BuildContext


class IComponent(ABC):
    @abstractmethod
    def build(self, context: "BuildContext") -> List[str]:
        """Build the component and return list of layer IDs to be removed later."""
        pass

    @abstractmethod
    def updateComposition(self, *args, **kwargs):
        pass
