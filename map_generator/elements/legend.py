import json
from pathlib import Path

from PyQt5.QtXml import QDomDocument
from PyQt5.QtCore import QPoint
from qgis.core import QgsReadWriteContext

class Legend():

    def __init__(self) -> None:
        _p = Path(__file__).parent.parent / 'produtos' / 'carta_ortoimagem' 
        self.qptsPath = _p / 'symbols' / 'legend'
        with open(_p / 'mapClassToLegend.json') as mappingData:
            self.legendMappingData = json.load(mappingData)
    
    def buildLegend(self, composition, legendDict):
        xAnchor, yAnchor = 726, 16
        x, y = xAnchor, yAnchor
        ySpacing = 4.8
        xSpacingFirstColumn = 2
        xSpacing = 56
        width = 115
        changeColumn = True
        context = QgsReadWriteContext()
        for group, labels in legendDict.items():
            position = QPoint(x,y)
            domGroup = self.loadQDomComponent(self.qptsPath / f'group_{group}.qpt')
            composition.addItemsFromXml(domGroup.documentElement(), domGroup, context, position)
            y += 1.5*ySpacing
            for label in labels:
                x += xSpacingFirstColumn
                position = QPoint(x,y)
                domGroup = self.loadQDomComponent(self.qptsPath / f'{label}.qpt')
                composition.addItemsFromXml(domGroup.documentElement(), domGroup, context, position)
                x = xAnchor + xSpacing if changeColumn else xAnchor
                y = y + ySpacing if not changeColumn else y
                changeColumn = not changeColumn
            x = xAnchor
            y += ySpacing if changeColumn else 2*ySpacing
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
        self.legendMappingData = self.legendMappingData.get(str(scale))
        legendClassesToDisplay = defaults.orthoMandatoryClasses.union(defaults.orthoOptionalClasses.intersection(set(cfg)))
        legendClassesGrouped = self.groupLegend(legendClassesToDisplay)
        self.buildLegend(composition, legendClassesGrouped)
            