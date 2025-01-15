import argparse
from pathlib import Path
import os
import sys
from pathlib import Path

# import ptvsd

# ptvsd.enable_attach(address=("localhost", 5678))
# ptvsd.wait_for_attach()

from qgis.core import QgsApplication, QgsNetworkAccessManager, QgsExpression
from qgis.PyQt.QtNetwork import QNetworkProxy
from qgis import core, gui


def exportMaps(args):
    from ferramentas_edicao.controllers.mapBuilderController import MapBuildController

    sys.path.append(os.path.dirname(os.path.dirname(__file__)))
    controller = MapBuildController(args, None)
    controller.run()


def setupArgparser():
    parser = argparse.ArgumentParser()
    parser.add_argument("pathQgis", default=str(getInstallationFolder()))
    parser.add_argument(
        "-t",
        "--tipo",
        default="Carta Topográfica 1.4",
        choices=(
            "Carta Topográfica 1.4",
            "Carta Ortoimagem 2.5",
            "Carta Ortoimagem OM 1.0",
            "Carta Ortoimagem Militar 2.5",
            "Carta Topográfica Militar 1.4",
        ),
        type=str,
    )
    parser.add_argument("-j", "--json", default=[], nargs="+")
    parser.add_argument("-l", "--login", dest="username", required=True)
    parser.add_argument("-s", "--senha", dest="password", required=True)
    parser.add_argument("-ph", "--proxyHost", type=str)
    parser.add_argument("-pp", "--proxyPort", type=int)
    parser.add_argument("-pu", "--proxyUser")
    parser.add_argument("-ppass", "--proxyPassword")
    parser.add_argument("-ef", "--exportFolder", required=True)
    parser.add_argument("-et", "--exportTiff", action="store_true")
    return parser.parse_args()


def getInstallationFolder() -> Path:
    if sys.platform == "win32":
        return next(Path("C:\\Program Files\\").glob("QGIS*"))
    elif sys.platform == "linux":
        pass


def startNetwork(args):
    if all((args.proxyHost, args.proxyPort, args.proxyUser, args.proxyPassword)):
        proxy = QNetworkProxy(
            QNetworkProxy.HttpProxy,
            args.proxyHost,
            args.proxyPort,
            args.proxyUser,
            args.proxyPassword,
        )
    else:
        proxy = QNetworkProxy(QNetworkProxy.NoProxy)
    manager = QgsNetworkAccessManager().instance()
    manager.setFallbackProxyAndExcludes(proxy, [], [])


if __name__ == "__main__":
    args = setupArgparser()
    print(f"Iniciando a exportação do produto {args.tipo} de json {args.json}")
    qgs = QgsApplication([], True, profileFolder="default")
    qgs.initQgis()
    p = Path(args.pathQgis)
    prefixPath = p / "apps/qgis"
    qgs.setPrefixPath(str(prefixPath), True)
    pluginsFolder = Path(
        "~\\AppData\\Roaming\\QGIS\\QGIS3\\profiles\\default\\python\\plugins"
    ).expanduser()
    qgs.setPluginPath(str(pluginsFolder))
    sys.path.append(str(p / "apps/qgis/python/plugins"))
    sys.path.append(str(pluginsFolder))

    # para funcionar tem que ser nesse escopo, nao pode encapsular numa funcao
    from ferramentas_edicao.modules.expressionFunctions.functions.createCustomGridNumbers import (
        longNumber,
        shortNumber,
    )
    from processing.core.Processing import Processing
    from ferramentas_edicao.modules.processings.provider import Provider
    from DsgTools.core.DSGToolsProcessingAlgs.dsgtoolsProcessingAlgorithmProvider import (
        DSGToolsProcessingAlgorithmProvider,
    )

    Processing.initialize()
    feProvider = Provider()
    QgsApplication.processingRegistry().addProvider(feProvider)
    dsgtoolsProvider = DSGToolsProcessingAlgorithmProvider()
    QgsApplication.processingRegistry().addProvider(dsgtoolsProvider)
    QgsExpression.registerFunction(longNumber)
    QgsExpression.registerFunction(shortNumber)

    startNetwork(args)
    exportMaps(args)
    qgs.exitQgis()
