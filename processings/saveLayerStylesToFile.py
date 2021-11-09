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
                        QgsProcessingParameterFolderDestination,
                        QgsGeometry,
                        QgsPointXY
                    )
from qgis import processing
from qgis import core, gui
from qgis.utils import iface
import os
from processing.gui.wrappers import WidgetWrapper
from PyQt5 import QtCore, uic, QtWidgets, QtGui

class SaveLayerStylesToFile(QgsProcessingAlgorithm): 

    GROUP = 'GROUP'
    FOLDER_OUTPUT = 'FOLDER_OUTPUT'
    OUTPUT = 'OUTPUT'

    def initAlgorithm(self, config=None):
        self.addParameter(
            ParameterGroup(
                self.GROUP,
                description='Grupo'
            )
        )

        self.addParameter(
            QgsProcessingParameterFolderDestination(
                self.FOLDER_OUTPUT,
                self.tr('Pasta destino treino')
            )
        )

    def parameterAsGroup(self, parameters, name, context):
        return parameters[name]

    def processAlgorithm(self, parameters, context, feedback):   
        groupName = self.parameterAsGroup(parameters, self.GROUP, context)
        folderOutput = self.parameterAsFileOutput(parameters, self.FOLDER_OUTPUT, context)

        group = core.QgsProject.instance().layerTreeRoot().findGroup( groupName )

        if not group:
            raise Exception('Grupo não encontrado!')

        layers = [  layerTree.layer() for layerTree in group.findLayers() ]        

        listSize = len(layers)
        progressStep = 100/listSize if listSize else 0
        step = 0

        for step, layer in enumerate(layers):
            styleName = layer.styleManager().currentStyle()
            xmlData = layer.styleManager().style( styleName ).xmlData()
            self.exportToFile(
                os.path.join( folderOutput, '{0}.qml'.format(layer.name()) ),
                xmlData
            )
            feedback.setProgress( step * progressStep )
        
        return{ self.OUTPUT: '' }


    def exportToFile(self, filePath, data):
        with open(filePath, 'w') as f:
            f.write( data )
        
    def tr(self, string):
        return QCoreApplication.translate('Processing', string)

    def createInstance(self):
        return SaveLayerStylesToFile()

    def name(self):
        return 'savelayerstylestofile'

    def displayName(self):
        return self.tr('Exporta estilos para arquivo (QML)')

    def group(self):
        return self.tr('Auxiliar')

    def groupId(self):
        return 'auxiliar'

    def shortHelpString(self):
        return self.tr("O algoritmo ...")



class GroupsWidgetWrapper(WidgetWrapper):
    def __init__(self, *args, **kwargs):
        super(GroupsWidgetWrapper, self).__init__(*args, **kwargs)
    
    def getGroupNames(self):
        return [
            g.name()
            for g in  core.QgsProject.instance().layerTreeRoot().findGroups()
        ]

    def createWidget(self):
        self.widget = QtWidgets.QComboBox()
        self.widget.addItems( self.getGroupNames() )
        self.widget.dialogType = self.dialogType
        return self.widget
    
    def parentLayerChanged(self, layer=None):
        pass
    
    def setLayer(self, layer):
        pass
    
    def setValue(self, value):
        pass

    def value(self):
        return self.widget.currentText()
    
    def postInitialize(self, wrappers):
        pass

class ParameterGroup(core.QgsProcessingParameterDefinition):

    def __init__(self, name, description=''):
        super().__init__(name, description)

    def clone(self):
        copy = ParameterGroup(self.name(), self.description())
        return copy

    def type(self):
        return self.typeName()

    @staticmethod
    def typeName():
        return 'group'

    def checkValueIsAcceptable(self, value, context=None):
        return True

    def metadata(self):
        return {'widget_wrapper': 'ferramentas_experimentais.processings.saveLayerStylesToFile.GroupsWidgetWrapper' }

    def valueAsPythonString(self, value, context):
        return str(value)

    def asScriptCode(self):
        raise NotImplementedError()

    @classmethod
    def fromScriptCode(cls, name, description, isOptional, definition):
        raise NotImplementedError()
    
