def classFactory(iface):
    """Load EditionPlugin class from file EditionPlugin.

    :param iface: A QGIS interface instance.
    :type iface: QgsInterface
    """
    from .editionPlugin import EditionPlugin

    return EditionPlugin(iface)
