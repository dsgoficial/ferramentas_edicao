# -*- coding: utf-8 -*-
"""
/***************************************************************************
 EditionPlugin
                                 A QGIS plugin
 This plugin helps the edition of maps.
                              -------------------
        begin                : 2020-09-13
        git sha              : $Format:%H$
        copyright            : (C) 2020 by Ronaldo Martins da Silva Junior
        email                : ronaldo.rmsjr@gmail.com
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


def editMapName(composition, nome, mi, inom):
    text_label_nomeCarta = "ESPECIAL"
    text_label_nomeCarta = (nome).upper()
    if composition.itemById("label_nomeCarta") is not None:
        label_nomeCarta = composition.itemById("label_nomeCarta")
        label_nomeCarta.setText(text_label_nomeCarta)
        label_nomeCarta.refresh()
    text_label_indice = "ÍNDICE: " + inom
    if composition.itemById("label_indice") is not None:
        label_indice = composition.itemById("label_indice")
        label_indice.setText(text_label_indice)
        label_indice.refresh()
    text_label_mi = "MI: " + mi
    if composition.itemById("label_mi") is not None:
        label_mi = composition.itemById("label_mi")
        label_mi.setText(text_label_mi)
        label_mi.refresh()


def editMapType(composition, text_productType):
    if composition.itemById("label_nome_produto") is not None:
        label_productType = composition.itemById("label_nome_produto")
        label_productType.setText(text_productType)
        label_productType.refresh()


def editProjeto(composition, text_projetoNegrito):
    if composition.itemById("label_projeto_negrito") is not None:
        label_projeto_negrito = composition.itemById("label_projeto_negrito")
        label_projeto_negrito.setText(text_projetoNegrito)
        label_projeto_negrito.refresh()
    if composition.itemById("label_projeto_normal") is not None:
        label_projeto_normal = composition.itemById("label_projeto_normal")
        label_projeto_normal.setText(text_projetonormal)
        label_projeto_normal.refresh()


def editCreditos(composition, text_creditosNegrito):
    if composition.itemById("label_creditos_negrito") is not None:
        label_creditos_negrito = composition.itemById("label_creditos_negrito")
        label_creditos_negrito.setText(text_creditosNegrito)
        label_creditos_negrito.refresh()
    if composition.itemById("label_creditos_normal") is not None:
        label_creditos_normal = composition.itemById("label_creditos_normal")
        label_creditos_normal.setText(text_creditosnormal)
        label_creditos_normal.refresh()


def replaceLabelRegiao(composition, regioes_intersected):
    label_regiao = composition.itemById("label_regiao")
    regioes_intersected = [regiao.upper() for regiao in regioes_intersected]
    if label_regiao is not None:
        texto_label = 'REGIÃO {regiao} DO BRASIL'.format(regiao=' E '.join(regioes_intersected))
        regioes_onze = ['SUL', 'SUDESTE', 'CENTRO-OESTE']  # 11
        regioes_dez_one = ['NORDESTE', 'SUDESTE', 'CENTRO-OESTE']  # 10
        regioes_dez_two = ['NORTE', 'SUDESTE', 'CENTRO-OESTE']  # 10
        texto_label_font = label_regiao.font()
        if set(regioes_intersected) == set(regioes_onze):
            texto_label_font.setPointSize(11)
            label_regiao.setFont(texto_label_font)
        if (set(regioes_intersected) == set(regioes_dez_one)) or (set(regioes_intersected) == set(regioes_dez_two)):
            texto_label_font.setPointSize(10)
            label_regiao.setFont(texto_label_font)
        label_regiao.setText(texto_label)
        label_regiao.refresh()
