from qgis.core import (QgsProcessing, QgsProcessingParameterMultipleLayers, QgsProcessingAlgorithm, QgsProcessingParameterEnum, NULL)
from qgis.PyQt.QtCore import QCoreApplication
from .processingUtils import ProcessingUtils

class ChangeAttribute(QgsProcessingAlgorithm): 

    INPUT_LAYER_LIST = 'INPUT_LAYER'
    OUTPUT = 'OUTPUT'
    SCALE = 'SCALE'

    def initAlgorithm(self, config = None):
        self.addParameter(
            QgsProcessingParameterMultipleLayers(
                self.INPUT_LAYER_LIST,
                self.tr('Selecione as camadas a serem alteradas.'),
                QgsProcessing.TypeVectorAnyGeometry
            )
        )
        self.addParameter(
            QgsProcessingParameterEnum(
                self.SCALE,
                self.tr('Selecione a escala de edição'),
                options = [self.tr('1:25.000'), self.tr('1:50.000'), self.tr('1:100.000'), self.tr('1:250.000')]
            )
        )

    def processAlgorithm(self, parameters, context, feedback):      
        layer_list = self.parameterAsLayerList(parameters, self.INPUT_LAYER_LIST, context)
        gridScaleParam = self.parameterAsInt(parameters, self.SCALE, context)

        if gridScaleParam == 0:
            scale = 25000
        elif gridScaleParam == 1:
            scale = 50000
        elif gridScaleParam == 2:
            scale = 100000
        elif gridScaleParam == 3:
            scale = 250000

        for layer in layer_list:
            if layer.dataProvider().uri().table() in ['constr_extracao_mineral_p', 'constr_extracao_mineral_a']:
                self.defaultExtMineral(layer)
            elif layer.dataProvider().uri().table() in ['elemnat_elemento_hidrografico_p', 'elemnat_elemento_hidrografico_l', 'elemnat_elemento_hidrografico_a']:
                self.defaultElemnatElemHid(layer)   
            elif layer.dataProvider().uri().table() in ['elemnat_ilha_p', 'elemnat_ilha_a']:
                self.defaultIlha(layer, scale)
            elif layer.dataProvider().uri().table() in ['elemnat_ponto_cotado_p']:
                self.defaultPtoCotado(layer)
            elif layer.dataProvider().uri().table() in ['elemnat_toponimo_fisiografico_natural_p', 'elemnat_toponimo_fisiografico_natural_l']:
                self.defaultElemnatTopoFisio(layer)
            elif layer.dataProvider().uri().table() in ['infra_elemento_energia_p', 'infra_elemento_energia_l', 'infra_elemento_energia_a']:
                self.defaultInfraElemEnerg(layer)
            elif layer.dataProvider().uri().table() in ['infra_elemento_infraestrutura_p', 'infra_elemento_infraestrutura_l', 'infra_elemento_infraestrutura_a']:
                self.defaultInfraElemInfra(layer)
            elif layer.dataProvider().uri().table() in ['edicao_area_pub_militar_l', 'edicao_limite_legal_l', 'edicao_terra_indigena_l', 'edicao_unidade_conservacao_l']:
                self.defaultEdicao(layer)
            elif layer.dataProvider().uri().table() in ['elemnat_curva_nivel_l']:
                self.defaultCurvaNivel(layer)
            elif layer.dataProvider().uri().table() in ['infra_ferrovia_l']:
                self.defaultFerrovia(layer)
            elif layer.dataProvider().uri().table() in ['infra_via_deslocamento_l']:
                self.defaultViaDesloc(layer)
            elif layer.dataProvider().uri().table() in ['cobter_massa_dagua_a']:
                self.defaultMassaDagua(layer, scale)
            elif layer.dataProvider().uri().table() in ['infra_pista_pouso_p', 'infra_pista_pouso_l', 'infra_pista_pouso_a']:
                self.defaultPistaPouso(layer)
            elif layer.dataProvider().uri().table() in ['llp_area_pub_militar_a', 'llp_terra_indigena_a', 'llp_unidade_conservacao_a']:
                self.defaultllp(layer, scale)
            elif layer.dataProvider().uri().table() in ['edicao_area_sem_dados_a']:
                self.defaultAreaSemDados(layer, scale)
            elif layer.dataProvider().uri().table() in ['elemnat_trecho_drenagem_l']:
                self.defaultTrechoDrenagem(layer)

        return{self.OUTPUT: '' }
            
    def defaultExtMineral(self, layer):
        layer.startEditing()
        for feature in layer.getFeatures():
            feature['justificativa_txt'] = 1
            if feature['tipo'] == 1:
                feature['texto_edicao'] = 'Poço'
            elif feature['tipo'] == 4:
                feature['texto_edicao'] = 'Pedreira'
            elif feature['tipo'] == 5:
                feature['texto_edicao'] = 'Garimpo'
            elif feature['tipo'] == 6:
                feature['texto_edicao'] = 'Salina'
            elif feature['tipo'] == 8:
                feature['texto_edicao'] = 'Petróleo'
            layer.updateFeature(feature)

    def defaultElemnatElemHid(self, layer):
        layer.startEditing()
        if layer.dataProvider().uri().table() in ['elemnat_elemento_hidrografico_p', 'elemnat_elemento_hidrografico_l']:
            for feature in layer.getFeatures():
                feature['justificativa_txt'] = 1
                if feature['nome'] == '':
                    if feature['tipo'] == 9:
                        feature['texto_edicao'] = 'Cachoreira'
                    elif feature['tipo' ] == 10:
                        feature['texto_edicao'] = 'Salto'
                    elif feature['tipo' ] == 11:
                        feature['texto_edicao'] = 'Catarata'
                    elif feature['tipo' ] == 12:
                        feature['texto_edicao'] = 'Corredeira'
                else:
                    feature['texto_edicao'] == feature['nome']
                layer.updateFeature(feature)
        elif layer.dataProvider().uri().table() in ['elemnat_elemento_hidrografico_a']:
            for feature in layer.getFeatures():
                feature['justificativa_txt'] = 1
                if feature['nome'] == '':
                    feature['texto_edicao'] = 'Corredeira'
                else:
                    feature['texto_edicao'] == feature['nome']
                layer.updateFeature(feature)

    def defaultIlha(self, layer, scale):
        layer.startEditing()
        lyrCrs = layer.dataProvider().crs()
        if layer.dataProvider().uri().table() in ['elemnat_ilha_p']:
            for feature in layer.getFeatures():
                feature['texto_edicao'] = feature['nome']
                feature['tamanho_txt'] = 7
                feature['justificativa_txt'] = 2
                layer.updateFeature(feature)
        if layer.dataProvider().uri().table() in ['elemnat_ilha_a']:
            for feature in layer.getFeatures():
                feature['texto_edicao'] = feature['nome']
                feature['justificativa_txt'] = 2
                size = ProcessingUtils.getWaterPolyLabelFontSize(feature, scale, lyrCrs)
                feature['tamanho_txt'] = size if size > 6 else 7
                layer.updateFeature(feature)

    def defaultPtoCotado(self, layer):
        layer.startEditing()
        for feature in layer.getFeatures():
            feature['visivel'] = 1
            feature['ancora_vertical'] = 1
            feature['ancora_horizontal'] = 1
            layer.updateFeature(feature)
    
    def defaultElemnatTopoFisio(self, layer):
        layer.startEditing()
        for feature in layer.getFeatures():
            feature['texto_edicao'] = feature['nome']
            if layer.dataProvider().uri().table() in ['elemnat_toponimo_fisiografico_natural_p']:
                feature['justificativa_txt'] = 1
            layer.updateFeature(feature)

    def defaultInfraElemEnerg(self, layer):
        layer.startEditing()
        for feature in layer.getFeatures():
            feature['visivel'] = 1
            if layer.dataProvider().uri().table() in ['infra_elemento_energia_p', 'infra_elemento_energia_a']:
                feature['justificativa_txt'] = 1
                feature['texto_edicao'] = 'Subestação'
            else:
                continue
            layer.updateFeature(feature)

    def defaultInfraElemInfra(self, layer):
        layer.startEditing()
        for feature in layer.getFeatures():
            feature['texto_edicao'] = 'Atracadouro'
            feature['justificativa_txt'] = 1
            layer.updateFeature(feature)
        
    def defaultEdicao(self, layer):
        layer.startEditing()
        for feature in layer.getFeatures():
            feature['exibir_rotulo_aproximado'] = 1
            layer.updateFeature(feature)
    
    def defaultCurvaNivel(self, layer):
        layer.startEditing()
        for feature in layer.getFeatures():
            feature['visivel'] = 1
            if feature['cota'] == 0:
                feature['texto_edicao'] = 'ZERO'
            elif feature['cota'] < 0:
                feature['texto_edicao'] = 'MENOS ' + feature['cota']
            else:
                feature['texto_edicao'] = feature['cota']
            layer.updateFeature(feature)

    def defaultFerrovia(self, layer):
        layer.startEditing()
        for feature in layer.getFeatures():
            feature['visivel'] = 1
            feature['texto_edicao'] = feature['nome']
            layer.updateFeature(feature)

    def defaultViaDesloc(self, layer):
        layer.startEditing()
        for feature in layer.getFeatures():
            feature['visivel'] = 1
            feature['texto_edicao'] = feature['nome']
            layer.updateFeature(feature)
    
    def defaultMassaDagua(self, layer, scale):
        layer.startEditing()
        lyrCrs = layer.dataProvider().crs()
        for feature in layer.getFeatures():
            feature[ 'justificativa_txt' ] = 2
            feature[ 'apresentar_simbologia' ] = 2
            if feature[ 'tipo' ] in [3, 4, 5, 6, 7, 11]:
                feature[ 'texto_edicao' ] = feature[ 'nome' ]
            size = ProcessingUtils.getWaterPolyLabelFontSize(feature, scale, lyrCrs)
            feature['tamanho_txt'] = size if size > 6 else 7
            layer.updateFeature(feature)
        
    def defaultPistaPouso(self, layer):
        layer.startEditing()
        for feature in layer.getFeatures():
            feature['justificativa_txt'] = 2
            feature['visivel'] = 1
            texto_edicao = []
            if feature['nome'] != NULL:
                texto_edicao.append(feature['nome'])
            if feature['situacao_fisica'] != 3:
                texto_edicao.append('(' + feature['situacao_fisica'].lower() + ')')
            if feature['revestimento'] != 3:
                texto_edicao.append('Revestimento desconhecido')
            if feature['altitude'] != NULL:
                texto_edicao.append(feature['altitude'])
            print(texto_edicao)
            feature['texto_edicao'] = '|'.join(map(str, texto_edicao))
            layer.updateFeature(feature)

    def defaultllp(self, layer, scale):
        layer.startEditing()
        lyrCrs = layer.dataProvider().crs()
        for feature in layer.getFeatures():
            feature[ 'justificativa_txt' ] = 2
            feature[ 'texto_edicao' ] = feature ['nome']
            size = ProcessingUtils.getWaterPolyLabelFontSize(feature, scale, lyrCrs)
            feature['tamanho_txt'] = size if size > 6 else 7
            layer.updateFeature(feature)
        
    def defaultAreaSemDados(self, layer, scale):
        layer.startEditing()
        lyrCrs = layer.dataProvider().crs()
        for feature in layer.getFeatures():
            feature[ 'justificativa_txt' ] = 2
            feature[ 'texto_edicao' ] = 'DADOS INCOMPLETOS'
            size = ProcessingUtils.getWaterPolyLabelFontSize(feature, scale, lyrCrs)
            feature['tamanho_txt'] = size if size > 6 else 7
            layer.updateFeature(feature)
    
    def defaultTrechoDrenagem(self, layer):
        layer.startEditing()
        for feature in layer.getFeatures():
            feature['visivel'] = 1
            if feature['situacao_em_poligono'] != 4:
                feature['texto_edicao'] = feature['nome']
            if feature['situacao_em_poligono'] in [2, 3]:
                feature['posicao_rotulo'] = 1
            if feature['situacao_em_poligono'] in [1]:
                feature['posicao_rotulo'] = 2
            layer.updateFeature(feature)

    def tr(self, string):
        return QCoreApplication.translate('Processing', string)

    def createInstance(self):
        return ChangeAttribute()

    def name(self):
        return 'changeattribute'

    def displayName(self):
        return self.tr('Configura os Atributos de Edição de Carta Ortoimagem')

    def group(self):
        return self.tr('Edição')

    def groupId(self):
        return 'edicao'

    def shortHelpString(self):
        return self.tr("")