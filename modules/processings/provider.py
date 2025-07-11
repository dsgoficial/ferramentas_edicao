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
from pathlib import Path

from processing.core.ProcessingConfig import ProcessingConfig, Setting
from qgis.core import QgsProcessingProvider
from qgis.PyQt.QtGui import QIcon

from .bridgeAndManholeWidth import BridgeAndManholeWidth
from .buildElevationDiagram import BuildElevationDiagram
from .damWidth import DamWidth
from .defineBuildingRotation import DefineBuildingRotation
from .defineSpillWaySinkRotation import DefineSpillWaySinkRotation
from .placeVegetationSymbol import PlaceVegetationSymbol
from .placeBorderOfHydrographicElement import PlaceBorderOfHydrographicElement
from .elevationDiagramPointGeneralization import ElevationDiagramPointGeneralization
from .elevationPointGeneralization import ElevationPointsGeneralization
from .fixLabelPositionOnLayers import FixLabelPostionOnLayers
from .highestSpotOnTheFrame import HighestSpotOnTheFrame
from .identifyLabelsOutsideGeographicBoundary import (
    IdentifyLabelsOutsideGeographicBoundary,
)
from .identifyLabelOverlap import IdentifyLabelOverlap
from .insertEnergyTower import InsertEnergyTower
from .insertRoadMarker import InsertRoadMarker
from .loadMasks import LoadMasks
from .makeGrid import MakeGrid
from .mergeLinesByAngle import MergeLinesByAngle
from .mergeRivers import MergeRivers
from .orderEditLayersAndAddStyle import OrderEditLayersAndAddStyle
from .placeBuildingSymbol import PlaceBuildingSymbol
from .placeMineralExtractionSymbol import PlaceMineralExtractionSymbol
from .placePointSymbolInsideArea import PlacePointSymbolInsideArea
from .placePowerPlantSymbol import PlacePowerPlantSymbol
from .prepareOrtho import PrepareOrtho
from .prepareTopo import PrepareTopo
from .rapidsAndWaterfallRotation import RapidsAndWaterfallRotation
from .saveLayerStylesToFile import SaveLayerStylesToFile
from .saveMasks import SaveMasks
from .validateGrid import ValidateGrid
from .setSobrepositionOrtho import SetSobrepositionOrtho
from .setSobrepositionTopo import SetSobrepositionTopo
from .changeAttributeOrtho import ChangeAttributeOrtho
from .changeAttributeTopo import ChangeAttributeTopo
from .sizeTextRiverLine import SizeTextRiverLine
from .setCurveOrientation import SetCurveOrientation
from .setSobrepositionLegalBoundary import SetSobrepositionLegalBoundary
from .placePointOfChange import PlacePointOfChange
from .verifySymbolOverlap import VerifySymbolOverlap
from .fixLabelPositionCRS import FixLabelPositionCRS
from .sizeLabelLarge import SizeLabelLarge
from .runRemoteProductExportAlgorithm import RunRemoteProductExportAlgorithm
from .placeMasterContourLabels import PlaceMasterContourLabels
from .reprojectAttributes import ReprojectAttributesAlgorithm
from .createCustomPolygons import CreateCustomPolygons
from .copyFeaturesIntoRoadElement import CopyFeaturesIntoRoadElement
from .layoutItemsToCanvas import LayoutItemsToCanvasAlgorithm


class Provider(QgsProcessingProvider):
    def __init__(self):
        super(Provider, self).__init__()

    def loadAlgorithms(self, *args, **kwargs):
        self.addAlgorithm(OrderEditLayersAndAddStyle())
        self.addAlgorithm(MergeRivers())
        # self.addAlgorithm(PrepareOrtho())
        # self.addAlgorithm(PrepareTopo())
        self.addAlgorithm(InsertEnergyTower())
        self.addAlgorithm(InsertRoadMarker())
        self.addAlgorithm(HighestSpotOnTheFrame())
        self.addAlgorithm(MergeLinesByAngle())
        self.addAlgorithm(LoadMasks())
        self.addAlgorithm(SaveLayerStylesToFile())
        self.addAlgorithm(SaveMasks())
        self.addAlgorithm(ValidateGrid())
        self.addAlgorithm(ElevationPointsGeneralization())
        self.addAlgorithm(ElevationDiagramPointGeneralization())
        self.addAlgorithm(MakeGrid())
        self.addAlgorithm(BridgeAndManholeWidth())
        self.addAlgorithm(DamWidth())
        self.addAlgorithm(DefineBuildingRotation())
        self.addAlgorithm(RapidsAndWaterfallRotation())
        self.addAlgorithm(PlacePointSymbolInsideArea())
        self.addAlgorithm(PlaceBuildingSymbol())
        self.addAlgorithm(PlacePowerPlantSymbol())
        self.addAlgorithm(PlaceMineralExtractionSymbol())
        self.addAlgorithm(BuildElevationDiagram())
        self.addAlgorithm(SetSobrepositionOrtho())
        self.addAlgorithm(SetSobrepositionTopo())
        self.addAlgorithm(ChangeAttributeOrtho())
        self.addAlgorithm(ChangeAttributeTopo())
        self.addAlgorithm(SizeTextRiverLine())
        self.addAlgorithm(SetCurveOrientation())
        self.addAlgorithm(DefineSpillWaySinkRotation())
        self.addAlgorithm(PlaceVegetationSymbol())
        self.addAlgorithm(PlaceBorderOfHydrographicElement())
        self.addAlgorithm(SetSobrepositionLegalBoundary())
        self.addAlgorithm(PlacePointOfChange())
        self.addAlgorithm(VerifySymbolOverlap())
        self.addAlgorithm(FixLabelPostionOnLayers())
        self.addAlgorithm(IdentifyLabelOverlap())
        self.addAlgorithm(FixLabelPositionCRS())
        self.addAlgorithm(SizeLabelLarge())
        self.addAlgorithm(IdentifyLabelsOutsideGeographicBoundary())
        self.addAlgorithm(RunRemoteProductExportAlgorithm())
        self.addAlgorithm(PlaceMasterContourLabels())
        self.addAlgorithm(ReprojectAttributesAlgorithm())
        self.addAlgorithm(CreateCustomPolygons())
        self.addAlgorithm(CopyFeaturesIntoRoadElement())
        self.addAlgorithm(LayoutItemsToCanvasAlgorithm())

    def load(self):
        ProcessingConfig.settingIcons[self.name()] = self.icon()
        ProcessingConfig.addSetting(
            Setting(self.name(), "ACTIVATE_ferramentasedicao", "Activate", True)
        )
        ProcessingConfig.addSetting(
            Setting(
                ProcessingConfig.tr("General"),
                ProcessingConfig.RESULTS_GROUP_NAME,
                ProcessingConfig.tr("Results group name"),
                "results",
                valuetype=Setting.STRING,
                placeholder=ProcessingConfig.tr(
                    "Leave blank to avoid loading results in a predetermined group"
                ),
            )
        )
        ProcessingConfig.readSettings()
        self.refreshAlgorithms()
        return True

    def id(self, *args, **kwargs):
        return "ferramentasedicao"

    def name(self, *args, **kwargs):
        return self.tr("Ferramentas de Edição")

    def icon(self):
        return QIcon(str(Path(__file__).parent.parent.parent / "icon.png"))
