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
import datetime
import os
import xml.etree.ElementTree as et
from pathlib import Path

from qgis.PyQt.QtCore import Qt
from qgis.PyQt.QtGui import QFont
from qgis.core import (
    QgsFeature,
    QgsPrintLayout,
    QgsCoordinateTransform,
    QgsCoordinateReferenceSystem,
    QgsProject,
    QgsGeometry,
    QgsLayoutItemLabel,
    QgsLayoutItemManualTable,
    QgsLayoutPoint,
    QgsLayoutSize,
    QgsLayoutTable,
    QgsRenderContext,
    QgsTableCell,
    QgsTextFormat,
)

from ....config.configDefaults import (
    SEM_DADO,
    TEMAS_CARTA_ORTO_MILITAR,
    TEMAS_CARTA_TOPO_MILITAR,
)
from ....config.logging_setup import get_logger
from ....interfaces.iComponent import IComponent
from .buildContext import BuildContext
from .componentUtils import ComponentUtils


class Table(IComponent, ComponentUtils):
    def __init__(self, *args, **kwargs) -> None:
        self.pathBrazilLayer = (
            Path(__file__).parent.parent
            / "resources"
            / "limits"
            / "2025"
            / "Brasil_2025.shp"
        )

    def build(self, context: BuildContext):
        composition = context.composition
        data = context.data
        mapAreaFeature = context.mapAreaFeature
        # Na carta militar (produto expedito, recortado da base contínua) o quadro
        # de fases não descreve o produto: não há uma passada de produção, e sim um
        # recorte instantâneo de feições de datas e fontes heterogêneas. O mesmo
        # espaço passa a exibir o quadro de atualidade e confiabilidade. Sem o
        # dado no JSON, mantém-se o quadro de fases.
        if self.isMilitaryProduct(data) and data.get("atualidade_confiabilidade"):
            self.customAtualidadeConfiabilidade(composition, data)
        else:
            self.customEtapa(composition, data.get("fases", ()), data.get("tipo_produto", None))
        self.customSensores(composition, data.get("sensores", ()), data.get("tipo_produto", None))
        self.customTecnicalInfo(composition, data, mapAreaFeature)
        self.omInfoTable(composition, data, mapAreaFeature)
        return []

    def updateComposition(self, *args, **kwargs):
        pass

    def replaceStr(self, original_text, dict_replace):
        for variavel, valor in dict_replace.items():
            original_text = original_text.replace(variavel, str(valor))
        return original_text

    @staticmethod
    def generateElement(parent, tag, attrs={}, text=None):
        element = et.SubElement(parent, tag, attrs)
        if text:
            element.text = text
        return element

    def customEtapa(self, composition, etapas=[], tipo_produto = None):
        frame = composition.itemById("label_tabela_etapas")
        if frame is None:
            return
        manualTable = frame.multiFrame()
        if not isinstance(manualTable, QgsLayoutItemManualTable):
            return

        main_title_fmt = QgsTextFormat()
        main_title_fmt.setFont(QFont("Noto Sans"))
        main_title_fmt.setSize(10)
        main_title_fmt.setForcedBold(True)

        title_fmt = QgsTextFormat()
        title_fmt.setFont(QFont("Noto Sans"))
        title_fmt.setSize(7)
        title_fmt.setForcedBold(True)

        data_fmt = QgsTextFormat()
        data_fmt.setFont(QFont("Noto Sans"))
        data_fmt.setSize(7)

        def mc(text, fmt, align=Qt.AlignmentFlag.AlignLeft, col_span=1, row_span=1):
            c = QgsTableCell(str(text) if text is not None else "")
            c.setTextFormat(fmt)
            c.setHorizontalAlignment(align)
            if col_span != 1 or row_span != 1:
                c.setSpan(row_span, col_span)
            return c

        rows = []

        # Title row spanning 3 columns
        rows.append([
            mc("FASES DA PRODUÇÃO", main_title_fmt, Qt.AlignmentFlag.AlignCenter, col_span=3),
            mc("", main_title_fmt),
            mc("", main_title_fmt),
        ])

        # Column headers row
        rows.append([
            mc("FASES", title_fmt, Qt.AlignmentFlag.AlignCenter),
            mc("EXECUTANTES", title_fmt, Qt.AlignmentFlag.AlignCenter),
            mc("DATAS", title_fmt, Qt.AlignmentFlag.AlignCenter),
        ])

        for etapa in etapas:
            nome = etapa["nome"]
            subetapas = etapa["executantes"]
            n = len(subetapas)
            for i, subetapa in enumerate(subetapas):
                row = []
                if i == 0:
                    row.append(mc(nome, data_fmt, row_span=n))
                else:
                    row.append(mc("", data_fmt))
                row.append(mc(subetapa["nome"], data_fmt))
                row.append(mc(str(subetapa["ano"]), data_fmt, Qt.AlignmentFlag.AlignCenter))
                rows.append(row)

        manualTable.setTableContents(rows)
        manualTable.setColumnWidths([45.1, 52.8, 12.1])
        if tipo_produto == "Carta Ortoimagem SARP":
            manualTable.setColumnWidths([42.189, 49.392, 11.319])
            manualTable.setRowHeights([12.0] + [0.0] * (len(rows) - 1))
        manualTable.setIncludeTableHeader(False)
        manualTable.setShowGrid(True)
        manualTable.setGridStrokeWidth(0.1)
        manualTable.setCellMargin(0.5)
        manualTable.setWrapBehavior(QgsLayoutTable.WrapBehavior.WrapText)
        manualTable.refresh()

    @staticmethod
    def isMilitaryProduct(data: dict) -> bool:
        return data.get("tipo_produto") in (
            "Carta Topográfica Militar",
            "Carta Ortoimagem Militar",
        )


    def customAtualidadeConfiabilidade(self, composition: QgsPrintLayout, data: dict):
        """Preenche, no espaço do quadro de fases, o quadro de atualidade e
        confiabilidade da carta militar: por tema, o ano predominante e a
        confiabilidade predominante das feições daquele recorte. Alimentado pela
        chave "atualidade_confiabilidade" do JSON; a situação da base que encabeça
        o quadro é a data do dado, ou seja, a "info_tecnica.data_criacao".

        A lista de temas é FIXA por produto e sempre sai por inteiro, em duas
        colunas: 16 temas na Topográfica Militar (TEMAS_CARTA_TOPO_MILITAR) e 10
        na Ortoimagem Militar (TEMAS_CARTA_ORTO_MILITAR), que tem menos classes
        no modelo. Tema previsto e ausente do JSON sai com SEM_DADO, o que
        declara "não apurado". Tema do JSON fora da lista vai para o log.

        As medidas saem de cálculo de pior hipótese, medido por render headless
        (QGIS 4.2, Noto Sans): tema mais longo "Energia e Comunicações" (28,6 mm
        a 7 pt) e rótulo de confiabilidade mais longo "Indeterminada" (17,5 mm).
        O frame label_tabela_etapas mais apertado é o da 250k, 110 x 41 mm, e o
        quadro de 16 temas fecha em 109,5 x 39,7 mm. Coluna estreita demais NÃO
        quebra a linha, CORTA o texto: mexer em largura, corpo ou margem exige
        refazer a medida.

        Args:
            composition: QgsPrintLayout
            data: dict holding the map info
        """
        frame = composition.itemById("label_tabela_etapas")
        if frame is None:
            return
        manualTable = frame.multiFrame()
        if not isinstance(manualTable, QgsLayoutItemManualTable):
            return

        main_title_fmt = QgsTextFormat()
        main_title_fmt.setFont(QFont("Noto Sans"))
        main_title_fmt.setSize(10)
        main_title_fmt.setForcedBold(True)

        title_fmt = QgsTextFormat()
        title_fmt.setFont(QFont("Noto Sans"))
        title_fmt.setSize(7)
        title_fmt.setForcedBold(True)

        data_fmt = QgsTextFormat()
        data_fmt.setFont(QFont("Noto Sans"))
        data_fmt.setSize(7)

        def mc(text, fmt, align=Qt.AlignmentFlag.AlignLeft, col_span=1, row_span=1):
            c = QgsTableCell(str(text) if text is not None else "")
            c.setTextFormat(fmt)
            c.setHorizontalAlignment(align)
            if col_span != 1 or row_span != 1:
                c.setSpan(row_span, col_span)
            return c

        def spanRow(text, fmt, nCols):
            return [
                mc(text, fmt, Qt.AlignmentFlag.AlignCenter, col_span=nCols)
            ] + [mc("", fmt) for _ in range(nCols - 1)]

        def cabecalho(nBlocos):
            row = []
            for _ in range(nBlocos):
                row += [
                    mc("TEMA", title_fmt, Qt.AlignmentFlag.AlignCenter),
                    mc("ANO", title_fmt, Qt.AlignmentFlag.AlignCenter),
                    mc("CONFIAB.", title_fmt, Qt.AlignmentFlag.AlignCenter),
                ]
            return row

        def celulas(tema, ano, confiab):
            return [
                mc(tema, data_fmt),
                mc(ano, data_fmt, Qt.AlignmentFlag.AlignCenter),
                mc(confiab, data_fmt, Qt.AlignmentFlag.AlignCenter),
            ]

        informado = self.indexarTemas(data.get("atualidade_confiabilidade", ()))
        temasFixos = (
            TEMAS_CARTA_ORTO_MILITAR
            if data.get("tipo_produto") == "Carta Ortoimagem Militar"
            else TEMAS_CARTA_TOPO_MILITAR
        )
        metade = len(temasFixos) // 2

        rows = [
            spanRow("ATUALIDADE E CONFIABILIDADE", main_title_fmt, 6),
            cabecalho(2),
        ]
        for i in range(metade):
            row = []
            for tema in (temasFixos[i], temasFixos[i + metade]):
                dados = informado.get(tema.strip().casefold(), {})
                row += celulas(
                    tema,
                    dados.get("ano_predominante") or SEM_DADO,
                    dados.get("confiabilidade") or SEM_DADO,
                )
            rows.append(row)
        self.avisarTemasForaDaLista(informado, temasFixos, data.get("tipo_produto", ""))

        manualTable.setTableContents(rows)
        manualTable.setColumnWidths([28.8, 6.2, 17.6] * 2)
        manualTable.setIncludeTableHeader(False)
        manualTable.setShowGrid(True)
        manualTable.setGridStrokeWidth(0.1)
        manualTable.setCellMargin(0.3)
        manualTable.setWrapBehavior(QgsLayoutTable.WrapBehavior.WrapText)
        manualTable.refresh()

    @staticmethod
    def indexarTemas(temas) -> dict:
        """Indexa as entradas de atualidade do JSON pelo nome do tema, para
        casar com a lista fixa sem depender de caixa alta nem de espaço sobrando.
        """
        return {
            str(t.get("tema", "")).strip().casefold(): t
            for t in temas
            if t.get("tema")
        }

    @staticmethod
    def avisarTemasForaDaLista(informado: dict, temasFixos, tipoProduto: str) -> None:
        """Tema que o JSON traz e a lista fixa não prevê não cabe na folha. Ele
        é descartado, e descarte em silêncio é o que não se admite: registra-se
        no log do QGIS para quem gerou o JSON ver.
        """
        previstos = {t.strip().casefold() for t in temasFixos}
        sobra = sorted(set(informado) - previstos)
        if not sobra:
            return
        nomes = ", ".join(informado[chave].get("tema", "") for chave in sobra)
        get_logger(__name__).warning(
            f"atualidade_confiabilidade: tema fora da lista fixa da {tipoProduto}, "
            f"não impresso na folha: {nomes}"
        )

    def customSensores(self, composition: QgsPrintLayout, sensors: dict, tipo_produto=None):
        frame = composition.itemById("label_tabela_info_ortoimagem")
        if frame is None:
            return
        manualTable = frame.multiFrame()
        if not isinstance(manualTable, QgsLayoutItemManualTable):
            return

        nSensors = len(sensors)

        main_title_fmt = QgsTextFormat()
        main_title_fmt.setFont(QFont("Noto Sans"))
        main_title_fmt.setSize(10)
        main_title_fmt.setForcedBold(True)

        header_fmt = QgsTextFormat()
        header_fmt.setFont(QFont("Noto Sans"))
        header_fmt.setSize(7)
        header_fmt.setForcedBold(True)

        data_fmt = QgsTextFormat()
        data_fmt.setFont(QFont("Noto Sans"))
        data_fmt.setSize(7)

        def mc(text, fmt, align=Qt.AlignmentFlag.AlignLeft, col_span=1, row_span=1):
            c = QgsTableCell(str(text) if text is not None else "")
            c.setTextFormat(fmt)
            c.setHorizontalAlignment(align)
            if col_span != 1 or row_span != 1:
                c.setSpan(row_span, col_span)
            return c

        rows = []

        if nSensors == 1:
            sensor = sensors[0]
            rows.append([
                mc("INFORMAÇÕES TÉCNICAS DA ORTOIMAGEM", main_title_fmt, Qt.AlignmentFlag.AlignCenter, col_span=2),
                mc("", main_title_fmt),
            ])
            rows.append([
                mc("Sistema sensor", data_fmt, row_span=3),
                mc(f"Tipo de sensor: {sensor['tipo']}", data_fmt),
            ])
            rows.append([mc("", data_fmt), mc(f"Tipo de plataforma: {sensor['plataforma']}", data_fmt)])
            rows.append([mc("", data_fmt), mc(f"Nome: {sensor['nome']}", data_fmt)])
            rows.append([
                mc("Características da imagem", data_fmt, row_span=3),
                mc(f"Resolução espacial: {sensor['resolucao']}", data_fmt),
            ])
            rows.append([mc("", data_fmt), mc(f"Bandas utilizadas: {sensor['bandas']}", data_fmt)])
            rows.append([mc("", data_fmt), mc(f"Nível do produto: {sensor['nivel_produto']}", data_fmt)])
            manualTable.setColumnWidths([44.0, 66.0])
            if tipo_produto == "Carta Ortoimagem SARP":
                manualTable.setColumnWidths([41.6, 62.4])
        else:
            n_cols = 6
            rows.append(
                [mc("INFORMAÇÕES TÉCNICAS DA ORTOIMAGEM", main_title_fmt, Qt.AlignmentFlag.AlignCenter, col_span=n_cols)]
                + [mc("", main_title_fmt)] * (n_cols - 1)
            )
            rows.append([
                mc("Sistema sensor", header_fmt, Qt.AlignmentFlag.AlignCenter, col_span=3),
                mc("", header_fmt), mc("", header_fmt),
                mc("Imagem", header_fmt, Qt.AlignmentFlag.AlignCenter, col_span=3),
                mc("", header_fmt), mc("", header_fmt),
            ])
            rows.append([
                mc("Nome", header_fmt, Qt.AlignmentFlag.AlignCenter),
                mc("Tipo", header_fmt, Qt.AlignmentFlag.AlignCenter),
                mc("Plataforma", header_fmt, Qt.AlignmentFlag.AlignCenter),
                mc("Res. espacial", header_fmt, Qt.AlignmentFlag.AlignCenter),
                mc("Bandas", header_fmt, Qt.AlignmentFlag.AlignCenter),
                mc("Nível do produto", header_fmt, Qt.AlignmentFlag.AlignCenter),
            ])
            for sensor in sensors[:3]:
                rows.append([
                    mc(sensor["nome"], data_fmt, Qt.AlignmentFlag.AlignCenter),
                    mc(sensor["tipo"], data_fmt, Qt.AlignmentFlag.AlignCenter),
                    mc(sensor["plataforma"], data_fmt, Qt.AlignmentFlag.AlignCenter),
                    mc(sensor["resolucao"], data_fmt, Qt.AlignmentFlag.AlignCenter),
                    mc(sensor["bandas"], data_fmt, Qt.AlignmentFlag.AlignCenter),
                    mc(sensor["nivel_produto"], data_fmt, Qt.AlignmentFlag.AlignCenter),
                ])
            col_w = round(110.0 / n_cols, 2)
            if tipo_produto == "Carta Ortoimagem SARP":
                col_w = 99.6 / n_cols
            manualTable.setColumnWidths([col_w] * n_cols)

        manualTable.setTableContents(rows)
        if tipo_produto == "Carta Ortoimagem SARP":
            manualTable.setRowHeights([12.0] + [0.0] * (len(rows) - 1))
        manualTable.setIncludeTableHeader(False)
        manualTable.setShowGrid(True)
        manualTable.setGridStrokeWidth(0.1)
        manualTable.setCellMargin(0.5)
        manualTable.setWrapBehavior(QgsLayoutTable.WrapBehavior.WrapText)
        manualTable.refresh()

    def customTecnicalInfo(
        self, composition: QgsPrintLayout, data: dict, mapAreaFeature: QgsFeature
    ):
        frame = composition.itemById("label_tabela_info_carta")
        if frame is None:
            return
        manualTable = frame.multiFrame()
        if not isinstance(manualTable, QgsLayoutItemManualTable):
            return

        equidistancia = data.get("equidistancia")
        displayAuxContour = data.get("exibirAuxiliar")
        hemisphere = data.get("hemisphere")
        timeZone = data.get("timeZone")
        tecnicalInfo: dict = data.get("info_tecnica")
        isInternational = data.get("territorio_internacional")
        isOmMap = bool(data.get("poligono"))

        hemisphere_str = "Norte" if hemisphere == "N" else "Sul"
        falseNorth = "+ 0" if hemisphere_str == "Norte" else "+ 10.000"
        centralMeridian = -180 + (int(timeZone) - 1) * 6 + 3
        curveData = [int(equidistancia / 2), int(equidistancia), int(equidistancia) * 5]
        position = "W" if centralMeridian < 0 else "E"
        thirdPartyData = tecnicalInfo.get("dados_terceiros", ())
        lenThirdData = 3 + len(thirdPartyData)
        intersectionStatus = self.getIntersectionStatus(mapAreaFeature)

        main_title_fmt = QgsTextFormat()
        main_title_fmt.setFont(QFont("Noto Sans"))
        main_title_fmt.setSize(10)
        main_title_fmt.setForcedBold(True)

        title_fmt = QgsTextFormat()
        title_fmt.setFont(QFont("Noto Sans"))
        title_fmt.setSize(7)
        title_fmt.setForcedBold(True)

        main_fmt = QgsTextFormat()
        main_fmt.setFont(QFont("Noto Sans"))
        main_fmt.setSize(7)

        obs_fmt = QgsTextFormat()
        obs_fmt.setFont(QFont("Noto Sans"))
        obs_fmt.setSize(6)

        def mc(text, fmt, align=Qt.AlignmentFlag.AlignLeft, col_span=1, row_span=1):
            c = QgsTableCell(str(text) if text is not None else "")
            c.setTextFormat(fmt)
            c.setHorizontalAlignment(align)
            if col_span != 1 or row_span != 1:
                c.setSpan(row_span, col_span)
            return c

        def ec(fmt=None):
            return mc("", fmt or main_fmt)

        rows = []

        # Title spanning 2 columns
        rows.append([
            mc("INFORMAÇÕES TÉCNICAS DO PRODUTO", main_title_fmt, Qt.AlignmentFlag.AlignCenter, col_span=2),
            ec(main_title_fmt),
        ])

        rows.append([mc("Projeção", main_fmt), mc("Universal Transversa de Mercator", main_fmt)])

        rows.append([mc("Origem UTM", main_fmt, row_span=2), mc(f"Hemisfério {hemisphere_str}. Equador: {falseNorth} Km", main_fmt)])
        rows.append([ec(), mc(f"Zona {timeZone}. Meridiano Central {centralMeridian} º {position} Gr.: + 500 Km", main_fmt)])

        if tecnicalInfo.get("datum_vertical"):
            rows.append([mc("Datum vertical", main_fmt), mc(tecnicalInfo.get("datum_vertical"), main_fmt)])

        rows.append([mc("Datum horizontal", main_fmt), mc("SIRGAS2000 (Época 2000.4)", main_fmt)])

        if not isOmMap:
            texto_equidistancia = f"Mestra: {curveData[2]} m; Normal: {curveData[1]} m"
            if displayAuxContour == 1:
                texto_equidistancia += f"; Auxiliar: {curveData[0]} m"
            rows.append([mc("Equidistância das curvas de nível", main_fmt), mc(texto_equidistancia, main_fmt)])

        rows.append([mc("Data de Criação", main_fmt), mc(tecnicalInfo.get("data_criacao"), main_fmt)])
        rows.append([mc("Data de Edição", main_fmt), mc(self.getDataEdicao(), main_fmt)])
        rows.append([mc("Erro gráfico", main_fmt), mc("0,2 mm na escala", main_fmt)])

        rows.append([mc("Padrão de Exatidão Cartográfica (PEC)", main_fmt, row_span=2), mc(f'PEC Planimétrico: {tecnicalInfo.get("pec_planimetrico")}', main_fmt)])
        rows.append([ec(), mc(f'PEC Altimétrico: {tecnicalInfo.get("pec_altimetrico")}', main_fmt)])

        rows.append([mc("Especificação técnica de representação", main_fmt), mc(tecnicalInfo.get("especificacao_representacao", "Norma da Especificação Técnica para Representação de Dados Geoespaciais versão 1.0 (EB80-N-72.006)"), main_fmt)])
        rows.append([mc("Origem dos dados altimétricos", main_fmt), mc(tecnicalInfo.get("origem_dados_altimetricos"), main_fmt)])

        if isInternational:
            if intersectionStatus in ("inside", "intersects"):
                limites_int = "Limites internacionais: CBDL* e GADM 4.1"
                limites_est = "Limites estaduais e municipais: IBGE* / 2025 e GADM 4.1"
            else:
                limites_int = "Limites internacionais: GADM 4.1"
                limites_est = "Limites estaduais e municipais: GADM 4.1"
        else:
            limites_int = "Limites internacionais: CBDL*"
            limites_est = "Limites estaduais e municipais: IBGE* / 2025"

        rows.append([mc("Origem dos dados geoespaciais fornecidos por terceiros", main_fmt, row_span=lenThirdData), mc(limites_int, main_fmt)])
        rows.append([ec(), mc(limites_est, main_fmt)])
        for info in thirdPartyData:
            rows.append([ec(), mc(str(info), main_fmt)])
        rows.append([ec(), mc("Declinação magnética: NOAA (WMM 2025-2029)", main_fmt)])

        obs_lines = []
        if tecnicalInfo.get("observacao_homologacao", True):
            obs_lines.extend(data.get("info_tecnica", {}).get("observacoes", ["* Limites sujeitos à homologação do referido órgão."]))
        obs_lines.append("Para mais informações, consulte o arquivo de metadados.")

        manualTable.setTableContents(rows)
        manualTable.setColumnWidths([44.0, 66.0])
        manualTable.setIncludeTableHeader(False)
        manualTable.setShowGrid(True)
        manualTable.setGridStrokeWidth(0.1)
        manualTable.setCellMargin(0.5)
        manualTable.setWrapBehavior(QgsLayoutTable.WrapBehavior.WrapText)

        frame_size = frame.sizeWithUnits()
        frame_pos = frame.positionWithUnits()
        frame.attemptResize(QgsLayoutSize(frame_size.width(), 9999))
        manualTable.refresh()

        n_rows = len(rows)
        rc = QgsRenderContext()
        lo, hi = 1.0, 500.0
        for _ in range(30):
            mid = (lo + hi) / 2.0
            if manualTable.rowsVisible(rc, mid, 0, False, True) >= n_rows:
                hi = mid
            else:
                lo = mid
        content_height = hi

        frame.attemptResize(QgsLayoutSize(frame_size.width(), content_height))

        obsLabel = composition.itemById("label_obs_info_carta")
        if isinstance(obsLabel, QgsLayoutItemLabel):
            obsLabel.attemptMove(QgsLayoutPoint(frame_pos.x(), frame_pos.y() + content_height + 1.0))
            obsLabel.setHAlign(Qt.AlignmentFlag.AlignLeft)
            obsLabel.setText("\n".join(obs_lines))

    def getDataEdicao(self):
        now = datetime.datetime.now()
        return f"{now.day:02d}/{now.month:02d}/{now.year}"

    def omInfoTable(
        self, composition: QgsPrintLayout, data: dict, mapAreaFeature: QgsFeature
    ):
        frame = composition.itemById("omInfoTable")
        if frame is None:
            return
        manualTable = frame.multiFrame()
        if not isinstance(manualTable, QgsLayoutItemManualTable):
            return

        omPoint = mapAreaFeature.geometry().centroid().asPoint()
        transformer = QgsCoordinateTransform(
            QgsCoordinateReferenceSystem("EPSG:4674"),
            QgsCoordinateReferenceSystem(f'EPSG:{data.get("epsg")}'),
            QgsProject.instance(),
        )
        omUTMGeom = QgsGeometry(mapAreaFeature.geometry())
        omUTMGeom.transform(transformer)
        omUTMPoint = omUTMGeom.centroid().asPoint()

        tz = data.get("timeZone", "")
        hemi = data.get("hemisphere", "")
        centralMeridian = -180 + (int(tz) - 1) * 6 + 3
        falseNorth = "+ 0" if hemi == "N" else "+ 10.000"

        main_title_fmt = QgsTextFormat()
        main_title_fmt.setFont(QFont("Noto Sans"))
        main_title_fmt.setSize(10)
        main_title_fmt.setForcedBold(True)

        data_fmt = QgsTextFormat()
        data_fmt.setFont(QFont("Noto Sans"))
        data_fmt.setSize(7)

        def mc(text, fmt, align=Qt.AlignmentFlag.AlignLeft, col_span=1, row_span=1):
            c = QgsTableCell(str(text) if text is not None else "")
            c.setTextFormat(fmt)
            c.setHorizontalAlignment(align)
            if col_span != 1 or row_span != 1:
                c.setSpan(row_span, col_span)
            return c

        is_default_sarp = (
            str(data.get("configuracao_carta", "om"))
            .strip()
            .lower()
            == "default"
        )

        rows = [
            [
                mc(
                    "INFORMAÇÕES DO PRODUTO",
                    main_title_fmt,
                    Qt.AlignmentFlag.AlignCenter,
                    col_span=2,
                ),
                mc("", main_title_fmt),
            ],
            [
                mc("Endereço", data_fmt),
                mc(data.get("endereco", ""), data_fmt),
            ],
            [
                mc("Coordenadas geográficas", data_fmt, row_span=3),
                mc(
                    "Sistema de Referência: SIRGAS 2000 (Época 2000.4)",
                    data_fmt,
                ),
            ],
            [
                mc("", data_fmt),
                mc(f"Latitude: {omPoint.y():.3f}º", data_fmt),
            ],
            [
                mc("", data_fmt),
                mc(f"Longitude: {omPoint.x():.3f}º", data_fmt),
            ],
            [
                mc("Coordenadas UTM", data_fmt, row_span=3),
                mc(
                    f"Zona: {tz} {hemi}, Meridiano Central: {centralMeridian}, "
                    f"Gr.: + 500 km, Equador: {falseNorth} km",
                    data_fmt,
                ),
            ],
            [
                mc("", data_fmt),
                mc(f"X: {omUTMPoint.x():.3f} m", data_fmt),
            ],
            [
                mc("", data_fmt),
                mc(f"Y: {omUTMPoint.y():.3f} m", data_fmt),
            ],
        ]

        # A linha de Subordinação só aparece na configuração de OM
        if not is_default_sarp:
            rows.append(
                [
                    mc("Subordinação", data_fmt),
                    mc(
                        data.get("subordinacao2")
                        or data.get("subordinacao1", ""),
                        data_fmt,
                    ),
                ]
            )

        rows.extend(
            [
                [
                    mc("Altitude aproximada", data_fmt),
                    mc(str(data.get("altitude", 0)), data_fmt),
                ],
                [
                    mc("Área aproximada", data_fmt),
                    mc(f"{omUTMGeom.area():.3f} m²", data_fmt),
                ],
                [
                    mc("Perímetro aproximado", data_fmt),
                    mc(f"{omUTMGeom.length():.3f} m", data_fmt),
                ],
                [
                    mc("Data de Criação", data_fmt),
                    mc(
                        data.get("info_tecnica", {}).get("data_criacao", ""),
                        data_fmt,
                    ),
                ],
                [
                    mc("Data de Edição", data_fmt),
                    mc(self.getDataEdicao(), data_fmt),
                ],
            ]
        )

        manualTable.setTableContents(rows)
        manualTable.setColumnWidths([41.6, 62.4])
        if data.get("tipo_produto") == "Carta Ortoimagem SARP":
            manualTable.setRowHeights([12.0] + [0.0] * (len(rows) - 1))
        manualTable.setIncludeTableHeader(False)
        manualTable.setShowGrid(True)
        manualTable.setGridStrokeWidth(0.1)
        manualTable.setCellMargin(0.5)
        manualTable.setWrapBehavior(QgsLayoutTable.WrapBehavior.WrapText)
        manualTable.refresh()

    def getIntersectionStatus(self, mapAreaFeature):
        _brazilLayer = self.loadShapeLayer(self.pathBrazilLayer, "", "_tmp")
        _brazilGeom = next(_brazilLayer.getFeatures()).geometry()
        _mapAreaGeom = mapAreaFeature.geometry()
        if _mapAreaGeom.within(_brazilGeom):
            return "inside"
        elif _mapAreaGeom.intersects(_brazilGeom):
            return "intersects"
        else:
            return "outside"
