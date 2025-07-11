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
from qgis.core import QgsPrintLayout


class MapScale:
    def __init__(self, *args, **kwargs) -> None:
        pass

    def build(self, composition: QgsPrintLayout, data: dict):
        scale = data.get("scale") * 1000
        # label_direita
        id_label_direita = "label_escala_direita"
        text_label_direita = "ESCALA 1:" + "{:.3f}".format((int(scale) / 1000))
        composition_label_label_direita = composition.itemById(id_label_direita)
        if composition_label_label_direita is not None:
            composition_label_label_direita.setText(text_label_direita)
        # label_escala
        id_label_escala = "label_escala"
        edicao = data.get("edicao_produto", "1-DSG")
        mi_mir_base_str = "MI" if scale != 250000 else "MIR"
        mi_str = (
            f"{mi_mir_base_str} {data.get('mi', None)}"
            if data.get("mi", None) is not None
            else f"INOM {data.get('inom', None)}"
        )
        text_label_escala = (
            f"ESCALA 1:{(int(scale)/1000):.3f}  ―  {mi_str}  ―  EDIÇÃO {edicao}"
        )
        composition_label_label_escala = composition.itemById(id_label_escala)
        if composition_label_label_escala is not None:
            composition_label_label_escala.setText(text_label_escala)
        # label_e1
        id_label_e1 = "label_escala_direita_e1"
        text_label_e1 = str(int((scale / 100)))
        composition_label_e1 = composition.itemById(id_label_e1)
        if composition_label_e1 is not None:
            composition_label_e1.setText(text_label_e1)
        # label_e2
        id_label_e2 = "label_escala_direita_e2"
        text_label_e2 = str(int((scale / 100) * 2))
        composition_label_e2 = composition.itemById(id_label_e2)
        if composition_label_e2 is not None:
            composition_label_e2.setText(text_label_e2)
        # label_e3
        id_label_e3 = "label_escala_direita_e3"
        text_label_e3 = str(int((scale / 100) * 4))
        composition_label_e3 = composition.itemById(id_label_e3)
        if composition_label_e3 is not None:
            composition_label_e3.setText(text_label_e3)
        # label_e4
        id_label_e4 = "label_escala_direita_e4"
        text_label_e4 = str(int((scale / 100) * 6))
        composition_label_e4 = composition.itemById(id_label_e4)
        if composition_label_e4 is not None:
            composition_label_e4.setText(text_label_e4)
        # label_e5
        id_label_e5 = "label_escala_direita_e5"
        text_label_e5 = str(int((scale / 100) * 8)) + " m"
        composition_label_e5 = composition.itemById(id_label_e5)
        if composition_label_e5 is not None:
            composition_label_e5.setText(text_label_e5)
