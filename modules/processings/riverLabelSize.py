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

Tamanho do nome de rio em pt a partir de medidas JA EM MM DE PAPEL, sem
dependencia do QGIS (testavel em Python puro).

- Fora de poligono (linha simples): tabela MTM pelo comprimento, 6 a 9 pt.
- Dentro de poligono: tabela MTM pelo comprimento, 7 a 16 pt, com teto pela
  LARGURA do rio no papel. Rio fino de nome grande (acima de 9 pt cujo teto
  e 9 ou menos) desce ao teto = maior entre a tabela "fora" e o maior tamanho
  cuja altura (pt x 0,3528 mm) cabe na largura. Rio largo que comporta mais
  de 9 pt fica com o tamanho do comprimento.
"""

PT_TO_MM = 0.3528
IN_POLYGON_SIZES = (6, 7, 8, 9, 10, 12, 14, 16)


def outPolySize(lengthMm):
    """Linha simples (situacao_em_poligono 1, NULL ou 9999)."""
    if lengthMm < 80:
        return 6
    elif lengthMm < 120:
        return 7
    elif lengthMm < 160:
        return 8
    return 9


def inPolySizeByLength(lengthMm):
    """Dentro de poligono (situacao_em_poligono 2, 3 ou 4), so pelo comprimento."""
    if lengthMm < 65:
        return 7
    elif lengthMm < 80:
        return 8
    elif lengthMm < 100:
        return 9
    elif lengthMm < 120:
        return 10
    elif lengthMm < 160:
        return 12
    elif lengthMm < 200:
        return 14
    return 16


def fitsWidthSize(widthMm):
    """Maior tamanho da tabela cuja altura cabe na largura do rio."""
    fits = [s for s in IN_POLYGON_SIZES if s * PT_TO_MM <= widthMm]
    return fits[-1] if fits else IN_POLYGON_SIZES[0]


def inPolySize(lengthMm, widthMm=None):
    """Dentro de poligono: comprimento, com o teto da largura quando conhecida."""
    size = inPolySizeByLength(lengthMm)
    if widthMm is None or size <= 9:
        return size
    ceiling = max(outPolySize(lengthMm), fitsWidthSize(widthMm))
    return ceiling if ceiling <= 9 else size
