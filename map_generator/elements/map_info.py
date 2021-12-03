import datetime
import os
import xml.etree.ElementTree as et
from pathlib import Path

from .map_utils import MapParent, copyQptToCompositor

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

class HtmlData(MapParent):

    def editQpts(self, composition, qptDicts):
        for qptDict in qptDicts:
            copyQptToCompositor(composition, qptDict)

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

            txt_file = os.path.join(os.path.dirname(os.path.dirname(__file__)),
                                    'html_auto', 'etapas_auto.html')
            #filepath = os.path.join(folder, filer)
            file_data = open(txt_file, "r")
            base_html = file_data.read()
            file_data.close()

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

    def customTecnicalInfo(self, composition, scale, hemisphere, fuso, tipo_produto, tecnicalInfo={}, isInternational=False, mapAreaFeature=None):
        label = composition.itemById("label_tabela_info_carta")
        if label:
            hemisphere = 'Norte' if hemisphere == 'N' else 'Sul'
            falseNorth = '+ 0' if hemisphere == 'Norte' else '+ 10.000'
            centralMeridian = -180+(int(fuso)-1)*6 + 3
            curveData = [x for x in curvas[str(scale)].values()]
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
            _ = self.generateElement(_tmp, 'td', {'class':'right'}, f'Zona {fuso}. Meridiano Central {centralMeridian} º {position} Gr.: + 500 Km')
            if tecnicalInfo.get('datum_vertical'):
                _tmp = self.generateElement(firstTable, 'tr')
                _ = self.generateElement(_tmp, 'td', {'class':'left'}, 'Datum vertical')
                _ = self.generateElement(_tmp, 'td', {'class':'right'}, tecnicalInfo.get('datum_vertical'))
            _tmp = self.generateElement(firstTable, 'tr')
            _ = self.generateElement(_tmp, 'td', {'class':'left'}, 'Datum horizontal')
            _ = self.generateElement(_tmp, 'td', {'class':'right'}, 'SIRGAS2000 (Época 2000.4)')
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
            _ = self.generateElement(_tmp, 'td', {'class':'right'}, '0,2 mm na escala')
            _tmp = self.generateElement(firstTable, 'tr')
            _ = self.generateElement(_tmp, 'td', {'class':'left', 'rowspan':'2'}, 'Padrão de Exatidão Cartográfica (PEC)')
            _ = self.generateElement(_tmp, 'td', {'class':'right'}, f'PEC Planimétrico: {tecnicalInfo.get("pec_planimetrico")}')
            _tmp = self.generateElement(firstTable, 'tr')
            _ = self.generateElement(_tmp, 'td', {'class':'right'}, f'PEC Altimétrico: {tecnicalInfo.get("pec_altimetrico")}')
            _tmp = self.generateElement(firstTable, 'tr')
            _ = self.generateElement(_tmp, 'td', {'class':'left'}, 'Descrição do produto de Conjuntos de Dados Geoespaciais')
            _ = self.generateElement(_tmp, 'td', {'class':'right'}, tipo_produto)
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


    def getIntersectionStatus(self, mapAreaFeature):
        pathBrazilLayer = Path(__file__).parent.parent / 'limites' / '2020' / 'Brasil_2020.shp'
        _brazilLayer = self.loadShapeLayer(pathBrazilLayer, '', '_tmp')
        _brazilGeom = next(_brazilLayer.getFeatures()).geometry()
        _mapAreaGeom = mapAreaFeature.geometry()
        if _mapAreaGeom.within(_brazilGeom):
            return 'inside'
        elif _mapAreaGeom.intersects(_brazilGeom):
            return 'intersects'
        else:
            return 'outside'

    def editHTMLInfoTecCarta(self, composition, scale, hemisferio, fuso, tipo_produto, tecnicalInfo={}):
        '''
        Refreshes the label 'label_tabela_info_carta' with info from json
        '''
        label = composition.itemById("label_tabela_info_carta")
        if label:
            htmlData = label.text()
            htmlPath = Path(__file__).parent.parent / 'html_auto' / 'informacoes_tecnicas_vetores.html'
            with open(htmlPath, 'r') as htmlFile:
                htmlData = htmlFile.read()
            infoDict = {}
            # Techical info from json
            infoDict.update({"{" + k + "}": v for k, v in tecnicalInfo.items() if v != 'dados_terceiros'})
            # Product type
            infoDict.update({"{tipo_produto}": tipo_produto})

            # Get curves info
            dados_curva = curvas[str(scale)]
            for curva, equidistancia_value in dados_curva.items():
                equidistancia_key = "{equidistancia_curva_" + curva + "}"
                infoDict.update({equidistancia_key: str(equidistancia_value)})

            # Update hemisferio e false North
            hemisferio = 'Norte' if hemisferio == 'N' else 'Sul'
            infoDict.update({"{hemisferio}": hemisferio})
            falseNorth = '0' if hemisferio == 'Norte' else '+10.000'
            infoDict.update({"{falseNorth}": falseNorth})

            # Update fuso
            infoDict.update({"{fuso}": fuso})

            # Update meridianoCentral e posicao
            meridianoCentral = -180+(int(fuso)-1)*6 + 3
            infoDict.update({"{meridianoCentral}": str(abs(meridianoCentral))})
            posicao = 'W' if meridianoCentral < 0 else 'E'
            infoDict.update({"{posicao}": posicao})

            # Replace dados data in base html and set text
            label.setText(self.replaceStr(
                htmlData, infoDict))
