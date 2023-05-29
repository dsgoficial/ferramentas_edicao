from qgis.core import (QgsFeatureRequest, QgsProcessing, QgsProcessingParameterMultipleLayers, QgsFeature,
                       QgsProcessingAlgorithm, QgsGeometry, QgsProcessingParameterString, QgsProject, QgsProcessingParameterEnum)
from qgis.PyQt.QtCore import QCoreApplication, QVariant
from qgis import processing


class SetSobrepositionOrtho(QgsProcessingAlgorithm): 

    INPUT_LAYER_SOBREPOSITION = 'INPUT_LAYER_SOBREPOSITION'
    INPUT_POLYGONS = 'INPUT_POLYGONS'
    INPUT_LAYER_TO_CHECK = 'INPUT_LAYER_TO_CHECK'
    OUTPUT = 'OUTPUT'

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterMultipleLayers(
                self.INPUT_LAYER_SOBREPOSITION,
                self.tr('Selecione as camadas a serem alteradas.'),
                QgsProcessing.TypeVectorLine
            )
        )
        self.addParameter(
            QgsProcessingParameterMultipleLayers(
                self.INPUT_LAYER_TO_CHECK,
                self.tr('Selecione as camadas de conferência.'),
                QgsProcessing.TypeVectorLine
            )
        )
        self.addParameter(
            QgsProcessingParameterMultipleLayers(
                self.INPUT_POLYGONS,
                self.tr('Selecione os polígonos de conferência.'),
                QgsProcessing.TypeVectorPolygon
            )
        )

    def processAlgorithm(self, parameters, context, feedback):      
        layers_sobreposition_list = self.parameterAsLayerList(parameters, self.INPUT_LAYER_SOBREPOSITION, context)
        layers_to_check = self.parameterAsLayerList(parameters, self.INPUT_LAYER_TO_CHECK, context)
        polygons_layers = self.parameterAsLayerList(parameters, self.INPUT_POLYGONS, context)

        merged = self.mergelayer([x for x in layers_to_check if x.dataProvider().uri().table() in ['elemnat_trecho_drenagem_l', 'infra_via_deslocamento_l', 'infra_ferrovia_l']])

        for polygon_layer in polygons_layers:
            if polygon_layer.dataProvider().uri().table() == 'llp_area_pub_militar_a':
                nome = 'edicao_area_pub_militar_l'
            elif polygon_layer.dataProvider().uri().table() == 'llp_terra_indigena_a':
                nome = 'edicao_terra_indigena_l'
            elif polygon_layer.dataProvider().uri().table() == 'llp_unidade_conservacao_a':
                nome = 'edicao_unidade_conservacao_l'
            else:
                continue
            layer = [x for x in layers_sobreposition_list if x.dataProvider().uri().table() == nome][0]
            polygon_layer = self.dissolve(polygon_layer)
            line_layer = self.polytoline(polygon_layer)
            layer.startEditing()
            layer.beginEditCommand('Iniciando edição.')
            intersect = self.intersect(line_layer, merged)
            for feature in intersect.getFeatures():
                feat = QgsFeature(layer.fields())
                feat['sobreposto'] = 1
                feat.setGeometry(feature.geometry())
                feat['geometria_aproximada'] = feature['geometria_aproximada']
                feat['tipo'] = feature['tipo']
                feat['nome'] = feature['nome']
                feat['exibir_rotulo_aproximado'] = 1
                layer.addFeature(feat)
            difference = self.difference(line_layer, merged)
            for feature in difference.getFeatures():
                feat = QgsFeature(layer.fields())
                feat['sobreposto'] = 2
                feat.setGeometry(feature.geometry())
                feat['geometria_aproximada'] = feature['geometria_aproximada']
                feat['tipo'] = feature['tipo']
                feat['nome'] = feature['nome']
                feat['exibir_rotulo_aproximado'] = 1
                layer.addFeature(feat)
            
            layer.endEditCommand()

        return {self.OUTPUT: ''}
    
    def mergelayer(self, layers):
        m = processing.run(
            'native:mergevectorlayers',
            {
                'LAYERS': layers,
                'OUTPUT' : 'TEMPORARY_OUTPUT'
            }
        )
        return m['OUTPUT']
    
    def dissolve(self, layer):
        dissolve = processing.run(
            'native:dissolve',
            {
                'INPUT': layer,
                'FIELD': ['nome'],
                'OUTPUT': 'TEMPORARY_OUTPUT'
            }
        )
        return dissolve['OUTPUT']
    
    def polytoline(self, layer):
        line = processing.run(
            'native:polygonstolines',
            {
                'INPUT': layer,
                'OUTPUT': 'TEMPORARY_OUTPUT'
            }
        )
        return line['OUTPUT']

    def intersect(self, layer, overlaylayer):
        intersect = processing.run(
            'native:intersection',
            {
                'INPUT': layer,
                'OVERLAY': overlaylayer,
                'OUTPUT': 'TEMPORARY_OUTPUT'
            }
        )
        return intersect['OUTPUT']

    def difference(self, layer, overlaylayer):
        diff = processing.run(
            'native:difference',
            {
                'INPUT': layer,
                'OVERLAY': overlaylayer,
                'OUTPUT': 'TEMPORARY_OUTPUT'
            }
        )
        return diff['OUTPUT']

    def tr(self, string):
        return QCoreApplication.translate('Processing', string)

    def createInstance(self):
        return SetSobrepositionOrtho()

    def name(self):
        return 'setsobrepositionortho'

    def displayName(self):
        return self.tr('Configura Sobreposição de Linhas Carta Orto')

    def group(self):
        return self.tr('Edição')

    def groupId(self):
        return 'edicao'

    def shortHelpString(self):
        return self.tr("""A rotina altera o atributo 'sobreposto' das camadas de entrada caso essas camadas tenham interseção com uma camada a ser sobreposta.
                       
                       As entradas são do tipo linha e o atributo a ser alterado é do tipo texto e deve ser exatamente conforme o nome do atributo a ser alterado da camada de entrada.""")