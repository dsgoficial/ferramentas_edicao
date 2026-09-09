#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Testes do DMS (graus, minutos, segundos) do gerador de grade.

Rodam SEM QGIS e sem banco (o modulo so usa `math`), em menos de um segundo:

    cd modules/gridGenerator
    python -m unittest discover -s tests -v

O caso que deu origem a estes testes: numa carta 1:50.000 de oito folhas, a
folha cuja moldura reprojetada devolveu `ymax = -25.999999999999996` (um fio ao
norte de -26) fez o gerador de ticks de 1' marchar DOIS GRAUS para fora da
folha, 135 ticks por borda em vez de 15, e 196 cruzetas cairam fora das
molduras, uma delas a 166 km. A causa era o carry de `_normalize`, que soma no
grau sem olhar o sinal: o SINAL mora em `degrees` e a MAGNITUDE em `minutes` e
`seconds`, entao -25 graus 59' 60" tem de virar -26, nunca -24.
"""

import importlib.util
import math
import unittest
from pathlib import Path

# Carrega o modulo pelo CAMINHO, e nao por `from utils...`, porque o
# `utils/__init__.py` importa qgis.core e derrubaria um teste que existe
# justamente para rodar sem QGIS.
_ALVO = Path(__file__).resolve().parents[1] / "utils" / "lat_lon_coordinate_utils.py"
_SPEC = importlib.util.spec_from_file_location("lat_lon_coordinate_utils", _ALVO)
_MOD = importlib.util.module_from_spec(_SPEC)
_SPEC.loader.exec_module(_MOD)
DMS = _MOD.DMS


class TestDMSNormalizacaoComSinal(unittest.TestCase):
    """O carry de minutos e segundos anda na direcao da MAGNITUDE."""

    def test_carry_de_minutos_em_grau_negativo(self):
        """-25 graus 59' 60" e -26, nunca -24 (o defeito medido em campo)."""
        d = DMS(-25, 59, 60)
        self.assertEqual(d.degrees, -26)
        self.assertEqual(d.minutes, 0)
        self.assertAlmostEqual(d.to_decimal_degrees(), -26.0, places=9)

    def test_carry_de_segundos_em_grau_negativo(self):
        """-25 graus 59' 60.0" passa por dois carries seguidos."""
        d = DMS(-25, 59, 59.9999999999)
        self.assertAlmostEqual(d.to_decimal_degrees(), -26.0, places=8)

    def test_carry_de_minutos_em_grau_positivo_nao_regride(self):
        d = DMS(25, 59, 60)
        self.assertEqual(d.degrees, 26)
        self.assertEqual(d.minutes, 0)
        self.assertAlmostEqual(d.to_decimal_degrees(), 26.0, places=9)

    def test_minutos_negativos_em_grau_negativo(self):
        """Minuto negativo tira magnitude: -26 graus -1' e -25 graus 59'."""
        d = DMS(-26, -1, 0)
        self.assertAlmostEqual(d.to_decimal_degrees(), -(25 + 59 / 60), places=9)

    def test_minutos_negativos_em_grau_positivo_nao_regride(self):
        d = DMS(26, -1, 0)
        self.assertAlmostEqual(d.to_decimal_degrees(), 25 + 59 / 60, places=9)

    def test_grau_zero_negativo_nao_inventa_sinal(self):
        d = DMS(0, 59, 60)
        self.assertAlmostEqual(d.to_decimal_degrees(), 1.0, places=9)


class TestDMSIdaEVolta(unittest.TestCase):
    """O valor decimal que entra e o que sai, nos dois construtores."""

    VALORES = [
        # o insumo degenerado que quebrou em producao, e os vizinhos dele
        -25.999999999999996,
        -26.000000000000004,
        -25.499999999999996,
        -50.749999999999996,
        -50.750000000000004,
        # cantos das molduras 1:50.000 do bloco 1m Tres Barras
        -26.25,
        -26.0,
        -25.75,
        -25.5,
        -50.75,
        -50.5,
        -50.25,
        -50.0,
        # hemisferio norte e leste, para nao consertar um lado quebrando o outro
        25.999999999999996,
        26.0,
        4.5,
        -0.5,
        0.0,
    ]

    def test_from_decimal_degrees_ida_e_volta(self):
        for v in self.VALORES:
            with self.subTest(valor=v):
                self.assertAlmostEqual(
                    DMS.from_decimal_degrees(v).to_decimal_degrees(), v, places=9
                )

    def test_construtor_decimal_ida_e_volta(self):
        for v in self.VALORES:
            with self.subTest(valor=v):
                self.assertAlmostEqual(DMS(v).to_decimal_degrees(), v, places=9)

    def test_nunca_troca_o_hemisferio(self):
        """Ida e volta nao pode mudar o sinal, que e o estrago do defeito."""
        for v in self.VALORES:
            if v == 0:
                continue
            with self.subTest(valor=v):
                self.assertEqual(
                    math.copysign(1, DMS.from_decimal_degrees(v).to_decimal_degrees()),
                    math.copysign(1, v),
                )


class TestGeracaoDeTicksNaBorda(unittest.TestCase):
    """A borda de uma folha 1:50.000 tem 15 ticks de 1', nao 135."""

    # bbox da folha SG-22-Z-A-I-2 como o QGIS a devolve reprojetada para 4674
    XMIN, XMAX = -50.750000000000014, -50.49999999999999
    YMIN, YMAX = -26.250000000000004, -25.999999999999996

    def _ticks(self, inicio, fim, fixo, tipo):
        return list(
            DMS.generate_fixed_grid(
                DMS.from_decimal_degrees(inicio),
                DMS.from_decimal_degrees(fim),
                DMS(0, 1, 0),
                fixed_coordinate=fixo,
                grid_type=tipo,
            )
        )

    def test_borda_vertical_para_no_limite_da_folha(self):
        for fixo in (self.XMIN, self.XMAX):
            with self.subTest(lon=fixo):
                pts = self._ticks(self.YMIN, self.YMAX, fixo, "y")
                lats = [p[1].to_decimal_degrees() for p in pts]
                self.assertEqual(len(pts), 15)
                self.assertGreaterEqual(min(lats), self.YMIN - 1e-9)
                self.assertLessEqual(max(lats), self.YMAX + 1e-9)

    def test_borda_horizontal_para_no_limite_da_folha(self):
        for fixo in (self.YMIN, self.YMAX):
            with self.subTest(lat=fixo):
                pts = self._ticks(self.XMIN, self.XMAX, fixo, "x")
                lons = [p[0].to_decimal_degrees() for p in pts]
                self.assertEqual(len(pts), 15)
                self.assertGreaterEqual(min(lons), self.XMIN - 1e-9)
                self.assertLessEqual(max(lons), self.XMAX + 1e-9)


if __name__ == "__main__":
    unittest.main(verbosity=2)
