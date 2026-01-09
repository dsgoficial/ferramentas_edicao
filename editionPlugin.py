# -*- coding: utf-8 -*-
"""
/***************************************************************************
 ferramentas_edicao
                                 A QGIS plugin
 Brazilian Army Cartographic Finishing Tools
                              -------------------
 ***************************************************************************/
/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/
"""
import json
import os
import shutil
import platform
import ctypes

from pathlib import Path

from .factories.conversao_dock import ConversaoDockWidget
from qgis.PyQt.QtCore import QCoreApplication, QSettings, QTranslator, Qt
from qgis.PyQt.QtGui import QIcon
from qgis.PyQt import QtWidgets, uic
from qgis.PyQt.QtWidgets import (
    QAction,
    QMessageBox,
    QDialog,
    QTextBrowser,
    QVBoxLayout,
    QPushButton,
    QScrollArea,
    QFileDialog,
    QTableWidgetItem,
)


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
        self.current_html_content = (
            ""  # Inicializa o conteúdo atual como uma string vazia
        )
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
        help_icon_path = (
            Path(__file__).parent / "Help" / "button" / "icons" / "icon2.png"
        )
        self.add_action(
            str(help_icon_path),
            text=self.tr("Clique aqui para obter ajuda"),
            callback=self.show_help_dialog,
            parentToolbar=self.toolBar,
            add_to_toolbar=False,
        )

        # Adiciona a ação para instalar fontes
        self.add_action(
            icon_path="",
            text=self.tr("Instalar Fontes Noto Sans"),
            callback=self.installFonts,
            add_to_menu=False,
            add_to_toolbar=False,
        )

        # ------------------------------------------------------
        # 🔵 NOVO BOTÃO: Conversão GeoTIFF/PDF
        # ------------------------------------------------------
        icon_convert = Path(__file__).parent / "convert_icon.png"

        self.add_action(
            str(icon_convert),
            text=self.tr("Conversão GeoTIFF/PDF"),
            callback=self.openConversaoDock,
            parentToolbar=self.toolBar,
            add_to_toolbar=False,
        )
        # ------------------------------------------------------



        # Inicializando outras ferramentas
        self.tools = SetupButtons(
            toolbar=self.toolBar,
            iface=self.iface,
        )
        self.tools.initToolBar()
        self.processingProvider = ProcessingProvider()
        self.processingProvider.initProcessing()
        loadExpressionFunctions()

    def show_help_dialog(self):
        """Exibe a caixa de diálogo de ajuda com navegação e botão de voltar."""
        if hasattr(self, "help_dialog") and self.help_dialog.isVisible():
            return  # Se a janela já está visível, não faz nada

        self.help_dialog = QDialog(self.iface.mainWindow())
        self.help_dialog.setWindowTitle("Ajuda")
        self.help_dialog.resize(800, 600)
        self.help_dialog.setWindowFlags(
            self.help_dialog.windowFlags()
            | Qt.WindowMinMaxButtonsHint
            | Qt.WindowCloseButtonHint
        )

        # Criando um widget de navegador de texto para exibir o conteúdo HTML
        self.help_text = QTextBrowser(self.help_dialog)

        # Caminho inicial para carregar o conteúdo principal (buttonTools.html)
        self.current_page = "buttonTools.html"

        # Conectar ao método para navegar entre páginas ao clicar nos links
        self.help_text.anchorClicked.connect(self.handle_link_click)

        # Botão de voltar
        self.back_button = QPushButton("Voltar", self.help_dialog)
        self.back_button.clicked.connect(self.go_back)
        self.back_button.setEnabled(len(self.history) > 0)

        # Layout da janela de ajuda
        layout = QVBoxLayout()
        layout.addWidget(self.help_text)
        layout.addWidget(self.back_button)
        self.help_dialog.setLayout(layout)

        # Verificar se o conteúdo atual foi carregado anteriormente
        if hasattr(self, "current_html_content") and self.current_html_content:
            self.help_text.setHtml(self.current_html_content)
        else:
            self.load_page(self.current_page, from_export=False)

        self.help_dialog.show()

    def load_page(self, page, from_export=False):
        """Carrega uma página HTML específica."""
        html_file_path = None
        img_dir = None
        icons_dir = None
        images_dir = (
            None  # Inicializa o images_dir para evitar referências não definidas
        )

        # Determina o caminho do arquivo HTML e das imagens com base na página
        if from_export:
            html_file_path = Path(__file__).parent / "Help" / "export" / "html" / page
            images_dir = Path(__file__).parent / "Help" / "export" / "images"
        else:
            html_file_path = Path(__file__).parent / "Help" / "button" / "html" / page
            img_dir = Path(__file__).parent / "Help" / "button" / "img"
            icons_dir = Path(__file__).parent / "Help" / "button" / "icons"

        if html_file_path.exists():
            with open(html_file_path, "r", encoding="utf-8") as file:
                html_content = file.read()

            # Substituir manualmente os placeholders por caminhos reais das imagens
            replacements = {}

            # Adiciona caminhos do diretório "img"
            if img_dir and img_dir.exists():
                replacements.update(
                    {
                        "path_to_image1": img_dir / "botoes.png",
                        "path_to_imagem": img_dir / "sentido_corrente.png",
                        "path_to_imagen": img_dir / "alternar_estilo_nao_visivel.png",
                        "path_to_imageo": img_dir / "alternar_rotulo.png",
                        "path_to_imagep": img_dir
                        / "alternar_visibilidade_do_texto.png",
                        "path_to_imageq": img_dir / "alternar_visibilidade.png",
                        "path_to_imager": img_dir / "copiar_texto_generico.png",
                        "path_to_images": img_dir / "copiar_texto_sugerido.png",
                        "path_to_imaget": img_dir / "numero_de_faixas.png",
                        "path_to_imageu": img_dir / "quebra_linha.png",
                        "path_to_imagev": img_dir / "rotulo_aproximado.png",
                        "path_to_imagew": img_dir / "rotulo_de_fronteira.png",
                        "path_to_imagex": img_dir / "rotulo_lago.png",
                        "path_to_imagey": img_dir / "rotulo_rio.png",
                        "path_to_imagez": img_dir / "simbolo_idt_trecho_rodoviario.png",
                        "path_to_image0": img_dir / "simbolo_vegetacao.png",
                        "path_to_imagab": img_dir / "suprimir_bandeira_edificacao.png",
                        "path_to_imagcd": img_dir / "texto_de_cota_mestra.png",
                        "path_to_imagde": img_dir / "visibilidade_de_ponta.png",
                        "path_to_imagij": img_dir / "visibilidade_lateral_ponte.png",
                        "path_to_imagfg": img_dir / "alternar_estilo_nao_visivel.png",
                    }
                )

            # Adiciona caminhos do diretório "icons"
            if icons_dir and icons_dir.exists():
                replacements.update(
                    {
                        "path_to_image3": icons_dir / "alternar_justificativa.png",
                        "path_to_image4": icons_dir / "alternar_rotulo.png",
                        "path_to_image5": icons_dir
                        / "alternar_visibilidade_do_texto.png",
                        "path_to_image6": icons_dir / "alternar_visibilidade.png",
                        "path_to_image7": icons_dir / "copiar_texto_generico.png",
                        "path_to_image8": icons_dir / "copiar_texto_sugerido.png",
                        "path_to_image9": icons_dir / "insere_seta_de_corrente.png",
                        "path_to_imagea": icons_dir / "numero_de_faixas.png",
                        "path_to_imageb": icons_dir / "quebra_linha.png",
                        "path_to_imagec": icons_dir / "rotulo_aproximado.png",
                        "path_to_imaged": icons_dir / "rotulo_de_fronteira.png",
                        "path_to_imagee": icons_dir / "rotulo_lago.png",
                        "path_to_imagef": icons_dir / "rotulo_rio.png",
                        "path_to_imageg": icons_dir
                        / "simbolo_idt_trecho_rodoviario.png",
                        "path_to_imageh": icons_dir / "simbolo_vegetacao.png",
                        "path_to_imagei": icons_dir
                        / "suprimir_bandeira_edificacao.png",
                        "path_to_imagej": icons_dir / "texto_de_cota_mestra.png",
                        "path_to_imagek": icons_dir / "visibilidade_de_ponta.png",
                        "path_to_imagel": icons_dir / "visibilidade_lateral_ponte.png",
                        "path_to_imaggh": icons_dir / "alternar_justificativa.png",
                        "path_to_imaggi": icons_dir / "font.png",
                        "path_to_imaggj": icons_dir / "icon.png",
                    }
                )

            # Adiciona caminhos do diretório "images" para páginas de export
            if images_dir and images_dir.exists():
                replacements.update(
                    {
                        "path_to_image": images_dir / "topo.png",
                        "path_to_config_pasta_icon": images_dir / "orto.png",
                        "path_to_config_json_icon": images_dir / "config_json_icon.png",
                        "path_to_config_project_icon": images_dir
                        / "config_project_icon.png",
                        "path_to_example": images_dir / "credits.png",
                    }
                )

            # Substituir os placeholders no conteúdo HTML
            for placeholder, image_path in replacements.items():
                html_content = html_content.replace(placeholder, image_path.as_posix())

            # Atualiza o conteúdo do QTextBrowser
            self.help_text.setHtml(html_content)
            self.current_html_content = html_content
        else:
            self.help_text.setPlainText(
                f"Arquivo de ajuda não encontrado: {html_file_path}"
            )
            self.current_html_content = "Arquivo de ajuda não encontrado."

    def handle_link_click(self, url):
        """Lida com o clique nos links e navega entre páginas ou abre janelas `ui`."""

        # Salvar o conteúdo atual antes de mudar de página
        self.current_html_content = self.help_text.toHtml()

        page_name = url.toString().split("/")[-1]

        if page_name == "install_fonts":
            self.installFonts()
            # Adiciona uma mensagem de sucesso diretamente no navegador de ajuda
            self.help_text.setHtml(
                "<h2>Fontes instaladas com sucesso!</h2><p>Reinicie o QGIS para que as mudanças sejam aplicadas.</p>"
            )
            return

        # Verifica se o link é relacionado a uma janela `ui`
        if page_name in [
            "create_json",
            "change_project_name",
            "change_project_and_add_institution",
        ]:
            # Atualiza imediatamente o conteúdo HTML para evitar que a janela de ajuda fique em branco
            self.help_text.setHtml(self.current_html_content)

            if page_name == "create_json":
                self.open_json_form()
            elif page_name == "change_project_name":
                self.open_change_project_name_dialog()
            elif page_name == "change_project_and_add_institution":
                self.open_alter_institution_dialog()
            return

        # Verifica se o link é para baixar um arquivo QPT
        if page_name == "download_qpt_file":
            self.download_qpt()
            return

        # Verifica se o link é para uma página específica da pasta "export"
        if page_name in [
            "GenerateCards.html",
            "config_json.html",
            "config_project.html",
        ]:
            self.history.append((self.current_page, self.current_html_content))
            self.current_page = page_name
            self.load_page(page_name, from_export=True)
            self.back_button.setEnabled(True)
            return

        # Caso contrário, navegue para outras páginas HTML da pasta "button"
        self.history.append((self.current_page, self.current_html_content))
        self.current_page = page_name
        self.load_page(page_name, from_export=False)
        self.back_button.setEnabled(True)

        # Atualiza o conteúdo HTML atual para a página carregada
        self.current_html_content = self.help_text.toHtml()

    def go_back(self):
        """Volta para a última página visualizada."""
        if self.history:
            (
                last_page,
                last_content,
            ) = self.history.pop()  # Retorna a última página do histórico
            self.current_page = last_page  # Atualiza a página atual
            self.current_html_content = last_content  # Restaura o conteúdo anterior
            self.help_text.setHtml(self.current_html_content)

        # Desativar o botão se não houver mais histórico
        self.back_button.setEnabled(len(self.history) > 0)

    def installFonts(self):
        """Instala as fontes Noto Sans no sistema."""
        pasta_fontes = os.path.join(self.plugin_dir, "Help", "button", "fonts")
        if not os.path.exists(pasta_fontes):
            QMessageBox.warning(
                self.iface.mainWindow(), "Erro", "Pasta de fontes não encontrada."
            )
            return

        try:
            for arquivo in os.listdir(pasta_fontes):
                if arquivo.endswith(".ttf"):
                    caminho_fonte = os.path.join(pasta_fontes, arquivo)
                    # Se for Windows, usar AddFontResourceW para registrar a fonte
                    if platform.system() == "Windows":
                        if ctypes.windll.gdi32.AddFontResourceW(caminho_fonte) == 0:
                            raise PermissionError(
                                "Erro ao adicionar a fonte: {}".format(arquivo)
                            )
                    else:
                        # Se for Linux ou macOS, continuar copiando para as pastas padrões
                        pasta_destino = (
                            "/Library/Fonts/"
                            if platform.system() == "Darwin"
                            else os.path.expanduser("~/.local/share/fonts/")
                        )
                        shutil.copy(caminho_fonte, pasta_destino)
            if platform.system() == "Linux":
                os.system("fc-cache -f -v")

            QMessageBox.information(
                self.iface.mainWindow(),
                "Sucesso",
                "Fontes instaladas com sucesso! Reinicie o QGIS para aplicar as mudanças.",
            )
        except PermissionError as e:
            QMessageBox.warning(self.iface.mainWindow(), "Erro", str(e))
        except Exception as e:
            QMessageBox.warning(
                self.iface.mainWindow(), "Erro", f"Erro ao instalar fontes: {str(e)}"
            )

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

    def openConversaoDock(self):
        """Abre o painel lateral de conversão PDF/GeoTIFF."""

        # Se o dock já existe, só mostrar
        try:
            self.conversaoDock.show()
            self.conversaoDock.raise_()
            return
        except:
            pass

        # Criar um novo dock
        self.conversaoDock = ConversaoDockWidget(self.iface)
        self.iface.addDockWidget(Qt.LeftDockWidgetArea, self.conversaoDock)
        self.conversaoDock.show()


    def open_json_form(self):
        """Exibe o formulário de entrada de dados para o arquivo JSON em uma nova janela com barra de rolagem."""
        self.current_html_content = (
            self.help_text.toHtml()
        )  # Salva o conteúdo antes de abrir a janela
        json_form_dialog = QtWidgets.QDialog(
            self.iface.mainWindow()
        )  # Definir o pai corretamente
        json_form_dialog.setWindowTitle("Criar Arquivo JSON")
        json_form_dialog.resize(800, 600)

        # Criar uma área de rolagem para o formulário
        scroll_area = QScrollArea(json_form_dialog)
        scroll_area.setWidgetResizable(True)

        # Carregar o conteúdo do formulário dentro de um widget
        form_content = uic.loadUi(
            Path(__file__).parent / "Help" / "export" / "src" / "exportjson.ui"
        )
        scroll_area.setWidget(form_content)

        # Layout para a janela do diálogo
        layout = QVBoxLayout(json_form_dialog)
        layout.addWidget(scroll_area)

        # Preencher automaticamente os campos para teste
        form_content.input_licenciamento.setText("CC-BY-NC-SA 4.0")
        form_content.input_edicao.setText("1 - DSG")

        # Conectar os botões de seleção de arquivos
        form_content.browse_mde_button.clicked.connect(
            lambda: self.select_file(form_content.input_mde_diagrama)
        )
        form_content.browse_project_button.clicked.connect(
            lambda: self.select_file(form_content.input_creditos)
        )

        # Conectar o botão de adicionar fase
        form_content.add_fase_button.clicked.connect(
            lambda: self.add_fase(form_content)
        )

        # Conectar o botão de adicionar dado de terceiros
        form_content.add_dado_terceiro_button.clicked.connect(
            lambda: self.add_dado_terceiro(form_content)
        )

        # Conectar o botão de remover fase
        form_content.rm_fase_button.clicked.connect(
            lambda: self.remove_selected_row(form_content.fasesTable)
        )

        # Conectar o botão de remover dado de terceiro
        form_content.rm_dado_terceiro_button.clicked.connect(
            lambda: self.remove_selected_row(form_content.dadosTerceirosTable)
        )

        # Conectar o botão de geração de JSON ao método
        form_content.generate_button.clicked.connect(
            lambda: self.generate_json(form_content)
        )

        # Conectar o fechamento do diálogo para restaurar o conteúdo HTML da janela de ajuda
        json_form_dialog.finished.connect(self.restore_help_content)

        # Mostrar a janela como não modal para permitir interação com a janela de ajuda
        json_form_dialog.show()

        # Atualizar a janela de ajuda para manter o conteúdo visível
        self.help_text.setHtml(self.current_html_content)

    def remove_selected_row(self, table_widget):
        """Remove a linha selecionada na tabela fornecida."""
        selected_rows = table_widget.selectionModel().selectedRows()
        if not selected_rows:
            # Exibir uma mensagem de aviso se nenhuma linha estiver selecionada
            QMessageBox.warning(
                table_widget, "Atenção", "Por favor, selecione uma linha para remover."
            )
            return

        for index in sorted(selected_rows, reverse=True):
            table_widget.removeRow(index.row())

    def select_file(self, line_edit):
        """Abre um diálogo de seleção de arquivo e insere o caminho no campo fornecido."""
        file_path, _ = QFileDialog.getOpenFileName(
            self.iface.mainWindow(), "Selecionar Arquivo", "", "Todos os Arquivos (*)"
        )
        if file_path:
            corrected_path = file_path.replace("/", "\\")
            line_edit.setText(corrected_path)

    def add_fase(self, form_dialog):
        """Adiciona uma nova fase ao formulário."""
        # Insere uma nova linha vazia na tabela de fases
        row_position = form_dialog.fasesTable.rowCount()
        form_dialog.fasesTable.insertRow(row_position)

        # Adiciona células vazias para nova fase
        for col in range(form_dialog.fasesTable.columnCount()):
            form_dialog.fasesTable.setItem(row_position, col, QTableWidgetItem(""))

    def add_dado_terceiro(self, form_dialog):
        """Adiciona um novo dado de terceiro ao formulário."""
        # Insere uma nova linha vazia na tabela de dados de terceiros
        row_position = form_dialog.dadosTerceirosTable.rowCount()
        form_dialog.dadosTerceirosTable.insertRow(row_position)

        # Adiciona células vazias para novo dado de terceiro
        for col in range(form_dialog.dadosTerceirosTable.columnCount()):
            form_dialog.dadosTerceirosTable.setItem(
                row_position, col, QTableWidgetItem("")
            )

    def generate_json(self, form_dialog):
        """Gera o arquivo JSON baseado nas entradas do formulário."""

        def add_if_not_empty(dictionary, key, value):
            """Adiciona a chave e o valor ao dicionário se o valor não estiver vazio ou None."""
            if value not in ("", None):
                dictionary[key] = value

        # Coleta dados obrigatórios e opcionais
        nome = form_dialog.input_nome.text().strip()
        territorio_internacional = (
            form_dialog.input_territorio_internacional.currentText() == "True"
        )
        acesso_restrito = form_dialog.input_acesso_restrito.currentText() == "True"
        tipo_produto = form_dialog.input_produto.currentText() == "Carta Topográfica"
        caminho_mde = form_dialog.input_mde_diagrama.text().strip().replace("/", "\\")
        epsg = form_dialog.input_epsg.text().strip()

        # Verifica se os campos obrigatórios estão preenchidos
        if not tipo_produto or not nome or not caminho_mde or not epsg:
            QMessageBox.critical(
                form_dialog, "Erro", "Preencha todos os campos obrigatórios!"
            )
            return

        # Cria o objeto JSON principal
        json_object = {
            "nome": nome,
            "territorio_internacional": territorio_internacional,
            "acesso_restrito": acesso_restrito,
            "tipo_produto": tipo_produto,
            "mde_diagrama_elevacao": {"caminho_mde": caminho_mde, "epsg": epsg},
            "banco": {},
            "fases": [],
            "info_tecnica": {"dados_terceiros": []},
        }

        # Adiciona campos não obrigatórios ao JSON na ordem original
        add_if_not_empty(json_object, "inom", form_dialog.input_inom.text().strip())
        add_if_not_empty(
            json_object,
            "licenciamento_produto",
            form_dialog.input_licenciamento.text().strip(),
        )
        add_if_not_empty(
            json_object, "edicao_produto", form_dialog.input_edicao.text().strip()
        )
        add_if_not_empty(json_object, "escala", form_dialog.input_escala.text().strip())
        add_if_not_empty(
            json_object, "centro_carta", form_dialog.input_centro_carta.text().strip()
        )
        add_if_not_empty(
            json_object, "projeto", form_dialog.input_creditos.text().strip()
        )

        # Adiciona informações técnicas
        info_tecnica = json_object["info_tecnica"]
        add_if_not_empty(
            info_tecnica, "data_criacao", form_dialog.input_data_criacao.text().strip()
        )
        add_if_not_empty(
            info_tecnica,
            "datum_vertical",
            form_dialog.input_datum_vertical.text().strip(),
        )
        add_if_not_empty(
            info_tecnica,
            "origem_dados_altimetricos",
            form_dialog.input_origem_dados_altimetricos.text().strip(),
        )
        add_if_not_empty(
            info_tecnica,
            "pec_planimetrico",
            form_dialog.input_pec_planimetrico.text().strip(),
        )
        add_if_not_empty(
            info_tecnica,
            "pec_altimetrico",
            form_dialog.input_pec_altimetrico.text().strip(),
        )

        # Captura informações de configuração do banco de dados
        banco = json_object["banco"]
        add_if_not_empty(
            banco,
            "servidor",
            form_dialog.bancoTable.item(0, 0).text().strip()
            if form_dialog.bancoTable.item(0, 0)
            else "",
        )
        add_if_not_empty(
            banco,
            "porta",
            form_dialog.bancoTable.item(0, 1).text().strip()
            if form_dialog.bancoTable.item(0, 1)
            else "",
        )
        add_if_not_empty(
            banco,
            "nome",
            form_dialog.bancoTable.item(0, 2).text().strip()
            if form_dialog.bancoTable.item(0, 2)
            else "",
        )

        # Adiciona fases se houver
        for row in range(form_dialog.fasesTable.rowCount()):
            fase_nome = form_dialog.fasesTable.item(row, 0)
            executante_nome = form_dialog.fasesTable.item(row, 1)
            executante_ano = form_dialog.fasesTable.item(row, 2)

            if fase_nome and executante_nome and executante_ano:
                fase_nome_text = fase_nome.text().strip()
                executante_nome_text = executante_nome.text().strip()
                executante_ano_text = executante_ano.text().strip()

                if fase_nome_text and executante_nome_text and executante_ano_text:
                    executantes = [
                        {"nome": executante_nome_text, "ano": executante_ano_text}
                    ]
                    json_object["fases"].append(
                        {"nome": fase_nome_text, "executantes": executantes}
                    )

        # Adiciona dados de terceiros
        for row in range(form_dialog.dadosTerceirosTable.rowCount()):
            nome_terceiro = form_dialog.dadosTerceirosTable.item(row, 0)
            sigla_terceiro = form_dialog.dadosTerceirosTable.item(row, 1)
            if nome_terceiro and sigla_terceiro:
                nome_terceiro_text = nome_terceiro.text().strip()
                sigla_terceiro_text = sigla_terceiro.text().strip()
                if nome_terceiro_text and sigla_terceiro_text:
                    json_object["info_tecnica"]["dados_terceiros"].append(
                        f"{nome_terceiro_text}: {sigla_terceiro_text}"
                    )

        # Salvar o arquivo JSON gerado
        json_str = json.dumps(json_object, indent=4, ensure_ascii=False)

        # Ao salvar o arquivo, especifique a codificação utf-8
        save_file_dialog = QFileDialog()
        save_file_path, _ = save_file_dialog.getSaveFileName(
            form_dialog, "Salvar Arquivo JSON", "", "JSON Files (*.json)"
        )

        if save_file_path:
            try:
                with open(save_file_path, "w", encoding="utf-8") as json_file:
                    json_file.write(json_str)
                QMessageBox.information(
                    form_dialog, "Sucesso", f"Arquivo JSON salvo em: {save_file_path}"
                )
            except Exception as e:
                QMessageBox.critical(
                    form_dialog, "Erro", f"Falha ao salvar o arquivo: {e}"
                )

    def open_change_project_name_dialog(self):
        """Abre o diálogo para alterar nome do projeto e créditos sem bloquear a janela anterior."""
        # Salva o conteúdo atual antes de abrir a janela de diálogo
        self.current_html_content = self.help_text.toHtml()
        change_dialog = QtWidgets.QDialog(self.iface.mainWindow())
        uic.loadUi(
            Path(__file__).parent / "Help" / "export" / "src" / "alter_qpt.ui",
            change_dialog,
        )

        # Conectar o botão de salvar do diálogo
        change_dialog.save_button.clicked.connect(
            lambda: self.save_project_name_and_credits(change_dialog)
        )

        # Restaurar o conteúdo apenas se necessário, após o fechamento do diálogo
        change_dialog.finished.connect(self.restore_help_content)

        # Mostrar a janela de diálogo sem bloquear a anterior
        change_dialog.show()

        # Atualizar a janela de ajuda para manter o conteúdo visível
        self.help_text.setHtml(self.current_html_content)

    def download_qpt(self):
        """Faz o download do arquivo QPT padrão."""
        # Salva o conteúdo atual antes de abrir a janela de diálogo
        self.current_html_content = self.help_text.toHtml()
        qpt_file_path = (
            Path(__file__).parent / "Help" / "export" / "src" / "creditsDSG.qpt"
        )

        if qpt_file_path.exists():
            save_file_dialog = QFileDialog()
            save_file_path, _ = save_file_dialog.getSaveFileName(
                self.iface.mainWindow(), "Salvar Arquivo QPT", "", "QPT Files (*.qpt)"
            )

            if save_file_path:
                try:
                    with open(qpt_file_path, "rb") as file_in:
                        with open(save_file_path, "wb") as file_out:
                            file_out.write(file_in.read())
                    QMessageBox.information(
                        self.iface.mainWindow(),
                        "Sucesso",
                        f"Arquivo QPT salvo em: {save_file_path}",
                    )

                except Exception as e:
                    QMessageBox.critical(
                        self.iface.mainWindow(),
                        "Erro",
                        f"Falha ao salvar o arquivo QPT: {e}",
                    )

        else:
            QMessageBox.critical(self, "Erro", "Arquivo QPT não encontrado.")

        # Atualizar a janela de ajuda para manter o conteúdo visível
        self.help_text.setHtml(self.current_html_content)

    def restore_help_content(self):
        """Restaura o conteúdo HTML na janela de ajuda, se necessário."""
        if hasattr(self, "help_text") and self.help_text:
            # Se há conteúdo atual, apenas o restaure, caso contrário, recarregue a página
            if hasattr(self, "current_html_content") and self.current_html_content:
                if (
                    not self.help_text.toHtml().strip()
                    or self.help_text.toHtml() != self.current_html_content
                ):
                    self.help_text.setHtml(self.current_html_content)
            else:
                self.load_page(self.current_page)
        else:
            print(
                "Erro: A janela de ajuda não está disponível para restaurar o conteúdo."
            )

    def go_back(self):
        """Volta para a última página visualizada."""
        if self.history:
            (
                last_page,
                last_content,
            ) = self.history.pop()  # Retorna a última página do histórico
            self.current_page = last_page  # Atualiza a página atual
            self.current_html_content = last_content  # Restaura o conteúdo anterior
            self.help_text.setHtml(self.current_html_content)

        # Desativar o botão se não houver mais histórico
        self.back_button.setEnabled(len(self.history) > 0)

    def open_alter_institution_dialog(self):
        """Abre o diálogo para alterar nome do projeto, adicionar uma instituição e o logotipo sem bloquear a janela anterior."""
        # Salva o conteúdo atual antes de abrir a janela de diálogo
        self.current_html_content = self.help_text.toHtml()
        change_dialog = QtWidgets.QDialog(self.iface.mainWindow())
        uic.loadUi(
            Path(__file__).parent / "Help" / "export" / "src" / "alter_dois.ui",
            change_dialog,
        )

        # Conectar o botão de procurar imagem
        change_dialog.browse_image_button.clicked.connect(
            lambda: self.select_file(change_dialog.input_imagem)
        )

        # Conectar o botão de salvar do diálogo
        change_dialog.save_button.clicked.connect(
            lambda: self.save_project_and_institution_data(change_dialog)
        )

        # Restaurar o conteúdo apenas se necessário, após o fechamento do diálogo
        change_dialog.finished.connect(self.restore_help_content)

        # Mostrar a janela de diálogo sem bloquear a anterior
        change_dialog.show()

        # Atualizar a janela de ajuda para manter o conteúdo visível
        self.help_text.setHtml(self.current_html_content)

    def save_project_and_institution_data(self, dialog):
        """Salva as alterações de nome do projeto, endereço e logotipo da instituição."""
        # Obtém os valores inseridos pelo usuário e converte para caixa alta
        nome_instituicao = dialog.input_nome_projeto.text().strip().upper()
        endereco_instituicao = dialog.input_creditos.toPlainText().strip()
        caminho_imagem = dialog.input_imagem.text().strip()
        novo_nome_projeto = dialog.input_nome_projeto2.text().strip().upper()
        novos_creditos = dialog.input_creditos2.toPlainText().strip().upper()

        # Carrega o arquivo creditsDOIS.qpt como um texto
        qpt_file_path = (
            Path(__file__).parent / "Help" / "export" / "src" / "creditsDOIS.qpt"
        )
        if not qpt_file_path.exists():
            QMessageBox.critical(
                self.iface.mainWindow(),
                "Erro",
                f"Arquivo creditsDOIS.qpt não encontrado em: {qpt_file_path}",
            )
            return

        # Lê o conteúdo do arquivo QPT e substitui as linhas necessárias
        with open(qpt_file_path, "r", encoding="utf-8") as file:
            qpt_content = file.read()

        # Substituir o valor de labelText e file nas linhas desejadas
        qpt_content = qpt_content.replace(
            'labelText="name_2"', f'labelText="{nome_instituicao}"'
        )
        qpt_content = qpt_content.replace(
            'labelText="address"', f'labelText="{endereco_instituicao}"'
        )
        qpt_content = qpt_content.replace(
            'file="teste.png"', f'file="{caminho_imagem}"'
        )
        qpt_content = qpt_content.replace(
            'labelText="MAPEAMENTO DE INTERESSE DA FORÇA TERRESTRE"',
            f'labelText="{novo_nome_projeto}"',
        )
        qpt_content = qpt_content.replace(
            'labelText="PRODUTO ELABORADO PELA DIRETORIA DE SERVIÇO GEOGRÁFICO NO CONTEXTO DO PROJETO MAPEAMENTO DE INTERESSE DA FORÇA TERRESTRE"',
            f'labelText="{novos_creditos}"',
        )

        # Salva o novo arquivo em uma nova localização
        save_file_dialog = QFileDialog()
        save_file_path, _ = save_file_dialog.getSaveFileName(
            self.iface.mainWindow(),
            "Salvar Arquivo QPT Alterado",
            "",
            "QPT Files (*.qpt)",
        )

        if save_file_path:
            try:
                with open(save_file_path, "w", encoding="utf-8") as qpt_file:
                    qpt_file.write(qpt_content)
                QMessageBox.information(
                    self.iface.mainWindow(),
                    "Sucesso",
                    f"Arquivo QPT salvo em: {save_file_path}",
                )

            except Exception as e:
                QMessageBox.critical(
                    self.iface.mainWindow(), "Erro", f"Falha ao salvar o arquivo: {e}"
                )

    def save_project_name_and_credits(self, dialog):
        """Salva as alterações de nome do projeto e créditos."""
        # Obtém os valores inseridos pelo usuário e converte para caixa alta
        novo_nome_projeto = dialog.input_nome_projeto.text().strip().upper()
        novos_creditos = dialog.input_creditos.toPlainText().strip().upper()

        # Carrega o arquivo creditsDSG.qpt como um texto
        qpt_file_path = (
            Path(__file__).parent / "Help" / "export" / "src" / "creditsDSG.qpt"
        )
        if not qpt_file_path.exists():
            QMessageBox.critical(
                self.iface.mainWindow(),
                "Erro",
                f"Arquivo creditsDSG.qpt não encontrado em: {qpt_file_path}",
            )

            return

        # Lê o conteúdo do arquivo QPT e substitui as linhas necessárias
        with open(qpt_file_path, "r", encoding="utf-8") as file:
            qpt_content = file.read()

        # Substituir o valor de labelText nas linhas desejadas
        qpt_content = qpt_content.replace(
            'labelText="MAPEAMENTO DE INTERESSE DA FORÇA TERRESTRE"',
            f'labelText="{novo_nome_projeto}"',
        )
        qpt_content = qpt_content.replace(
            'labelText="PRODUTO ELABORADO PELA DIRETORIA DE SERVIÇO GEOGRÁFICO NO CONTEXTO DO PROJETO MAPEAMENTO DE INTERESSE DA FORÇA TERRESTRE"',
            f'labelText="{novos_creditos}"',
        )

        # Salva o novo arquivo em uma nova localização
        save_file_dialog = QFileDialog()
        save_file_path, _ = save_file_dialog.getSaveFileName(
            self.iface.mainWindow(),
            "Salvar Arquivo QPT Alterado",
            "",
            "QPT Files (*.qpt)",
        )

        if save_file_path:
            try:
                with open(save_file_path, "w", encoding="utf-8") as qpt_file:
                    qpt_file.write(qpt_content)
                QMessageBox.information(
                    self.iface.mainWindow(),
                    "Sucesso",
                    f"Arquivo QPT salvo em: {save_file_path}",
                )
            except Exception as e:
                QMessageBox.critical(
                    self.iface.mainWindow(), "Erro", f"Falha ao salvar o arquivo: {e}"
                )
