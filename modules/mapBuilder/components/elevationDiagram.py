import json
import os
import processing
from pathlib import Path
from typing import List
import numpy as np
from uuid import uuid4
from osgeo import gdal

from PyQt5.QtGui import QFont, QColor
from PyQt5.QtCore import QVariant
from ...processings.makeGrid import getSirgasAuthIdByPointLatLong
from qgis.core import (
    QgsCoordinateReferenceSystem,
    QgsFeature,
    QgsLayerTreeGroup,
    QgsLayoutItemMap,
    QgsLayoutItemMapGrid,
    QgsMapLayer,
    QgsPrintLayout,
    QgsProject,
    QgsRectangle,
    QgsTextFormat,
    QgsUnitTypes,
    QgsProcessingContext,
    QgsProcessingFeedback,
    QgsVectorLayer,
    QgsFields,
    QgsField,
    QgsRasterLayer,
    QgsProcessingUtils,
)

from ....interfaces.iComponent import IComponent
from .componentUtils import ComponentUtils


class ElevationDiagram(ComponentUtils, IComponent):
    def __init__(self, *args, **kwargs):
        self.stylesFolder = (
            Path(__file__).parent.parent / "resources" / "styles" / "elevationDiagram"
        )
        self.barSvgFolder = (
            Path(__file__).parent.parent / "resources" / "products" / "common"
        )
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
        self,
        composition: QgsPrintLayout,
        data: dict,
        mapAreaFeature: QgsFeature,
        layers: List[QgsMapLayer],
        showLayers=False,
    ):

        mapExtents = mapAreaFeature.geometry().convexHull().boundingBox()
        if not isinstance(layers, list):
            layers = [layers]
        geographicBoundsLyr = self.createVectorLayerFromIter(
            "geographicBounds", [mapAreaFeature]
        )
        areaWithoutDataLayer = next(
            filter(lambda x: x.name() == "edicao_area_sem_dados_a", layers), None
        )
        massaDaguaLayer = next(
            filter(lambda x: x.name() == "cobter_massa_dagua_a", layers), None
        )
        if massaDaguaLayer is not None:
            massaDaguaLayer.loadNamedStyle(
                str(self.stylesFolder / "cobter_massa_dagua_a.qml"), True
            )
            massaDaguaLayer.triggerRepaint()
        drenagemLayer = next(
            filter(lambda x: x.name() == "elemnat_trecho_drenagem_l", layers), None
        )
        if drenagemLayer is not None:
            drenagemLayer.loadNamedStyle(
                str(self.stylesFolder / "elemnat_trecho_drenagem_l.qml"), True
            )
            drenagemLayer.triggerRepaint()
        valaLayer = next(
            filter(lambda x: x.name() == "infra_vala_l", layers), None
        )
        if valaLayer is not None:
            valaLayer.loadNamedStyle(
                str(self.stylesFolder / "infra_vala_l.qml"), True
            )
            valaLayer.triggerRepaint()
        elevationPointsIdx, pointsLayer = next(
            filter(lambda x: x[1].name() == "elemnat_ponto_cotado_p", enumerate(layers))
        )
        generalizedPoints, outputGrid = self.getGeneralizedPoints(
            pointsLayer, geographicBoundsLyr, data.get("scale")
        )
        layers[elevationPointsIdx] = generalizedPoints
        layers.append(outputGrid)
        (
            elevationSlicingRasterLyr,
            elevationSlicingContourRasterLyr,
            nClasses,
            classThresholdDict,
        ) = self.getElevationSlicing(
            data, geographicBoundsLyr, areaWithoutDataLayer, massaDaguaLayer
        )
        if elevationSlicingContourRasterLyr is not None:
            layers.append(elevationSlicingContourRasterLyr)
        if elevationSlicingRasterLyr is not None:
            layers.append(elevationSlicingRasterLyr)

        self.updateComposition(
            composition,
            mapExtents,
            layers,
            nClasses,
            scale=data.get("scale"),
            elevationSlicingRasterLyr=elevationSlicingRasterLyr,
            classThresholdDict=classThresholdDict,
        )
        if showLayers:
            elevationDiagramGroupNode = QgsLayerTreeGroup("elevationDiagram")
            elevationDiagramGroupNode.setItemVisibilityChecked(False)
            for layer in layers:
                elevationDiagramGroupNode.addLayer(layer)
            root = QgsProject.instance().layerTreeRoot()
            root.addChildNode(elevationDiagramGroupNode)

        mapIDsToBeDisplayed = [x.id() for x in layers]

        return mapIDsToBeDisplayed

    def getElevationSlicing(
        self, data, geographicBoundsLyr, areaWithoutDataLyr, waterBodiesLyr
    ):
        tag_mde_elevacao = data.get("mde_diagrama_elevacao", None)
        if tag_mde_elevacao is None:
            return None, None, None, 1
        raster_mde_path = tag_mde_elevacao.get("caminho_mde", None)
        if raster_mde_path is None:
            return None, None, None, 1
        raster_mde = self.createLayerRaster(rasterPath=raster_mde_path)
        if raster_mde is None:
            return None, None, None, 1
        epsg = tag_mde_elevacao.get("epsg", None)
        if epsg is not None:
            epsgId = QgsCoordinateReferenceSystem(f"EPSG:{epsg}")
            raster_mde.setCrs(epsgId)
        raster_mde = self.getRasterMDE(raster_mde, epsg, epsgId)
        elevationSlicingRasterLyr = self.createTerrainLayer()
        slicingParams = tag_mde_elevacao.get("param_diagrama_elevacao", {})
        (
            processingOutput,
            classThresholdDict,
            nClasses,
        ) = self.getTerrainSlicingFromProcessing(
            geographicBoundsLyr,
            areaWithoutDataLyr,
            waterBodiesLyr,
            raster_mde,
            slicingParams,
        )
        if nClasses == 1:
            slicingParams.update(
                {
                    "contour_interval": 1,
                }
            )
            (
                processingOutput,
                classThresholdDict,
                nClasses,
            ) = self.getTerrainSlicingFromProcessing(
                geographicBoundsLyr,
                areaWithoutDataLyr,
                waterBodiesLyr,
                raster_mde,
                slicingParams,
            )
        elevationSlicingRasterLyr = self.createLayerRaster(
            rasterPath=processingOutput["OUTPUT_RASTER"],
            stylePath=str(
                self.stylesFolder
                / f"edicao_raster_fatiamento_terreno_{nClasses}_classes.qml"
            ),
        )
        QgsProject.instance().addMapLayer(elevationSlicingRasterLyr, False)
        elevationSlicingContourRasterLyr = self.createLayerRaster(
            rasterPath=processingOutput["OUTPUT_RASTER"],
            stylePath=str(
                self.stylesFolder / f"edicao_raster_curvas_diagrama_elevacao.qml"
            ),
        )
        QgsProject.instance().addMapLayer(elevationSlicingContourRasterLyr, False)

        return (
            elevationSlicingRasterLyr,
            elevationSlicingContourRasterLyr,
            nClasses,
            classThresholdDict,
        )

    def getRasterMDE(self, raster_mde, epsg, epsgId):
        raster_mde = (
            raster_mde
            if int(epsg) in (4674, 4326)
            else processing.run(
                "gdal:warpreproject",
                {
                    "INPUT": raster_mde,
                    "SOURCE_CRS": epsgId,
                    "TARGET_CRS": QgsCoordinateReferenceSystem("EPSG:4674"),
                    "RESAMPLING": 0,
                    "NODATA": None,
                    "TARGET_RESOLUTION": None,
                    "OPTIONS": "",
                    "DATA_TYPE": 0,
                    "TARGET_EXTENT": None,
                    "TARGET_EXTENT_CRS": None,
                    "MULTITHREADING": True,
                    "EXTRA": "",
                    "OUTPUT": "TEMPORARY_OUTPUT",
                },
            )["OUTPUT"]
        )
        return raster_mde

    def getTerrainSlicingFromProcessing(
        self,
        geographicBoundsLyr,
        areaWithoutDataLyr,
        waterBodiesLyr,
        raster_mde,
        slicingParams,
    ):
        processingOutput = processing.run(
            "ferramentasedicao:buildelevationdiagram",
            {
                "INPUT": raster_mde,
                "CONTOUR_INTERVAL": slicingParams.get("contour_interval", 10),
                "GEOGRAPHIC_BOUNDARY": geographicBoundsLyr,
                "AREA_WITHOUT_INFORMATION_POLYGONS": areaWithoutDataLyr,
                "WATER_BODIES_POLYGONS": waterBodiesLyr,
                "OUTPUT_RASTER": QgsProcessingUtils.generateTempFilename(
                    f"raster_diagrama_elevacao_{str(uuid4())}.tif"
                ),
                # 'OUTPUT_RASTER': 'TEMPORARY_OUTPUT',
                "OUTPUT_JSON": QgsProcessingUtils.generateTempFilename(
                    f"slicingDict_{str(uuid4())}.json"
                ),
            },
            context=QgsProcessingContext(),
            feedback=QgsProcessingFeedback(),
            is_child_algorithm=True,
        )
        with open(processingOutput["OUTPUT_JSON"], "r") as f:
            classThresholdDict = json.load(f)
        nClasses = len(classThresholdDict.keys())
        return processingOutput, classThresholdDict, nClasses

    def createTerrainLayer(self):
        layer = QgsVectorLayer("Polygon?crs=EPSG:4674", "terrainSlicing", "memory")
        layer.startEditing()
        layerProvider = layer.dataProvider()
        fields = QgsFields()
        fields.append(QgsField("class", QVariant.Int))
        fields.append(QgsField("class_min", QVariant.Int))
        fields.append(QgsField("class_max", QVariant.Int))
        layerProvider.addAttributes(fields)
        layer.commitChanges()
        return layer

    def getGeneralizedPoints(self, pointsLayer, geographicBoundsLyr, scale):

        processingOutput = processing.run(
            "ferramentasedicao:elevationdiagrampointgeneralization",
            {
                "INPUT_ELEVATION_POINTS": pointsLayer,
                "ELEVATION_FIELD": "cota",
                "GEOGRAPHIC_BOUNDARY": geographicBoundsLyr,
                "INPUT_SCALE": self.scalesDict[scale],
                "OUTPUT_POINTS": "memory:",
                "OUTPUT_GRID": "memory:",
            },
            context=QgsProcessingContext(),
            feedback=QgsProcessingFeedback(),
        )
        outputPoints = processingOutput["OUTPUT_POINTS"]
        outputPoints.loadNamedStyle(
            str(self.stylesFolder / "elemnat_ponto_cotado_p.qml"), True
        )
        outputPoints.triggerRepaint()
        QgsProject.instance().addMapLayer(outputPoints, False)

        outputGrid = processingOutput["OUTPUT_GRID"]
        outputGrid.loadNamedStyle(
            str(self.stylesFolder / "edicao_grid_diagrama_elevacao_a.qml"), True
        )
        outputGrid.triggerRepaint()
        QgsProject.instance().addMapLayer(outputGrid, False)
        return outputPoints, outputGrid

    def updateComposition(
        self,
        composition: QgsPrintLayout,
        mapExtents: QgsRectangle,
        layers: List[QgsMapLayer],
        nClasses: int,
        scale: int,
        elevationSlicingRasterLyr: QgsRasterLayer,
        classThresholdDict: dict,
    ):
        mapItem = composition.itemById("elevationDiagram")
        if mapItem is None:
            return
        crs = QgsCoordinateReferenceSystem(
            getSirgasAuthIdByPointLatLong(
                mapExtents.center().y(), mapExtents.center().x()
            )
        )
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
        projectCrs = QgsProject.instance().crs()
        if not projectCrs.isValid():
            projectCrs = QgsCoordinateReferenceSystem(crs.geographicCrsAuthId())
        mapItem.setCrs(projectCrs)
        mapItem.refresh()
        scaleBar = composition.itemById("elevationDiagramColorBar")
        if scaleBar is None:
            return
        scaleBarPicturePath = str(
            self.barSvgFolder / f"diagrama_{nClasses}_classes.svg"
        )
        if os.path.exists(scaleBarPicturePath):
            scaleBar.setPicturePath(scaleBarPicturePath)
            scaleBar.refresh()
        else:
            composition.removeLayoutItem(scaleBar)

        if elevationSlicingRasterLyr is not None and nClasses > 1:
            self.setBarClassText(composition, nClasses)
            self.setRangeClass(composition, nClasses, classThresholdDict)

    @staticmethod
    def getTextFormat():
        textprop = QgsTextFormat()
        textprop.setColor(QColor("black"))
        textprop.setSizeUnit(QgsUnitTypes.RenderPoints)
        textprop.setSize(8.9762)
        textprop.setFont(QFont("Noto Sans"))
        return textprop

    def createGridX(
        self,
        parentLayoutItem: QgsLayoutItemMap,
        gridIntervalX: int,
        gridIntervalY: int,
        crs: QgsCoordinateReferenceSystem,
    ) -> QgsLayoutItemMapGrid:
        gridLayoutItem = QgsLayoutItemMapGrid("x-grid", parentLayoutItem)
        gridLayoutItem.setStyle(QgsLayoutItemMapGrid.Solid)
        gridLayoutItem.setIntervalX(gridIntervalX)
        gridLayoutItem.setIntervalY(gridIntervalY)
        gridLayoutItem.lineSymbol().setWidth(0.1)
        gridLayoutItem.setAnnotationFormat(QgsLayoutItemMapGrid.CustomFormat)
        gridLayoutItem.setAnnotationExpression(
            """if(left(right( @grid_number , 3),1) = 0,
                if( @grid_axis = 'x', substr(longNumber( @grid_number ), 0, 3), ''),
                shortNumber( @grid_number ))"""
        )
        gridLayoutItem.setAnnotationTextFormat(self.getTextFormat())
        gridLayoutItem.setAnnotationDisplay(
            QgsLayoutItemMapGrid.HideAll, QgsLayoutItemMapGrid.Left
        )
        gridLayoutItem.setAnnotationDisplay(
            QgsLayoutItemMapGrid.HideAll, QgsLayoutItemMapGrid.Right
        )
        gridLayoutItem.setAnnotationDisplay(
            QgsLayoutItemMapGrid.HideAll, QgsLayoutItemMapGrid.Top
        )
        gridLayoutItem.setAnnotationDisplay(
            QgsLayoutItemMapGrid.ShowAll, QgsLayoutItemMapGrid.Bottom
        )
        gridLayoutItem.setCrs(crs)
        gridLayoutItem.setAnnotationPrecision(0)
        gridLayoutItem.setAnnotationEnabled(True)
        gridLayoutItem.setEnabled(True)
        return gridLayoutItem

    def createGridY(
        self,
        parentLayoutItem: QgsLayoutItemMap,
        gridIntervalX: int,
        gridIntervalY: int,
        crs: QgsCoordinateReferenceSystem,
    ) -> QgsLayoutItemMapGrid:
        gridLayoutItem = QgsLayoutItemMapGrid("y-grid", parentLayoutItem)
        gridLayoutItem.setStyle(QgsLayoutItemMapGrid.Solid)
        gridLayoutItem.setIntervalX(gridIntervalX)
        gridLayoutItem.setIntervalY(gridIntervalY)
        gridLayoutItem.lineSymbol().setWidth(0.1)
        gridLayoutItem.setAnnotationFormat(QgsLayoutItemMapGrid.CustomFormat)
        gridLayoutItem.setAnnotationExpression(
            """ with_variable(
            'casas',
            if(length(	@grid_number) = 7, 4, 3),
            if(left(right( @grid_number , @casas-1),1) = 0,
                        if( @grid_axis = 'y', substr(longNumber( @grid_number ), 0, @casas), ''),
                        '' )
            )"""
        )
        gridLayoutItem.setAnnotationTextFormat(self.getTextFormat())
        gridLayoutItem.setAnnotationDisplay(
            QgsLayoutItemMapGrid.HideAll, QgsLayoutItemMapGrid.Left
        )
        gridLayoutItem.setAnnotationDisplay(
            QgsLayoutItemMapGrid.ShowAll, QgsLayoutItemMapGrid.Right
        )
        gridLayoutItem.setAnnotationDisplay(
            QgsLayoutItemMapGrid.HideAll, QgsLayoutItemMapGrid.Top
        )
        gridLayoutItem.setAnnotationDisplay(
            QgsLayoutItemMapGrid.HideAll, QgsLayoutItemMapGrid.Bottom
        )
        gridLayoutItem.setCrs(crs)
        gridLayoutItem.setAnnotationPrecision(0)
        gridLayoutItem.setAnnotationEnabled(True)
        gridLayoutItem.setEnabled(True)
        return gridLayoutItem

    def setBarClassText(self, composition: QgsPrintLayout, nClasses: int):
        baixoItem = composition.itemById(f"textoBaixo_{nClasses}classes")
        if baixoItem is not None:
            baixoItem.setText("Baixo")
            baixoItem.refresh()

        altoItem = composition.itemById(f"textoAlto_{nClasses}classes")
        if altoItem is not None:
            altoItem.setText("Alto")
            altoItem.refresh()

        if nClasses == 2:
            return
        medioItem = composition.itemById(f"textoMedio_{nClasses}classes")
        if medioItem is not None:
            medioItem.setText("Médio")
            medioItem.refresh()

        if nClasses == 3:
            return
        maisAltoItem = composition.itemById(f"textoMaisAlto_{nClasses}classes")
        if maisAltoItem is not None:
            maisAltoItem.setText("Mais Alto")
            maisAltoItem.refresh()

    def setRangeClass(
        self, composition: QgsPrintLayout, nClasses: int, rangeClassDict: dict
    ):
        for classe, (_, maxValue) in rangeClassDict.items():
            item = composition.itemById(f"maxClasse{classe}_{nClasses}classes")
            if item is None:
                continue
            item.setText(str(maxValue))
            item.refresh()
