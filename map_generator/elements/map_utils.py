import json
import os
import re
from pathlib import Path

from PyQt5.QtCore import QPoint, QSettings
from PyQt5.QtXml import QDomDocument
from qgis.core import (QgsCoordinateReferenceSystem, QgsFeature, QgsGeometry,
                       QgsLayout, QgsLayoutItem, QgsLayoutPoint, QgsPrintLayout,
                       QgsProject, QgsRasterLayer, QgsReadWriteContext, QgsVectorLayer)

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
        # self.update_qpt_variables(layout, newValue)
        # layout.initializeDefaults()
        with open(path) as template:
            templateContent = template.read()
        doc = QDomDocument()
        doc.setContent(templateContent)

        # adding to existing items
        #items, ok = layout.loadFromTemplate(doc, QgsReadWriteContext(), False)
        layout.loadFromTemplate(doc, QgsReadWriteContext())
        self.update_qpt_variables(layout, newValue)
        return layout

    def update_qpt_variables(self, composition, novo_valor, chave='edition_folder'):
        if 'variableNames' in composition.customProperties():
            chaves = composition.customProperty('variableNames')
            valores = composition.customProperty('variableValues')
            index_of_key = -1
            if chave in chaves:
                index_of_key = chaves.index(chave)
                if isinstance(valores, str):
                    valores = novo_valor
                else:
                    valores[index_of_key] = novo_valor
                composition.setCustomProperty('variableValues', valores)
            else:
                chaves.append(chave)
                valores.append(novo_valor)
                composition.setCustomProperty('variableNames', chaves)
                composition.setCustomProperty('variableValues', valores)
        else:
            composition.setCustomProperty('variableNames', [chave])
            composition.setCustomProperty('variableValues', [novo_valor])

    def setGridLayerAndComposition(self, grid_layer, composition):
        self.grid_layer = grid_layer
        self.composition = composition

    def setGridLayer(self, grid_layer):
        self.grid_layer = grid_layer

    def setComposition(self, composition):
        self.composition = composition

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
                    rasterLayer.setCrs(QgsCoordinateReferenceSystem(
                        int(epsg), QgsCoordinateReferenceSystem.EpsgCrsId))
                imageLayers.insert(0, (rasterLayer))
                imageLayersIDs.insert(0, (rasterLayer.id()))
                QgsProject.instance().addMapLayer(rasterLayer, False)
        return imageLayers, imageLayersIDs

    def createLayerRaster(self, rasterPath, stylePath=None):
        rasterLayer = self.getRasterLayerByType(rasterPath)
        # rasterBasename = os.path.basename(rasterPath).split('.')[0]
        if not rasterLayer or not rasterLayer.isValid():
            return None
        elif stylePath:
            rasterLayer.loadNamedStyle(stylePath)
        rasterLayer.triggerRepaint()
        return rasterLayer

    def createLayerVector(self, path_vector, path_style):
        baseName_vector = os.path.basename(path_vector).split('.')[0]
        layer_vector = QgsVectorLayer(path_vector, baseName_vector)
        if not layer_vector.isValid():
            return None
        else:
            CRS = layer_vector.crs()
            source_epsg = CRS.postgisSrid()
            if path_style is not None:
                layer_vector.loadNamedStyle(path_style)
                layer_vector.triggerRepaint()
            return layer_vector

    def deleteGroups(self, groups):
        root = QgsProject.instance().layerTreeRoot()
        for group_to_delete in groups:
            root.removeChildNode(root.findGroup(group_to_delete))

    def getRasterLayerByType(self, rasterUri):
        if 'type=xyz' in rasterUri:
            expression = re.compile(r'type=xyz&url=https?:\/\/(.+?)&zmax=\d{1,2}&zmin=\d{1,2}')
            found = expression.findall(rasterUri)
            if found:
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

    def readConfigFile(self, configFilePath):
        with open(configFilePath, 'r') as myfile:
            data = myfile.read()
        obj = json.loads(data)
        return obj

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
    composition_dest.addItemsFromXml(element, doc, context, QPoint(final_x, final_y))
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
