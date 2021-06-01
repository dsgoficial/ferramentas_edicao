def classFactory(iface):
    """Load EditionPlugin class from file EditionPlugin.

    :param iface: A QGIS interface instance.
    :type iface: QgsInterface
    """
    from .edition_plugin import EditionPlugin
    return EditionPlugin(iface)
