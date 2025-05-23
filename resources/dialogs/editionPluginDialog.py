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
import os
import webbrowser
from pathlib import Path
from qgis.PyQt import QtWidgets, uic
from qgis.PyQt.QtWidgets import (
    QFileDialog,
    QMessageBox,
    QScrollArea,
    QVBoxLayout,
    QTableWidgetItem,
    QComboBox,
)
from qgis.PyQt.QtCore import Qt
import json
import shutil  # Importação para operações de arquivos

# Carregar o arquivo UI principal
FORM_CLASS, _ = uic.loadUiType(
    Path(__file__).parent.parent / "uis" / "editionPluginBaseDialog.ui"
)


class EditionPluginDialog(QtWidgets.QDialog, FORM_CLASS):
    def __init__(self, parent=None):
        """Constructor."""
        super().__init__(parent)
        self.setupUi(self)

        # Inicializa o atributo `current_page` com uma página padrão
        self.current_page = (
            "buttonTools.html"  # Define uma página padrão apropriada para o seu caso
        )

        # Inicializar o histórico de navegação
        self.history = []
        self.current_html_content = ""

        # Conectando o botão de ajuda ao método que exibe a caixa de diálogo
        self.helpButton.clicked.connect(self.show_help_dialog)
        self.helpJson.clicked.connect(self.open_json_form)

    def show_help_dialog(self):
        """Exibe a caixa de diálogo de ajuda com navegação e botão de voltar."""
        # Verifica se a janela JSON está visível, se sim, não exibe a janela de ajuda
        if hasattr(self, "json_form_dialog") and self.json_form_dialog.isVisible():
            return  # Retorna sem exibir a janela de ajuda para evitar sobreposição

        # Inicializa a janela de ajuda como um atributo de instância
        self.help_dialog = QtWidgets.QDialog(self)
        self.help_dialog.setWindowTitle("Ajuda")
        self.help_dialog.resize(800, 600)

        # Adicionando botões de controle de janela (minimizar, maximizar, fechar)
        self.help_dialog.setWindowFlags(
            self.help_dialog.windowFlags()
            | Qt.WindowMinMaxButtonsHint
            | Qt.WindowCloseButtonHint
        )

        # Criando um widget de navegador de texto para exibir o conteúdo HTML
        self.help_text = QtWidgets.QTextBrowser(self.help_dialog)

        # Carregar a página específica "GenerateCards.html"
        self.current_page = "GenerateCards.html"

        # Conectar ao método para navegar entre páginas ao clicar nos links
        self.help_text.anchorClicked.connect(self.handle_link_click)

        # Botão de voltar
        self.back_button = QtWidgets.QPushButton("Voltar", self.help_dialog)
        self.back_button.clicked.connect(self.go_back)
        self.back_button.setEnabled(
            len(self.history) > 0
        )  # Habilitar se houver histórico

        # Layout da janela de ajuda
        layout = QVBoxLayout()
        layout.addWidget(self.help_text)
        layout.addWidget(self.back_button)
        self.help_dialog.setLayout(layout)

        # Carregar a página inicial
        self.load_page(self.current_page)

        # Exibir a janela de ajuda como modal para impedir sobreposição
        self.help_dialog.show()

    def load_page(self, page):
        """Carrega uma página HTML específica."""
        html_file_path = (
            Path(__file__).parent.parent.parent / "Help" / "export" / "html" / page
        )
        image_file_path = (
            Path(__file__).parent.parent.parent
            / "Help"
            / "export"
            / "images"
            / "topo.png"
        )  # Imagem principal
        image_file_path1 = (
            Path(__file__).parent.parent.parent
            / "Help"
            / "export"
            / "images"
            / "config_json_icon.png"
        )  # Ícone JSON
        image_file_path2 = (
            Path(__file__).parent.parent.parent
            / "Help"
            / "export"
            / "images"
            / "config_project_icon.png"
        )  # Ícone Projeto
        image_file_path3 = (
            Path(__file__).parent.parent.parent
            / "Help"
            / "export"
            / "images"
            / "orto.png"
        )  # Ícone de pasta
        image_file_path4 = (
            Path(__file__).parent.parent.parent
            / "Help"
            / "export"
            / "images"
            / "credits.png"
        )  # Exemplo

        if html_file_path.exists():
            with open(html_file_path, "r", encoding="utf-8") as file:
                html_content = file.read()

            # Substituir os placeholders pelos caminhos reais das imagens
            html_content = html_content.replace(
                "path_to_image", image_file_path.as_posix()
            )  # Placeholder da imagem principal
            html_content = html_content.replace(
                "path_to_config_json_icon", image_file_path1.as_posix()
            )  # Ícone JSON
            html_content = html_content.replace(
                "path_to_config_project_icon", image_file_path2.as_posix()
            )  # Ícone Projeto
            html_content = html_content.replace(
                "path_to_config_pasta_icon", image_file_path3.as_posix()
            )  # Placeholder da pasta
            html_content = html_content.replace(
                "path_to_example", image_file_path4.as_posix()
            )  # Exemplo

            # Carregar o conteúdo atualizado no navegador de texto
            self.help_text.setHtml(html_content)
            self.current_html_content = html_content
        else:
            self.help_text.setPlainText(
                f"Arquivo de ajuda não encontrado: {html_file_path}"
            )

    def handle_link_click(self, url):
        """Lida com o clique nos links e navega entre páginas."""
        if url.toString() == "create_json":
            self.open_json_form()
            return
        elif url.toString() == "download_qpt_file":
            self.download_qpt_file()
            self.load_page(
                self.current_page
            )  # Recarrega a página atual para evitar tela em branco
            return
        elif url.toString() == "change_project_name":
            self.open_change_project_name_dialog()
            self.load_page(
                self.current_page
            )  # Recarrega a página atual após abrir o diálogo
            return
        elif url.toString() == "change_project_and_add_institution":
            self.open_change_project_and_add_institution_dialog()
            self.load_page(
                self.current_page
            )  # Recarrega a página atual após abrir o diálogo
            return

        current_page = self.current_page
        self.history.append(current_page)
        self.back_button.setEnabled(True)
        page_name = url.toString().split("/")[-1]
        self.current_page = page_name
        self.load_page(page_name)

    def go_back(self):
        """Volta para a última página visualizada."""
        if self.history:
            last_page = self.history.pop()
            self.current_page = last_page
            self.load_page(last_page)
        if not self.history:
            self.back_button.setEnabled(False)

    def open_change_project_name_dialog(self):
        """Abre o diálogo para alterar nome do projeto e créditos."""
        change_dialog = QtWidgets.QDialog(self)
        uic.loadUi(
            Path(__file__).parent.parent.parent
            / "Help"
            / "export"
            / "src"
            / "alter_qpt.ui",
            change_dialog,
        )

        # Conectar o botão de salvar do diálogo
        change_dialog.save_button.clicked.connect(
            lambda: self.save_project_name_and_credits(change_dialog)
        )

        # Mostrar o diálogo
        change_dialog.show()

    def save_project_name_and_credits(self, dialog):
        """Salva as alterações de nome do projeto e créditos."""
        # Obtém os valores inseridos pelo usuário e converte para caixa alta
        novo_nome_projeto = dialog.input_nome_projeto.text().strip().upper()
        novos_creditos = dialog.input_creditos.toPlainText().strip().upper()

        # Carrega o arquivo creditsDSG.qpt como um texto
        qpt_file_path = (
            Path(__file__).parent.parent.parent
            / "Help"
            / "export"
            / "src"
            / "creditsDSG.qpt"
        )
        if not qpt_file_path.exists():
            QMessageBox.critical(
                self,
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
            self, "Salvar Arquivo QPT Alterado", "", "QPT Files (*.qpt)"
        )

        if save_file_path:
            try:
                with open(save_file_path, "w", encoding="utf-8") as qpt_file:
                    qpt_file.write(qpt_content)
                QMessageBox.information(
                    self, "Sucesso", f"Arquivo QPT salvo em: {save_file_path}"
                )
            except Exception as e:
                QMessageBox.critical(self, "Erro", f"Falha ao salvar o arquivo: {e}")

    def open_change_project_and_add_institution_dialog(self):
        """Abre o diálogo para alterar nome do projeto, adicionar uma instituição e o logotipo."""
        change_dialog = QtWidgets.QDialog(self)
        uic.loadUi(
            Path(__file__).parent.parent.parent
            / "Help"
            / "export"
            / "src"
            / "alter_dois.ui",
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

        # Mostrar o diálogo
        change_dialog.show()

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
            Path(__file__).parent.parent.parent
            / "Help"
            / "export"
            / "src"
            / "creditsDOIS.qpt"
        )
        if not qpt_file_path.exists():
            QMessageBox.critical(
                self,
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
            self, "Salvar Arquivo QPT Alterado", "", "QPT Files (*.qpt)"
        )

        if save_file_path:
            try:
                with open(save_file_path, "w", encoding="utf-8") as qpt_file:
                    qpt_file.write(qpt_content)
                QMessageBox.information(
                    self, "Sucesso", f"Arquivo QPT salvo em: {save_file_path}"
                )
            except Exception as e:
                QMessageBox.critical(self, "Erro", f"Falha ao salvar o arquivo: {e}")

    def open_json_form(self):
        """Exibe o formulário de entrada de dados para o arquivo JSON em uma nova janela com barra de rolagem."""
        # Inicializa a janela do formulário JSON como um diálogo modal
        self.json_form_dialog = QtWidgets.QDialog(self)
        self.json_form_dialog.setWindowTitle("Criar Arquivo JSON")
        self.json_form_dialog.resize(800, 600)

        # Criar uma área de rolagem para o formulário
        scroll_area = QScrollArea(self.json_form_dialog)
        scroll_area.setWidgetResizable(True)

        # Carregar o conteúdo do formulário dentro de um widget
        form_content = uic.loadUi(
            Path(__file__).parent.parent.parent
            / "Help"
            / "export"
            / "src"
            / "exportjson.ui"
        )
        scroll_area.setWidget(form_content)

        # Layout para a janela do diálogo
        layout = QVBoxLayout(self.json_form_dialog)
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

        # Exibir a janela como modal para impedir sobreposição
        self.json_form_dialog.show()

        # Restaurar o conteúdo da janela de ajuda quando o formulário JSON for fechado
        self.json_form_dialog.finished.connect(self.restore_help_content)

    def remove_selected_row(self, table_widget):
        """Remove a linha selecionada na tabela fornecida."""
        selected_rows = table_widget.selectionModel().selectedRows()
        if not selected_rows:
            # Exibir uma mensagem de aviso se nenhuma linha estiver selecionada
            QMessageBox.warning(
                self, "Atenção", "Por favor, selecione uma linha para remover."
            )
            return

        for index in sorted(selected_rows, reverse=True):
            table_widget.removeRow(index.row())

    def select_file(self, line_edit):
        """Abre um diálogo de seleção de arquivo e insere o caminho no campo fornecido."""
        file_path, _ = QFileDialog.getOpenFileName(
            self, "Selecionar Arquivo", "", "Todos os Arquivos (*)"
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
            QMessageBox.critical(self, "Erro", "Preencha todos os campos obrigatórios!")
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
            self, "Salvar Arquivo JSON", "", "JSON Files (*.json)"
        )

        if save_file_path:
            try:
                with open(save_file_path, "w", encoding="utf-8") as json_file:
                    json_file.write(json_str)
                QMessageBox.information(
                    self, "Sucesso", f"Arquivo JSON salvo em: {save_file_path}"
                )
            except Exception as e:
                QMessageBox.critical(self, "Erro", f"Falha ao salvar o arquivo: {e}")

    def download_qpt_file(self):
        """Faz o download do arquivo QPT padrão."""
        qpt_file_path = (
            Path(__file__).parent.parent.parent
            / "Help"
            / "export"
            / "src"
            / "creditsDSG.qpt"
        )

        if qpt_file_path.exists():
            save_file_dialog = QFileDialog()
            save_file_path, _ = save_file_dialog.getSaveFileName(
                self, "Salvar Arquivo QPT", "", "QPT Files (*.qpt)"
            )

            if save_file_path:
                try:
                    with open(qpt_file_path, "rb") as file_in:
                        with open(save_file_path, "wb") as file_out:
                            file_out.write(file_in.read())
                    QMessageBox.information(
                        self, "Sucesso", f"Arquivo QPT salvo em: {save_file_path}"
                    )
                except Exception as e:
                    QMessageBox.critical(
                        self, "Erro", f"Falha ao salvar o arquivo QPT: {e}"
                    )
        else:
            QMessageBox.critical(self, "Erro", "Arquivo QPT não encontrado.")

    def restore_help_content(self):
        """Restaura o conteúdo HTML na janela de ajuda, se necessário."""
        if (
            hasattr(self, "help_text") and self.help_text
        ):  # Verifica se o atributo existe e está inicializado
            if hasattr(self, "current_html_content") and self.current_html_content:
                # Recarrega o conteúdo HTML atual se ele foi perdido ou limpo
                self.help_text.setHtml(self.current_html_content)
            elif hasattr(self, "current_page"):
                # Se o conteúdo atual não estiver disponível, recarrega a página inicial
                self.load_page(self.current_page)
            else:
                # Carregar uma página padrão em caso de falha
                self.help_text.setPlainText(
                    "Nenhuma página inicial disponível para restaurar."
                )
        else:
            # Caso a help_text não esteja definida, não tente carregar o conteúdo
            print(
                "Erro: A janela de ajuda não está disponível para restaurar o conteúdo."
            )
