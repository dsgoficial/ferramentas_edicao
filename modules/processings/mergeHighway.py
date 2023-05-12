from qgis import processing
from qgis.core import (QgsCoordinateReferenceSystem, QgsFeature, QgsProcessing,
                       QgsProcessingAlgorithm,
                       QgsProcessingFeatureSourceDefinition,
                       QgsProcessingParameterFeatureSink, NULL,
                       QgsProcessingParameterVectorLayer, QgsWkbTypes, QgsFeatureSink)
from qgis.PyQt.QtCore import QCoreApplication
from qgis.utils import iface


class MergeHighway(QgsProcessingAlgorithm): 

    INPUT_LAYER_L = 'INPUT_LAYER_L'
    INPUT_FRAME_A = 'INPUT_FRAME_A'
    OUTPUT_LAYER_L = 'OUTPUT_LAYER_L'

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT_LAYER_L,
                self.tr('Selecionar camada de rodovia'),
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
            QgsProcessingParameterFeatureSink(
                self.OUTPUT_LAYER_L,
                self.tr('rodovia_mesclada')
            )
        ) 

    def processAlgorithm(self, parameters, context, feedback):      
        highwayLayerInput = self.parameterAsVectorLayer(parameters, self.INPUT_LAYER_L, context)
        frameLayer = self.parameterAsVectorLayer(parameters, self.INPUT_FRAME_A, context)
        

        (sink_l, sinkId_l) = self.parameterAsSink(
            parameters,
            self.OUTPUT_LAYER_L,
            context,
            highwayLayerInput.fields(),
            QgsWkbTypes.MultiLineString,
            highwayLayerInput.sourceCrs()
        )

        highwayLayer = self.runAddCount(highwayLayerInput)
        self.runCreateSpatialIndex(highwayLayer)

        merge = {}
        for highwayFeature in list(highwayLayer.getFeatures()):
            if highwayFeature['sigla'] == NULL:
                mergeKey = 'NULL'
            else:
                mergeKey = '{0}'.format( highwayFeature['sigla'].lower() )
            if not( mergeKey in merge):
                merge[ mergeKey ] = []
            merge[ mergeKey ].append( highwayFeature )
        numberOfFeatures =  {-1: highwayLayer.featureCount()}
        limit = 10
        highwayLayer.startEditing()
        highwayLayer.beginEditCommand("Editando")
        for i in range(limit):
            for mergeKey in merge:
                self.mergeLineFeatures( merge[ mergeKey ], highwayLayer )
            newNumberOfFeatures = highwayLayer.featureCount()
            numberOfFeatures[i]=newNumberOfFeatures
            if numberOfFeatures[i]==numberOfFeatures[i-1]:
                break
        highwayLayer.endEditCommand()
        highwayLayerClipped = self.clipLayer( highwayLayer, frameLayer)
        for feature in highwayLayerClipped.getFeatures():
            self.addSink( feature, sink_l)

        return {self.OUTPUT_LAYER_L: sinkId_l}
    
    def runAddCount(self, inputLyr):
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
            }
        )
        return output['OUTPUT']
    
    def runCreateSpatialIndex(self, inputLyr):
        processing.run(
            "native:createspatialindex",
            {'INPUT':inputLyr}
        )

    def addSink(self, feature, sink):
        newFeature = QgsFeature( feature.fields() )
        newFeature.setAttributes( feature.attributes() )
        newFeature.setGeometry( feature.geometry() )
        sink.addFeature( newFeature , QgsFeatureSink.FastInsert)

    def mergeLineFeatures(self, features, layer):
        idsToRemove = []
        featureIds = [ f.id() for f in features ]
        idToFeature = {}
        for f in features:
            idToFeature[f.id()] = f
        for featureAId in featureIds:
            if idToFeature[featureAId]['sigla'] == NULL:
                idsToRemove.append(featureAId)
                continue
            if featureAId in idsToRemove:
                continue
            for featureBId in featureIds:
                if idToFeature[featureBId]['sigla'] == NULL:
                    idsToRemove.append(featureAId)
                    continue
                if featureAId == featureBId or featureBId in idsToRemove:
                    continue
                featureA = idToFeature[featureAId]
                featureB = idToFeature[featureBId]
                if not featureA.geometry().touches( featureB.geometry() ):
                    continue
                newGeometry = featureA.geometry().combine( featureB.geometry() ).mergeLines()
                featureA.setGeometry( newGeometry )
                layer.updateFeature( featureA )
                idsToRemove.append( featureBId )
        layer.deleteFeatures( idsToRemove )

    def clipLayer(self, layer, frame):
        r = processing.run(
            'native:clip',
            {   'FIELD' : [], 
                'INPUT' : layer, 
                'OVERLAY' : frame,
                'OUTPUT' : 'TEMPORARY_OUTPUT'
            }
        )
        return r['OUTPUT']

    def tr(self, string):
        return QCoreApplication.translate('Processing', string)

    def createInstance(self):
        return MergeHighway()

    def name(self):
        return 'mergehighway'

    def displayName(self):
        return self.tr('Mescla rodovias')

    def group(self):
        return self.tr('Edição')

    def groupId(self):
        return 'edicao'

    def shortHelpString(self):
        return self.tr("Mescla as rodovias de acordo com o atributo *sigla*, desconsiderando rodovias sem sigla, e depois recorta as rodovias com a moldura. O resultado é retornado em outra camada e é utilizado como referência para auxiliar no processo de edição.")
    
