import datetime
import os
import xml.etree.ElementTree as et
from pathlib import Path

from qgis.core import (
    QgsFeature,
    QgsPrintLayout,
    QgsCoordinateTransform,
    QgsCoordinateReferenceSystem,
    QgsProject,
    QgsGeometry,
)

from ....interfaces.iComponent import IComponent
from .componentUtils import ComponentUtils


class Table(IComponent, ComponentUtils):
    def __init__(self, *args, **kwargs) -> None:
        self.pathBrazilLayer = (
            Path(__file__).parent.parent
            / "resources"
            / "limits"
            / "2020"
            / "Brasil_2020.shp"
        )

    def build(
        self, composition: QgsPrintLayout, data: dict, mapAreaFeature: QgsFeature
    ):
        self.customEtapa(composition, data.get("fases", ()))
        self.customSensores(composition, data.get("sensores", ()))
        self.customTecnicalInfo(composition, data, mapAreaFeature)
        self.omInfoTable(composition, data, mapAreaFeature)

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
        label_tabela_etapas = composition.itemById("label_tabela_etapas")
        if label_tabela_etapas is not None:
            pathEtapasHtml = (
                Path(__file__).parent.parent / "htmlBarebone" / "etapas_auto.html"
            )
            with open(pathEtapasHtml) as fp:
                base_html = fp.read()
            rows = []
            for etapa in etapas:
                # Dados Etapa
                row = []
                nome = etapa["nome"]
                subetapas = etapa["executantes"]
                n_subetapas = len(subetapas)
                for i_subetapa, subetapa in enumerate(subetapas):
                    row.append("<tr>")
                    if i_subetapa == 0:
                        col_nome = self.replaceStr(
                            '<td class = "lef" rowspan="{n_subetapas}">{nome}</td>',
                            {"{n_subetapas}": n_subetapas, "{nome}": nome},
                        )
                        row.append(col_nome)
                    responsavel = subetapa["nome"]
                    col_responsavel = self.replaceStr(
                        '<td class = "mid" >{responsavel}</td>',
                        {"{responsavel}": responsavel},
                    )
                    row.append(col_responsavel)
                    ano = subetapa["ano"]
                    col_ano = self.replaceStr(
                        '<td class = "rig" >{ano}</td>', {"{ano}": ano}
                    )
                    row.append(col_ano)
                    row.append("</tr>")
                # Criando a linha
                rows.append("\n\t".join(row))

            str_etapas = "\n".join(rows)
            dados_data = {
                "{etapas}": str_etapas,
            }
            edited = self.replaceStr(base_html, dados_data)
            label_tabela_etapas.setText(edited)

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
        label = composition.itemById("label_tabela_info_carta")
        scale = data.get("scale")
        equidistancia = data.get("equidistancia")
        displayAuxContour = data.get("exibirAuxiliar")
        hemisphere = data.get("hemisphere")
        timeZone = data.get("timeZone")
        tecnicalInfo: dict = data.get("info_tecnica")
        isInternational = data.get("territorio_internacional")
        isOmMap = bool(data.get("poligono"))
        if label:
            hemisphere = "Norte" if hemisphere == "N" else "Sul"
            falseNorth = "+ 0" if hemisphere == "Norte" else "+ 10.000"
            centralMeridian = -180 + (int(timeZone) - 1) * 6 + 3

            curveData = [
                int(equidistancia / 2),
                int(equidistancia),
                int(equidistancia) * 5,
            ]

            position = "W" if centralMeridian < 0 else "E"
            thirdPartyData = tecnicalInfo.get("dados_terceiros", ())
            lenThirdData = 3 + len(thirdPartyData)
            nContourInTable = "3" if displayAuxContour == 1 else "2"

            intersectionStatus = self.getIntersectionStatus(mapAreaFeature)

            htmlPath = (
                Path(__file__).parent.parent
                / "htmlBarebone"
                / "technicalInfoBarebone.html"
            )
            htmlData = et.parse(str(htmlPath))
            root = htmlData.getroot()
            tables = root.iter("table")

            firstTable = next(tables)
            _tmp = self.generateElement(firstTable, "tr")
            _ = self.generateElement(_tmp, "td", {"class": "left"}, "Projeção")
            _ = self.generateElement(
                _tmp, "td", {"class": "right"}, "Universal Transversa de Mercator"
            )
            _tmp = self.generateElement(firstTable, "tr")
            _ = self.generateElement(
                _tmp, "td", {"class": "left", "rowspan": "2"}, "Origem UTM"
            )
            _ = self.generateElement(
                _tmp,
                "td",
                {"class": "right"},
                f"Hemisfério {hemisphere}. Equador: {falseNorth} Km",
            )
            _tmp = self.generateElement(firstTable, "tr")
            _ = self.generateElement(
                _tmp,
                "td",
                {"class": "right"},
                f"Zona {timeZone}. Meridiano Central {centralMeridian} º {position} Gr.: + 500 Km",
            )
            if tecnicalInfo.get("datum_vertical"):
                _tmp = self.generateElement(firstTable, "tr")
                _ = self.generateElement(
                    _tmp, "td", {"class": "left"}, "Datum vertical"
                )
                _ = self.generateElement(
                    _tmp, "td", {"class": "right"}, tecnicalInfo.get("datum_vertical")
                )
            _tmp = self.generateElement(firstTable, "tr")
            _ = self.generateElement(_tmp, "td", {"class": "left"}, "Datum horizontal")
            _ = self.generateElement(
                _tmp, "td", {"class": "right"}, "SIRGAS2000 (Época 2000.4)"
            )
            if not isOmMap:
                _tmp = self.generateElement(firstTable, "tr")
                _ = self.generateElement(
                    _tmp,
                    "td",
                    {"class": "left", "rowspan": nContourInTable},
                    "Equidistância das curvas de nível",
                )
                texto_equidistancia = (
                    f"Mestra: {curveData[2]} m; Normal: {curveData[1]} m"
                )
                if displayAuxContour == 1:
                    texto_equidistancia += f"; Auxiliar:  {curveData[0]} m"
                _ = self.generateElement(
                    _tmp, "td", {"class": "right"}, texto_equidistancia
                )
                _tmp = self.generateElement(firstTable, "tr")
            _tmp = self.generateElement(firstTable, "tr")
            _ = self.generateElement(_tmp, "td", {"class": "left"}, "Data de Criação")
            _ = self.generateElement(
                _tmp, "td", {"class": "right"}, tecnicalInfo.get("data_criacao")
            )
            _tmp = self.generateElement(firstTable, "tr")
            _ = self.generateElement(_tmp, "td", {"class": "left"}, "Data de Edição")
            _ = self.generateElement(
                _tmp, "td", {"class": "right"}, self.getDataEdicao()
            )
            _tmp = self.generateElement(firstTable, "tr")
            _ = self.generateElement(_tmp, "td", {"class": "left"}, "Erro gráfico")
            _ = self.generateElement(_tmp, "td", {"class": "right"}, "0,2 mm na escala")
            _tmp = self.generateElement(firstTable, "tr")
            _ = self.generateElement(
                _tmp,
                "td",
                {"class": "left", "rowspan": "2"},
                "Padrão de Exatidão Cartográfica (PEC)",
            )
            _ = self.generateElement(
                _tmp,
                "td",
                {"class": "right"},
                f'PEC Planimétrico: {tecnicalInfo.get("pec_planimetrico")}',
            )
            _tmp = self.generateElement(firstTable, "tr")
            _ = self.generateElement(
                _tmp,
                "td",
                {"class": "right"},
                f'PEC Altimétrico: {tecnicalInfo.get("pec_altimetrico")}',
            )
            _tmp = self.generateElement(firstTable, "tr")
            _ = self.generateElement(
                _tmp, "td", {"class": "left"}, "Especificação técnica de representação"
            )
            _ = self.generateElement(
                _tmp,
                "td",
                {"class": "right"},
                tecnicalInfo.get("especificacao_representacao", "MD33-C-01"),
            )
            _tmp = self.generateElement(firstTable, "tr")
            _ = self.generateElement(
                _tmp, "td", {"class": "left"}, "Origem dos dados altimétricos"
            )
            _ = self.generateElement(
                _tmp,
                "td",
                {"class": "right"},
                tecnicalInfo.get("origem_dados_altimetricos"),
            )
            _tmp = self.generateElement(firstTable, "tr")
            _ = self.generateElement(
                _tmp,
                "td",
                {"class": "left", "rowspan": f"{lenThirdData}"},
                "Origem dos dados geoespaciais fornecidos por terceiros",
            )
            if isInternational:
                if intersectionStatus in ("inside", "intersects"):
                    _ = self.generateElement(
                        _tmp,
                        "td",
                        {"class": "right"},
                        "Limites internacionais: CBDL* e GADM 3.6",
                    )
                    _tmp = self.generateElement(_tmp, "tr")
                    _ = self.generateElement(
                        _tmp,
                        "td",
                        {"class": "right"},
                        "Limites estaduais e municipais: IBGE* / 2020 e GADM 3.6",
                    )
                else:
                    _ = self.generateElement(
                        _tmp,
                        "td",
                        {"class": "right"},
                        "Limites internacionais: GADM 3.6",
                    )
                    _tmp = self.generateElement(_tmp, "tr")
                    _ = self.generateElement(
                        _tmp,
                        "td",
                        {"class": "right"},
                        "Limites estaduais e municipais: GADM 3.6",
                    )
            else:
                _ = self.generateElement(
                    _tmp, "td", {"class": "right"}, "Limites internacionais: CBDL*"
                )
                _tmp = self.generateElement(_tmp, "tr")
                _ = self.generateElement(
                    _tmp,
                    "td",
                    {"class": "right"},
                    "Limites estaduais e municipais: IBGE* / 2020",
                )
            for info in thirdPartyData:
                _tmp = self.generateElement(firstTable, "tr")
                _ = self.generateElement(_tmp, "td", {"class": "right"}, info)
            _tmp = self.generateElement(firstTable, "tr")
            _ = self.generateElement(
                _tmp,
                "td",
                {"class": "right"},
                "Declinação magnética: NOAA (WMM 2025-2029)",
            )

            secondTable = next(tables)
            if tecnicalInfo.get("observacao_homologacao", True):
                _tmp = self.generateElement(secondTable, "tr")
                _ = self.generateElement(
                    _tmp,
                    "td",
                    {"class": "phases"},
                    "* Limites sujeitos à homologação do referido órgão.",
                )
            _tmp = self.generateElement(secondTable, "tr")
            _ = self.generateElement(
                _tmp,
                "td",
                {"class": "phases"},
                "Para mais informações, consulte o arquivo de metadados.",
            )

            label.setText(et.tostring(root, encoding="unicode", method="html"))

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
