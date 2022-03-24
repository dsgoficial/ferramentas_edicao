import argparse
from ast import arg
import os
import sys
from pathlib import Path

from qgis.core import QgsApplication, QgsNetworkAccessManager
from qgis.PyQt.QtNetwork import QNetworkProxy

from .controllers.mapBuilderController import MapBuildController


def exportMaps(args):
    sys.path.append(os.path.dirname(os.path.dirname(__file__)))
    controller = MapBuildController(args, None)
    controller.run()

def setupArgparser():
    parser = argparse.ArgumentParser()
    parser.add_argument('pathQgis', default=str(getInstallationFolder()))
    parser.add_argument('-t', '--tipo', default='carta_ortoimagem', choices=('carta_topografica','carta_ortoimagem', 'carta_om'), type=str)
    parser.add_argument('-j', '--json', default=[], nargs='+')
    parser.add_argument('-l', '--login', dest='username', required=True)
    parser.add_argument('-s', '--senha', dest='password', required=True)
    parser.add_argument('-ph', '--proxyHost', type=str)
    parser.add_argument('-pp', '--proxyPort', type=int)
    parser.add_argument('-pu', '--proxyUser')
    parser.add_argument('-ppass', '--proxyPassword')
    parser.add_argument('-ef', '--exportFolder', required=True)
    parser.add_argument('-et', '--exportTiff', action='store_true')
    return parser.parse_args()

def getInstallationFolder() -> Path:
    if sys.platform == 'win32':
        return next(Path('C:\\Program Files\\').glob('QGIS*'))
    elif sys.platform == 'linux':
        pass

def startNetwork(args):
    if all((args.proxyHost, args.proxyPort, args.proxyUser, args.proxyPassword)):
        proxy = QNetworkProxy(QNetworkProxy.HttpProxy, args.proxyHost, args.proxyPort, args.proxyUser, args.proxyPassword)
    else:
        proxy = QNetworkProxy(QNetworkProxy.NoProxy)
    manager = QgsNetworkAccessManager().instance()
    manager.setFallbackProxyAndExcludes(proxy,[],[])

if __name__ == '__main__':
    args = setupArgparser()
    qgs = QgsApplication([], False)
    # QgsApplication.setPrefixPath('C:\\Program Files\\QGIS 3.20.1\\apps', True)
    qgs.initQgis()
    startNetwork(args)
    exportMaps(args)
    qgs.exitQgis()
