import math
import os
from pathlib import Path
from itertools import chain
from typing import List, Tuple

from PyQt5.QtCore import QVariant
from PyQt5.QtGui import QColor
from qgis.core import (QgsCoordinateReferenceSystem, QgsCoordinateTransform,
                       QgsDistanceArea, QgsFeatureRequest, QgsGeometry,
                       QgsLayerTreeGroup, QgsLayoutItemLabel, QgsLineString,
                       QgsPalLayerSettings, QgsProject, QgsRectangle,
                       QgsRuleBasedLabeling, QgsTextBufferSettings,
                       QgsTextFormat, QgsPrintLayout, QgsFeature,
                       QgsVectorLayerSimpleLabeling, QgsVectorLayer)

from .componentUtils import ComponentUtils
from ....interfaces.iComponent import IComponent


class ImageArticulation(ComponentUtils,IComponent):
    def __init__(self, *args, **kwargs):
        self.stylesFolder =  Path(__file__).parent.parent / 'resources' / 'styles' / 'imageArticulation'
        self.htmlTablePath = Path(__file__).parent.parent / 'htmlBarebone' / 'imageArticulation.html'
        self.n_maxlines = 6

    def build(self, composition: QgsPrintLayout, data: dict, mapAreaFeature: QgsFeature, layers: List[QgsVectorLayer], showLayers: bool = False):
        if data.get('scale') == 250000:
            self.n_maxlines = 4
        mapExtents = mapAreaFeature.geometry().convexHull().boundingBox()
        if not isinstance(layers, list):
            layers = [layers]
        imageArticulationLayer = next(filter(lambda x: x.name() == 'edicao_articulacao_imagem_a', layers), None)
        # imageArticulationLayer = QgsVectorLayer("D:\\borba\\edicao_articulacao_imagem\\2724-2_edicao_articulacao_imagem_a.geojson","edicao_articulacao_imagem_a","ogr")
        # QgsProject.instance().addMapLayer(imageArticulationLayer, False)
        # layers = [imageArticulationLayer]
        if imageArticulationLayer is None:
            return []

        orderedFeaturesByDateAndSensor = self.getOrderedFeatures(imageArticulationLayer)
        self.setStyle(imageArticulationLayer, orderedFeaturesByDateAndSensor)

        # Inserting counties table
        html_tabledata = self.customcreateHtmlTableData(orderedFeaturesByDateAndSensor)
        self.setImageArticulationTableContents(composition, html_tabledata)
                
        if showLayers:
            imageArticulationGroupNode = QgsLayerTreeGroup('imageArticulation')
            imageArticulationGroupNode.setItemVisibilityChecked(False)
            root = QgsProject.instance().layerTreeRoot()
            for layer in layers:
                imageArticulationGroupNode.addLayer(layer)
            root.addChildNode(imageArticulationGroupNode)
            
        self.updateComposition(composition, mapExtents, layers)
        mapIDsToBeDisplayed = [imageArticulationLayer.id()]
        return mapIDsToBeDisplayed
    
    @staticmethod
    def getOrderedFeatures(imageArticulationLayer: QgsVectorLayer):
        return sorted(
            imageArticulationLayer.getFeatures(),
            reverse=False,
            key = lambda feat: tuple(chain(reversed(feat["data"].split('/')), [feat["nome_sensor"]]))
        )

    def getNumberOfColumns(self, n_total: int):
        n_columns = 1
        n_extra = n_total-18
        n_mod = n_extra % 3
        n_div = math.floor(n_extra / 3)
        initial_n_column1 = 0
        initial_n_column2 = 0
        initial_n_column3 = 0
        add_column1 = 0
        add_column2 = 0
        add_column3 = 0
        if 0 < n_total <= 6:
            initial_n_column1 = n_total
        elif 6 < n_total <= 12:
            n_columns = 2
            initial_n_column1 = 6
            initial_n_column2 = n_total-6
        elif 12 < n_total <= 18:
            n_columns = 3
            initial_n_column1 = 6
            initial_n_column2 = 6
            initial_n_column3 = n_total-12
        else:
            n_columns = 3
            initial_n_column1 = 6
            initial_n_column2 = 6
            initial_n_column3 = 6
            add_column1 = n_div + (1 if n_mod == 1 or n_mod == 2 else 0)
            add_column2 = n_div + (1 if n_mod == 2 else 0)
            add_column3 = n_div

        n_column1 = initial_n_column1 + add_column1
        n_column2 = initial_n_column2 + add_column2
        n_column3 = initial_n_column3 + add_column3

        return n_columns, n_column1, n_column2, n_column3

    def goToNextColumn(self, image_index: int, n_column1: int, n_column2: int, n_column3: int):
        n_municipio = image_index + 1
        if n_municipio == n_column1 or n_municipio == n_column1 + n_column2 or n_municipio == n_column1 + n_column2 + n_column3:
            return True
        else:
            return False

    def customcreateHtmlTableData(self, sortedFeatures: List[QgsFeature]):
        nImages = len(sortedFeatures)
        nColumns = math.ceil(nImages/self.n_maxlines)
        nColumns = 1 if nColumns == 0 else nColumns
        with open(self.htmlTablePath, "r") as f:
            baseHtml = f.read()
        fontSize = '0.6'

        nColumns, nColumn1, nColumn2, nColumn3 = self.getNumberOfColumns(nImages)

        baserows_str = '<tr {style}> {}</tr>'
        style_str = 'style="width: {value}%;"'.replace('{value}', str(round(100/nColumns, 2)))
        baserows_str = baserows_str.replace('{style}', style_str)
        basecolumn_str = '<td class = "mid" >{}</td>'

        tableColumns = []
        tableRows = []
        for feat_index, feat in enumerate(sortedFeatures):
            cell_str = f"{feat_index + 1} - {feat['nome_sensor']} ({feat['data']})"
            tableColumn = basecolumn_str.format(cell_str)
            tableColumns.append(tableColumn)
            if self.goToNextColumn(feat_index, nColumn1, nColumn2, nColumn3):
                tablerow = baserows_str.format('\n'.join(tableColumns))
                tableRows.append(tablerow)
                tableColumns = []
        tableContent = '\n'.join(tableRows)
        edited = baseHtml.format(font_size=fontSize, table_data=tableContent)
        return edited

    def setImageArticulationTableContents(self, composition:QgsPrintLayout ,  html_tabledata: str):
        compositionItem = composition.itemById('tabela_articulacao_imagens')
        if compositionItem is None:
            return
        compositionItem.setText(html_tabledata)
        compositionItem.setMode(QgsLayoutItemLabel.ModeHtml)
        compositionItem.refresh()

    def createRule(self, label: str, expression: str):
        '''
        Returns a QgsRuleBasedLabeling based on label and expression
        '''
        settings = QgsPalLayerSettings()
        settings.fieldName = label
        settings.Placement = QgsPalLayerSettings.OverPoint
        settings.centroidInside = True
        settings.isExpression = True
        textFormat = QgsTextFormat()
        textFormat.setColor(QColor(0, 0, 0, 255))
        textFormat.setSize(6)

        textBuffer = QgsTextBufferSettings()
        textBuffer.setColor(QColor(255, 255, 255, 255))
        textBuffer.setSize(0.4)
        textBuffer.setEnabled(True)
        textFormat.setBuffer(textBuffer)
        settings.setFormat(textFormat)

        rule = QgsRuleBasedLabeling.Rule(settings)
        rule.setFilterExpression(expression)
        rule.setActive(True)
        return rule

    def setStyle(self, imageArticulationLayer: QgsVectorLayer, orderedFeaturesByDateAndSensor: List[QgsFeature]):
        imageArticulationLayer.loadNamedStyle(
            str(self.stylesFolder / 'edicao_articulacao_imagem_a.qml'),
            True
        )
        imageArticulationLayer.triggerRepaint()
        rulesRoot = QgsRuleBasedLabeling.Rule(QgsPalLayerSettings())
        for n, feat in enumerate(orderedFeaturesByDateAndSensor):
            rule = self.createRule(
                f"'{n+1}'",
                f""" "nome_sensor" = '{feat["nome_sensor"]}' AND "data" = '{feat["data"]}' """
            )
            rulesRoot.appendChild(rule)
        rules = QgsRuleBasedLabeling(rulesRoot)
        imageArticulationLayer.setLabeling(rules)
        imageArticulationLayer.setLabelsEnabled(True)
        imageArticulationLayer.triggerRepaint()

    def updateComposition(self, composition: QgsPrintLayout, mapExtent: QgsRectangle, layersToShow: Tuple[QgsVectorLayer]):
        mapItem = composition.itemById("imageArticulation")
        if mapItem is None:
            return
        mapItem.setExtent(mapExtent)
        mapItem.setLayers(layersToShow)
        mapItem.setCrs(QgsCoordinateReferenceSystem('EPSG:4674'))
        mapItem.refresh()
