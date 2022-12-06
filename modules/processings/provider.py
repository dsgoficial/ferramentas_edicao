from pathlib import Path

from processing.core.ProcessingConfig import ProcessingConfig, Setting
from qgis.core import QgsProcessingProvider
from qgis.PyQt.QtGui import QIcon

from .bridgeAndManholeRotation import BridgeAndManholeRotation
from .bridgeAndManholeWidth import BridgeAndManholeWidth
from .damWidth import DamWidth
from .definePointSymbolRotation import DefinePointSymbolRotation
from .elevationDiagramPointGeneralization import \
    ElevationDiagramPointGeneralization
from .elevationPointGeneralization import ElevationPointsGeneralization
from .generalizeBuildings import GeneralizeBuildings
from .highestSpotOnTheFrame import HighestSpotOnTheFrame
from .insertEnergyTower import InsertEnergyTower
from .insertIdentificadorRodovia import InsertIdentificadorRodovia
from .loadMasks import LoadMasks
from .makeGrid import MakeGrid
from .mergeHighway import MergeHighway
from .mergeLinesByAngle import MergeLinesByAngle
from .mergeRivers import MergeRivers
from .orderEditLayersAndAddStyle import OrderEditLayersAndAddStyle
from .placeSportsGroundSymbol import PlaceSportsGroundSymbol
from .prepareOrtho import PrepareOrtho
from .prepareTopo import PrepareTopo
from .rapidsAndWaterfallRotation import RapidsAndWaterfallRotation
from .saveLayerStylesToFile import SaveLayerStylesToFile
from .saveMasks import SaveMasks


class Provider(QgsProcessingProvider):

    def __init__(self):
        super(Provider, self).__init__()

    def loadAlgorithms(self, *args, **kwargs):
        self.addAlgorithm(OrderEditLayersAndAddStyle())
        self.addAlgorithm(MergeHighway())
        self.addAlgorithm(MergeRivers())
        self.addAlgorithm(PrepareOrtho())
        self.addAlgorithm(PrepareTopo())
        self.addAlgorithm(InsertEnergyTower())
        self.addAlgorithm(InsertIdentificadorRodovia())
        self.addAlgorithm(HighestSpotOnTheFrame())
        self.addAlgorithm(MergeLinesByAngle())
        self.addAlgorithm(LoadMasks())
        self.addAlgorithm(SaveLayerStylesToFile())
        self.addAlgorithm(SaveMasks())
        self.addAlgorithm(ElevationPointsGeneralization())
        self.addAlgorithm(ElevationDiagramPointGeneralization())
        self.addAlgorithm(MakeGrid())
        self.addAlgorithm(BridgeAndManholeWidth())
        self.addAlgorithm(BridgeAndManholeRotation())
        self.addAlgorithm(DamWidth())
        self.addAlgorithm(DefinePointSymbolRotation())
        self.addAlgorithm(GeneralizeBuildings())
        self.addAlgorithm(RapidsAndWaterfallRotation())
        self.addAlgorithm(PlaceSportsGroundSymbol())

    def load(self):
        ProcessingConfig.settingIcons[self.name()] = self.icon()
        ProcessingConfig.addSetting(
            Setting(
                self.name(),
                'ACTIVATE_ferramentasedicao',
                'Activate',
                True
            )
        )
        ProcessingConfig.addSetting(Setting(
            ProcessingConfig.tr('General'),
            ProcessingConfig.RESULTS_GROUP_NAME,
            ProcessingConfig.tr("Results group name"),
            "results",
            valuetype=Setting.STRING,
            placeholder=ProcessingConfig.tr("Leave blank to avoid loading results in a predetermined group")
        ))
        ProcessingConfig.readSettings()
        self.refreshAlgorithms()
        return True

    def id(self, *args, **kwargs):
        return 'ferramentasedicao'

    def name(self, *args, **kwargs):
        return self.tr('Ferramentas de Edição')

    def icon(self):
        return QIcon(str(Path(__file__).parent.parent.parent / 'icon.png'))
