import os, sys, argparse
from qgis.core import QgsApplication, QgsNetworkAccessManager
from PyQt5.QtNetwork import QNetworkProxy
from .map_generator.manager import DefaultMap
from gridGenerator.gui.gridAndLabelCreator import GridAndLabelCreator

def exportMaps(args):
    sys.path.append(os.path.dirname(os.path.dirname(__file__)))
    grid = GridAndLabelCreator()
    defaultMap = DefaultMap(args, grid)
    defaultMap.createMaps()

def setupArgparser():
    parser = argparse.ArgumentParser()
    parser.add_argument('-t', '--tipo', default='carta_ortoimagem', choices=('carta_topografica','carta_ortoimagem'), type=str)
    parser.add_argument('-j', '--json', default=['C:\\Users\\eliton\\Downloads\\SH-22-V-D-III-3-SE.json','C:\\Users\\eliton\\Downloads\\SH-22-V-D-VI-2-NO.json'])
    # parser.add_argument('-j', '--json', default=[r'C:\Users\eliton\Documents\edicao\json_test\cartaortoimagem_SF-22-Y-C-I-1-NE.json'])
    parser.add_argument('-l', '--login',dest='username', required=True)
    parser.add_argument('-s', '--senha', dest='password', required=True)
    parser.add_argument('-ph', '--proxyHost', type=str)
    parser.add_argument('-pp', '--proxyPort', type=int)
    parser.add_argument('-pu', '--proxyUser')
    parser.add_argument('-ppass', '--proxyPassword')
    parser.add_argument('-ef', '--exportFolder', default='D:\\export\\')
    parser.add_argument('-et', '--exportTiff', action='store_true')
    return parser.parse_args()

def startNetwork(args):
    if all((args.proxyHost,args.proxyPort, args.proxyUser, args.proxyPassword)):
        proxy = QNetworkProxy(QNetworkProxy.HttpProxy, args.proxyHost, args.proxyPort, args.proxyUser, args.proxyPassword)
    else:
        proxy = QNetworkProxy(QNetworkProxy.NoProxy)
    manager = QgsNetworkAccessManager().instance()
    manager.setFallbackProxyAndExcludes(proxy,[],[])

if __name__ == '__main__':
    args = setupArgparser()
    qgs = QgsApplication([], False)
    QgsApplication.setPrefixPath('C:\\Program Files\\QGIS 3.20.1\\apps', True)
    qgs.initQgis()
    startNetwork(args)
    exportMaps(args)
    qgs.exitQgis()