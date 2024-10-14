import os
import webbrowser
from pathlib import Path
from qgis.PyQt import QtWidgets, uic
from qgis.PyQt.QtWidgets import QFileDialog, QMessageBox
import shutil

FORM_CLASS, _ = uic.loadUiType(
    Path(__file__).parent.parent / "uis" / "editionPluginBaseDialog.ui"
)

class EditionPluginDialog(QtWidgets.QDialog, FORM_CLASS):
    def __init__(self, parent=None):
        """Constructor."""
        super(EditionPluginDialog, self).__init__(parent)
        self.setupUi(self)

        # Inicializar o histórico de navegação
        self.history = []  # Lista para armazenar o histórico de páginas

        # Conectando o botão de ajuda ao método que exibe a caixa de diálogo
        self.helpButton.clicked.connect(self.show_help_dialog)

    def show_help_dialog(self):
        """Exibe a caixa de diálogo de ajuda com navegação e botão de voltar."""
        help_dialog = QtWidgets.QDialog(self)
        help_dialog.setWindowTitle("Ajuda")
        help_dialog.resize(800, 600)

        # Criando um widget de navegador de texto para exibir o conteúdo HTML
        self.help_text = QtWidgets.QTextBrowser(help_dialog)

        # Caminho inicial para carregar o conteúdo principal (GenerateCards.html)
        self.current_page = "GenerateCards.html"

        # Conectar ao método para navegar entre páginas ao clicar nos links
        self.help_text.anchorClicked.connect(self.handle_link_click)

        # Botão de voltar
        self.back_button = QtWidgets.QPushButton("Voltar", help_dialog)
        self.back_button.clicked.connect(self.go_back)
        self.back_button.setEnabled(False)  # Desativado inicialmente

        # Layout da janela de ajuda
        layout = QtWidgets.QVBoxLayout()
        layout.addWidget(self.help_text)
        layout.addWidget(self.back_button)
        help_dialog.setLayout(layout)

        # Carregar a página inicial
        self.load_page(self.current_page)  # Página inicial é a GenerateCards.html
        help_dialog.exec_()

    def load_page(self, page):
        """Carrega uma página HTML específica."""
        # Caminhos para as imagens e ícones
        html_file_path = Path(__file__).parent.parent.parent / "Help" / "export" / "html" / page
        image_file_path = Path(__file__).parent.parent.parent / "Help" / "export" / "images" / "GenerateCards.png"  # Imagem principal
        image_file_path1 = Path(__file__).parent.parent.parent / "Help" / "export" / "images" / "config_json_icon.png"  # Ícone de configurar JSON
        image_file_path2 = Path(__file__).parent.parent.parent / "Help" / "export" / "images" / "config_project_icon.png"  # Ícone de configurar projeto
        image_file_path3 = Path(__file__).parent.parent.parent / "Help" / "export" / "images" / "pasta.png"  # Ícone de pasta
        image_file_path4 = Path(__file__).parent.parent.parent / "Help" / "export" / "images" / "credits.png"  # Exemplo

        if html_file_path.exists():
            with open(html_file_path, "r", encoding="utf-8") as file:
                html_content = file.read()

            # Substituir os placeholders pelos caminhos reais das imagens
            html_content = html_content.replace("path_to_image", image_file_path.as_posix())  # Placeholder da imagem principal
            html_content = html_content.replace("path_to_config_json_icon", image_file_path1.as_posix())  # Ícone JSON
            html_content = html_content.replace("path_to_config_project_icon", image_file_path2.as_posix())  # Ícone Projeto
            html_content = html_content.replace("path_to_config_pasta_icon", image_file_path3.as_posix())  # Placeholder da pasta
            html_content = html_content.replace("path_to_example", image_file_path4.as_posix())  # Exemplo

            # Definir o conteúdo HTML após substituir os placeholders
            self.help_text.setHtml(html_content)
        else:
            # Se o arquivo HTML não for encontrado, exibe uma mensagem de erro
            self.help_text.setPlainText(f"Arquivo de ajuda não encontrado: {html_file_path}")

    def handle_link_click(self, url):
        """Lida com o clique nos links e navega entre páginas."""
        # Verifica se o link é para baixar o JSON
        if url.toString() == "download_json":
            self.download_json()  # Chama a função de download
            # Não continua a navegação e mantém a página atual
            self.help_text.setHtml(self.help_text.toHtml())  # Recarrega o conteúdo atual para garantir que ele permaneça
            return

        # Verifica se o link é para abrir o diretório do QPT
        if url.toString() == "open_qpt_directory":
            self.open_qpt_directory()  # Chama a função para abrir o diretório
            return

        # Caso contrário, trata como navegação normal
        current_page = self.current_page  # Página atual
        self.history.append(current_page)  # Armazena a página atual no histórico
        self.back_button.setEnabled(True)  # Ativa o botão de voltar

        # Extrair o nome da página do link clicado
        page_name = url.toString().split('/')[-1]
        self.current_page = page_name  # Atualiza a página atual
        self.load_page(page_name)

    def open_qpt_directory(self):
        """Abre o diretório onde o arquivo QPT está localizado."""
        # Voltando duas pastas acima para sair de "resources/dialogs"
        qpt_dir = Path(__file__).parent.parent.parent / "modules" / "mapBuilder" / "resources" / "products" / "common"
        
        if qpt_dir.exists():
            # Usa os.startfile no Windows para abrir o explorador de arquivos sem alterar a página no QTextBrowser
            try:
                os.startfile(qpt_dir)  # Windows
            except AttributeError:
                # No caso de outro sistema operacional, utilize uma alternativa
                webbrowser.open(f'file:///{qpt_dir}')
        else:
            QMessageBox.critical(None, "Erro", f"Diretório não encontrado: {qpt_dir}")

        # Forçar a manutenção da página atual no QTextBrowser
        self.help_text.setHtml(self.help_text.toHtml())  # Recarrega o conteúdo atual para garantir que ele permaneça

    def go_back(self):
        """Volta para a última página visualizada."""
        if self.history:
            last_page = self.history.pop()  # Retorna a última página do histórico
            self.current_page = last_page  # Atualiza a página atual
            self.load_page(last_page)

        if not self.history:
            self.back_button.setEnabled(False)  # Desativa o botão se não houver mais histórico

    def download_json(self):
        """Função para baixar o arquivo JSON e permitir que o usuário escolha onde salvá-lo."""
        json_file_path = Path(__file__).parent.parent.parent / "Help" / "export" / "src" / "exemplo_config.json"  # Caminho para o arquivo JSON original

        # Verificar se o arquivo existe
        if not json_file_path.exists():
            QMessageBox.critical(None, "Erro", "O arquivo JSON de exemplo não foi encontrado.")
            return

        # Abrir um diálogo para o usuário escolher onde salvar o arquivo
        save_file_dialog = QFileDialog()
        save_file_path, _ = save_file_dialog.getSaveFileName(None, "Salvar Arquivo JSON", "", "JSON Files (*.json)")

        if save_file_path:
            try:
                # Copiar o arquivo para o local escolhido pelo usuário
                shutil.copyfile(json_file_path, save_file_path)
                QMessageBox.information(None, "Sucesso", f"Arquivo JSON salvo em: {save_file_path}")
            except Exception as e:
                QMessageBox.critical(None, "Erro", f"Falha ao salvar o arquivo: {e}")
