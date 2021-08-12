import json
import os, codecs
from pathlib import Path
from typing import List

from PyQt5.QtXml import QDomDocument
from PyQt5.QtCore import QPoint
from qgis.core import QgsReadWriteContext, QgsPoint, QgsLayoutItem

class Legend():

    def __init__(self) -> None:
        _p = Path(__file__).parent.parent / 'produtos' / 'carta_ortoimagem' 
        self.qptsPath = _p / 'simbolos' / 'legenda'
        with open(_p / 'mapClassToLegend.json') as mappingData:
            self.legendMappingData = json.load(mappingData)

    def loadClassQpt(self, name):
        pass

    def setClassQpt(self, qpt, compositor):
        item = compositor.itemById('label_convencoes')
    
    def calculatePositions(self, groupedClasses):
        # REVER o loop baseado na estrutura do dicionário!
        positions = list()
        xAnchor, yAnchor = 0, 0
        x, y = 0, 0
        clsYSpacing = 1
        clsXSpacing = 60
        macroYClsSpacing = 5
        width = 120
        changeY = False
        for _macroCls, _cls in groupedClasses.values():
            if _oldMacroCls not in locals() or _oldMacroCls != _macroCls:
                y = y + macroYClsSpacing
                positions.append((width/2,y))
                y = y + clsYSpacing
                x = xAnchor
                changeY = False
                # insert MacroHeader
            positions.append((x % width, y))
            x = x + clsXSpacing
            y = y + clsYSpacing if changeY else y
            changeY = not changeY
            _oldMacroCls = _macroCls
        return

    def buildLegend(self, composition, legendDict):
        xAnchor, yAnchor = 726, 16
        x, y = xAnchor, yAnchor
        ySpacing = 4.5
        xSpacingFirstColumn = 2
        xSpacing = 56
        bigYSpacing = 10
        width = 115
        changeColumn = True
        context = QgsReadWriteContext()
        for group, labels in legendDict.items():
            position = QPoint(x,y)
            domGroup = self.loadQDomComponent(self.qptsPath / f'group_{group}.qpt')
            composition.addItemsFromXml(domGroup.documentElement(), domGroup, context, position)
            y += ySpacing
            for label in labels:
                x += xSpacingFirstColumn
                position = QPoint(x,y)
                domGroup = self.loadQDomComponent(self.qptsPath / f'teste.qpt')
                composition.addItemsFromXml(domGroup.documentElement(), domGroup, context, position)
                x = xAnchor + xSpacing if changeColumn else xAnchor
                y = y + ySpacing if not changeColumn else y
                changeColumn = not changeColumn
            x = xAnchor
            y += bigYSpacing
            changeColumn = True

    def groupLegend(self, classes):
        groupedClasses = dict()
        for _cls in classes:
            _groupInfo = self.legendMappingData.get(_cls)
            if _groupInfo is None:
                continue
            group = _groupInfo.get("group")
            labels = _groupInfo.get("labels")
            if group is None:
                continue
            if (_p:=groupedClasses.get(group)) and isinstance(_p, set):
                _p.update(labels)
            else:
                groupedClasses.update({group:set(labels)})
        return groupedClasses
        
    def loadQDomComponent(self, path):
        doc = QDomDocument()
        with open(path) as content:
            doc.setContent(content.read())
        return doc

    def make(self, composition, scale, cfg, defaults):
        self.legendMappingData = self.legendMappingData.get(str(25))
        legendClassesToDisplay = defaults.orthoMandatoryClasses.union(defaults.orthoOptionalClasses.intersection(set(cfg)))
        legendClassesGrouped = self.groupLegend(legendClassesToDisplay)
        print('Organized: ', legendClassesGrouped)
        self.buildLegend(composition, legendClassesGrouped)
            