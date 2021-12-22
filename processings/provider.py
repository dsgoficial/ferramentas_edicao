from qgis.core import QgsProcessingProvider
from processing.core.ProcessingConfig import ProcessingConfig, Setting
from qgis.PyQt.QtGui import QIcon
import os
from .orderEditLayersAndAddStyle import OrderEditLayersAndAddStyle
from .mergeRivers import MergeRivers
from .mergeHighway import MergeHighway
from .prepareOrtho import PrepareOrtho
from .highestSpotOnTheFrame import HighestSpotOnTheFrame
from .mergeLinesByAngle import MergeLinesByAngle
from .loadMasks import LoadMasks
from .saveLayerStylesToFile import SaveLayerStylesToFile
from .saveMasks import SaveMasks
from .elevationPointGeneralization import ElevationPointsGeneralization
from .makeGrid import MakeGrid

class Provider(QgsProcessingProvider):

    def __init__(self):
        super(Provider, self).__init__()

    def loadAlgorithms(self, *args, **kwargs):
        self.addAlgorithm(OrderEditLayersAndAddStyle())
        self.addAlgorithm(MergeHighway())
        self.addAlgorithm(MergeRivers())
        self.addAlgorithm(PrepareOrtho())
        self.addAlgorithm(HighestSpotOnTheFrame())
        self.addAlgorithm(MergeLinesByAngle())
        self.addAlgorithm(LoadMasks())
        self.addAlgorithm(SaveLayerStylesToFile())
        self.addAlgorithm(SaveMasks())
        self.addAlgorithm(ElevationPointsGeneralization())
        self.addAlgorithm(MakeGrid())

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
        return QIcon(
            os.path.join(
                os.path.abspath(os.path.join(
                    os.path.dirname(__file__)
                )),
                '..',
                'icon.png'
            )
        )
