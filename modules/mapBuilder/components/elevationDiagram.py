from pathlib import Path

from PyQt5.QtGui import QFont, QColor
from ...processings.makeGrid import getSirgasAuthIdByPointLatLong
from qgis.core import (QgsCoordinateReferenceSystem, QgsFeature,
                       QgsLayerTreeGroup, QgsLayoutItemMap,
                       QgsLayoutItemMapGrid, QgsMapLayer, QgsPrintLayout,
                       QgsProject, QgsRectangle, QgsTextFormat, QgsUnitTypes)

from ....interfaces.iComponent import IComponent
from .componentUtils import ComponentUtils


class ElevationDiagram(ComponentUtils,IComponent):

    def build(
        self, composition: QgsPrintLayout, mapAreaFeature: QgsFeature,
        layers: list[QgsMapLayer], showLayers=False):

        mapExtents = mapAreaFeature.geometry().convexHull().boundingBox()
        if not isinstance(layers, list):
            layers = [layers]
        self.updateComposition(composition, mapExtents, layers)
        if showLayers:
            elevationDiagramGroupNode = QgsLayerTreeGroup('elevationDiagram')	
            elevationDiagramGroupNode.setItemVisibilityChecked(False)								
            for layer in layers:
                elevationDiagramGroupNode.addLayer(layer)
            root = QgsProject.instance().layerTreeRoot()		
            root.addChildNode(elevationDiagramGroupNode)

        mapIDsToBeDisplayed = [x.id() for x in layers]

        return mapIDsToBeDisplayed
    
    def updateComposition(self, composition: QgsPrintLayout, mapExtents: QgsRectangle, layers: list[QgsMapLayer]):
        mapItem = composition.itemById("elevationDiagram")
        if mapItem is None:
            return
        crs = QgsCoordinateReferenceSystem(getSirgasAuthIdByPointLatLong(mapExtents.center().y(), mapExtents.center().x()))
        gridX = self.createGridX(
            parentLayoutItem=mapItem,
            gridIntervalX=10000,
            gridIntervalY=10000,
            crs=crs,
        )
        mapItem.grids().addGrid(gridX)
        gridY = self.createGridY(
            parentLayoutItem=mapItem,
            gridIntervalX=10000,
            gridIntervalY=10000,
            crs=crs,
        )
        mapItem.grids().addGrid(gridY)
        mapSize = mapItem.sizeWithUnits()
        mapItem.setFixedSize(mapSize)
        if layers is not None:
            mapItem.setLayers(layers)
        mapItem.setExtent(mapExtents)
        mapItem.setCrs(QgsProject.instance().crs())
        mapItem.refresh()
    
    @staticmethod
    def getTextFormat():
        textprop = QgsTextFormat()
        textprop.setColor(QColor('black'))
        textprop.setSizeUnit(QgsUnitTypes.RenderPoints)
        textprop.setSize(8.9762)
        textprop.setFont(QFont('Arial'))
        return textprop


    def createGridX(self, parentLayoutItem: QgsLayoutItemMap, gridIntervalX: int, gridIntervalY: int, crs: QgsCoordinateReferenceSystem) -> QgsLayoutItemMapGrid:
        gridLayoutItem = QgsLayoutItemMapGrid('x-grid', parentLayoutItem)
        gridLayoutItem.setStyle(QgsLayoutItemMapGrid.FrameAnnotationsOnly)
        gridLayoutItem.setIntervalX(gridIntervalX)
        gridLayoutItem.setIntervalY(gridIntervalY)
        gridLayoutItem.setAnnotationFormat(QgsLayoutItemMapGrid.CustomFormat)
        gridLayoutItem.setAnnotationExpression(
            """if(left(right( @grid_number , 4),1) = 0, 
                if( @grid_axis = 'x', substr(longNumber( @grid_number ), 0, 3), ''),
                shortNumber( @grid_number ))"""
        )
        gridLayoutItem.setAnnotationTextFormat(self.getTextFormat())
        gridLayoutItem.setAnnotationDisplay(QgsLayoutItemMapGrid.HideAll, QgsLayoutItemMapGrid.Left)
        gridLayoutItem.setAnnotationDisplay(QgsLayoutItemMapGrid.HideAll, QgsLayoutItemMapGrid.Right)
        gridLayoutItem.setAnnotationDisplay(QgsLayoutItemMapGrid.HideAll, QgsLayoutItemMapGrid.Top)
        gridLayoutItem.setAnnotationDisplay(QgsLayoutItemMapGrid.ShowAll, QgsLayoutItemMapGrid.Bottom)
        gridLayoutItem.setCrs(crs)
        gridLayoutItem.setAnnotationEnabled(True)
        gridLayoutItem.setEnabled(True)
        return gridLayoutItem

    def createGridY(self, parentLayoutItem: QgsLayoutItemMap, gridIntervalX: int, gridIntervalY: int, crs: QgsCoordinateReferenceSystem) -> QgsLayoutItemMapGrid:
        gridLayoutItem = QgsLayoutItemMapGrid('y-grid', parentLayoutItem)
        gridLayoutItem.setStyle(QgsLayoutItemMapGrid.FrameAnnotationsOnly)
        gridLayoutItem.setIntervalX(gridIntervalX)
        gridLayoutItem.setIntervalY(gridIntervalY)
        gridLayoutItem.setAnnotationFormat(QgsLayoutItemMapGrid.CustomFormat)
        gridLayoutItem.setAnnotationExpression(
            """if(left(right( @grid_number , 4),1) = 0, 
            if( @grid_axis = 'y', substr(longNumber( @grid_number ), 0, 4), ''),
            '' )"""
        )
        gridLayoutItem.setAnnotationTextFormat(self.getTextFormat())
        gridLayoutItem.setAnnotationDisplay(QgsLayoutItemMapGrid.HideAll, QgsLayoutItemMapGrid.Left)
        gridLayoutItem.setAnnotationDisplay(QgsLayoutItemMapGrid.ShowAll, QgsLayoutItemMapGrid.Right)
        gridLayoutItem.setAnnotationDisplay(QgsLayoutItemMapGrid.HideAll, QgsLayoutItemMapGrid.Top)
        gridLayoutItem.setAnnotationDisplay(QgsLayoutItemMapGrid.HideAll, QgsLayoutItemMapGrid.Bottom)
        gridLayoutItem.setCrs(crs)
        gridLayoutItem.setAnnotationEnabled(True)
        gridLayoutItem.setEnabled(True)
        return gridLayoutItem
