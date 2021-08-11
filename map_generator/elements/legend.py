import json
import os
from pathlib import Path
from typing import List

from PyQt5.QtXml import QDomDocument
from PyQt5.QtCore import QPoint
from qgis.core import QgsReadWriteContext, QgsPoint

class Legend():

    def __init__(self) -> None:
        _p = Path(__file__).parent.parent / 'produtos' / 'carta_ortoimagem' 
        self.qptsPath = _p / 'simbolos' / 'qpts'
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
        xAnchor, yAnchor = 725, 15
        x, y = xAnchor, yAnchor
        ySpacing = 1
        xSpacing = 60
        bigYSpacing = 5
        width = 120
        changeColumn = True
        context = QgsReadWriteContext()
        for group, labels in legendDict.items():
            position = QPoint(x,y)
            domGroup = self.loadQDomComponent(self.qptsPath / f'{group}.qml')
            composition.addItemsFromXml(domGroup.documentElement(), domGroup, context, position)
            y += ySpacing
            for label in labels:
                position = QPoint(x,y)
                domGroup = self.loadQDomComponent(self.qptsPath / f'{label}.qml')
                composition.addItemsFromXml(domGroup.documentElement(), domGroup, context, position)
                x = xAnchor + xSpacing if changeColumn else xAnchor
                y = y + ySpacing if not changeColumn else y
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
            doc.setContent(content)
        return doc

    def make(self, composition, scale, cfg, defaults):
        self.legendMappingData = self.legendMappingData.get(str(25))
        legendClassesToDisplay = defaults.orthoMandatoryClasses.union(defaults.orthoOptionalClasses.intersection(set(cfg)))
        legendClassesGrouped = self.groupLegend(legendClassesToDisplay)
        print('Organized: ', legendClassesGrouped)
        self.buildLegend(composition, legendClassesGrouped)
            