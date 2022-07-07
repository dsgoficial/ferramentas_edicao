from pathlib import Path

from qgis.core import (QgsLayout, QgsLayoutItem, QgsLayoutPoint,
                       QgsPrintLayout, QgsProject, QgsReadWriteContext)
from qgis.PyQt.QtCore import QPointF
from qgis.PyQt.QtXml import QDomDocument
from typing import List, Dict
from ..config.configDefaults import ConfigDefaults


class CompositionSingleton:

    def __init__(self, config: ConfigDefaults ) -> None:
        config = config if config is not None else ConfigDefaults()
        self.compositions = dict()
        self.config = config
        self.previousQpts = {
            'header': None,
            'project': None,
            'reproductionRights': None,
            'bdgexAcessInfo': None
        }
        self.resourcesPath = Path(__file__).parent.parent / 'modules' / 'mapBuilder' / 'resources' / 'products'

    def getComposition(self, jsonData: Dict) -> QgsPrintLayout:
        '''Returns the desired composition based on product type and scale.
        Also creates the composition if it does not exist and holds it in self.compositions for future reusability.
        Args:
            jsonData (dict): product info
        Returns:
            The QgsPrintLayout associated to the request
        '''
        productType = jsonData.get('productType')
        scale = jsonData.get('scale') if productType != 'omMap' else jsonData.get('omTemplateType')
        if productType not in self.compositions:
            self.compositions[productType] = dict()
        if scale not in self.compositions.get(productType):
            self.compositions[productType][scale] = self.createComposition(productType, jsonData)
        self.updatePrintLayoutFromConfig(self.compositions[productType][scale], jsonData)
        return self.compositions[productType][scale]

    def createComposition(self, productType: str, jsonData: Dict) -> QgsPrintLayout:
        productType = jsonData.get('productType')
        scale = jsonData.get('scale') if productType != 'omMap' else jsonData.get('omTemplateType')
        compositionRootPath = self.resourcesPath / productType
        if productType == 'omMap':
            compositionPath = compositionRootPath / f'{productType}{scale}.qpt'
        elif scale == 250:
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

    def updatePrintLayoutFromConfig(self, composition: QgsPrintLayout, jsonData: Dict):
        '''Creates 4 qpts (header, product, reproduction rights and BDGEx acess info) based on defined qpt paths,
        following the search order jsonData -> product defaults -> config defaults. The json keys to be filled for
        the 4 qpts (if necessary) are (cabecalho, projeto, direitos_reproducao, acesso_informacao), respectively.
        Args:
            composition: the QgsPrintLayout where the qpts will be inserted
            jsonData: dict holding the map info (and possibly the keys (cabecalho, projeto, direitos_reproducao, acesso_informacao))
        '''
        # TODO: insert qpts on demand: not every product will need every qpt
        qptsToInsert = list()
        productType = jsonData.get('productType')
        scale = jsonData.get('scale') if productType != 'omMap' else jsonData.get('omTemplateType')
        productParams: dict = getattr(self.config, productType)
        headerQptPath = self.setupPath(jsonData.get('cabecalho')) or productParams.get('qpt', {}).get(scale, {}).get('headerPath', None) or self.config.header
        projectQptPath = self.setupPath(jsonData.get('projeto')) or productParams.get('qpt', {}).get(scale, {}).get('projectPath', None) or self.config.project
        repRightsQptPath = self.setupPath(jsonData.get('direitos_reproducao')) or productParams.get('qpt', {}).get(scale, {}).get('reproductionRightsPath', None) or self.config.reproductionRights
        bdgexAcessInfoQptPath = self.setupPath(jsonData.get('acesso_informacao')) or self.config.bdgexAcessInfo
        if headerQptPath != self.previousQpts.get('header') or composition != self.compositions.get(productType, {}).get(scale):
            self.previousQpts['header'] = headerQptPath
            headerConfig = productParams['qpt'][scale]['header'].copy()
            headerConfig.update({'path': headerQptPath})
            qptsToInsert.append(headerConfig)
        if projectQptPath != self.previousQpts.get('project') or composition != self.compositions.get(productType, {}).get(scale):
            self.previousQpts['project'] = projectQptPath
            projectConfig = productParams['qpt'][scale]['project'].copy()
            projectConfig.update({'path': projectQptPath})
            qptsToInsert.append(projectConfig)
        if repRightsQptPath != self.previousQpts.get('reproductionRights') or composition != self.compositions.get(productType, {}).get(scale):
            self.previousQpts['reproductionRights'] = repRightsQptPath
            repRightsConfig = productParams['qpt'][scale]['reproductionRights'].copy()
            repRightsConfig.update({'path': repRightsQptPath})
            qptsToInsert.append(repRightsConfig)
        if productType in ('orthoMap', 'omMap') and (bdgexAcessInfoQptPath != self.previousQpts.get('bdgexAcessInfo') or composition != self.compositions.get(productType, {}).get(scale)):
            self.previousQpts['bdgexAcessInfo'] = bdgexAcessInfoQptPath
            bdgexAcessInfoConfig = productParams['qpt'][scale]['bdgexAcessInfo'].copy()
            bdgexAcessInfoConfig.update({'path': bdgexAcessInfoQptPath})
            qptsToInsert.append(bdgexAcessInfoConfig)
        self.insertCompositions(composition, qptsToInsert)

    def insertCompositions(self, compositionToUpdate: QgsPrintLayout, qptsToInsert: List[Dict]):
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
