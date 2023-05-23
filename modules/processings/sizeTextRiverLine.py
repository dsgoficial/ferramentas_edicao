from qgis.core import (QgsProcessing, QgsProcessingParameterVectorLayer, 
                       QgsProcessingAlgorithm, QgsProcessingParameterEnum)
from qgis.PyQt.QtCore import QCoreApplication
from qgis import processing
from .processingUtils import ProcessingUtils

class SizeTextRiverLine(QgsProcessingAlgorithm):

    INPUT_LAYER_L = 'INPUT_LAYER_L'
    INPUT_FRAME_A = 'INPUT_FRAME_A'
    OUTPUT = 'OUTPUT'
    SCALE = 'SCALE'
    PRODUCT = 'PRODUCT'

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_L,
                self.tr('Selecionar camada de drenagem'),
                [QgsProcessing.TypeVectorLine]
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_FRAME_A,
                self.tr('Selecionar camada de moldura'),
                [QgsProcessing.TypeVectorPolygon]
            )
        )
        self.addParameter(
            QgsProcessingParameterEnum(
                self.SCALE,
                self.tr('Selecione a escala de edição'),
                options=[self.tr('1:25.000'), self.tr('1:50.000'), self.tr(
                    '1:100.000'), self.tr('1:250.000')]
            )
        )
        self.addParameter(
            QgsProcessingParameterEnum(
                self.PRODUCT,
                self.tr('Selecione o tipo de produto'),
                options=[self.tr('Carta Ortoimagem'), self.tr('Carta Topográfica')]
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        drainageLayer = self.parameterAsVectorLayer(parameters, self.INPUT_LAYER_L, context)
        frameLayer = self.parameterAsVectorLayer(parameters, self.INPUT_FRAME_A, context)
        gridScaleParam = self.parameterAsInt(parameters, self.SCALE, context)
        self.productParam = self.parameterAsInt(parameters, self.PRODUCT, context)

        if gridScaleParam == 0:
            self.scale = 25000
        elif gridScaleParam == 1:
            self.scale = 50000
        elif gridScaleParam == 2:
            self.scale = 100000
        elif gridScaleParam == 3:
            self.scale = 250000

        lines = self.runAddCount(drainageLayer, feedback=feedback)
        self.runCreateSpatialIndex(lines, feedback=feedback)

        merged = self.getMergedRiver(lines, frameLayer)

        self.sizeText(merged)

        bufferRiver = self.bufferRiver(merged)
        self.runCreateSpatialIndex(bufferRiver, feedback=feedback)

        joinedAttribute = self.joinAttribute(lines, bufferRiver)

        id_to_tamanho = {}
        for feature in joinedAttribute.getFeatures():
            id_to_tamanho[feature['id']] = feature['join_tamanho_txt']

        drainageLayer.startEditing()
        drainageLayer.beginEditCommand("Atualizando atributos")
        for feature in drainageLayer.getFeatures():
            new_att = {}
            new_att[feature.fieldNameIndex('tamanho_txt')] = id_to_tamanho[feature['id']]
            drainageLayer.dataProvider().changeAttributeValues({feature.id(): new_att})
        drainageLayer.endEditCommand()

        return {self.OUTPUT: ''}
    
    def getMergedRiver(self, layer, frame):
        merged = processing.run(
            'ferramentasedicao:mergerivers',
            {
                'INPUT_LAYER_L' : layer,
                'INPUT_FRAME_A' : frame,
                'OUTPUT_LAYER_L': 'TEMPORARY_OUTPUT'
            }
        )
        return merged['OUTPUT_LAYER_L']
    
    def sizeText(self, layer):
        lyrCrs = layer.dataProvider().crs()
        layer.startEditing()
        layer.beginEditCommand("Atualizando atributos")
        for feature in layer.getFeatures():
            new_att = {}
            size = ProcessingUtils.getRiverOutPolyLabelFontSize(feature, self.scale, lyrCrs)
            if self.productParam == 0: #Para carta ortoimagem o tamanho mínimo é 7
                size = size if size > 6 else 7
            new_att[feature.fieldNameIndex('tamanho_txt')] = size
            layer.dataProvider().changeAttributeValues({feature.id(): new_att})
        layer.endEditCommand()

    def bufferRiver(self, inputLyr):
        bufferRiver = processing.run(
            'native:buffer',
            {
                'INPUT': inputLyr,
                'DISTANCE': 0.000001,
                'SEGMENTS': 5,
                'END_CAP_STYLE': 0,
                'JOIN_STYLE': 0,
                'MITER_LIMIT': 2.0,
                'DISSOLVE': False,
                'OUTPUT': 'TEMPORARY_OUTPUT'
            }
        )
        return bufferRiver['OUTPUT']
    
    def joinAttribute(self, inputLyr, bufferLyr):
        joinLayer = processing.run(
            'native:joinattributesbylocation',
            {
                'INPUT': inputLyr,
                'PREDICATE': [5],
                'JOIN': bufferLyr,
                'JOIN_FIELDS': ['tamanho_txt'],
                'METHOD': 0,
                'DISCARD_NONMATCHING': False,
                'PREFIX': 'join_',
                'OUTPUT': 'TEMPORARY_OUTPUT'
            }
        )
        return joinLayer['OUTPUT']

    def runAddCount(self, inputLyr, feedback):
        output = processing.run(
            "native:addautoincrementalfield",
            {
                'INPUT':inputLyr,
                'FIELD_NAME':'AUTO',
                'START':0,
                'GROUP_FIELDS':[],
                'SORT_EXPRESSION':'',
                'SORT_ASCENDING':False,
                'SORT_NULLS_FIRST':False,
                'OUTPUT':'TEMPORARY_OUTPUT'
            },
            feedback=feedback
        )
        return output['OUTPUT']

    def runCreateSpatialIndex(self, inputLyr, feedback):
        processing.run(
            "native:createspatialindex",
            {'INPUT':inputLyr},
            feedback=feedback
        )

    def tr(self, string):
        return QCoreApplication.translate('Processing', string)

    def createInstance(self):
        return SizeTextRiverLine()

    def name(self):
        return 'sizetextriverline'

    def displayName(self):
        return self.tr('Define o tamanho do texto de acordo com o comprimento')

    def group(self):
        return self.tr('Edição')

    def groupId(self):
        return 'edicao'

    def shortHelpString(self):
        return self.tr("O algoritmo mergeia os trechos de drenagem e corta de acordo com a moldura, definindo assim o tamanho do rio para em seguida definir o tamanho_txt")
    