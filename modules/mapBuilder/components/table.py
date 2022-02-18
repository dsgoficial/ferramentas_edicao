import datetime
import os
import xml.etree.ElementTree as et
from pathlib import Path

from qgis.core import QgsFeature, QgsPrintLayout, QgsCoordinateTransform, QgsCoordinateReferenceSystem, QgsProject, QgsGeometry

from ....interfaces.iComponent import IComponent
from .componentUtils import ComponentUtils

curvas = {
    "25":	{
        "auxiliar": "5",
        "normal": "10",
        "mestra": "50"
    },
    "50":	{
        "auxiliar": "10",
        "normal": "20",
        "mestra": "100"
    },
    "100": {
        "auxiliar": "25",
        "normal": "40",
        "mestra": "200"
    },
    "250": {
        "auxiliar": "50",
        "normal": "100",
        "mestra": "500"
    },
    "1000": {
        "auxiliar": "100",
        "normal": "200",
        "mestra": "500"
    }
}

class Table(IComponent,ComponentUtils):

    def __init__(self, *args, **kwargs) -> None:
        self.pathBrazilLayer = Path(__file__).parent.parent / 'resources' / 'limits' / '2020' / 'Brasil_2020.shp'

    def build(self, composition: QgsPrintLayout, data: dict, mapAreaFeature: QgsFeature):
        self.customEtapa(composition, data.get('fases', ()))
        self.customSensores(composition, data.get('sensores', ()))
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
            pathEtapasHtml = Path(__file__).parent.parent / 'html_auto' / 'etapas_auto.html'
            with open(pathEtapasHtml) as fp:
                base_html = fp.read()
            rows = []
            for etapa in etapas:
                # Dados Etapa
                row = []
                nome = etapa['nome']
                subetapas = etapa['executantes']
                n_subetapas = len(subetapas)
                for i_subetapa, subetapa in enumerate(subetapas):
                    row.append('<tr>')
                    if i_subetapa == 0:
                        col_nome = self.replaceStr(
                            '<td class = "lef" rowspan="{n_subetapas}">{nome}</td>', {'{n_subetapas}': n_subetapas, '{nome}': nome})
                        row.append(col_nome)
                    responsavel = subetapa['nome']
                    col_responsavel = self.replaceStr(
                        '<td class = "mid" >{responsavel}</td>', {'{responsavel}': responsavel})
                    row.append(col_responsavel)
                    ano = subetapa['ano']
                    col_ano = self.replaceStr('<td class = "rig" >{ano}</td>', {'{ano}': ano})
                    row.append(col_ano)
                    row.append('</tr>')
                # Criando a linha
                rows.append('\n\t'.join(row))

            str_etapas = '\n'.join(rows)

            # Dados ultima edicao
            now = datetime.datetime.now()
            dia = str(now.day)
            meses_pt = {
                1: 'janeiro',
                2: 'fevereiro',
                3: 'março',
                4: 'abril',
                5: 'maio',
                6: 'junho',
                7: 'julho',
                8: 'agosto',
                9: 'setembro',
                10: 'outubro',
                11: 'novembro',
                12: 'dezembro'
            }
            mes = meses_pt[now.month]
            ano = str(now.year)

            dados_data = {
                '{dia}': dia,
                '{mes}': mes,
                '{ano}': ano,
                '{etapas}': str_etapas
            }

            edited = self.replaceStr(base_html, dados_data)
            label_tabela_etapas.setText(edited)

    def customSensores(self, composition, sensores):
        # String to store sensor_txt
        edited = ''
        label_tabela_info_ortoimagem = composition.itemById("label_tabela_info_ortoimagem")

        if label_tabela_info_ortoimagem is not None:
            n_sensores = len(sensores)

            # Get the base html text
            html_file_path = os.path.join(os.path.dirname(
                os.path.dirname(__file__)), 'html_auto', 'sensores_auto_one.html')
            if n_sensores > 1:
                html_file_path = os.path.join(os.path.dirname(os.path.dirname(
                    __file__)), 'html_auto', 'sensores_auto_multiple.html')
            file_data = open(html_file_path, "r")
            base_html = file_data.read()
            file_data.close()

            rows = []
            for sensor in sensores:
                dados_sensor = {
                    '{tipo}': sensor['tipo'],
                    '{plataforma}': sensor['plataforma'],
                    '{nome}': sensor['nome'],
                    '{resolucao}': sensor['resolucao'],
                    '{bandas}': sensor['bandas'],
                    '{nivel_do_produto}': sensor['nivel_produto']
                }
                if n_sensores == 1:
                    # Single Sensor - Done text!
                    edited = self.replaceStr(base_html, dados_sensor)
                elif 1 < n_sensores < 4:
                    base_row_multiple = '<tr >\
                        <td class = "lef" >{tipo}</td>\
                        <td class = "lef" >{plataforma}</td>\
                        <td class = "lef" >{nome}</td>\
                        <td class = "lef" >{resolucao}</td>\
                        <td class = "lef" >{bandas}</td>\
                        <td class = "lef" >{nivel_do_produto}</td>\
                    </tr>'
                    rows.append(self.replaceStr(base_row_multiple, dados_sensor))

            # Multiple sensors
            if 1 < n_sensores < 4:
                str_sensores = '\n'.join(rows)
                edited = self.replaceStr(base_html, {'{sensores}': str_sensores})
            label_tabela_info_ortoimagem.setText(edited)

    def customTecnicalInfo(self, composition: QgsPrintLayout, data: dict, mapAreaFeature: QgsFeature):
        label = composition.itemById("label_tabela_info_carta")
        scale = data.get('scale')
        hemisphere = data.get('hemisphere')
        timeZone = data.get('timeZone')
        tecnicalInfo = data.get('info_tecnica')
        productName = data.get('productName')
        isInternational = data.get('territorio_internacional')
        isOmMap = bool(data.get('poligono'))
        if label:
            hemisphere = 'Norte' if hemisphere == 'N' else 'Sul'
            falseNorth = '+ 0' if hemisphere == 'Norte' else '+ 10.000'
            centralMeridian = -180+(int(timeZone)-1)*6 + 3
            if str(scale) in curvas:
                curveData = [x for x in curvas[str(scale)].values()]
            else:
                curveData = [0,0,0]
            position = 'W' if centralMeridian < 0 else 'E'
            thirdPartyData = tecnicalInfo.get('dados_terceiros', ())
            lenThirdData = 3 + len(thirdPartyData)
            displayAuxContour = tecnicalInfo.get('curva_auxiliar', True)
            nContourInTable = '3' if displayAuxContour else '2'

            intersectionStatus = self.getIntersectionStatus(mapAreaFeature)

            htmlPath = Path(__file__).parent.parent / 'html_auto' / 'technicalInfoBarebone.html'
            htmlData = et.parse(str(htmlPath))
            root = htmlData.getroot()
            tables = root.iter('table')

            firstTable = next(tables)
            _tmp = self.generateElement(firstTable, 'tr')
            _ = self.generateElement(_tmp, 'td', {'class':'left'}, 'Projeção')
            _ = self.generateElement(_tmp, 'td', {'class':'right'}, 'Universal Transversa de Mercator')
            _tmp = self.generateElement(firstTable, 'tr')
            _ = self.generateElement(_tmp, 'td', {'class':'left', 'rowspan':'2'}, 'Origem UTM')
            _ = self.generateElement(_tmp, 'td', {'class':'right'}, f'Hemisfério {hemisphere}. Equador: {falseNorth} Km')
            _tmp = self.generateElement(firstTable, 'tr')
            _ = self.generateElement(_tmp, 'td', {'class':'right'}, f'Zona {timeZone}. Meridiano Central {centralMeridian} º {position} Gr.: + 500 Km')
            if tecnicalInfo.get('datum_vertical'):
                _tmp = self.generateElement(firstTable, 'tr')
                _ = self.generateElement(_tmp, 'td', {'class':'left'}, 'Datum vertical')
                _ = self.generateElement(_tmp, 'td', {'class':'right'}, tecnicalInfo.get('datum_vertical'))
            _tmp = self.generateElement(firstTable, 'tr')
            _ = self.generateElement(_tmp, 'td', {'class':'left'}, 'Datum horizontal')
            _ = self.generateElement(_tmp, 'td', {'class':'right'}, 'SIRGAS2000 (Época 2000.4)')
            if not isOmMap:
                _tmp = self.generateElement(firstTable, 'tr')
                _ = self.generateElement(_tmp, 'td', {'class':'left', 'rowspan':nContourInTable}, 'Equidistância das curvas de nível')
                if tecnicalInfo.get('curva_auxiliar', True):
                    _ = self.generateElement(_tmp, 'td', {'class':'right'}, f'Auxiliar: {curveData[0]} metros')
                    _tmp = self.generateElement(firstTable, 'tr')
                _ = self.generateElement(_tmp, 'td', {'class':'right'}, f'Normal: {curveData[1]} metros')
                _tmp = self.generateElement(firstTable, 'tr')
                _ = self.generateElement(_tmp, 'td', {'class':'right'}, f'Mestra: {curveData[2]} metros')
            _tmp = self.generateElement(firstTable, 'tr')
            _ = self.generateElement(_tmp, 'td', {'class':'left'}, 'Erro gráfico')
            _ = self.generateElement(_tmp, 'td', {'class':'right'}, '0,2 mm na escala da carta')
            _tmp = self.generateElement(firstTable, 'tr')
            _ = self.generateElement(_tmp, 'td', {'class':'left', 'rowspan':'2'}, 'Padrão de Exatidão Cartográfica (PEC)')
            _ = self.generateElement(_tmp, 'td', {'class':'right'}, f'PEC Planimétrico: {tecnicalInfo.get("pec_planimetrico")}')
            _tmp = self.generateElement(firstTable, 'tr')
            _ = self.generateElement(_tmp, 'td', {'class':'right'}, f'PEC Altimétrico: {tecnicalInfo.get("pec_altimetrico")}')
            _tmp = self.generateElement(firstTable, 'tr')
            _ = self.generateElement(_tmp, 'td', {'class':'left'}, 'Descrição do produto de Conjuntos de Dados Geoespaciais')
            _ = self.generateElement(_tmp, 'td', {'class':'right'}, productName)
            _tmp = self.generateElement(firstTable, 'tr')
            _ = self.generateElement(_tmp, 'td', {'class':'left'}, 'Origem dos dados altimétricos')
            _ = self.generateElement(_tmp, 'td', {'class':'right'}, tecnicalInfo.get('origem_dados_altimetricos'))
            _tmp = self.generateElement(firstTable, 'tr')
            _ = self.generateElement(_tmp, 'td', {'class':'left', 'rowspan':f'{lenThirdData}'}, 'Origem dos dados geoespaciais fornecidos por terceiros')
            if isInternational:
                if intersectionStatus in ('inside', 'intersects'):
                    _ = self.generateElement(_tmp, 'td', {'class':'right'}, 'Limites internacionais: CBDL** e GADM 3.6')
                    _tmp = self.generateElement(_tmp, 'tr')
                    _ = self.generateElement(_tmp, 'td', {'class':'right'}, 'Limites estaduais e municipais: IBGE** / 2020 e GADM 3.6')
                else:
                    _ = self.generateElement(_tmp, 'td', {'class':'right'}, 'Limites internacionais: GADM 3.6')
                    _tmp = self.generateElement(_tmp, 'tr')
                    _ = self.generateElement(_tmp, 'td', {'class':'right'}, 'Limites estaduais e municipais: GADM 3.6')
            else:
                _ = self.generateElement(_tmp, 'td', {'class':'right'}, 'Limites internacionais: CBDL**')
                _tmp = self.generateElement(_tmp, 'tr')
                _ = self.generateElement(_tmp, 'td', {'class':'right'}, 'Limites estaduais e municipais: IBGE** / 2020')
            for info in thirdPartyData:
                _tmp = self.generateElement(firstTable, 'tr')
                _ = self.generateElement(_tmp, 'td', {'class':'right'}, info)
            _tmp = self.generateElement(firstTable, 'tr')
            _ = self.generateElement(_tmp, 'td', {'class':'right'}, 'Declinação magnética: NOAA (WMM 2020-2025)')

            secondTable = next(tables)
            if tecnicalInfo.get('observacao_homologacao', True):
                _tmp = self.generateElement(secondTable, 'tr')
                _ = self.generateElement(_tmp, 'td', {'class':'phases'}, '** Limites sujeitos  à homologação do referido órgão.')
            _tmp = self.generateElement(secondTable, 'tr')
            _ = self.generateElement(_tmp, 'td', {'class':'phases'}, 'Para maiores informações consulte o arquivo de metadados.')

            label.setText(et.tostring(root, encoding='unicode', method='html'))

    def omInfoTable(self, composition: QgsPrintLayout, data: dict, mapAreaFeature: QgsFeature):
        ''' Creates the OM info table dinamically.
        Args:
            composition: the QgsPrintLayout to be updated
            data: dict holding the map info
            mapAreaFeature: a QgsFeature covering the OM area
        '''
        if tableComp:=composition.itemById("omInfoTable"):
            # Coordinate transform to UTM
            omPoint = mapAreaFeature.geometry().centroid().asPoint()
            transformer = QgsCoordinateTransform(
                QgsCoordinateReferenceSystem('EPSG:4674'),
                QgsCoordinateReferenceSystem(f'EPSG:{data.get("epsg")}'), QgsProject.instance())
            omUTMGeom = QgsGeometry(mapAreaFeature.geometry())
            omUTMGeom.transform(transformer)
            omUTMPoint = omUTMGeom.centroid().asPoint()
            # Filling the table
            htmlPath = Path(__file__).parent.parent / 'html_auto' / 'omInfoBarebone.html'
            htmlData = et.parse(str(htmlPath))
            root = htmlData.getroot()
            table = next(root.iter('table'))
            _tmp = self.generateElement(table, 'tr')
            self.generateElement(_tmp, 'td', {'class':'left'}, 'Endereço')
            self.generateElement(_tmp, 'td', {'class':'right'}, data.get('endereco', ''))
            _tmp = self.generateElement(table, 'tr')
            self.generateElement(_tmp, 'td', {'class':'left', 'rowspan':'3'}, 'Coordenadas geográficas')
            self.generateElement(_tmp, 'td', {'class':'right'}, 'Sistema de Referência: SIRGAS 2000 (Época 2000.4)')
            _tmp = self.generateElement(table, 'tr')
            self.generateElement(_tmp, 'td', {'class':'right'}, f'Latitude: {omPoint.y():.3f}º')
            _tmp = self.generateElement(table, 'tr')
            self.generateElement(_tmp, 'td', {'class':'right'}, f'Longidute: {omPoint.x():.3f}º')
            _tmp = self.generateElement(table, 'tr')
            self.generateElement(_tmp, 'td', {'class':'left', 'rowspan':'3'}, 'Coordenadas UTM')
            self.generateElement(_tmp, 'td', {'class':'right'},
                f"Zona: {data.get('timeZone', '')} {data.get('hemisphere', '')}, \
                Meridiano Central: {-180+(int(data.get('timeZone', 22))-1)*6 + 3}, \
                Gr.: + 500 km, Equador: {'+ 0' if data.get('hemisphere') == 'N' else '+ 10.000'} km")
            _tmp = self.generateElement(table, 'tr')
            self.generateElement(_tmp, 'td', {'class':'right'}, f'X: {omUTMPoint.x():.3f} m')
            _tmp = self.generateElement(table, 'tr')
            self.generateElement(_tmp, 'td', {'class':'right'}, f'Y: {omUTMPoint.y():.3f} m')
            _tmp = self.generateElement(table, 'tr')
            self.generateElement(_tmp, 'td', {'class':'left'}, 'Subordinação')
            self.generateElement(_tmp, 'td', {'class':'right'}, data.get('subordinacao1'))
            _tmp = self.generateElement(table, 'tr')
            self.generateElement(_tmp, 'td', {'class':'left'}, 'Altitude aproximada')
            self.generateElement(_tmp, 'td', {'class':'right'}, '??????')
            _tmp = self.generateElement(table, 'tr')
            self.generateElement(_tmp, 'td', {'class':'left'}, 'Área aproximada')
            self.generateElement(_tmp, 'td', {'class':'right'}, f'{omUTMGeom.area():.3f} m²')
            _tmp = self.generateElement(table, 'tr')
            self.generateElement(_tmp, 'td', {'class':'left'}, 'Perímetro aproximado')
            self.generateElement(_tmp, 'td', {'class':'right'}, f'{omUTMGeom.length():.3f} m')

            tableComp.setText(et.tostring(root, encoding='unicode', method='html'))

    def getIntersectionStatus(self, mapAreaFeature):
        _brazilLayer = self.loadShapeLayer(self.pathBrazilLayer, '', '_tmp')
        _brazilGeom = next(_brazilLayer.getFeatures()).geometry()
        _mapAreaGeom = mapAreaFeature.geometry()
        if _mapAreaGeom.within(_brazilGeom):
            return 'inside'
        elif _mapAreaGeom.intersects(_brazilGeom):
            return 'intersects'
        else:
            return 'outside'