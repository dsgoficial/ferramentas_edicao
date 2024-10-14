from collections import OrderedDict
import json
import os
from PyQt5.QtCore import QFileInfo, QFile

from PyQt5 import QtWidgets
from qgis import processing
from processing.gui.wrappers import WidgetWrapper
from qgis.core import (
    QgsProcessingAlgorithm,
    QgsProcessingParameterDefinition,
    QgsProcessingParameterNumber,
    QgsExpressionContextUtils,
    QgsProcessingParameterEnum,
    QgsProject,
    QgsSymbolLayerUtils,
    QgsApplication,
    QgsUserColorScheme,
    QgsProcessingMultiStepFeedback,
    QgsProcessingException,
)
from qgis.PyQt.QtCore import QCoreApplication, QSettings
from qgis import core

from ...Help.algorithmHelpCreator import HTMLHelpCreator as help


class OrderEditLayersAndAddStyle(QgsProcessingAlgorithm):

    MAP_TYPE = "MAP_TYPE"
    STYLENAME = "STYLENAME"
    INPUT_SCALE = "INPUT_SCALE"
    GROUP = "GROUP"
    EQUIDISTANCIA = "EQUIDISTANCIA"
    OUTPUT = "OUTPUT"
    EXIBIR_AUXILIAR = "EXIBIR_AUXILIAR"

    def flags(self):
        return super().flags() | QgsProcessingAlgorithm.FlagNoThreading

    def initAlgorithm(self, config=None):

        self.map = [
            self.tr("Carta Topográfica 1.3"),
            self.tr("Carta Topográfica 1.4"),
            self.tr("Carta Ortoimagem 2.4"),
            self.tr("Carta Ortoimagem 2.5"),
        ]

        self.folderDict = {
            0: "1_3",
            1: "1_4",
            2: "2_4",
            3: "2_5",
        }

        self.addParameter(
            QgsProcessingParameterEnum(
                self.MAP_TYPE,
                self.tr("Tipo da carta"),
                options=self.map,
            )
        )

        self.scales = [
            self.tr("1:10.000"),
            self.tr("1:25.000"),
            self.tr("1:50.000"),
            self.tr("1:100.000"),
            self.tr("1:250.000"),
        ]

        self.addParameter(
            QgsProcessingParameterEnum(
                self.INPUT_SCALE,
                self.tr("Selecione a escala de edição:"),
                options=self.scales,
            )
        )

        self.addParameter(ParameterGroup(self.GROUP, description="Grupo"))

        self.exibir_auxiliar_domain = [self.tr("Não"), self.tr("Sim")]

        self.addParameter(
            QgsProcessingParameterEnum(
                self.EXIBIR_AUXILIAR,
                self.tr("Deseja exibir curvas auxiliares?"),
                options=self.exibir_auxiliar_domain,
                defaultValue=0,
            )
        )

        self.addParameter(
            QgsProcessingParameterNumber(
                self.EQUIDISTANCIA,
                self.tr("Definir equidistância fora do padrão"),
                optional=True,
                type=QgsProcessingParameterNumber.Integer,
            )
        )

    def parameterAsGroup(self, parameters, name, context):
        return parameters[name]

    def setColorPalette(self):
        schemeName = "Project colors"
        filePath = os.path.join(
            os.path.abspath(os.path.dirname(__file__)),
            "..",
            "mapBuilder",
            "resources",
            "products",
            "common",
            "paleta.gpl",
        )
        fileInfo = QFileInfo(filePath)
        importedColors = QgsSymbolLayerUtils.importColorsFromGpl(
            QFile(filePath), schemeName
        )
        currentScheme = None
        schemes = QgsApplication.colorSchemeRegistry().schemes()
        for s in schemes:
            if not (s.schemeName() == schemeName):
                continue
            currentScheme = s
        if currentScheme:
            currentScheme.setColors(importedColors[0])
        else:
            currentScheme = QgsUserColorScheme(fileInfo.fileName())
            currentScheme.setName(schemeName)
            currentScheme.setColors(importedColors[0])
            QgsApplication.colorSchemeRegistry().addColorScheme(currentScheme)

    def processAlgorithm(self, parameters, context, feedback):
        if "en" not in QSettings().value("locale/userLocale")[0:2]:
            raise QgsProcessingException(
                f"O idioma do QGIS deve estar em inglês para que as fontes sejam atribuídas corretamente. "
                "Mude o idioma do QGIS em Configurações > Opções > Geral, reinicie o QGIS e tente novamente."
            )
        self.setColorPalette()
        mapType = self.parameterAsEnum(parameters, self.MAP_TYPE, context)
        gridScaleParam = self.parameterAsEnum(parameters, self.INPUT_SCALE, context)
        groupInput = self.parameterAsGroup(parameters, self.GROUP, context)
        equidistanciaCustom = self.parameterAsInt(
            parameters, self.EQUIDISTANCIA, context
        )
        exibirAuxiliar = self.parameterAsEnum(parameters, self.EXIBIR_AUXILIAR, context)

        if gridScaleParam == 0:
            gridScale = 10
            equidistancia = 5
        elif gridScaleParam == 1:
            gridScale = 25
            equidistancia = 10
        elif gridScaleParam == 2:
            gridScale = 50
            equidistancia = 20
        elif gridScaleParam == 3:
            gridScale = 100
            equidistancia = 40
        elif gridScaleParam == 4:
            gridScale = 250
            equidistancia = 100
        else:
            feedback.pushWarning("Valor para escala inválido")
            return {}

        if equidistanciaCustom:
            equidistancia = equidistanciaCustom

        project = context.project()

        feedback.pushInfo("Iniciando...")
        group = project.layerTreeRoot().findGroup(groupInput)

        if groupInput:
            group = project.layerTreeRoot().findGroup(groupInput)
            if not group:
                raise Exception("Grupo não encontrado!")
            layers = [layerTree.layer() for layerTree in group.findLayers()]
        else:
            layers = project.instance().mapLayers().values()
        if mapType in [0, 1]:
            carta = "topoMap"
        elif mapType in [2, 3]:
            carta = "orthoMap"
        else:
            feedback.pushInfo("Valor para tipo de carta inválido")
            return {}

        jsonConfigData = self.getJSONConfig(
            os.path.join(
                os.path.abspath(
                    os.path.join(os.path.dirname(os.path.dirname(__file__)))
                ),
                "mapBuilder",
                "resources",
                "products",
                carta,
                self.folderDict[mapType],
                "camadas.json",
            )
        )

        styleOption = "mapEdition"
        groupName = "map"

        stylePath = os.path.join(
            os.path.abspath(os.path.join(os.path.dirname(os.path.dirname(__file__)))),
            "mapBuilder",
            "resources",
            "products",
            carta,
            self.folderDict[mapType],
            "styles",
            styleOption,
        )

        stylePathPrinting = os.path.join(
            os.path.abspath(os.path.join(os.path.dirname(os.path.dirname(__file__)))),
            "mapBuilder",
            "resources",
            "products",
            carta,
            self.folderDict[mapType],
            "styles",
            groupName,
        )
        multiStepFeedback = QgsProcessingMultiStepFeedback(5, feedback)
        multiStepFeedback.setCurrentStep(0)
        multiStepFeedback.pushInfo("Calculando dicionário QML...")
        qmlDict = self.buildQmlDict(
            stylePath, stylePathPrinting, feedback=multiStepFeedback
        )

        multiStepFeedback.setCurrentStep(1)
        multiStepFeedback.pushInfo("Mudando visibilidade das camadas...")
        layerNames = [i["table"] for i in jsonConfigData[groupName]]
        layerNames[:0] = ["aux_moldura_a", "edicao_grid_edicao_l", "aux_grid_revisao_a"]
        visibleLayers, invisibleLayers = self.changeVisibility(
            layerNames=layerNames,
            layers=layers,
            qmlDict=qmlDict,
            feedback=multiStepFeedback,
        )
        if feedback.isCanceled():
            return {}

        multiStepFeedback.setCurrentStep(2)
        multiStepFeedback.pushInfo("Ordenando as camadas...")
        self.order(
            layerNames=layerNames,
            layers=layers,
            invisibleLayers=invisibleLayers,
            feedback=multiStepFeedback,
            project=project,
        )
        if multiStepFeedback.isCanceled():
            return {}

        multiStepFeedback.setCurrentStep(3)
        multiStepFeedback.pushInfo("Carregando estilos...")
        self.estilos(visibleLayers, qmlDict, gridScale, multiStepFeedback)
        if multiStepFeedback.isCanceled():
            return {}

        multiStepFeedback.setCurrentStep(4)
        multiStepFeedback.pushInfo("Configurando equidistancia...")
        self.setEquidistancia(
            visibleLayers, equidistancia, exibirAuxiliar, multiStepFeedback
        )
        if multiStepFeedback.isCanceled():
            return {}

        # feedback.pushInfo("Configurando escala de renderização...")
        # self.renderizar(layers, gridScale * 1000)

        # feedback.pushInfo('Carregando as máscaras...')
        # self.loadMasks(carta, layers)
        # if multiStepFeedback.isCanceled():
        #    return {self.OUTPUT: 'Cancelado'}

        # Adicionar tema após aplicação dos estilos
        themeCollection = core.QgsProject.instance().mapThemeCollection()
        if mapType in [0, 1]:
            themeName = "Carta Topográfica"
        elif mapType in [2, 3]:
            themeName = "Carta Ortoimagem"
        else:
            feedback.pushInfo("Tipo de produto não encontrado para atribuir o tema.")
            return {}
        root = core.QgsProject().instance().layerTreeRoot().clone()
        model = core.QgsLayerTreeModel(root)
        themeCollection.insert(
            themeName,
            core.QgsMapThemeCollection.createThemeFromCurrentState(root, model),
        )

        return {}

    def setEquidistancia(self, layers, equidistancia, exibirAuxiliar, feedback):
        for layer in layers:
            if feedback.isCanceled():
                return
            layerName = layer.dataProvider().uri().table()
            if layerName == "elemnat_curva_nivel_l":
                QgsExpressionContextUtils.setLayerVariable(
                    layer, "equidistancia", equidistancia
                )
                QgsExpressionContextUtils.setLayerVariable(
                    layer, "exibir_auxiliar", exibirAuxiliar
                )

        return

    def changeVisibility(self, layerNames, layers, qmlDict, feedback):
        listSize = len(layers)
        progressStep = 100 / (listSize + 1) if listSize else 0
        invisibleLayers = []
        layersOk = []
        for step, layer in enumerate(layers):
            if feedback.isCanceled():
                return
            layerName = layer.dataProvider().uri().table()
            feedback.setProgress(step * progressStep)
            node = QgsProject.instance().layerTreeRoot().findLayer(layer.id())
            if not (layerName in layerNames) or not layerName in qmlDict:
                invisibleLayers.append(layer)
                if node:
                    node.setItemVisibilityChecked(False)
            else:
                if node:
                    node.setItemVisibilityChecked(True)
                layersOk.append(layer)

        return layersOk, invisibleLayers

    def order(self, layerNames, layers, invisibleLayers, feedback, project):
        listSize = len(layers)
        progressStep = 100 / (listSize + 1) if listSize else 0
        order = []
        originalOrder = project.layerTreeRoot().layerOrder()
        for layer in originalOrder:
            if layer in layers:
                break
            order.append(layer)
        dictOrderedLayers = {}
        for step, layer in enumerate(layers):
            if feedback.isCanceled():
                return
            layerName = layer.dataProvider().uri().table()
            feedback.setProgress(step * progressStep)
            if layer in invisibleLayers:
                continue
            dictOrderedLayers[layer] = layerNames.index(layerName)
        orderedDictOrderedLayers = OrderedDict(
            sorted(dictOrderedLayers.items(), key=lambda item: item[1])
        )
        for step2, layer in enumerate(orderedDictOrderedLayers):
            if feedback.isCanceled():
                return
            feedback.setProgress((step + step2) * progressStep)
            if layer in invisibleLayers:
                continue
            order.append(layer)
        if len(invisibleLayers):
            for layer in invisibleLayers:
                order.append(layer)
        if len(order):
            for layer in originalOrder[len(order) - 1 :]:
                if layer not in layers:
                    order.append(layer)
        project.layerTreeRoot().setHasCustomLayerOrder(True)
        project.layerTreeRoot().setCustomLayerOrder(order)

        return

    def estilos(self, layers, qmlDict, escala, feedback):
        listSize = len(layers)
        progressStep = 100 / (listSize + 1) if listSize else 0
        for step, layer in enumerate(layers):
            if feedback.isCanceled():
                return
            layerName = layer.dataProvider().uri().table()
            layerNameWithScale = "{0}_{1}".format(layerName, escala)
            if layerNameWithScale in qmlDict:
                self.applyStyle(layer, qmlDict[layerNameWithScale])
            else:
                self.applyStyle(layer, qmlDict[layerName])
            feedback.setProgress(step * progressStep)

        return

    def getJSONConfig(self, jsonFilePath):
        with open(jsonFilePath, "r") as f:
            return json.load(f)

    def buildQmlDict(self, inputDir, inputDirPrinting, feedback):
        """
        Builds a dict with the format
        {'fileName':'filePath'}
        """
        qmlDict = dict()
        for fileNameWithExtension in os.listdir(inputDir):
            if feedback.isCanceled():
                break
            if not fileNameWithExtension.endswith(".qml"):
                continue
            fileName = fileNameWithExtension.split(".")[0]
            qmlDict[fileName] = os.path.join(inputDir, fileNameWithExtension)
        for fileNameWithExtension in os.listdir(inputDirPrinting):
            if feedback.isCanceled():
                break
            if not fileNameWithExtension.endswith(".qml"):
                continue
            fileName = fileNameWithExtension.split(".")[0]
            if fileName in qmlDict:
                continue
            qmlDict[fileName] = os.path.join(inputDirPrinting, fileNameWithExtension)
        return qmlDict

    def applyStyle(self, lyr, styleQmlPath):
        r = processing.run(
            "native:setlayerstyle", {"INPUT": lyr, "STYLE": styleQmlPath}
        )

    def renderizar(self, layers, scale):
        for layer in layers:
            qgs_feature_renderer = layer.renderer()
            qgs_feature_renderer.setReferenceScale(scale)
            layer.reload()

    # def loadMasks(self, carta, layers):
    #     jsonPathMask = os.path.join(
    #             os.path.abspath(os.path.join(
    #                 os.path.dirname(os.path.dirname(__file__))
    #             )),
    #             'mapBuilder',
    #             'resources',
    #             'products',
    #             carta,
    #             'masks.json'
    #         )
    #     r = processing.run(
    #         'ferramentasedicao:loadmasks',
    #         {   'INPUT_LAYERS' : layers,
    #             'JSON_FILE': jsonPathMask,
    #             'OUTPUT' : 'TEMPORARY_OUTPUT'
    #         }
    #     )
    #     return r['OUTPUT']

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return OrderEditLayersAndAddStyle()

    def name(self):
        return "ordereditlayersandaddstyle"

    def displayName(self):
        return self.tr("Configurar Estilo de Edição")

    def group(self):
        return self.tr("Preparo de Edição")

    def groupId(self):
        return "preparo_edicao"

    def shortHelpString(self):
        return self.tr(
            "O algoritmo ordena as camadas e aplica os estilos para a edição"
        )


class GroupsWidgetWrapper(WidgetWrapper):
    def __init__(self, *args, **kwargs):
        super(GroupsWidgetWrapper, self).__init__(*args, **kwargs)

    def getGroupNames(self):
        groupsList = [
            g.name() for g in QgsProject.instance().layerTreeRoot().findGroups()
        ]
        groupsList.insert(0, "")
        return groupsList

    def createWidget(self):
        self.widget = QtWidgets.QComboBox()
        self.widget.addItems(self.getGroupNames())
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


class ParameterGroup(QgsProcessingParameterDefinition):
    def __init__(self, name, description=""):
        super().__init__(name, description)

    def clone(self):
        copy = ParameterGroup(self.name(), self.description())
        return copy

    def type(self):
        return self.typeName()

    @staticmethod
    def typeName():
        return "group"

    def checkValueIsAcceptable(self, value, context=None):
        return True

    def metadata(self):
        return {
            "widget_wrapper": "ferramentas_edicao.modules.processings.orderEditLayersAndAddStyle.GroupsWidgetWrapper"
        }

    def valueAsPythonString(self, value, context):
        return str(value)

    def asScriptCode(self):
        raise NotImplementedError()

    @classmethod
    def fromScriptCode(cls, name, description, isOptional, definition):
        raise NotImplementedError()
