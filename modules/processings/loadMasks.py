import json

from qgis.core import (
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingParameterFile,
    QgsProcessingParameterMultipleLayers,
    QgsSymbolLayerId,
    QgsSymbolLayerReference,
)
from qgis.PyQt.QtCore import QCoreApplication

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help


class LoadMasks(QgsProcessingAlgorithm):

    JSON_FILE = "JSON_FILE"
    INPUT_LAYERS = "INPUT_LAYERS"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterFile(
                self.JSON_FILE,
                self.tr("Selecionar o arquivo .json de máscaras"),
                extension="json",
            )
        )

        self.addParameter(
            QgsProcessingParameterMultipleLayers(
                self.INPUT_LAYERS,
                self.tr("Camadas que terão máscaras aplicadas"),
                QgsProcessing.TypeVectorAnyGeometry,
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        jsonFilePath = self.parameterAsFile(parameters, self.JSON_FILE, context)
        layers = self.parameterAsLayerList(parameters, self.INPUT_LAYERS, context)
        with open(jsonFilePath, "r") as f:
            mask_dict = json.load(f)

        mapId = {
            layer.dataProvider().uri().table(): layer.id() for layer in layers if layer
        }
        """
        if layer porque quando roda pelo orderEditLayersAndAddStyle (configurar para o preparo de edição),
        a camada pode vir como NoneType, aparentemente, tal fato deve-se à exclusão da camada no order do
        orderEditLayersAndAddStyle
        """
        for layer in layers:
            if not layer:
                continue
            layerName = layer.dataProvider().uri().table()
            if not layerName in mask_dict:
                continue
            labels = layer.labeling()
            if not labels:
                continue
            for provider in mask_dict[layerName]:
                if provider == "--SINGLE--RULE--":
                    label_settings = labels.settings()
                else:
                    providerInverseMap = {
                        x.description(): x.ruleKey()
                        for x in labels.rootRule().children()
                    }
                    label_settings = labels.settings(providerInverseMap[provider])
                label_format = label_settings.format()
                masks = label_format.mask()
                new_symbol_mask = []
                for symbol in mask_dict[layerName][provider]:
                    symbol_id = QgsSymbolLayerId(symbol[1], symbol[2])
                    if symbol[0] in mapId:
                        reference = QgsSymbolLayerReference(mapId[symbol[0]], symbol_id)
                        new_symbol_mask.append(reference)
                masks.setMaskedSymbolLayers(new_symbol_mask)
                label_settings.setFormat(label_format)
                if provider == "--SINGLE--RULE--":
                    labels.setSettings(label_settings)
                else:
                    labels.setSettings(label_settings, providerInverseMap[provider])
            layer.setLabeling(labels)

        return {}

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return LoadMasks()

    def name(self):
        return "loadmasks"

    def displayName(self):
        return self.tr("Carregar máscaras")

    def group(self):
        return self.tr("Auxiliar")

    def groupId(self):
        return "auxiliar"

    def shortHelpString(self):
        return self.tr("O algoritmo carrega as máscaras de acordo com o json.")
