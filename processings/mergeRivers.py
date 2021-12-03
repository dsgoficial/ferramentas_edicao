# -*- coding: utf-8 -*-

from qgis.PyQt.QtCore import QCoreApplication
from qgis.core import (
                        QgsProcessing,
                        QgsFeatureSink,
                        QgsProcessingAlgorithm,
                        QgsProcessingParameterFeatureSink,
                        QgsCoordinateReferenceSystem,
                        QgsProcessingParameterMultipleLayers,
                        QgsFeature,
                        QgsProcessingParameterVectorLayer,
                        QgsFields,
                        QgsFeatureRequest,
                        QgsProcessingParameterNumber,
                        QgsGeometry,
                        QgsPointXY
                    )
from qgis import processing
from qgis import core, gui
from qgis.utils import iface
import math

class MergeRivers(QgsProcessingAlgorithm): 

    INPUT_LAYER_L = 'INPUT_LAYER_L'
    INPUT_FRAME_A = 'INPUT_FRAME_A'
    OUTPUT_LAYER_L = 'OUTPUT_LAYER_L'

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
            QgsProcessingParameterFeatureSink(
                self.OUTPUT_LAYER_L,
                self.tr('drenagem_mesclada')
            )
        ) 

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

    def processAlgorithm(self, parameters, context, feedback):      
        drainageLayer = self.parameterAsVectorLayer(parameters, self.INPUT_LAYER_L, context)
        frameLayer = self.parameterAsVectorLayer(parameters, self.INPUT_FRAME_A, context)

        (sink_l, sinkId_l) = self.parameterAsSink(
            parameters,
            self.OUTPUT_LAYER_L,
            context,
            drainageLayer.fields(),
            core.QgsWkbTypes.MultiLineString,
            QgsCoordinateReferenceSystem( iface.mapCanvas().mapSettings().destinationCrs().authid() )
        )

        drainageLayer = self.runAddCount(drainageLayer)
        self.runCreateSpatialIndex(drainageLayer)

        merge = {}
        for drainageFeature in drainageLayer.getFeatures():
            if not drainageFeature['nome']:
                continue
            mergeKey = '{0}_{1}'.format( drainageFeature['nome'].lower(), drainageFeature['tipo'])
            if not( mergeKey in merge):
                merge[ mergeKey ] = []
            merge[ mergeKey ].append( drainageFeature )

        for mergeKey in merge:
            self.mergeLineFeatures( merge[ mergeKey ], drainageLayer )

        if frameLayer is not None:
            drainageLayer = self.clipLayer( drainageLayer, frameLayer)

        for feature in drainageLayer.getFeatures():
            self.addSink( feature, sink_l)

        return {self.OUTPUT_LAYER_L: sinkId_l}
    
    def addSink(self, feature, sink):
        newFeature = QgsFeature( feature.fields() )
        newFeature.setAttributes( feature.attributes() )
        newFeature.setGeometry( feature.geometry() )
        sink.addFeature( newFeature )

    def mergeLineFeatures(self, features, layer):
        layer.startEditing()
        idsToRemove = []
        featureIds = [ f.id() for f in features ]
        for featureAId in featureIds:
            if featureAId in idsToRemove:
                continue
            for featureBId in featureIds:
                if featureAId == featureBId or featureBId in idsToRemove:
                    continue
                featureA = layer.getFeature( featureAId )
                featureB = layer.getFeature( featureBId )
                if not featureA.geometry().touches( featureB.geometry() ):
                    continue
                newGeometry = featureA.geometry().combine( featureB.geometry() ).mergeLines()
                featureA.setGeometry( newGeometry )
                layer.updateFeature( featureA )
                idsToRemove.append( featureBId )
        layer.deleteFeatures( idsToRemove )
        #layer.commitChanges()

    def clipLayer(self, layer, frame):
        r = processing.run(
            'native:clip',
            {   'FIELD' : [], 
                'INPUT' : core.QgsProcessingFeatureSourceDefinition(
                    layer.source()
                ), 
                'OVERLAY' : frame,
                'OUTPUT' : 'TEMPORARY_OUTPUT'
            }
        )
        return r['OUTPUT']

    def tr(self, string):
        return QCoreApplication.translate('Processing', string)

    def createInstance(self):
        return MergeRivers()

    def name(self):
        return 'mergerivers'

    def displayName(self):
        return self.tr('Mescla rios')

    def group(self):
        return self.tr('Edição')

    def groupId(self):
        return 'edicao'

    def shortHelpString(self):
        return self.tr("Mescla os rios de acordo com os atributos *nome* e *tipo*, desconsiderando rios sem nome, e depois recorta os rios com a moldura. O resultado é retornado em outra camada e é utilizado como referência para auxiliar no processo de edição.")
    
