import json
from pathlib import Path
from collections import OrderedDict

from PyQt5.QtXml import QDomDocument
from PyQt5.QtCore import QPointF
from qgis.core import QgsReadWriteContext

class Legend():

    order_group = {
        'sistema_de_transporte': {
            'order': 0,
            'order_classes': ['rodovia_pavimentada', 'prefixo_rodovia_federal', 'rodovia_nao_pavimentada', 'prefixo_rodovia_estadual',
            'ferrovia_bitola_metrica', 'ferrovia_bitola_internacional_larga', 'pista_pouso_heliponto', 'atracadouro_terminal']
        },
        'hidrografia': {
            'order': 1,
            'order_classes': ['massa_dagua', 'trecho_drenagem', 'terreno_sujeito_inundacao', 'queda_dagua_corredeira', 'ilha']
        },
        'energia_e_comunicacoes': {
            'order': 2,
            'order_classes': ['subestacao_energia_eletrica', 'trecho_de_energia']
        },
        'estrutura_economica': {
            'order': 3,
            'order_classes': ['extracao_mineral']
        },
        'limites_e_localidades': {
            'order': 4,
            'order_classes': ['capital_federal_simbolo', 'capital_federal_texto', 'capital_estadual_simbolo', 'capital_estadual_texto', 
            'cidade_simbolo', 'cidade_texto','vila_simbolo', 'vila_texto', 'aglomerado_rural', 'nome_local', 'area_publica_militar', 'terra_indigena', 
            'unidade_conservacao', 'limite_estadual', 'limite_internacional']
        },
        'relevo': {
            'order': 5,
            'order_classes': ['curva_nivel_mestra', 'curva_nivel_depressao', 'curva_nivel_normal', 'ponto_cotado', 'curva_nivel_auxiliar',
            'elemento_fisiografico']
        },
        'classes_auxiliares': {
            'order': 6,
            'order_classes': ['obstaculo_vertical', 'area_sem_dados']
        }
    }

    def __init__(self):
        _p = Path(__file__).parent.parent / 'produtos' / 'carta_ortoimagem' 
        self.qptsPath = _p / 'symbols' / 'legend'
        with open(_p / 'mapClassToLegend.json') as mappingData:
            self.legendMappingData = json.load(mappingData)
    
    def buildLegend(self, composition, legendDict, anchor):
        xAnchor, yAnchor = anchor
        x, y = xAnchor, yAnchor
        ySpacing = 4.8
        xSpacingFirstColumn = 2
        xSpacing = 56
        width = 115
        changeColumn = True
        context = QgsReadWriteContext()
        for group, labels in legendDict.items():
            position = QPointF(x,y)
            domGroup = self.loadQDomComponent(self.qptsPath / f'group_{group}.qpt')
            composition.addItemsFromXml(domGroup.documentElement(), domGroup, context, position)
            y += 1.5*ySpacing
            for label in labels:
                x += xSpacingFirstColumn
                position = QPointF(x,y)
                domGroup = self.loadQDomComponent(self.qptsPath / f'{label}.qpt')
                composition.addItemsFromXml(domGroup.documentElement(), domGroup, context, position)
                x = xAnchor + xSpacing if changeColumn else xAnchor
                y = y + ySpacing if not changeColumn else y
                changeColumn = not changeColumn
            x = xAnchor
            y += ySpacing if changeColumn else 2*ySpacing
            changeColumn = True

    def groupLegend(self, classes, legendMappingData):
        groupedClasses = dict()
        for _cls in classes:
            _groupInfo = legendMappingData.get(_cls)
            if _groupInfo is None:
                continue
            group = _groupInfo.get("group")
            labels = _groupInfo.get("labels")
            if group is None:
                continue
            if (_p:=groupedClasses.get(group)) and isinstance(_p, set):
                _p.update(labels)
            else:
                groupedClasses.update({group:set(labels)})
        return groupedClasses

    def orderLegend(self, legend):
        orderedLegend = OrderedDict()
        for group in sorted(legend, key=lambda x: self.order_group.get(x).get('order')):
            classes = legend.get(group)
            orderedLegend.update({group: sorted(classes, key=lambda x: self.order_group.get(group).get('order_classes').index(x))})
        return orderedLegend
        
    def loadQDomComponent(self, path):
        doc = QDomDocument()
        with open(path) as content:
            doc.setContent(content.read())
        return doc

    @staticmethod
    def getAnchor(scale):
        if str(scale) == '250':
            return 848, 16
        return 726, 16

    def make(self, composition, scale, cfg, defaults):
        legendMappingData = self.legendMappingData.get(str(scale))
        legendClassesToDisplay = defaults.orthoMandatoryClasses.union(defaults.orthoOptionalClasses.intersection(set(cfg)))
        legendClassesGrouped = self.groupLegend(legendClassesToDisplay, legendMappingData)
        legendClassesOrdered = self.orderLegend(legendClassesGrouped)
        self.buildLegend(composition, legendClassesOrdered, self.getAnchor(scale))
            