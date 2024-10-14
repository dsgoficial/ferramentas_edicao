import json
import os
from pathlib import Path

from qgis.PyQt.QtCore import QCoreApplication, QSettings, QTranslator
from qgis.PyQt.QtGui import QIcon
from qgis.PyQt.QtWidgets import QAction, QMessageBox, QDialog, QTextBrowser, QVBoxLayout, QPushButton

from qgis.core import QgsFontUtils
from qgis.utils import active_plugins

from .config.configDefaults import ConfigDefaults
from .controllers.mapBuilderController import MapBuildController
from .modules.processings.pluginProvider import ProcessingProvider
from .modules.tools.setupButtons import SetupButtons
from .resources.dialogs.editionPluginDialog import EditionPluginDialog
from .modules.expressionFunctions import loadExpressionFunctions


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
        self.history = []  # Lista para armazenar o histórico de navegação
        self.debugMode = (Path(__file__).parent / ".env").exists()
        # initialize plugin directory
        self.plugin_dir = os.path.dirname(__file__)
        # initialize locale
        locale = QSettings().value("locale/userLocale")[0:2]
        locale_path = os.path.join(
            self.plugin_dir, "i18n", "EditionPlugin_{}.qm".format(locale)
        )

        if os.path.exists(locale_path):
            self.translator = QTranslator()
            self.translator.load(locale_path)
            QCoreApplication.installTranslator(self.translator)

        # Declare instance attributes
        self.actions = []
        self.menu = self.tr("&Ferramentas de Edição")

        # Check if plugin was started the first time in current QGIS session
        # Must be set in initGui() to survive plugin reloads
        self.firstStart = None

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
        return QCoreApplication.translate("FerramentasEdicao", message)

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
        parent=None,
        parentToolbar=None,
    ):
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
            self.iface.addPluginToMenu(self.menu, action)

        if parentToolbar:
            parentToolbar.addAction(action)

        self.actions.append(action)

        return action

    def initGui(self):
        """Create the menu entries and toolbar icons inside the QGIS GUI."""

        self.firstStart = True
        self.toolBar = self.iface.addToolBar("ferramentas_edicao")
        self.toolBar.setObjectName("ferramentas_edicao")
        
        # Botão principal
        icon_path = Path(__file__).parent / "icon.png"
        self.add_action(
            str(icon_path),
            text=self.tr("Ferramentas de Edição: Exportar produtos"),
            callback=self.run,
            parentToolbar=self.toolBar,
            add_to_toolbar=False,
        )

        # Adicionando o botão de ajuda
        help_icon_path = Path(__file__).parent / "Help" / "button" / "icons" / "icon2.png"
        self.add_action(
            str(help_icon_path),
            text=self.tr("Clique aqui para obter ajuda"),
            callback=self.show_help_dialog,
            parentToolbar=self.toolBar,
        )

        # Inicializando outras ferramentas
        self.tools = SetupButtons(toolbar=self.toolBar, iface=self.iface)
        self.tools.initToolBar()
        self.processingProvider = ProcessingProvider()
        self.processingProvider.initProcessing()
        loadExpressionFunctions()

    def show_help_dialog(self):
        """Exibe a caixa de diálogo de ajuda com navegação e botão de voltar."""
        help_dialog = QDialog(self.iface.mainWindow())
        help_dialog.setWindowTitle("Ajuda")
        help_dialog.resize(800, 600)

        # Criando um widget de navegador de texto para exibir o conteúdo HTML
        self.help_text = QTextBrowser(help_dialog)
        
        # Caminho inicial para carregar o conteúdo principal (buttonTools.html)
        self.current_page = "buttonTools.html"

        # Conectar ao método para navegar entre páginas ao clicar nos links
        self.help_text.anchorClicked.connect(self.handle_link_click)

        # Botão de voltar
        self.back_button = QPushButton("Voltar", help_dialog)
        self.back_button.clicked.connect(self.go_back)
        self.back_button.setEnabled(False)  # Desativado inicialmente

        # Layout da janela de ajuda
        layout = QVBoxLayout()
        layout.addWidget(self.help_text)
        layout.addWidget(self.back_button)
        help_dialog.setLayout(layout)

        # Carregar a página inicial
        self.load_page(self.current_page)  # Página inicial é a buttonTools.html
        help_dialog.exec_()

    def load_page(self, page):
        """Carrega uma página HTML específica."""
        html_file_path = Path(__file__).parent / "Help" / "button" / "html" / page
        image_file_path1 = Path(__file__).parent / "Help" / "button" / "img" / "botoes.png"
        image_file_path3 = Path(__file__).parent / "Help" / "button" / "icons" / "alternar_justificativa.png"
        image_file_path4 = Path(__file__).parent / "Help" / "button" / "icons" / "alternar_rotulo.png"
        image_file_path5 = Path(__file__).parent / "Help" / "button" / "icons" / "alternar_visibilidade_do_texto.png"
        image_file_path6 = Path(__file__).parent / "Help" / "button" / "icons" / "alternar_visibilidade.png"
        image_file_path7 = Path(__file__).parent / "Help" / "button" / "icons" / "copiar_texto_generico.png"
        image_file_path8 = Path(__file__).parent / "Help" / "button" / "icons" / "copiar_texto_sugerido.png"
        image_file_path9 = Path(__file__).parent / "Help" / "button" / "icons" / "insere_seta_de_corrente.png"
        image_file_patha = Path(__file__).parent / "Help" / "button" / "icons" / "numero_de_faixas.png"
        image_file_pathb = Path(__file__).parent / "Help" / "button" / "icons" / "quebra_linha.png"
        image_file_pathc = Path(__file__).parent / "Help" / "button" / "icons" / "rotulo_aproximado.png"
        image_file_pathd = Path(__file__).parent / "Help" / "button" / "icons" / "rotulo_de_fronteira.png"
        image_file_pathe = Path(__file__).parent / "Help" / "button" / "icons" / "rotulo_lago.png"
        image_file_pathf = Path(__file__).parent / "Help" / "button" / "icons" / "rotulo_rio.png"
        image_file_pathg = Path(__file__).parent / "Help" / "button" / "icons" / "simbolo_idt_trecho_rodoviario.png"
        image_file_pathh = Path(__file__).parent / "Help" / "button" / "icons" / "simbolo_vegetacao.png"
        image_file_pathi = Path(__file__).parent / "Help" / "button" / "icons" / "suprimir_bandeira_edificacao.png"
        image_file_pathj = Path(__file__).parent / "Help" / "button" / "icons" / "texto_de_cota_mestra.png"
        image_file_pathk = Path(__file__).parent / "Help" / "button" / "icons" / "visibilidade_de_ponta.png"
        image_file_pathl = Path(__file__).parent / "Help" / "button" / "icons" / "visibilidade_lateral_ponte.png"
        image_file_pathm = Path(__file__).parent / "Help" / "button" / "img" / "sentido_corrente.png"
        image_file_pathn = Path(__file__).parent / "Help" / "button" / "icons" / "alternar_estilo_nao_visivel.png"

        if html_file_path.exists():
            with open(html_file_path, "r", encoding="utf-8") as file:
                html_content = file.read()

            # Substituir os placeholders pelas imagens reais
            html_content = html_content.replace("path_to_image1", image_file_path1.as_posix())
            html_content = html_content.replace("path_to_image3", image_file_path3.as_posix())
            html_content = html_content.replace("path_to_image4", image_file_path4.as_posix())
            html_content = html_content.replace("path_to_image5", image_file_path5.as_posix())
            html_content = html_content.replace("path_to_image6", image_file_path6.as_posix())
            html_content = html_content.replace("path_to_image7", image_file_path7.as_posix())
            html_content = html_content.replace("path_to_image8", image_file_path8.as_posix())
            html_content = html_content.replace("path_to_image9", image_file_path9.as_posix())
            html_content = html_content.replace("path_to_imagea", image_file_patha.as_posix())
            html_content = html_content.replace("path_to_imageb", image_file_pathb.as_posix())
            html_content = html_content.replace("path_to_imagec", image_file_pathc.as_posix())
            html_content = html_content.replace("path_to_imaged", image_file_pathd.as_posix())
            html_content = html_content.replace("path_to_imagee", image_file_pathe.as_posix())
            html_content = html_content.replace("path_to_imagef", image_file_pathf.as_posix())
            html_content = html_content.replace("path_to_imageg", image_file_pathg.as_posix())
            html_content = html_content.replace("path_to_imageh", image_file_pathh.as_posix())
            html_content = html_content.replace("path_to_imagei", image_file_pathi.as_posix())
            html_content = html_content.replace("path_to_imagej", image_file_pathj.as_posix())
            html_content = html_content.replace("path_to_imagek", image_file_pathk.as_posix())
            html_content = html_content.replace("path_to_imagel", image_file_pathl.as_posix())
            html_content = html_content.replace("path_to_imagem", image_file_pathm.as_posix())
            html_content = html_content.replace("path_to_imagen", image_file_pathn.as_posix())

            self.help_text.setHtml(html_content)
        else:
            self.help_text.setPlainText("Arquivo de ajuda não encontrado: " + page)


    def handle_link_click(self, url):
        """Lida com o clique nos links e navega entre páginas."""
        current_page = self.current_page  # Página atual
        self.history.append(current_page)  # Armazena a página atual no histórico
        self.back_button.setEnabled(True)  # Ativa o botão de voltar

        # Extrair o nome da página do link clicado
        page_name = url.toString().split('/')[-1]
        self.current_page = page_name  # Atualiza a página atual
        self.load_page(page_name)

    def go_back(self):
        """Volta para a última página visualizada."""
        if self.history:
            last_page = self.history.pop()  # Retorna a última página do histórico
            self.current_page = last_page  # Atualiza a página atual
            self.load_page(last_page)

        if not self.history:
            self.back_button.setEnabled(False)  # Desativa o botão se não houver mais histórico

    def unload(self):
        """Removes the plugin menu item and icon from QGIS GUI."""
        # QgsApplication.processingRegistry().removeProvider(self.provider)
        if hasattr(self, "tools"):
            self.tools.unload()
        if hasattr(self, "controller"):
            self.controller.unload()
        if hasattr(self, "processingProvider"):
            self.processingProvider.unload()
        if hasattr(self, "dlg"):
            self.dlg.close()
        for action in self.actions:
            self.iface.removePluginMenu(self.tr("&Ferramentas de Edição"), action)
            self.iface.removeToolBarIcon(action)

    def initialize(self):
        """Starts main plugin dialog and the main controller"""
        locale = QSettings().value("locale/userLocale")[0:2]
        if "en" not in locale:
            QMessageBox.warning(
                self.iface.mainWindow(),
                "Erro",
                f"O idioma do QGIS deve estar em inglês para que as fontes sejam atribuídas corretamente. "
                "Mude o idioma do QGIS em Configurações > Opções > Geral, reinicie o QGIS e tente novamente.",
            )
            return
        fontsInstalled, errorMsg = self.fontsAreInstalled()
        if not fontsInstalled:
            QMessageBox.warning(
                self.iface.mainWindow(),
                "Erro",
                f"Erro na instalação das fontes: {errorMsg}.\n"
                "Feche o QGIS, corrija a instalação, reinicie o QGIS e tente novamente.",
            )
            return
        if "grassprovider" not in active_plugins:
            QMessageBox.warning(
                self.iface.mainWindow(),
                "Erro",
                f"Erro no grass plugin. Ative o plugin e tente novamente.",
            )
            return
        if "DsgTools" not in active_plugins:
            QMessageBox.warning(
                self.iface.mainWindow(),
                "Erro",
                f"Erro no DsgTools. Ative o plugin e tente novamente.",
            )
            return

        if not self.firstStart:
            return
        self.firstStart = False
        self.dlg = EditionPluginDialog()
        self.controller = MapBuildController(self.dlg, self.iface, ConfigDefaults())
        self.dlg.pushButton.clicked.connect(self.controller.run)
        if not self.debugMode:
            return
        env_dict = self.loadEnv()
        self.dlg.jsonConfigs.setFilePath(
            env_dict.get(
                "jsonConfigs",
                "C:\\Users\\eliton\\Documents\\edicao\\json_test\\om\\om1.json",
            )
        )
        self.dlg.exportFolder.setFilePath(env_dict.get("exportFolder", "D:\\export"))
        self.dlg.jsonConfigs.setFilter("JSON (*.json)")
        username = env_dict.get("username", None)
        if username is not None:
            self.dlg.username.setText(username)
        password = env_dict.get("password", None)
        if password is not None:
            self.dlg.password.setText(password)

    def loadEnv(self):
        with open(Path(__file__).parent / ".env") as f:
            file_data = f.read()
        return json.loads(file_data)

    def fontsAreInstalled(self):
        fontUtils = QgsFontUtils()
        if not fontUtils.fontFamilyOnSystem("Noto Sans"):
            return False, "A fonte Noto Sans não está instalada no sistema."
        fontStyles = [
            "Regular",
            "Bold",
            "Bold Italic",
            "Italic",
            "Condensed",
            "Condensed Bold",
            "Condensed Bold Italic",
            "Condensed Italic",
            "Light",
            "Light Italic",
            "Condensed Light Italic",
            "Condensed Light",
        ]
        return all(
            fontUtils.fontFamilyHasStyle("Noto Sans", style) for style in fontStyles
        ), ",".join(
            filter(
                lambda x: fontUtils.fontFamilyHasStyle("Noto Sans", x) is False,
                fontStyles,
            )
        )

    def run(self):
        """Run method that performs all the real work"""
        locale = QSettings().value("locale/userLocale")[0:2]
        if "en" not in locale:
            QMessageBox.warning(
                self.iface.mainWindow(),
                "Erro",
                f"O idioma do QGIS deve estar em inglês para que as fontes sejam atribuídas corretamente. "
                "Mude o idioma do QGIS em Configurações > Opções > Geral, reinicie o QGIS e tente novamente.",
            )
            return
        self.initialize()
        if not hasattr(self, "dlg"):
            return
        self.dlg.show()
        self.dlg.exec_()
