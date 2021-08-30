import os, sys, argparse, contextlib
from qgis.core import QgsApplication
from .map_generator.manager import DefaultMap
from gridGenerator.gui.gridAndLabelCreator import GridAndLabelCreator

def exportMaps(args):
    sys.path.append(os.path.dirname(os.path.dirname(__file__)))
    grid = GridAndLabelCreator()
    defaultMap = DefaultMap(args, grid)
    defaultMap.createMaps()

def setupArgparser():
    parser = argparse.ArgumentParser()
    parser.add_argument('-t', '--tipo', default='Carta Ortoimagem', choices=('Carta Topográfica','Carta Ortoimagem'), type=str)
    parser.add_argument('-j', '--json', default=['C:\\Users\\eliton\\Downloads\\SH-22-V-D-VI-2-NO.json'])
    parser.add_argument('-l', '--login',dest='username', required=True)
    parser.add_argument('-s', '--senha', dest='password', required=True)
    parser.add_argument('-ef', '--exportFolder', default='D:\\export\\')
    parser.add_argument('-et', '--exportTiff', action='store_true')
    return parser.parse_args()

if __name__ == '__main__':
    args = setupArgparser()
    QgsApplication.setPrefixPath('C:/PROGRA~1/QGIS32~1.1/apps/qgis', True)
    qgs = QgsApplication([], True)
    qgs.initQgis()
    exportMaps(args)
    qgs.exitQgis()