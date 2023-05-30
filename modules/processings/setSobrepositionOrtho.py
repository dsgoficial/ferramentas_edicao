from qgis.core import (
    QgsProcessing,
    QgsFeature,
    QgsProcessingAlgorithm,
    QgsProcessingParameterVectorLayer
)
from qgis.PyQt.QtCore import QCoreApplication
from qgis import processing

class SetSobrepositionOrtho(QgsProcessingAlgorithm):
    INPUT_MOLDURA = 'INPUT_MOLDURA'
    INPUT_LAYER_SOBREPOSITION_MIL = 'INPUT_LAYER_SOBREPOSITION_MIL'
    INPUT_LAYER_SOBREPOSITION_IND = 'INPUT_LAYER_SOBREPOSITION_IND'
    INPUT_LAYER_SOBREPOSITION_CON = 'INPUT_LAYER_SOBREPOSITION_CON'
    INPUT_POLYGON_MIL = 'INPUT_POLYGON_MIL'
    INPUT_POLYGON_IND = 'INPUT_POLYGON_IND'
    INPUT_POLYGON_CON = 'INPUT_POLYGON_CON'
    INPUT_LAYER_TO_CHECK_DRE = 'INPUT_LAYER_TO_CHECK_DRE'
    INPUT_LAYER_TO_CHECK_VIA = 'INPUT_LAYER_TO_CHECK_VIA'
    INPUT_LAYER_TO_CHECK_FER = 'INPUT_LAYER_TO_CHECK_FER'
    OUTPUT = 'OUTPUT'

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_MOLDURA,
                self.tr('Selecionar camada de edição de área pública militar linha'),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue='aux_moldura_a'
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_SOBREPOSITION_MIL,
                self.tr('Selecionar camada de edição de área pública militar linha'),
                [QgsProcessing.TypeVectorLine],
                defaultValue='edicao_area_pub_militar_l'
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_SOBREPOSITION_IND,
                self.tr('Selecionar camada de edição terra indígena linha'),
                [QgsProcessing.TypeVectorLine],
                defaultValue='edicao_terra_indigena_l'
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_SOBREPOSITION_CON,
                self.tr('Selecionar camada de edição de unidade de conservação linha'),
                [QgsProcessing.TypeVectorLine],
                defaultValue='edicao_unidade_conservacao_l'
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_POLYGON_MIL,
                self.tr('Selecionar camada de area publica militar área'),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue='llp_area_pub_militar_a'
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_POLYGON_IND,
                self.tr('Selecionar camada de terra indigena área'),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue='llp_terra_indigena_a'
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_POLYGON_CON,
                self.tr('Selecionar camada de unidade de conservacao área'),
                [QgsProcessing.TypeVectorPolygon],
                defaultValue='llp_unidade_conservacao_a'
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_TO_CHECK_DRE,
                self.tr('Selecione as camadas de conferência.'),
                [QgsProcessing.TypeVectorLine],
                defaultValue='elemnat_trecho_drenagem_l'
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_TO_CHECK_VIA,
                self.tr('Selecione as camadas de conferência.'),
                [QgsProcessing.TypeVectorLine],
                defaultValue='infra_via_deslocamento_l'
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_TO_CHECK_FER,
                self.tr('Selecione as camadas de conferência.'),
                [QgsProcessing.TypeVectorLine],
                defaultValue='infra_ferrovia_l'
            )
        )

    def processAlgorithm(self, parameters, context, feedback): 
        # Camadas de entrada
        layer_moldura = self.parameterAsVectorLayer(parameters, self.INPUT_MOLDURA, context)
        layer_mil = self.parameterAsVectorLayer(parameters, self.INPUT_LAYER_SOBREPOSITION_MIL, context)
        layer_ind = self.parameterAsVectorLayer(parameters, self.INPUT_LAYER_SOBREPOSITION_IND, context)
        layer_con = self.parameterAsVectorLayer(parameters, self.INPUT_LAYER_SOBREPOSITION_CON, context)
        layers_sobreposition_list = [layer_mil, layer_ind, layer_con]
        layer_pol_mil = self.parameterAsVectorLayer(parameters, self.INPUT_POLYGON_MIL, context)
        layer_pol_ind = self.parameterAsVectorLayer(parameters, self.INPUT_POLYGON_IND, context)
        layer_pol_con = self.parameterAsVectorLayer(parameters, self.INPUT_POLYGON_CON, context)
        polygons_layers = [layer_pol_mil, layer_pol_ind, layer_pol_con]
        layer_dre = self.parameterAsVectorLayer(parameters, self.INPUT_LAYER_TO_CHECK_DRE, context)
        layer_via = self.parameterAsVectorLayer(parameters, self.INPUT_LAYER_TO_CHECK_VIA, context)
        layer_fer = self.parameterAsVectorLayer(parameters, self.INPUT_LAYER_TO_CHECK_FER, context)

        # Filtrar visivel e situacao em poligono para mergear
        drenagem_filtrada = self.runExtractByExpression(layer_dre, expression=''' "visivel" = 1 AND "situacao_em_poligono" = 1''')
        via_deslocamento_filtrada = self.runExtractByExpression(layer_via, expression=''' "visivel" = 1 ''')
        ferrovia_filtrada = self.runExtractByExpression(layer_fer, expression=''' "visivel" = 1 ''')
        merged = self.runMergeLayer([drenagem_filtrada, via_deslocamento_filtrada, ferrovia_filtrada])

        # Criar índice espacial
        self.runCreateSpatialIndex(merged)

        # Criar dicionário de mapeamento
        layer_map_dict = {
            "llp_area_pub_militar_a": "edicao_area_pub_militar_l",
            "llp_terra_indigena_a": "edicao_terra_indigena_l",
            "llp_unidade_conservacao_a": "edicao_unidade_conservacao_l",
        }
        edit_layer_dict = {
            lyr.name(): lyr for lyr in layers_sobreposition_list
        }

        # Dissolver moldura e converter em linha
        moldura_dissolved = self.runDissolve(layer_moldura)
        moldura_linha = self.runPolyToLine(moldura_dissolved)

        # Percorrer as camadas de poligono e alterar o atributo "sobreposto" das camadas de edicao
        for polygon_layer in polygons_layers:
            dissolved_polygon_layer = self.runDissolve(polygon_layer)
            line_layer = self.runPolyToLine(dissolved_polygon_layer)
            # Remover a moldura linha
            line_layer_diff = self.runDifference(line_layer, moldura_linha)
            polygon_boundary_layer = edit_layer_dict[layer_map_dict[polygon_layer.name()]]
            polygon_boundary_layer.startEditing()
            polygon_boundary_layer.beginEditCommand('Iniciando edição.')
            intersect = self.runIntersect(line_layer_diff, merged)
            self.createNewFeaturesFromLayer(polygon_boundary_layer, intersect, polygon_layer.name(), sobreposto=1)
            difference = self.runDifference(line_layer_diff, merged)
            self.createNewFeaturesFromLayer(polygon_boundary_layer, difference, polygon_layer.name(), sobreposto=2)
            
            polygon_boundary_layer.endEditCommand()

        return {self.OUTPUT: ''}

    def createNewFeaturesFromLayer(self, polygon_boundary_layer, layer, layer_name, sobreposto):
        featList = [
            self.createNewFeat(polygon_boundary_layer, feature, layer_name, sobreposto=sobreposto) for feature in layer.getFeatures()
        ]
        polygon_boundary_layer.addFeatures(featList)

    def createNewFeat(self, polygon_boundary_layer, feature, layer_name, sobreposto=1):
        feat = QgsFeature(polygon_boundary_layer.fields())
        feat['sobreposto'] = sobreposto
        feat.setGeometry(feature.geometry())
        feat['geometria_aproximada'] = feature['geometria_aproximada']
        feat['nome'] = feature['nome']
        feat['exibir_rotulo_aproximado'] = 1
        if layer_name == 'llp_unidade_conservacao_a':
            feat["tipo"] = feature["tipo"]
        return feat

    def runMergeLayer(self, layers):
        m = processing.run(
            "native:mergevectorlayers", {"LAYERS": layers, "OUTPUT": "TEMPORARY_OUTPUT"}
        )
        return m['OUTPUT']

    def runExtractByExpression(self, layer, expression):
        extractbyexpression = processing.run(
            'native:extractbyexpression',
            {
                'INPUT': layer,
                'EXPRESSION': expression,
                'OUTPUT': 'TEMPORARY_OUTPUT'
            }
        )
        return extractbyexpression['OUTPUT']

    def runDissolve(self, layer):
        dissolve = processing.run(
            "native:dissolve",
            {"INPUT": layer, "FIELD": ["nome"], "OUTPUT": "TEMPORARY_OUTPUT"},
        )
        return dissolve['OUTPUT']

    def runPolyToLine(self, layer):
        line = processing.run(
            "native:polygonstolines", {"INPUT": layer, "OUTPUT": "TEMPORARY_OUTPUT"}
        )
        return line["OUTPUT"]

    def runIntersect(self, layer, overlaylayer):
        intersect = processing.run(
            "native:intersection",
            {"INPUT": layer, "OVERLAY": overlaylayer, "OUTPUT": "TEMPORARY_OUTPUT"},
        )
        return intersect["OUTPUT"]

    def runDifference(self, layer, overlaylayer):
        diff = processing.run(
            "native:difference",
            {"INPUT": layer, "OVERLAY": overlaylayer, "OUTPUT": "TEMPORARY_OUTPUT"},
        )
        return diff['OUTPUT']

    def runCreateSpatialIndex(self, layer):
        output = processing.run(
            "native:createspatialindex",
            {'INPUT': layer},
            is_child_algorithm=True,
        )
        return layer

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return SetSobrepositionOrtho()

    def name(self):
        return "setsobrepositionortho"

    def displayName(self):
        return self.tr("Configura Sobreposição de Linhas Carta Orto")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return self.tr(
            """A rotina altera o atributo 'sobreposto' das camadas de entrada caso essas camadas tenham interseção com uma camada a ser sobreposta.

                        As entradas são do tipo linha e o atributo a ser alterado é do tipo texto e deve ser exatamente conforme o nome do atributo a ser alterado da camada de entrada."""
        )