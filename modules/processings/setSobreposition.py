from qgis.core import (QgsFeatureRequest, QgsProcessing, QgsProcessingParameterMultipleLayers,
                       QgsProcessingAlgorithm, QgsGeometry, QgsProcessingParameterString)
from qgis.PyQt.QtCore import QCoreApplication


class SetSobreposition(QgsProcessingAlgorithm): 

    INPUT_LAYER_SOBREPOSITION = 'INPUT_LAYER_SOBREPOSITION'
    INPUT_LAYER_TO_CALCULATE = 'INPUT_LAYER_TO_CALCULATE'
    ATRIBUTO = 'ATRIBUTO'
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
                self.INPUT_LAYER_TO_CALCULATE,
                self.tr('Selecione as camadas de conferência.'),
                QgsProcessing.TypeVectorLine
            )
        )
        self.addParameter(
            QgsProcessingParameterString(
                self.ATRIBUTO,
                self.tr('Selecione o atributo que será alterado.'),
            )
        )

    def processAlgorithm(self, parameters, context, feedback):      
        layer_sobreposition_list = self.parameterAsLayerList(parameters, self.INPUT_LAYER_SOBREPOSITION, context)
        layer_conferir = self.parameterAsLayerList(parameters, self.INPUT_LAYER_TO_CALCULATE, context)
        atributo = self.parameterAsString(parameters, self.ATRIBUTO, context)
        updated = False

        for layer_sobreposition in layer_sobreposition_list:
            provider = layer_sobreposition.dataProvider()
            layer_sobreposition.startEditing()
            for feature in layer_sobreposition.getFeatures():
                request = QgsFeatureRequest().setFilterRect(feature.geometry().boundingBox())
                geomEngine = QgsGeometry().createGeometryEngine(feature.geometry().constGet())
                geomEngine.prepareGeometry()
                for lyrRef in layer_conferir:
                    for feat2 in lyrRef.getFeatures(request):
                        intersection = geomEngine.intersection(feat2.geometry().constGet())
                        if intersection.geometryType() in ('LineString','MultiLineString'):
                            updated = True
                            layer_sobreposition.changeAttributeValue(feature.id(), provider.fieldNameIndex(atributo), 1)
                            break    
                    if updated is True:
                        break
                if updated is False:
                    layer_sobreposition.changeAttributeValue(feature.id(), provider.fieldNameIndex(atributo), 2)
                updated = False  

        return {self.OUTPUT: ''}
   
    def tr(self, string):
        return QCoreApplication.translate('Processing', string)

    def createInstance(self):
        return SetSobreposition()

    def name(self):
        return 'setsobreposition'

    def displayName(self):
        return self.tr('Configura Sobreposição de Linhas')

    def group(self):
        return self.tr('Edição')

    def groupId(self):
        return 'edicao'

    def shortHelpString(self):
        return self.tr("""A rotina altera o atributo 'sobreposto' das camadas de entrada caso essas camadas tenham interseção com uma camada a ser sobreposta.
                       
                       As entradas são do tipo linha e o atributo a ser alterado é do tipo texto e deve ser exatamente conforme o nome do atributo a ser alterado da camada de entrada.""")