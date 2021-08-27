import os, sys
from qgis.core import QgsApplication
from qgis.utils import iface
from .map_generator.manager import DefaultMap
from gridGenerator.gui.gridAndLabelCreator import GridAndLabelCreator

def exportMaps(args):
    sys.path.append(os.path.dirname(os.path.dirname(__file__)))
    grid = GridAndLabelCreator()
    defaultMap = DefaultMap(iface, args, grid)
    defaultMap.createMaps()

if __name__ == '__main__':
    QgsApplication.setPrefixPath('C:/PROGRA~1/QGIS32~1.1/apps/qgis', True)
    qgs = QgsApplication([], True)
    qgs.initQgis()
    args = sys.argv[1:]
    exportMaps(args)
    qgs.exitQgis()