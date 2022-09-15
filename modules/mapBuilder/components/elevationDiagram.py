import os
import processing
from pathlib import Path
from typing import List

from PyQt5.QtGui import QFont, QColor
from PyQt5.QtCore import QVariant
from ...processings.makeGrid import getSirgasAuthIdByPointLatLong
from qgis.core import (QgsCoordinateReferenceSystem, QgsFeature,
                       QgsLayerTreeGroup, QgsLayoutItemMap,
                       QgsLayoutItemMapGrid, QgsMapLayer, QgsPrintLayout,
                       QgsProject, QgsRectangle, QgsTextFormat, QgsUnitTypes,
                       QgsProcessingContext, QgsProcessingFeedback, QgsVectorLayer, QgsFields, QgsField)

from ....interfaces.iComponent import IComponent
from .componentUtils import ComponentUtils


class ElevationDiagram(ComponentUtils,IComponent):

    def __init__(self, *args, **kwargs):
        self.stylesFolder =  Path(__file__).parent.parent / 'resources' / 'styles' / 'elevationDiagram'
        self.barSvgFolder = Path(__file__).parent.parent / 'resources' / 'products' / 'common'
        self.gridSpacingDict = {
            25: 5000,
            50: 10000,
            100: 20000,
            250: 40000,
        }
        self.scalesDict = {
            25: 0,
            50: 1,
            100: 2,
            250: 3,
        }

    def build(
        self, composition: QgsPrintLayout, data: dict, mapAreaFeature: QgsFeature,
        layers: List[QgsMapLayer], showLayers=False):

        mapExtents = mapAreaFeature.geometry().convexHull().boundingBox()
        if not isinstance(layers, list):
            layers = [layers]
        geographicBoundsLyr = self.createVectorLayerFromIter('geographicBounds', [mapAreaFeature])
        elevationSlicingLyr, nClasses = self.getElevationSlicing(data, geographicBoundsLyr)
        
        layers.append(elevationSlicingLyr)
        elevationPointsIdx, pointsLayer = next(filter(lambda x: x[1].name() == 'elemnat_ponto_cotado_p', enumerate(layers)))

        generalizedPoints, outputGrid = self.getGeneralizedPoints(pointsLayer, geographicBoundsLyr, data.get('scale'))
        layers[elevationPointsIdx] = generalizedPoints
        layers.append(outputGrid)

        self.updateComposition(
            composition,
            mapExtents,
            layers,
            nClasses,
            scale=data.get('scale'),
            elevationSlicingLyr=elevationSlicingLyr
        )
        if showLayers:
            elevationDiagramGroupNode = QgsLayerTreeGroup('elevationDiagram')	
            elevationDiagramGroupNode.setItemVisibilityChecked(False)								
            for layer in layers:
                elevationDiagramGroupNode.addLayer(layer)
            root = QgsProject.instance().layerTreeRoot()		
            root.addChildNode(elevationDiagramGroupNode)

        mapIDsToBeDisplayed = [x.id() for x in layers]

        return mapIDsToBeDisplayed
    
    def getElevationSlicing(self, data, geographicBoundsLyr):
        tag_mde_elevacao = data.get('mde_diagrama_elevacao', None)
        if tag_mde_elevacao is None:
            return None
        raster_mde_path = tag_mde_elevacao.get('caminho_mde', None)
        if raster_mde_path is None:
            return None
        raster_mde = self.createLayerRaster(rasterPath=raster_mde_path)
        elevationSlicingLyr = self.createTerrainLayer()
        processingOutput = processing.run(
            "dsgtools:buildterrainslicingfromcontours",
            {
                'INPUT': raster_mde,
                'CONTOUR_INTERVAL': 10,
                'GEOGRAPHIC_BOUNDARY': geographicBoundsLyr,
                'MIN_PIXEL_GROUP_SIZE': 100,
                'SMOOTHING_PARAMETER': 0.001,
                'OUTPUT_POLYGONS': 'TEMPORARY_OUTPUT',
                'OUTPUT_RASTER': 'TEMPORARY_OUTPUT'
            },
            context=QgsProcessingContext(),
            feedback=QgsProcessingFeedback()
        )['OUTPUT_POLYGONS']
        layerProvider = elevationSlicingLyr.dataProvider()
        layerProvider.addFeatures([feat for feat in processingOutput.getFeatures()])
        nClasses = max(int(feat['class']) for feat in elevationSlicingLyr.getFeatures()) + 1
        elevationSlicingLyr.loadNamedStyle(
            str(self.stylesFolder / f'edicao_fatiamento_terreno_{nClasses}_classes_a.qml'),
            True
        )
        elevationSlicingLyr.triggerRepaint()
        QgsProject.instance().addMapLayer(elevationSlicingLyr, False)
        return elevationSlicingLyr, nClasses
    
    def createTerrainLayer(self):
        layer = QgsVectorLayer('Polygon?crs=EPSG:4674', 'terrainSlicing', 'memory')
        layer.startEditing()
        layerProvider = layer.dataProvider()
        fields = QgsFields()
        fields.append(QgsField('class', QVariant.Int))
        fields.append(QgsField('class_min', QVariant.Int))
        fields.append(QgsField('class_max', QVariant.Int))
        layerProvider.addAttributes(fields)
        layer.commitChanges()
        return layer

    def getGeneralizedPoints(self, pointsLayer, geographicBoundsLyr, scale):

        processingOutput = processing.run(
            "ferramentasedicao:elevationdiagrampointgeneralization",
            {
                'INPUT_ELEVATION_POINTS': pointsLayer,
                'ELEVATION_FIELD': 'cota',
                'GEOGRAPHIC_BOUNDARY': geographicBoundsLyr,
                'INPUT_SCALE': self.scalesDict[scale],
                'OUTPUT_POINTS':'TEMPORARY_OUTPUT',
                'OUTPUT_GRID':'TEMPORARY_OUTPUT'
            },
            context=QgsProcessingContext(),
            feedback=QgsProcessingFeedback()
        )
        outputPoints = processingOutput['OUTPUT_POINTS']
        outputPoints.loadNamedStyle(
            str(self.stylesFolder / 'elemnat_ponto_cotado_p.qml'),
            True
        )
        outputPoints.triggerRepaint()
        QgsProject.instance().addMapLayer(outputPoints, False)

        outputGrid = processingOutput['OUTPUT_GRID']
        outputGrid.loadNamedStyle(
            str(self.stylesFolder / 'edicao_grid_diagrama_elevacao_a.qml'),
            True
        )
        outputGrid.triggerRepaint()
        QgsProject.instance().addMapLayer(outputGrid, False)
        return outputPoints, outputGrid

    
    def updateComposition(self, composition: QgsPrintLayout, mapExtents: QgsRectangle, layers: List[QgsMapLayer], nClasses: int, scale: int, elevationSlicingLyr: QgsVectorLayer):
        mapItem = composition.itemById("elevationDiagram")
        if mapItem is None:
            return
        crs = QgsCoordinateReferenceSystem(getSirgasAuthIdByPointLatLong(mapExtents.center().y(), mapExtents.center().x()))
        gridX = self.createGridX(
            parentLayoutItem=mapItem,
            gridIntervalX=self.gridSpacingDict[scale],
            gridIntervalY=self.gridSpacingDict[scale],
            crs=crs,
        )
        mapItem.grids().addGrid(gridX)
        gridY = self.createGridY(
            parentLayoutItem=mapItem,
            gridIntervalX=self.gridSpacingDict[scale],
            gridIntervalY=self.gridSpacingDict[scale],
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

        scaleBar = composition.itemById("elevationDiagramColorBar")
        if scaleBar is None:
            return
        scaleBar.setPicturePath(str(self.barSvgFolder / f'diagrama_{nClasses}_classes.svg'))
        scaleBar.refresh()

        self.setBarClassText(composition, nClasses)
        self.setRangeClass(composition, nClasses, elevationSlicingLyr)

    
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
        gridLayoutItem.setStyle(QgsLayoutItemMapGrid.Solid)
        gridLayoutItem.setIntervalX(gridIntervalX)
        gridLayoutItem.setIntervalY(gridIntervalY)
        gridLayoutItem.lineSymbol().setWidth(0.1)
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
        gridLayoutItem.setStyle(QgsLayoutItemMapGrid.Solid)
        gridLayoutItem.setIntervalX(gridIntervalX)
        gridLayoutItem.setIntervalY(gridIntervalY)
        gridLayoutItem.lineSymbol().setWidth(0.1)
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

    def setBarClassText(self, composition: QgsPrintLayout, nClasses: int):
        baixoItem = composition.itemById(f"textoBaixo_{nClasses}classes")  
        baixoItem.setText("Baixo")
        baixoItem.refresh()

        altoItem = composition.itemById(f"textoAlto_{nClasses}classes")  
        altoItem.setText("Alto")
        altoItem.refresh()

        if nClasses == 2:
            return
        medioItem = composition.itemById(f"textoMedio_{nClasses}classes")
        medioItem.setText("Médio")
        medioItem.refresh()

        if nClasses == 3:
            return
        maisAltoItem = composition.itemById(f"textoMaisAlto_{nClasses}classes")
        maisAltoItem.setText("Mais Alto")
        maisAltoItem.refresh()

    def setRangeClass(self, composition: QgsPrintLayout, nClasses: int, elevationSlicingLyr: QgsVectorLayer):
        rangeClassDict = {
            feat['class']: str(feat['class_max']) for feat in elevationSlicingLyr.getFeatures()
        }
        maxClasseZeroItem = composition.itemById(f"maxClasse0_{nClasses}classes")
        maxClasseZeroItem.setText(rangeClassDict[0])
        maxClasseZeroItem.refresh()

        if nClasses == 2:
            return

        maxClasseUmItem = composition.itemById(f"maxClasse1_{nClasses}classes")
        maxClasseUmItem.setText(rangeClassDict[1])
        maxClasseUmItem.refresh()
        
        if nClasses == 3:
            return
        
        maxClasseUmItem = composition.itemById(f"maxClasse2_{nClasses}classes")
        maxClasseUmItem.setText(rangeClassDict[2])
        maxClasseUmItem.refresh()
