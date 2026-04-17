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
    QgsLayoutItemManualTable,
    QgsLayoutTable,
    QgsTableCell,
    QgsTextFormat,
)

from ....interfaces.iComponent import IComponent
from .buildContext import BuildContext
from .componentUtils import ComponentUtils


class Table(IComponent, ComponentUtils):
    def __init__(self, *args, **kwargs) -> None:
        self.pathBrazilLayer = (
            Path(__file__).parent.parent
            / "resources"
            / "limits"
            / "2024"
            / "Brasil_2024.shp"
        )

    def build(self, context: BuildContext):
        composition = context.composition
        data = context.data
        mapAreaFeature = context.mapAreaFeature
        self.customEtapa(composition, data.get("fases", ()))
        self.customSensores(composition, data.get("sensores", ()))
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

    def customEtapa(self, composition, etapas=[]):
        frame = composition.itemById("label_tabela_etapas")
        if frame is None:
            return
        manualTable = frame.multiFrame()
        if not isinstance(manualTable, QgsLayoutItemManualTable):
            return

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
            mc("FASES DA PRODUÇÃO", title_fmt, Qt.AlignmentFlag.AlignCenter, col_span=3),
            mc("", title_fmt),
            mc("", title_fmt),
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
        manualTable.setIncludeTableHeader(False)
        manualTable.setShowGrid(True)
        manualTable.setCellMargin(0.5)
        manualTable.refresh()

    def customSensores(self, composition: QgsPrintLayout, sensors: dict):
        if layoutItem := composition.itemById("label_tabela_info_ortoimagem"):
            edited = ""
            nSensors = len(sensors)
            rows = []
            if nSensors == 1:
                htmlBarebone = (
                    Path(__file__).parent.parent
                    / "htmlBarebone"
                    / "singleSensorBarebone.html"
                )
            else:
                htmlBarebone = (
                    Path(__file__).parent.parent
                    / "htmlBarebone"
                    / "multipleSensorsBarebone.html"
                )
            with open(htmlBarebone, "r") as fp:
                htmlData = fp.read()
            for sensor in sensors:
                sensorData = {
                    "{tipo}": sensor["tipo"],
                    "{plataforma}": sensor["plataforma"],
                    "{nome}": sensor["nome"],
                    "{resolucao}": sensor["resolucao"],
                    "{bandas}": sensor["bandas"],
                    "{nivel_do_produto}": sensor["nivel_produto"],
                }
                if nSensors == 1:
                    edited = self.replaceStr(htmlData, sensorData)
                elif 1 < nSensors < 4:
                    multipleSensorData = "<tr >\
                        <td>{nome}</td>\
                        <td>{tipo}</td>\
                        <td>{plataforma}</td>\
                        <td>{resolucao}</td>\
                        <td>{bandas}</td>\
                        <td>{nivel_do_produto}</td>\
                    </tr>"
                    rows.append(self.replaceStr(multipleSensorData, sensorData))
            if 1 < nSensors < 4:
                str_sensores = "\n".join(rows)
                edited = self.replaceStr(htmlData, {"{sensores}": str_sensores})
            layoutItem.setText(edited)

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
        nContourInTable = 3 if displayAuxContour == 1 else 2
        intersectionStatus = self.getIntersectionStatus(mapAreaFeature)

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
            mc("INFORMAÇÕES TÉCNICAS DO PRODUTO", title_fmt, Qt.AlignmentFlag.AlignCenter, col_span=2),
            ec(title_fmt),
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
            rows.append([mc("Equidistância das curvas de nível", main_fmt, row_span=nContourInTable), mc(texto_equidistancia, main_fmt)])
            for _ in range(nContourInTable - 1):
                rows.append([ec(), ec()])

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
                limites_est = "Limites estaduais e municipais: IBGE* / 2024 e GADM 4.1"
            else:
                limites_int = "Limites internacionais: GADM 4.1"
                limites_est = "Limites estaduais e municipais: GADM 4.1"
        else:
            limites_int = "Limites internacionais: CBDL*"
            limites_est = "Limites estaduais e municipais: IBGE* / 2024"

        rows.append([mc("Origem dos dados geoespaciais fornecidos por terceiros", main_fmt, row_span=lenThirdData), mc(limites_int, main_fmt)])
        rows.append([ec(), mc(limites_est, main_fmt)])
        for info in thirdPartyData:
            rows.append([ec(), mc(str(info), main_fmt)])
        rows.append([ec(), mc("Declinação magnética: NOAA (WMM 2025-2029)", main_fmt)])

        if tecnicalInfo.get("observacao_homologacao", True):
            obsList = data.get("info_tecnica", {}).get("observacoes", ["* Limites sujeitos à homologação do referido órgão."])
            for obsText in obsList:
                rows.append([mc(obsText, obs_fmt, col_span=2), ec(obs_fmt)])

        rows.append([mc("Para mais informações, consulte o arquivo de metadados.", obs_fmt, col_span=2), ec(obs_fmt)])

        manualTable.setTableContents(rows)
        manualTable.setColumnWidths([44.0, 66.0])
        manualTable.setIncludeTableHeader(False)
        manualTable.setShowGrid(True)
        manualTable.setCellMargin(0.5)
        manualTable.refresh()

    def getDataEdicao(self):
        now = datetime.datetime.now()
        return f"{now.day:02d}/{now.month:02d}/{now.year}"

    def omInfoTable(
        self, composition: QgsPrintLayout, data: dict, mapAreaFeature: QgsFeature
    ):
        """Creates the OM info table dinamically.
        Args:
            composition: the QgsPrintLayout to be updated
            data: dict holding the map info
            mapAreaFeature: a QgsFeature covering the OM area
        """
        if tableComp := composition.itemById("omInfoTable"):
            # Coordinate transform to UTM
            omPoint = mapAreaFeature.geometry().centroid().asPoint()
            transformer = QgsCoordinateTransform(
                QgsCoordinateReferenceSystem("EPSG:4674"),
                QgsCoordinateReferenceSystem(f'EPSG:{data.get("epsg")}'),
                QgsProject.instance(),
            )
            omUTMGeom = QgsGeometry(mapAreaFeature.geometry())
            omUTMGeom.transform(transformer)
            omUTMPoint = omUTMGeom.centroid().asPoint()
            # Filling the table
            htmlPath = (
                Path(__file__).parent.parent / "htmlBarebone" / "omInfoBarebone.html"
            )
            htmlData = et.parse(str(htmlPath))
            root = htmlData.getroot()
            table = next(root.iter("table"))
            _tmp = self.generateElement(table, "tr")
            self.generateElement(
                _tmp, "td", {"class": "left"}, "Endereço da Organização Militar"
            )
            self.generateElement(
                _tmp, "td", {"class": "right"}, data.get("endereco", "")
            )
            _tmp = self.generateElement(table, "tr")
            self.generateElement(
                _tmp,
                "td",
                {"class": "left", "rowspan": "3"},
                "Coordenadas geográficas da Organização Militar",
            )
            self.generateElement(
                _tmp,
                "td",
                {"class": "right"},
                "Sistema de Referência: SIRGAS 2000 (Época 2000.4)",
            )
            _tmp = self.generateElement(table, "tr")
            self.generateElement(
                _tmp, "td", {"class": "right"}, f"Latitude: {omPoint.y():.3f}º"
            )
            _tmp = self.generateElement(table, "tr")
            self.generateElement(
                _tmp, "td", {"class": "right"}, f"Longitude: {omPoint.x():.3f}º"
            )
            _tmp = self.generateElement(table, "tr")
            self.generateElement(
                _tmp,
                "td",
                {"class": "left", "rowspan": "3"},
                "Coordenadas UTM da Organização Militar",
            )
            self.generateElement(
                _tmp,
                "td",
                {"class": "right"},
                f"Zona: {data.get('timeZone', '')} {data.get('hemisphere', '')}, \
                Meridiano Central: {-180+(int(data.get('timeZone', 22))-1)*6 + 3}, \
                Gr.: + 500 km, Equador: {'+ 0' if data.get('hemisphere') == 'N' else '+ 10.000'} km",
            )
            _tmp = self.generateElement(table, "tr")
            self.generateElement(
                _tmp, "td", {"class": "right"}, f"X: {omUTMPoint.x():.3f} m"
            )
            _tmp = self.generateElement(table, "tr")
            self.generateElement(
                _tmp, "td", {"class": "right"}, f"Y: {omUTMPoint.y():.3f} m"
            )
            _tmp = self.generateElement(table, "tr")
            self.generateElement(
                _tmp, "td", {"class": "left"}, "Subordinação da Organização Militar"
            )
            self.generateElement(
                _tmp,
                "td",
                {"class": "right"},
                data.get("subordinacao2") or data.get("subordinacao1"),
            )
            _tmp = self.generateElement(table, "tr")
            self.generateElement(
                _tmp,
                "td",
                {"class": "left"},
                "Altitude aproximada da Organização Militar",
            )
            self.generateElement(
                _tmp, "td", {"class": "right"}, data.get("altitude", 0)
            )
            _tmp = self.generateElement(table, "tr")
            self.generateElement(
                _tmp, "td", {"class": "left"}, "Área aproximada da Organização Militar"
            )
            self.generateElement(
                _tmp, "td", {"class": "right"}, f"{omUTMGeom.area():.3f} m²"
            )
            _tmp = self.generateElement(table, "tr")
            self.generateElement(
                _tmp,
                "td",
                {"class": "left"},
                "Perímetro aproximado da Organização Militar",
            )
            self.generateElement(
                _tmp, "td", {"class": "right"}, f"{omUTMGeom.length():.3f} m"
            )
            _tmp = self.generateElement(table, "tr")
            self.generateElement(_tmp, "td", {"class": "left"}, "Data de Criação")
            self.generateElement(
                _tmp,
                "td",
                {"class": "right"},
                data.get("info_tecnica").get("data_criacao"),
            )
            _tmp = self.generateElement(table, "tr")
            _ = self.generateElement(_tmp, "td", {"class": "left"}, "Data de Edição")
            _ = self.generateElement(
                _tmp, "td", {"class": "right"}, self.getDataEdicao()
            )

            tableComp.setText(et.tostring(root, encoding="unicode", method="html"))

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
