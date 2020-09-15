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
import datetime

from .map_utils import copyQptToCompositor
import os

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
    "100":{
        "auxiliar": "25",
        #"normal": "50",
        #"mestra": "250"
        "normal": "40",
        "mestra": "200"
        },
    "250":{
        "auxiliar": "50",
        "normal": "100",
        "mestra": "500"
        },
    "1000":{
        "auxiliar": "100",
        "normal": "200",
        "mestra": "500"
        }
}


class HtmlData:
    def __init__(self):        
        pass

    def setComposition(self, composition):
        self.composition = composition

    def setParams(self):
        roi = {            
            'inom':'SD-22-Y-C-I-1',
            'nome':"Rio Laranjaí",
            'imagens':[
                {                        
                    'caminho_imagem':'',
                    'caminho_qml_estilo':''
                }
            ],
            'db_conexao':{                
                'servidor':'10.25.163.12',
                'porta':'5432',
                'banco':'cartaortoimagem_100k_31981_edgv3pro',
                'banco':'cartaortoimagem_100k_31981_edgv3pro',

            }                   
        }

        etapas = {
            'etapas':[
                {
                    'nome': 'Imageamento',
                    'subetapas':[
                        {
                            'responsavel':'Digital Globe',
                            'ano':'2018'
                        }
                    ]
                },
                {
                    'nome': 'Processamento Digital de Imagens',
                    'subetapas':[
                        {
                            'responsavel':'Diretoria de Serviço Geográfico - 1º CGEO',
                            'ano':'2020'
                        }
                    ]
                },
                {
                    'nome': 'Aquisição Vetorial',
                    'subetapas':[
                        {
                            'responsavel':'Diretoria de Serviço Geográfico - 1º CGEO',
                            'ano':'2020'
                        }
                    ]
                },
                {
                    'nome': 'Validação',
                    'subetapas':[
                        {
                            'responsavel':'Diretoria de Serviço Geográfico - 1º CGEO',
                            'ano':'2020'
                        }
                    ]
                },
                {
                    'nome': 'Edição',
                    'subetapas':[
                        {
                            'responsavel':'Diretoria de Serviço Geográfico - 1º CGEO',
                            'ano':'2020'
                        }
                    ]
                }
            ]
        }

        sensores = {
            'sensores':[
                {
                    'tipo':'Multiespectral',
                    'plataforma':'Orbital',
                    'nome': 'Sentinel 2A',
                    'resolucao':'10 m',
                    'bandas': 'RGB',
                    'nivel_do_produto':'1C'
                }
            ]
        }

        info_tecnica = {
            'info_tecnica':{
                    "pec_planimetrico":"A",
                    "pec_altimetrico":"A",
                    'datum_vertical':'Imbituba - Santa Catarina',                    
                    'origem_dados_altimetricos':'SRTM com correção do efeito do dossel vegetativo',                    
                }
        }

        config = {
            **roi, 
            **etapas, 
            **sensores, 
            **info_tecnica
        }

  
        config_projeto = {
            **projeto,
            **creditos
        }
    
    def setCaminhos(self, caminho_projetoECreditos, caminho_cabecalho):
        self.caminho_projetoECreditos = caminho_projetoECreditos
        self.caminho_cabecalho = caminho_cabecalho

    def setEtapas(self, list_etapas):
        self.list_etapas = list_etapas

    def setDictsQpts(self, dict_qpts):
        self.dict_qpts = dict_qpts
    
    def editQpts(self, composition, dict_qpts):
        for dict_qpt in dict_qpts:            
            x_0 = dict_qpt['x_0']
            y_0 = dict_qpt['y_0']
            width = dict_qpt['width']
            height = dict_qpt['height']
            caminho_qpt = dict_qpt['caminho']
            print(caminho_qpt)
            if caminho_qpt is not None:
                copied_qpt = copyQptToCompositor(caminho_qpt, composition, x_0, y_0, width, height)
        
        

    def editHeaderProjectCredits(self, composition, caminho_projetoECreditos, caminho_cabecalho):
        # Configurações dos creditos e projeto
        x0_projeto = 7
        y0_projeto = 487
        qptWidth_projeto = 110
        qptHeight_projeto = 70
        # Conficuracoes cabecalho
        x0_cabecalho = 7
        y0_cabecalho = 7
        qptWidth_cabecalho = 110 
        qptHeight_cabecalho = 22
        copied_projeto = copyQptToCompositor(caminho_projeto, composition, x0_projeto, y0_projeto, qptWidth_projeto, qptHeight_projeto)
        copied_cabecalho = copyQptToCompositor(caminho_cabecalho, composition, x0_cabecalho, y0_cabecalho, qptWidth_cabecalho, qptHeight_cabecalho)
        
    def getParams(self):        
        pass

    def editHTMLS(self):	
        tipo_orto = 'ortoimagem_tipo_I'	
        tipo_topo = 'topografica'		
        selected_tipo = tipo_orto
        # self.editHTMLEtapa(selected_tipo)
        self.editHTMLInfoTecCarta(selected_tipo)
        if selected_tipo =='ortoimagem_tipo_I':
            self.editHTMLInfoOrto(selected_tipo)
    
    def replaceStr(self, original_text, dict_replace ):
        for variavel, valor  in dict_replace.items():
            original_text = original_text.replace(variavel, str(valor))	
        return original_text

    def customEtapa(self, composition, etapas=[]):
        label_tabela_etapas = composition.itemById("label_tabela_etapas")
        if label_tabela_etapas is not None:
            text_label_tabela_etapas = ''
            
            txt_file =  os.path.join(os.path.dirname(os.path.dirname(__file__)),'html_auto','etapas_auto.html')
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
                        col_nome = self.replaceStr('<td class = "lef" rowspan="{n_subetapas}">{nome}</td>', {'{n_subetapas}':n_subetapas,'{nome}':nome})                        
                        row.append(col_nome)
                    responsavel = subetapa['nome']                               
                    col_responsavel  = self.replaceStr('<td class = "mid" >{responsavel}</td>', {'{responsavel}':responsavel})
                    row.append(col_responsavel)
                    ano = subetapa['ano']                                      
                    col_ano = self.replaceStr('<td class = "rig" >{ano}</td>', {'{ano}':ano}) 
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
                '{dia}':dia,
                '{mes}':mes,
                '{ano}':ano,
                '{etapas}': str_etapas
            }

            edited = self.replaceStr(base_html,dados_data)
            label_tabela_etapas.setText(edited)
		
                
    def customSensores(self, composition, sensores=[]):
        # String to store sensor_txt
        edited = ''
        label_tabela_info_ortoimagem = composition.itemById("label_tabela_info_ortoimagem")

        if label_tabela_info_ortoimagem is not None:
            n_sensores = len(sensores)
            
            # Get the base html text            
            html_file_path =  os.path.join(os.path.dirname(os.path.dirname(__file__)),'html_auto','sensores_auto_one.html')
            if n_sensores > 1 :                                
                html_file_path =  os.path.join(os.path.dirname(os.path.dirname(__file__)),'html_auto','sensores_auto_multiple.html')
            file_data   = open(html_file_path, "r")
            base_html  = file_data.read()
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
                    edited = self.replaceStr(base_html,dados_sensor)                        
                elif 1 < n_sensores < 3:
                    base_row_multiple = '<tr >\
                        <td class = "lef" >{tipo}</td>\
                        <td class = "lef" >{plataforma}</td>\
                        <td class = "lef" >{nome}</td>\
                        <td class = "lef" >{resolucao}</td>\
                        <td class = "lef" >{bandas}</td>\
                        <td class = "lef" >{nivel_do_produto}</td>\
                    </tr>'
                    rows.append(self.replaceStr(base_row_multiple,dados_sensor))
            
            # Multiple sensors
            if 1 < n_sensores < 3:
                str_sensores = '\n'.join(rows)
                edited = self.replaceStr(base_html ,{'{sensores}': str_sensores})            
            label_tabela_info_ortoimagem.setText(edited)     

    def editHTMLInfoTecCarta(self, composition, scale, hemisferio, fuso,tipo_produto, info_tecnica={}):
        # Update tabela info carta
        label_tabela_info_carta = composition.itemById("label_tabela_info_carta")        
        if label_tabela_info_carta is not None:
            text_label_tabela_info_carta = label_tabela_info_carta.text()

            html_file_path = os.path.join(os.path.dirname(os.path.dirname(__file__)),'html_auto','informacoes_tecnicas_vetores.html')
            file_data   = open(html_file_path, "r")
            text_label_tabela_info_carta  = file_data.read()
            file_data.close()

            dados_data = {}

            # Add info_tecnica to dict
            corrected_info_tecnica = { "{" + k + "}": v for k, v in info_tecnica.items() }
            corrected_info_tecnica.update({"{tipo_produto}":tipo_produto})
            print(corrected_info_tecnica)
            dados_data.update(**corrected_info_tecnica)
            
            # Get curves info            
            dados_curva = curvas[str(scale)]
            for curva, equidistancia_value in dados_curva.items():
                equidistancia_key = "{equidistancia_curva_" + curva + "}"
                dados_data.update({equidistancia_key:str(equidistancia_value)})

            # Update hemisferio e false North
            hemisferio = 'Norte' if hemisferio == 'N' else 'Sul'
            dados_data.update({"{hemisferio}":hemisferio})
            falseNorth = '0' if hemisferio == 'N' else '10.000'
            dados_data.update({"{falseNorth}":falseNorth})

            # Update fuso            
            dados_data.update({"{fuso}":fuso})

            # Update meridianoCentral e posicao
            meridianoCentral = -180+(int(fuso)-1)*6 + 3 
            dados_data.update({"{meridianoCentral}": str(abs(meridianoCentral))})                                    
            posicao = 'W' if meridianoCentral < 0 else 'E'
            dados_data.update({"{posicao}": posicao})

            # Replace dados data in base html and set text
            label_tabela_info_carta.setText(self.replaceStr(text_label_tabela_info_carta, dados_data))