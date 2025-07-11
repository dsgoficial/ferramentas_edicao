# -*- coding: utf-8 -*-
"""
/***************************************************************************
 ferramentas_edicao
                                 A QGIS plugin
 Brazilian Army Cartographic Finishing Tools
                              -------------------
 ***************************************************************************/
/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/
"""
from collections import defaultdict
from pathlib import Path

from qgis.core import (
    QgsLayout,
    QgsLayoutItem,
    QgsLayoutPoint,
    QgsPrintLayout,
    QgsProject,
    QgsReadWriteContext,
)
from qgis.PyQt.QtCore import QPointF
from qgis.PyQt.QtXml import QDomDocument
from typing import List, Dict
from ..config.configDefaults import ConfigDefaults


class CompositionSingleton:
    def __init__(self, config: ConfigDefaults) -> None:
        config = config if config is not None else ConfigDefaults()
        self.compositions = dict()
        self.config = config
        self.previousQpts = {
            "header": None,
            "project": None,
            "reproductionRights": None,
            "bdgexAcessInfo": None,
        }
        self.resourcesPath = (
            Path(__file__).parent.parent
            / "modules"
            / "mapBuilder"
            / "resources"
            / "products"
        )
        self.licenseDict = {
            "CC-BY-SA 4.0": self.config.reproductionRights,
            "CC-BY-NC-SA 4.0": Path(self.config.reproductionRights).parent
            / "reproductionRights_CC-BY-SA_4_0.qpt",
            "Carta Militar": Path(self.config.reproductionRights).parent
            / "reproductionRights_Carta_Militar.qpt",
        }

    def getComposition(self, jsonData: Dict) -> QgsPrintLayout:
        """Returns the desired composition based on product type and scale.
        Also creates the composition if it does not exist and holds it in self.compositions for future reusability.
        Args:
            jsonData (dict): product info
        Returns:
            The QgsPrintLayout associated to the request
        """
        productType = jsonData.get("productType")
        composition = self.createComposition(productType, jsonData)
        return composition

    def createComposition(self, productType: str, jsonData: Dict) -> QgsPrintLayout:
        productType = jsonData.get("productType")
        scale = (
            jsonData.get("scale")
            if productType != "omMap"
            else jsonData.get("omTemplateType")
        )
        compositionRootPath = self.resourcesPath / productType
        if productType == "omMap":
            compositionRootPath = compositionRootPath / jsonData.get(
                "versionFolder", "1_0"
            )
            qptNameText = f"{productType}{scale}"
        elif productType in ("orthoMap", "militaryOrthoMap"):
            qptNameText = "orthoMap"
            compositionRootPath = (
                self.resourcesPath / "orthoMap" / jsonData.get("versionFolder", "2_4")
            )
        elif productType in ("topoMap", "militaryTopoMap"):
            qptNameText = "topoMap"
            compositionRootPath = (
                self.resourcesPath / "topoMap" / jsonData.get("versionFolder", "1_3")
            )
        else:
            qptNameText = f"{productType}"
        if scale == 250:
            qptNameText += "_250"
        compositionPath = compositionRootPath / f"{qptNameText}.qpt"
        printLayout = self.createPrintLayoutFromPath(compositionPath)
        self.updatePrintLayoutFromConfig(printLayout, jsonData)
        return printLayout

    def createPrintLayoutFromPath(self, compositionPath: Path) -> QgsPrintLayout:
        productFolder = compositionPath.parent
        commonFolder = self.resourcesPath / "common"
        layout = QgsPrintLayout(QgsProject.instance())
        with open(compositionPath, encoding="utf-8") as template:
            templateContent = template.read()
        doc = QDomDocument()
        doc.setContent(templateContent)
        layout.loadFromTemplate(doc, QgsReadWriteContext())
        layout.setCustomProperty("variableNames", ["productFolder", "commonFolder"])
        layout.setCustomProperty(
            "variableValues", [str(productFolder), str(commonFolder)]
        )
        return layout

    def updatePrintLayoutFromConfig(self, composition: QgsPrintLayout, jsonData: Dict):
        """Creates 4 qpts (header, product, reproduction rights and BDGEx acess info) based on defined qpt paths,
        following the search order jsonData -> product defaults -> config defaults. The json keys to be filled for
        the 4 qpts (if necessary) are (cabecalho, projeto, direitos_reproducao, acesso_informacao), respectively.
        Args:
            composition: the QgsPrintLayout where the qpts will be inserted
            jsonData: dict holding the map info (and possibly the keys (cabecalho, projeto, direitos_reproducao, acesso_informacao))
        """
        # TODO: insert qpts on demand: not every product will need every qpt
        qptsToInsert = list()
        productType = jsonData.get("productType")
        scale = (
            jsonData.get("scale")
            if productType != "omMap"
            else jsonData.get("omTemplateType")
        )
        productParams: dict = getattr(self.config, productType)
        headerQptPath = (
            self.setupPath(jsonData.get("cabecalho"))
            or productParams.get("qpt", {}).get(scale, {}).get("headerPath", None)
            or self.config.header
        )
        projectQptPath = (
            self.setupPath(jsonData.get("projeto"))
            or productParams.get("qpt", {}).get(scale, {}).get("projectPath", None)
            or self.config.project
        )
        repRightsQptPath = (
            self.licenseDict.get("Carta Militar", None)
            if productType in ("militaryOrthoMap", "militaryTopoMap")
            else (
                self.setupPath(jsonData.get("direitos_reproducao"))
                or self.licenseDict.get(jsonData.get("licenca_produto", None), None)
                or productParams.get("qpt", {})
                .get(scale, {})
                .get("reproductionRightsPath", None)
                or self.config.reproductionRights
            )
        )
        bdgexAcessInfoQptPath = (
            self.setupPath(jsonData.get("acesso_informacao"))
            or self.config.bdgexAcessInfo
        )
        headerConfig = productParams["qpt"][scale]["header"].copy()
        headerConfig.update({"path": headerQptPath})
        qptsToInsert.append(headerConfig)

        projectConfig = productParams["qpt"][scale]["project"].copy()
        projectConfig.update({"path": projectQptPath})
        qptsToInsert.append(projectConfig)

        repRightsConfig = productParams["qpt"][scale]["reproductionRights"].copy()
        repRightsConfig.update({"path": repRightsQptPath})
        qptsToInsert.append(repRightsConfig)
        if productType in ("omMap"):
            bdgexAcessInfoConfig = productParams["qpt"][scale]["bdgexAcessInfo"].copy()
            bdgexAcessInfoConfig.update({"path": bdgexAcessInfoQptPath})
            qptsToInsert.append(bdgexAcessInfoConfig)
        self.insertCompositions(composition, qptsToInsert)

    def insertCompositions(
        self, compositionToUpdate: QgsPrintLayout, qptsToInsert: List[Dict]
    ):
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
            with open(qpt.get("path"), encoding="utf-8") as fp:
                template = fp.read()
            doc = QDomDocument()
            doc.setContent(template)
            layoutItems, sucess = layout.loadFromTemplate(
                doc, QgsReadWriteContext(), False
            )
            if not sucess:
                continue
            for layoutItem in layoutItems:
                refPoint = layoutItem.referencePoint()
                layoutItem.setReferencePoint(QgsLayoutItem.UpperLeft)
                x = layoutItem.pagePos().x() + qpt.get("x_0")
                y = layoutItem.pagePos().y() + qpt.get("y_0")
                _tmpDoc = QDomDocument("_tmpDoc")
                _tmpElem = _tmpDoc.createElement("_tmpElem")
                layoutItem.writeXml(_tmpElem, _tmpDoc, writeContext)
                compositionToUpdate.addItemsFromXml(
                    _tmpElem, _tmpDoc, writeContext, QPointF(x, y)
                )
                compositionToUpdate.itemById(layoutItem.id()).attemptMove(
                    QgsLayoutPoint(x, y)
                )
                compositionToUpdate.itemById(layoutItem.id()).refresh()
                layoutItem.setReferencePoint(refPoint)

    def setupPath(self, path, isDir=False):
        pathObj = Path(path) if path else None
        if pathObj:
            if (isDir and pathObj.is_dir()) or (not isDir and pathObj.is_file()):
                return pathObj
