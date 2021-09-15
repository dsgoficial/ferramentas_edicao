import re
from pathlib import Path

from PyQt5.QtCore import QPointF, QSettings
from PyQt5.QtXml import QDomDocument
from qgis.core import (QgsCoordinateReferenceSystem, QgsFeature, QgsGeometry,
                       QgsLayout, QgsLayoutItem, QgsLayoutPoint,
                       QgsPrintLayout, QgsProject, QgsRasterLayer,
                       QgsReadWriteContext, QgsVectorLayer)

from .map_index.map_index import UtmGrid


class MapParent:
    def __init__(self):
        self.utm_grid = UtmGrid()

    def getPrintLayoutFromQptPath(self, path, newValue):
        '''
        Returns a QgsPrintLayout from a template indicated by path.
        Also sets the composition variable 'variableNames' to newvalue
        '''
        # Load template from file
        layout = QgsPrintLayout(QgsProject.instance())
        # self.updateQptVariables(layout, newValue)
        # layout.initializeDefaults()
        with open(path) as template:
            templateContent = template.read()
        doc = QDomDocument()
        doc.setContent(templateContent)

        # adding to existing items
        #items, ok = layout.loadFromTemplate(doc, QgsReadWriteContext(), False)
        layout.loadFromTemplate(doc, QgsReadWriteContext())
        self.updateQptVariables(layout, newValue)
        return layout

    def updateQptVariables(self, composition, newValue, defaultKey='edition_folder'):
        '''Sets composition variables
        '''
        commonPathPropertyKey = 'commonPath'
        commonPathPropertyValue = str(Path(__file__).parent.parent / 'produtos' / 'common')
        if 'variableNames' in composition.customProperties():
            keys = composition.customProperty('variableNames')
            values = composition.customProperty('variableValues')
            keyIndex = -1
            if defaultKey in keys:
                keyIndex = keys.index(defaultKey)
                if isinstance(values, str):
                    values = newValue
                else:
                    values[keyIndex] = newValue
                composition.setCustomProperty('variableValues', values)
            else:
                keys.append(defaultKey)
                values.append(newValue)
                composition.setCustomProperty('variableNames', keys)
                composition.setCustomProperty('variableValues', values)
        else:
            composition.setCustomProperty('variableNames', [defaultKey, commonPathPropertyKey])
            composition.setCustomProperty('variableValues', [newValue, commonPathPropertyValue])

    def loadShapeLayer(self, pathShp, pathStyle, lyrName):
        if Path(pathShp).is_file():
            layer = QgsVectorLayer(str(pathShp), lyrName, 'ogr')
            if layer.isValid():
                if Path(pathStyle).is_file():
                    layer.loadNamedStyle(str(pathStyle))
                    layer.triggerRepaint()
                layer.setProviderEncoding(u'UTF-8')
                layer.dataProvider().setEncoding(u'UTF-8')
            return layer
        else:
            return None

    def createLayersRasters(self, listDictImages):
        imageLayers = []
        imageLayersIDs = []
        for dictImage in listDictImages:
            rasterPath = dictImage.get('caminho_imagem')
            stylePath = dictImage.get('caminho_estilo')
            epsg = dictImage.get('epsg')
            if rasterLayer:= self.createLayerRaster(rasterPath, stylePath):
                if epsg:
                    epsgId = QgsCoordinateReferenceSystem(f'EPSG:{epsg}')
                    rasterLayer.setCrs(epsgId)
                imageLayers.insert(0, (rasterLayer))
                imageLayersIDs.insert(0, (rasterLayer.id()))
                QgsProject.instance().addMapLayer(rasterLayer, False)
        return imageLayers, imageLayersIDs

    def createLayerRaster(self, rasterPath, stylePath=None):
        rasterLayer = self.getRasterLayerByType(rasterPath)
        if not rasterLayer or not rasterLayer.isValid():
            return None
        elif stylePath:
            rasterLayer.loadNamedStyle(stylePath)
        rasterLayer.triggerRepaint()
        return rasterLayer

    def deleteGroups(self, groups):
        root = QgsProject.instance().layerTreeRoot()
        for groupToDelete in groups:
            root.removeChildNode(root.findGroup(groupToDelete))

    def getRasterLayerByType(self, rasterUri):
        if 'type=xyz' in rasterUri:
            expression = re.compile(r'type=xyz&url=https?:\/\/(.+?)&zmax=\d{1,2}&zmin=\d{1,2}')
            if found := expression.findall(rasterUri):
                return QgsRasterLayer(rasterUri, found[0], 'wms')
        else:
            rasterPath = Path(rasterUri)
            return QgsRasterLayer(str(rasterPath), rasterPath.stem) 

    def loadStyleToLayer(self, layer, style_file):
        if layer.isValid():
            layer.loadNamedStyle(style_file)
            layer.triggerRepaint()

    def setEPSG(self, hemisferio, fuso):
        self.epsg = "319"
        if hemisferio == 'N':
            self.epsg = self.epsg + str(72 + fuso-18)
        elif hemisferio == 'S':
            self.epsg = self.epsg + str(78 + fuso-18)
        # self.GLC.setFusoHemisferio(fuso,hemisferio)

    def setScale(self, scale):
        self.scale = scale

    def setProjectProjection(self, projection="useProject"):
        settings = QSettings()
        oldProjValue = settings.value("/Projections/defaultBehavior", "prompt", type=str)
        settings.setValue("/Projections/defaultBehavior", projection)
        return oldProjValue

    def createGridLayer(self, inom):
        gridLayer, _ = self.utm_grid.get_neighbors_inom(inom)
        QgsProject.instance().addMapLayer(gridLayer, False)
        return gridLayer

    def createVectorLayerFromIter(self, layerName, iterable):
        '''
        Creates a vector layer from an Iterable[QgsGeometry,QgsFeature].
        Uses EPSG:4674, and has Polygon type.
        '''
        layer = QgsVectorLayer('Polygon?crs=EPSG:4674', layerName, 'memory')
        layerProvider = layer.dataProvider()
        featsToAdd = list()
        if hasattr(iterable, '__iter__'):
            for item in iterable:
                if isinstance(item, QgsFeature):
                    feat = QgsFeature(item)
                    featsToAdd.append(feat)
                elif isinstance(item, QgsGeometry):
                    feat = QgsFeature()
                    feat.setGeometry(item)
                    featsToAdd.append(feat)
            layerProvider.addFeatures(featsToAdd)
        return layer
    
    @staticmethod
    def cloneVectorLayer(layer, layerName):
        dataProviderUri = layer.dataProvider().dataSourceUri()
        copyLayer = QgsVectorLayer(dataProviderUri, layerName, 'memory')
        copyLayerDataProvider = copyLayer.dataProvider()
        renameDict = {x:layer.attributeDisplayName(x) for x in layer.attributeList()}
        copyLayerDataProvider.renameAttributes(renameDict)
        copyLayer.updateFields()
        copyLayerDataProvider.addFeatures(layer.getFeatures())
        return copyLayer


def cloneItem(item, composition_dest, x_0, y_0):
    ref_point = item.referencePoint()
    item.setReferencePoint(QgsLayoutItem.UpperLeft)
    original_x = item.pagePos().x()
    original_y = item.pagePos().y()
    final_x = original_x + x_0
    final_y = original_y + y_0

    # Create doc xml
    doc = QDomDocument('Clipboard')
    element = doc.createElement('Copied items')
    context = QgsReadWriteContext()
    item.writeXml(element, doc, context)

    # Add doc xml
    composition_dest.addItemsFromXml(element, doc, context, QPointF(final_x, final_y))
    composition_dest.itemById(item.id()).attemptMove(QgsLayoutPoint(final_x, final_y))
    composition_dest.itemById(item.id()).refresh()
    item.setReferencePoint(ref_point)


def copyQptToCompositor(composition_dest, qptDict):
    project = QgsProject()
    layout = QgsLayout(project)
    with open(qptDict['caminho'], 'rt') as myTemplateFile:
        myTemplateContent = myTemplateFile.read()
    doc = QDomDocument()
    doc.setContent(myTemplateContent)

    items, sucess = layout.loadFromTemplate(doc, QgsReadWriteContext(), False)
    if sucess:
        for item in items:
            cloneItem(item, composition_dest, qptDict['x_0'], qptDict['y_0'])
