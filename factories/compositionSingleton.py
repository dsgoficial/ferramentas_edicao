from pathlib import Path

from qgis.core import (QgsLayout, QgsLayoutItem, QgsLayoutPoint,
                       QgsPrintLayout, QgsProject, QgsReadWriteContext)
from qgis.PyQt.QtCore import QPointF
from qgis.PyQt.QtXml import QDomDocument

from ..config.configDefaults import ConfigDefaults


class CompositionSingleton:

    def __init__(self, config: ConfigDefaults = ConfigDefaults()) -> None:
        self.compositions = dict()
        self.config = config
        self.previousQptPaths = [None, None, None, None]
        self.resourcesPath = Path(__file__).parent.parent / 'modules' / 'mapBuilder' / 'resources' / 'products'
        self.lastComposition = None

    def getComposition(self, jsonData: dict) -> QgsPrintLayout:
        productType = jsonData.get('productType')
        scale = jsonData.get('scale')
        if productType not in self.compositions:
            self.compositions[productType] = dict()
            self.compositions[productType][scale] = self.createComposition(productType, jsonData)
        elif scale not in self.compositions.get(productType):
            self.compositions[productType][scale] = self.createComposition(productType, jsonData)
        self.updatePrintLayoutFromConfig(
            self.compositions[productType][scale], jsonData)
        return self.compositions[productType][scale]

    def createComposition(self, productType: str, jsonData: dict) -> QgsPrintLayout:
        scale = jsonData.get('scale')
        compositionRootPath = self.resourcesPath / productType
        if scale == 250:
            compositionPath = compositionRootPath / f'{productType}_250.qpt'
        else:
            compositionPath = compositionRootPath / f'{productType}.qpt'
        printLayout = self.createPrintLayoutFromPath(compositionPath)
        self.updatePrintLayoutFromConfig(printLayout, jsonData)
        return printLayout

    def createPrintLayoutFromPath(self, compositionPath: Path) -> QgsPrintLayout:
        productFolder = compositionPath.parent
        commonFolder = self.resourcesPath / 'common'
        layout = QgsPrintLayout(QgsProject.instance())
        with open(compositionPath) as template:
            templateContent = template.read()
        doc = QDomDocument()
        doc.setContent(templateContent)
        layout.loadFromTemplate(doc, QgsReadWriteContext())
        layout.setCustomProperty('variableNames', ['productFolder', 'commonFolder'])
        layout.setCustomProperty('variableValues', [str(productFolder), str(commonFolder)])
        return layout

    def updatePrintLayoutFromConfig(self, composition: QgsPrintLayout, jsonData: dict):
        qptsToInsert = list()
        productType = jsonData.get('productType')
        scale = jsonData.get('scale')
        productParams = getattr(self.config, productType)
        headerQptPath = self.setupPath(jsonData.get('cabecalho')) or self.config.header
        projectQptPath = self.setupPath(jsonData.get('projeto')) or self.config.project
        repRightsQptPath = self.setupPath(jsonData.get('direitos_reproducao')) or self.config.reproductionRights
        bdgexAcessInfoQptPath = self.setupPath(jsonData.get('acesso_informacao')) or self.config.bdgexAcessInfo
        if headerQptPath != self.previousQptPaths[0]:
            self.previousQptPaths[0] = headerQptPath
            headerConfig = productParams['qpt'][scale]['header'].copy()
            headerConfig.update({'path': headerQptPath})
            qptsToInsert.append(headerConfig)
        if projectQptPath != self.previousQptPaths[1]:
            self.previousQptPaths[1] = projectQptPath
            projectConfig = productParams['qpt'][scale]['project'].copy()
            projectConfig.update({'path': projectQptPath})
            qptsToInsert.append(projectConfig)
        if repRightsQptPath != self.previousQptPaths[2]:
            self.previousQptPaths[2] = repRightsQptPath
            repRightsConfig = productParams['qpt'][scale]['reproductionRights'].copy()
            repRightsConfig.update({'path': repRightsQptPath})
            qptsToInsert.append(repRightsConfig)
        if productType == 'carta_ortoimagem' and bdgexAcessInfoQptPath != self.previousQptPaths[3]:
            self.previousQptPaths[3] = bdgexAcessInfoQptPath
            bdgexAcessInfoConfig = productParams['qpt'][scale]['bdgexAcessInfo'].copy()
            bdgexAcessInfoConfig.update({'path': bdgexAcessInfoQptPath})
            qptsToInsert.append(bdgexAcessInfoConfig)
        self.insertCompositions(composition, qptsToInsert)

    def insertCompositions(self, compositionToUpdate: QgsPrintLayout, qptsToInsert: list[dict]):
        # Option 1: Use the method addItemsFromXml to insert a QDomDOcument into the layout
        writeContext = QgsReadWriteContext()
        layout = QgsLayout(QgsProject.instance())
        # for qpt in qptsToInsert:
        #     with open(qpt.get('path')) as fp:
        #         template = fp.read()
        #     doc = QDomDocument().setContent(template)
        #     compositionToUpdate.addItemsFromXml(doc.documentElement(), doc, writeContext, QPointF(qpt.get('x_0'), qpt.get('y_0')))

        # Option 2: Create an empty layout from QDomDocument using loadFromTemplate
        for qpt in qptsToInsert:
            with open(qpt.get('path')) as fp:
                template = fp.read()
            doc = QDomDocument()
            doc.setContent(template)
            layoutItems, sucess = layout.loadFromTemplate(doc, QgsReadWriteContext(), False)
            if sucess:
                for layoutItem in layoutItems:
                    refPoint = layoutItem.referencePoint()
                    layoutItem.setReferencePoint(QgsLayoutItem.UpperLeft)
                    x = layoutItem.pagePos().x() + qpt.get('x_0')
                    y = layoutItem.pagePos().y() + qpt.get('y_0')
                    _tmpDoc = QDomDocument('_tmpDoc')
                    _tmpElem = _tmpDoc.createElement('_tmpElem')
                    layoutItem.writeXml(_tmpElem, _tmpDoc, writeContext)
                    compositionToUpdate.addItemsFromXml(_tmpElem, _tmpDoc, writeContext, QPointF(x, y))
                    compositionToUpdate.itemById(layoutItem.id()).attemptMove(QgsLayoutPoint(x, y))
                    compositionToUpdate.itemById(layoutItem.id()).refresh()
                    layoutItem.setReferencePoint(refPoint)

    def setupPath(self, path, isDir=False):
        pathObj = Path(path) if path else None
        if pathObj:
            if (isDir and pathObj.is_dir()) or (not isDir and pathObj.is_file()):
                return pathObj