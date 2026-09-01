#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Testes da validacao/planejamento da exportacao de carta.

Rodam SEM QGIS e sem banco (a CLI so usa a biblioteca padrao), em menos de um
segundo:

    cd ferramentas_edicao_cli
    python -m unittest discover -s tests -v

Parte dos testes le o contrato do plugin instalado de verdade (produtos, schema,
prefixos). E de proposito: se o upstream mudar a forma do codigo, e aqui que a
quebra aparece, em vez de aparecer depois de horas de exportacao.
"""
import json
import os
import sys
import tempfile
import unittest
from contextlib import redirect_stdout
from io import StringIO
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

import carta  # noqa: E402
import ferramentas_edicao_cli as cli  # noqa: E402
import plugin_contract as pc  # noqa: E402

# Schema sintetico: exercita as regras sem depender de como o plugin esta hoje.
FAKE_FIELDS = [
    {"key": "tipo_produto", "type": "str", "children": None, "required": True},
    {"key": "inom", "type": "str", "children": None, "required": True},
    {"key": "opcional", "type": "str", "children": None, "required": False},
    {
        "key": "banco",
        "type": "dict",
        "required": True,
        "children": [
            {"key": "servidor", "type": "str", "children": None, "required": True},
            {"key": "porta", "type": "int", "children": None, "required": True},
        ],
    },
    {
        "key": "fases",
        "type": "list",
        "required": True,
        "children": [
            {"key": "nome", "type": "str", "children": None, "required": True},
        ],
    },
]


class TestContratoVivo(unittest.TestCase):
    """O contrato tem que sair do codigo do plugin, nao de copia."""

    def test_produtos_e_default(self):
        produtos, padrao = pc.product_choices()
        self.assertTrue(produtos)
        self.assertIn(padrao, produtos)

    def test_schema_cobre_todos_os_produtos_do_standalone(self):
        produtos, _ = pc.product_choices()
        schema = pc.json_schema()
        for produto in produtos:
            tipo, _versao = carta.split_choice(produto)
            self.assertIn(tipo, schema, f"{tipo} sem schema em jsonStructure.py")

    def test_prefixo_de_saida_para_cada_produto(self):
        prefixos = pc.export_name_prefixes()
        for tipo, (interno, _nome) in pc.product_internal_names().items():
            self.assertIn(interno, prefixos, f"{tipo} sem prefixo de arquivo")

    def test_licencas_e_nacionais(self):
        self.assertTrue(all(isinstance(v, str) for v in pc.license_values()))
        self.assertTrue(pc.national_only_products())

    def test_argumentos_do_standalone(self):
        flags = {f for spec in pc.standalone_arguments() for f in spec["flags"]}
        for esperado in ("-j", "-ef", "-l", "-s"):
            self.assertIn(esperado, flags)

    def test_mi_a_partir_do_inom(self):
        self.assertEqual(pc.mi_from_inom("SF-22-Y-D-II-4-SE"), "2757-4-SE")
        self.assertEqual(pc.mi_from_inom("SF-22-Y-D"), "496")
        # Folha na lista de excecao nao tem MI: o exportador cai no proprio INOM.
        self.assertIsNone(pc.mi_from_inom("NA-19-X-C-VI-3-NE"))
        self.assertIsNone(pc.mi_from_inom("nao-e-inom"))
        self.assertIsNone(pc.mi_from_inom(None))


class TestSchemaHelpers(unittest.TestCase):
    def test_split_choice(self):
        self.assertEqual(carta.split_choice("Carta Ortoimagem SARP 1.0"), ("Carta Ortoimagem SARP", "1.0"))

    def test_contract_index_e_linha(self):
        index = carta.contract_index(FAKE_FIELDS)
        self.assertIn("banco/porta", index)
        self.assertEqual(
            carta.contract_line(index["banco/porta"], "banco/porta"), "banco/porta: int, obrigatorio"
        )
        self.assertIn("(filhos: servidor, porta)", carta.contract_line(index["banco"], "banco"))


class TestChavesObrigatorias(unittest.TestCase):
    def test_bloqueia_no_topo(self):
        # Como no plugin, o dict inteiro ausente e acusado pelo pai, sem repetir os filhos.
        faltando = carta.blocking_missing_keys({"tipo_produto": "X", "inom": "I", "fases": []}, FAKE_FIELDS)
        self.assertEqual(faltando, {"banco"})

    def test_bloqueia_filho_de_dict_presente(self):
        data = {"tipo_produto": "X", "inom": "I", "fases": [], "banco": {"servidor": "s"}}
        self.assertEqual(carta.blocking_missing_keys(data, FAKE_FIELDS), {"banco/porta"})

    def test_filho_de_lista_nao_bloqueia_mas_e_reportado(self):
        data = {"tipo_produto": "X", "inom": "I", "banco": {"servidor": "s", "porta": 1}, "fases": [{}]}
        self.assertEqual(carta.blocking_missing_keys(data, FAKE_FIELDS), set())
        self.assertEqual(carta.missing_required_keys(data, FAKE_FIELDS), {"fases/nome"})

    def test_lista_ausente_nao_levanta(self):
        # No plugin, faltar a lista inteira levanta KeyError dentro do relator de erro.
        data = {"tipo_produto": "X", "inom": "I", "banco": {"servidor": "s", "porta": 1}}
        self.assertIn("fases", carta.missing_required_keys(data, FAKE_FIELDS))

    def test_center_dispensa_inom(self):
        data = {"tipo_produto": "X", "center": {}, "banco": {"servidor": "s", "porta": 1}, "fases": []}
        self.assertEqual(carta.blocking_missing_keys(data, FAKE_FIELDS), set())


class TestPlaceholders(unittest.TestCase):
    def test_acha_em_dict_e_lista(self):
        achados = carta.find_placeholders({"nome": "{{NOME}}", "fases": [{"ano": "{{ANO}}"}], "ok": "x"})
        self.assertEqual(
            sorted(p for p, _ in achados), ["fases[0]/ano", "nome"]
        )


class TestNomeDeSaida(unittest.TestCase):
    CONTRATO = {
        "internos": {"Carta Topográfica": ("topoMap", "Carta Topográfica"),
                     "Carta Ortoimagem SARP": ("omMap", "Carta Especial")},
        "prefixos": {"topoMap": "Carta_Topografica", "omMap": "Carta_Especial"},
    }

    def test_por_inom_usa_o_mi(self):
        base, _ = carta.predicted_basename(
            {"tipo_produto": "Carta Topográfica", "inom": "SF-22-Y-D-II-4-SE"}, self.CONTRATO
        )
        self.assertEqual(base, "Carta_Topografica_2757-4-SE")

    def test_sem_mi_cai_no_inom(self):
        base, _ = carta.predicted_basename(
            {"tipo_produto": "Carta Topográfica", "inom": "NA-19-X-C-VI-3-NE"}, self.CONTRATO
        )
        self.assertEqual(base, "Carta_Topografica_NA-19-X-C-VI-3-NE")

    def test_center_precisa_de_escala_numerica(self):
        data = {"tipo_produto": "Carta Topográfica", "center": {"latitude": -30.0, "longitude": -53.0},
                "nome": "AREA", "escala": 25000}
        self.assertEqual(
            carta.predicted_basename(data, self.CONTRATO)[0], "Carta_Topografica_Especial_25k_AREA"
        )
        data["escala"] = "25000"
        base, motivo = carta.predicted_basename(data, self.CONTRATO)
        self.assertIsNone(base)
        self.assertIn("NUMERO", motivo)

    def test_poligono_usa_o_nome_e_sanitiza(self):
        base, _ = carta.predicted_basename(
            {"tipo_produto": "Carta Ortoimagem SARP", "poligono": "POLYGON(...)", "nome": "1o/CGEO"},
            self.CONTRATO,
        )
        self.assertEqual(base, "Carta_Especial_1o_CGEO")

    def test_sem_recorte_nao_da_para_prever(self):
        base, motivo = carta.predicted_basename({"tipo_produto": "Carta Topográfica"}, self.CONTRATO)
        self.assertIsNone(base)
        self.assertIn("inom", motivo)

    def test_saidas_por_flag(self):
        self.assertEqual(carta.predicted_outputs("X"), ["X.pdf"])
        self.assertEqual(
            carta.predicted_outputs("X", tiff=True, tiff_sem_grid=True),
            ["X.pdf", "X.tif", "X_sem_grid.tif"],
        )


class TestComando(unittest.TestCase):
    def test_ordem_e_mascara(self):
        cmd = carta.build_export_command(
            "setup_env.bat", "C:/QGIS", "Carta Topográfica 2.0", "C:/saida",
            ["a.json", "b.json"], "usuario", "segredo", tiff=True,
        )
        self.assertEqual(cmd[:4], ["cmd", "/c", "setup_env.bat", "C:/QGIS"])
        self.assertIn("-et", cmd)
        # -j tem nargs='+' no standalone: precisa ser o ultimo, senao engole a flag seguinte.
        self.assertEqual(cmd[cmd.index("-j") + 1:], ["a.json", "b.json"])
        self.assertNotIn("segredo", carta.mask_command(cmd))
        self.assertIn("segredo", cmd)


class TestValidacaoCompleta(unittest.TestCase):
    """Valida contra o contrato REAL do plugin instalado."""

    @classmethod
    def setUpClass(cls):
        cls.contrato = pc.load_contract()
        cls.tmp = tempfile.TemporaryDirectory()
        cls.mde = Path(cls.tmp.name) / "mde.tif"
        cls.mde.write_bytes(b"")

    @classmethod
    def tearDownClass(cls):
        cls.tmp.cleanup()

    def carta_valida(self):
        return {
            "tipo_produto": "Carta Topográfica",
            "versao_produto": "2.0",
            "inom": "SF-22-Y-D-II-4-SE",
            "nome": "TESTE",
            "licenca_produto": self.contrato["licencas"][0],
            "mde_diagrama_elevacao": {"caminho_mde": str(self.mde), "epsg": "4326"},
            "banco": {"servidor": "h", "porta": 5432, "nome": "b"},
            "fases": [{"nome": "Edição", "executantes": [{"nome": "1 CGEO", "ano": "2026"}]}],
            "info_tecnica": {
                "data_criacao": "2026-07-25",
                "pec_planimetrico": "A",
                "pec_altimetrico": "A",
                "datum_vertical": "Imbituba",
                "origem_dados_altimetricos": "IEDE-RS",
                "dados_terceiros": [],
            },
        }

    def validar(self, data, **kwargs):
        return carta.validate_carta("x.json", data, self.contrato, **kwargs)

    def mensagens(self, resultado, nivel="erro"):
        return [f.message for f in resultado["achados"] if f.level == nivel]

    def test_json_valido_passa_e_preve_a_saida(self):
        resultado = self.validar(self.carta_valida())
        self.assertFalse(carta.has_errors(resultado), self.mensagens(resultado))
        self.assertEqual(resultado["saidas"], ["Carta_Topografica_2757-4-SE.pdf"])
        self.assertEqual(resultado["tipo"], "Carta Topográfica 2.0")

    def test_dict_ausente_nao_repete_os_filhos_no_relatorio(self):
        data = self.carta_valida()
        del data["banco"]
        mensagens = self.mensagens(self.validar(data)) + self.mensagens(self.validar(data), "aviso")
        self.assertEqual([m for m in mensagens if "banco" in m], ["falta a chave obrigatoria banco"])

    def test_sem_tipo_produto(self):
        data = self.carta_valida()
        del data["tipo_produto"]
        self.assertIn("tipo_produto", self.mensagens(self.validar(data))[0])

    def test_tipo_produto_desconhecido(self):
        data = self.carta_valida()
        data["tipo_produto"] = "Carta Inventada"
        self.assertTrue(carta.has_errors(self.validar(data)))

    def test_territorio_internacional_so_em_militar(self):
        data = self.carta_valida()
        data["territorio_internacional"] = True
        self.assertTrue(any("territorio_internacional" in m for m in self.mensagens(self.validar(data))))

    def test_mde_inexistente_e_com_espaco(self):
        data = self.carta_valida()
        data["mde_diagrama_elevacao"]["caminho_mde"] = str(self.mde) + "_nao_existe"
        self.assertTrue(any("MDE" in m for m in self.mensagens(self.validar(data))))
        data["mde_diagrama_elevacao"]["caminho_mde"] = str(Path(self.tmp.name) / "com espaco.tif")
        self.assertTrue(any("espaco" in m for m in self.mensagens(self.validar(data))))

    def test_imagem_xyz_nao_e_cobrada_em_disco(self):
        # O getRasterLayerByType do plugin trata type=xyz como camada wms, sem tocar
        # o disco. Cobrar os.path.exists dela reprovava json que o plugin exporta.
        data = self.carta_valida()
        data["imagens"] = [
            {
                "caminho_imagem": (
                    "type=xyz&url=http://ecn.t3.tiles.virtualearth.net/tiles/"
                    "a%7Bq%7D.jpeg?g%3D0%26dir%3Ddir_n&zmax=18&zmin=0"
                ),
                "epsg": "3857",
            }
        ]
        resultado = self.validar(data)
        self.assertFalse(carta.has_errors(resultado), self.mensagens(resultado))

    def test_imagem_wms_nao_e_cobrada_em_disco(self):
        data = self.carta_valida()
        data["imagens"] = [
            {"caminho_imagem": "http://servidor/wms?request=GetCapabilities", "epsg": "4326"}
        ]
        self.assertFalse(carta.has_errors(self.validar(data)))

    def test_xyz_fora_do_padrao_do_plugin_e_erro(self):
        # Sem zmax/zmin a regex do plugin nao casa, getRasterLayerByType devolve None
        # e validate_rasters_against_extents quebra em None.isValid().
        data = self.carta_valida()
        data["imagens"] = [
            {"caminho_imagem": "type=xyz&url=http://servidor/{z}/{x}/{y}.png", "epsg": "3857"}
        ]
        self.assertTrue(any("nao casa o padrao" in m for m in self.mensagens(self.validar(data))))

    def test_imagem_em_arquivo_continua_cobrada(self):
        data = self.carta_valida()
        data["imagens"] = [{"caminho_imagem": str(self.mde) + "_nao_existe", "epsg": "4326"}]
        self.assertTrue(any("caminho_imagem" in m for m in self.mensagens(self.validar(data))))

    def test_tipo_incompativel_com_o_t(self):
        resultado = self.validar(self.carta_valida(), tipo="Carta Ortoimagem 3.0")
        self.assertTrue(any("nao casa" in m for m in self.mensagens(resultado)))

    def test_licenca_invalida_e_aviso_nao_erro(self):
        data = self.carta_valida()
        data["licenca_produto"] = "CC-BY 4.0"
        resultado = self.validar(data)
        self.assertFalse(carta.has_errors(resultado))
        self.assertTrue(any("licenca_produto" in m for m in self.mensagens(resultado, "aviso")))

    def test_colisao_com_arquivo_existente(self):
        with tempfile.TemporaryDirectory() as saida:
            (Path(saida) / "Carta_Topografica_2757-4-SE.pdf").write_bytes(b"")
            resultado = self.validar(self.carta_valida(), saida=saida)
            self.assertEqual(resultado["existentes"], ["Carta_Topografica_2757-4-SE.pdf"])


class TestCliExport(unittest.TestCase):
    """Portoes do comando export, ate o dry-run (nao chama o QGIS)."""

    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.dir = Path(self.tmp.name)
        (self.dir / "saida").mkdir()
        mde = self.dir / "mde.tif"
        mde.write_bytes(b"")
        base = {
            "tipo_produto": "Carta Topográfica",
            "versao_produto": "2.0",
            "inom": "SF-22-Y-D-II-4-SE",
            "nome": "TESTE",
            "mde_diagrama_elevacao": {"caminho_mde": str(mde), "epsg": "4326"},
            "banco": {"servidor": "h", "porta": 5432, "nome": "b"},
            "fases": [{"nome": "Edição", "executantes": [{"nome": "1 CGEO", "ano": "2026"}]}],
            "info_tecnica": {
                "data_criacao": "2026-07-25", "pec_planimetrico": "A", "pec_altimetrico": "A",
                "datum_vertical": "Imbituba", "origem_dados_altimetricos": "IEDE-RS",
                "dados_terceiros": [],
            },
        }
        for nome in ("a.json", "b.json"):
            (self.dir / nome).write_text(json.dumps(base, ensure_ascii=False), encoding="utf-8")
        self.env = dict(os.environ)
        os.environ["FERRAMENTAS_EDICAO_DB_USER"] = "u"
        os.environ["FERRAMENTAS_EDICAO_DB_PASSWORD"] = "p"
        os.environ.setdefault("FERRAMENTAS_EDICAO_QGIS_DIR", str(self.dir))

    def tearDown(self):
        os.environ.clear()
        os.environ.update(self.env)
        self.tmp.cleanup()

    def run_cli(self, argv):
        buffer = StringIO()
        with redirect_stdout(buffer):
            code = cli.main(argv)
        return code, buffer.getvalue()

    def test_bloqueia_duas_folhas_com_o_mesmo_arquivo(self):
        code, saida = self.run_cli(
            ["export", str(self.dir / "a.json"), str(self.dir / "b.json"),
             "--saida", str(self.dir / "saida"), "--dry-run"]
        )
        self.assertEqual(code, 1)
        self.assertIn("mesmo arquivo", saida)

    def test_dry_run_nao_escreve_nada(self):
        code, saida = self.run_cli(
            ["export", str(self.dir / "a.json"), "--saida", str(self.dir / "saida"), "--dry-run"]
        )
        self.assertEqual(code, 0)
        self.assertIn("dry-run", saida)
        self.assertEqual(list((self.dir / "saida").iterdir()), [])

    def test_bloqueia_sobrescrita(self):
        (self.dir / "saida" / "Carta_Topografica_2757-4-SE.pdf").write_bytes(b"")
        code, saida = self.run_cli(
            ["export", str(self.dir / "a.json"), "--saida", str(self.dir / "saida"), "--dry-run"]
        )
        self.assertEqual(code, 1)
        self.assertIn("--sobrescrever", saida)

    def test_sem_credencial_bloqueia(self):
        del os.environ["FERRAMENTAS_EDICAO_DB_PASSWORD"]
        code, saida = self.run_cli(
            ["export", str(self.dir / "a.json"), "--saida", str(self.dir / "saida"), "--dry-run"]
        )
        self.assertEqual(code, 1)
        self.assertIn("credenciais", saida)

    def test_tipo_fora_do_contrato_e_recusado(self):
        # Sem acento, por exemplo: o standalone so aceita a string exata dos choices.
        with self.assertRaises(SystemExit):
            self.run_cli(["validate", str(self.dir / "a.json"), "--tipo", "Carta Topografica 2.0"])

    def test_validate_em_pasta(self):
        code, saida = self.run_cli(["validate", str(self.dir), "--json"])
        self.assertEqual(code, 0)
        self.assertEqual(len(json.loads(saida)), 2)


if __name__ == "__main__":
    unittest.main()
