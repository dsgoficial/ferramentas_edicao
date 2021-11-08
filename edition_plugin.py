import os

from gridGenerator.gui.gridAndLabelCreator import GridAndLabelCreator
from qgis.core import QgsApplication
from qgis.PyQt.QtCore import QCoreApplication, QSettings, QTranslator
from qgis.PyQt.QtGui import QIcon
from qgis.PyQt.QtWidgets import QAction

from .edition_plugin_dialog import EditionPluginDialog
from .map_generator.manager import DefaultMap
from .processings.pluginProvider import pluginProvider
from .resources import *
from .tools.setupButtons import SetupButtons


class EditionPlugin:
    """QGIS Plugin Implementation."""

    def __init__(self, iface):
        """Constructor.

        :param iface: An interface instance that will be passed to this class
            which provides the hook by which you can manipulate the QGIS
            application at run time.
        :type iface: QgsInterface
        """
        # Save reference to the QGIS interface
        self.iface = iface
        # initialize plugin directory
        self.plugin_dir = os.path.dirname(__file__)
        # initialize locale
        locale = QSettings().value('locale/userLocale')[0:2]
        locale_path = os.path.join(
            self.plugin_dir,
            'i18n',
            'EditionPlugin_{}.qm'.format(locale))

        if os.path.exists(locale_path):
            self.translator = QTranslator()
            self.translator.load(locale_path)
            QCoreApplication.installTranslator(self.translator)

        # Declare instance attributes
        self.actions = []
        self.menu = self.tr(u'&Edition Plugin')

        # Check if plugin was started the first time in current QGIS session
        # Must be set in initGui() to survive plugin reloads
        self.first_start = None

    # noinspection PyMethodMayBeStatic
    def tr(self, message):
        """Get the translation for a string using Qt translation API.

        We implement this ourselves since we do not inherit QObject.

        :param message: String for translation.
        :type message: str, QString

        :returns: Translated version of message.
        :rtype: QString
        """
        # noinspection PyTypeChecker,PyArgumentList,PyCallByClass
        return QCoreApplication.translate('EditionPlugin', message)


    def add_action(
        self,
        icon_path,
        text,
        callback,
        enabled_flag=True,
        add_to_menu=True,
        add_to_toolbar=True,
        status_tip=None,
        whats_this=None,
        parent=None):
        """Add a toolbar icon to the toolbar.

        :param icon_path: Path to the icon for this action. Can be a resource
            path (e.g. ':/plugins/foo/bar.png') or a normal file system path.
        :type icon_path: str

        :param text: Text that should be shown in menu items for this action.
        :type text: str

        :param callback: Function to be called when the action is triggered.
        :type callback: function

        :param enabled_flag: A flag indicating if the action should be enabled
            by default. Defaults to True.
        :type enabled_flag: bool

        :param add_to_menu: Flag indicating whether the action should also
            be added to the menu. Defaults to True.
        :type add_to_menu: bool

        :param add_to_toolbar: Flag indicating whether the action should also
            be added to the toolbar. Defaults to True.
        :type add_to_toolbar: bool

        :param status_tip: Optional text to show in a popup when mouse pointer
            hovers over the action.
        :type status_tip: str

        :param parent: Parent widget for the new action. Defaults None.
        :type parent: QWidget

        :param whats_this: Optional text to show in the status bar when the
            mouse pointer hovers over the action.

        :returns: The action that was created. Note that the action is also
            added to self.actions list.
        :rtype: QAction
        """

        icon = QIcon(icon_path)
        action = QAction(icon, text, parent)
        action.triggered.connect(callback)
        action.setEnabled(enabled_flag)

        if status_tip is not None:
            action.setStatusTip(status_tip)

        if whats_this is not None:
            action.setWhatsThis(whats_this)

        if add_to_toolbar:
            # Adds plugin icon to Plugins toolbar
            self.iface.addToolBarIcon(action)

        if add_to_menu:
            self.iface.addPluginToMenu(
                self.menu,
                action)

        self.actions.append(action)

        return action

    def initGui(self):
        """Create the menu entries and toolbar icons inside the QGIS GUI."""

        icon_path = ':/plugins/edition_plugin/icon.png'
        self.add_action(
            icon_path,
            text=self.tr(u'Edition Plugin'),
            callback=self.run,
            parent=self.iface.mainWindow())
        self.first_start = True
        self.tools = SetupButtons(self.iface)
        self.tools.initToolBar()
        pluginProvider.initProcessing(self)

    def unload(self):
        """Removes the plugin menu item and icon from QGIS GUI."""
        # QgsApplication.processingRegistry().removeProvider(self.provider)
        self.tools.unload()
        for action in self.actions:
            self.iface.removePluginMenu(
                self.tr(u'&Edition Plugin'),
                action)
            self.iface.removeToolBarIcon(action)
        try:
            dlg = getattr(self, 'dlg')
            dlg.close()
        except AttributeError:
            pass

    def connectingButtons(self):
        self.defaultMap = DefaultMap(self.dlg, self.GLC, self.iface)
        self.dlg.pushButton_gerar_cartas.clicked.connect(self.defaultMap.createMaps)

    def setTestData(self):
        self.dlg.jsonConfigs.setFilePath('C:\\Users\\eliton\\Documents\\edicao\\json_test\\topo\\NB-20-Z-D-II-3.json')
        self.dlg.exportFolder.setFilePath('D:\\export')
        self.dlg.jsonConfigs.setFilter("JSON (*.json)")
        
    def initializeVariables(self):
        # Maps to create
        self.GLC = GridAndLabelCreator()

    def run(self):
        """Run method that performs all the real work"""

        # Create the dialog with elements (after translation) and keep reference
        # Only create GUI ONCE in callback, so that it will only load when the plugin is started
        if self.first_start == True:
            self.first_start = False
            self.dlg = EditionPluginDialog()

        self.initializeVariables()
        self.setTestData()
        self.connectingButtons()

        # show the dialog
        self.dlg.show()
        # Run the dialog event loop
        result = self.dlg.exec_()
        # See if OK was pressed
        if result:
            # Do something useful here - delete the line containing pass and
            # substitute with your code.
            pass
