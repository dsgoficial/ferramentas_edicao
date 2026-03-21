# -*- coding: utf-8 -*-
import json
from pathlib import Path

from qgis.PyQt.QtCore import Qt
from qgis.PyQt import QtWidgets, uic
from qgis.PyQt.QtWidgets import (
    QDialog,
    QFileDialog,
    QMessageBox,
    QPushButton,
    QScrollArea,
    QTableWidgetItem,
    QTextBrowser,
    QVBoxLayout,
)

from .fontInstaller import install_fonts


class HelpBrowser:
    """Manages the help dialog, navigation, JSON form and QPT helpers."""

    def __init__(self, iface, plugin_dir):
        self.iface = iface
        self.plugin_dir = plugin_dir
        self.history = []
        self.current_html_content = ""
        self.current_page = "buttonTools.html"
        self.help_dialog = None
        self.help_text = None
        self.back_button = None

    def show(self):
        if self.help_dialog and self.help_dialog.isVisible():
            return

        self.help_dialog = QDialog(self.iface.mainWindow())
        self.help_dialog.setWindowTitle("Ajuda")
        self.help_dialog.resize(800, 600)
        self.help_dialog.setWindowFlags(
            self.help_dialog.windowFlags()
            | Qt.WindowType.WindowMinMaxButtonsHint
            | Qt.WindowType.WindowCloseButtonHint
        )

        self.help_text = QTextBrowser(self.help_dialog)
        self.help_text.anchorClicked.connect(self.handle_link_click)

        self.back_button = QPushButton("Voltar", self.help_dialog)
        self.back_button.clicked.connect(self.go_back)
        self.back_button.setEnabled(len(self.history) > 0)

        layout = QVBoxLayout()
        layout.addWidget(self.help_text)
        layout.addWidget(self.back_button)
        self.help_dialog.setLayout(layout)

        if self.current_html_content:
            self.help_text.setHtml(self.current_html_content)
        else:
            self.load_page(self.current_page, from_export=False)

        self.help_dialog.show()

    def load_page(self, page, from_export=False):
        html_file_path = None
        img_dir = None
        icons_dir = None
        images_dir = None

        if from_export:
            html_file_path = Path(self.plugin_dir) / "Help" / "export" / "html" / page
            images_dir = Path(self.plugin_dir) / "Help" / "export" / "images"
        else:
            html_file_path = Path(self.plugin_dir) / "Help" / "button" / "html" / page
            img_dir = Path(self.plugin_dir) / "Help" / "button" / "img"
            icons_dir = Path(self.plugin_dir) / "Help" / "button" / "icons"

        if html_file_path.exists():
            with open(html_file_path, "r", encoding="utf-8") as file:
                html_content = file.read()

            replacements = {}
            if img_dir and img_dir.exists():
                replacements.update(
                    {
                        "path_to_image1": img_dir / "botoes.png",
                        "path_to_imagem": img_dir / "sentido_corrente.png",
                        "path_to_imagen": img_dir / "alternar_estilo_nao_visivel.png",
                        "path_to_imageo": img_dir / "alternar_rotulo.png",
                        "path_to_imagep": img_dir / "alternar_visibilidade_do_texto.png",
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

            if icons_dir and icons_dir.exists():
                replacements.update(
                    {
                        "path_to_image3": icons_dir / "alternar_justificativa.png",
                        "path_to_image4": icons_dir / "alternar_rotulo.png",
                        "path_to_image5": icons_dir / "alternar_visibilidade_do_texto.png",
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
                        "path_to_imageg": icons_dir / "simbolo_idt_trecho_rodoviario.png",
                        "path_to_imageh": icons_dir / "simbolo_vegetacao.png",
                        "path_to_imagei": icons_dir / "suprimir_bandeira_edificacao.png",
                        "path_to_imagej": icons_dir / "texto_de_cota_mestra.png",
                        "path_to_imagek": icons_dir / "visibilidade_de_ponta.png",
                        "path_to_imagel": icons_dir / "visibilidade_lateral_ponte.png",
                        "path_to_imaggh": icons_dir / "alternar_justificativa.png",
                        "path_to_imaggi": icons_dir / "font.png",
                        "path_to_imaggj": icons_dir / "icon.png",
                    }
                )

            if images_dir and images_dir.exists():
                replacements.update(
                    {
                        "path_to_image": images_dir / "topo.png",
                        "path_to_config_pasta_icon": images_dir / "orto.png",
                        "path_to_config_json_icon": images_dir / "config_json_icon.png",
                        "path_to_config_project_icon": images_dir / "config_project_icon.png",
                        "path_to_example": images_dir / "credits.png",
                    }
                )

            for placeholder, image_path in replacements.items():
                html_content = html_content.replace(placeholder, image_path.as_posix())

            self.help_text.setHtml(html_content)
            self.current_html_content = html_content
        else:
            self.help_text.setPlainText(
                f"Arquivo de ajuda não encontrado: {html_file_path}"
            )
            self.current_html_content = "Arquivo de ajuda não encontrado."

    def handle_link_click(self, url):
        self.current_html_content = self.help_text.toHtml()
        page_name = url.toString().split("/")[-1]

        if page_name == "install_fonts":
            install_fonts(self.plugin_dir, self.iface.mainWindow())
            self.help_text.setHtml(
                "<h2>Fontes instaladas com sucesso!</h2><p>Reinicie o QGIS para que as mudanças sejam aplicadas.</p>"
            )
            return

        if page_name in [
            "create_json",
            "change_project_name",
            "change_project_and_add_institution",
        ]:
            self.help_text.setHtml(self.current_html_content)
            if page_name == "create_json":
                self.open_json_form()
            elif page_name == "change_project_name":
                self.open_change_project_name_dialog()
            elif page_name == "change_project_and_add_institution":
                self.open_alter_institution_dialog()
            return

        if page_name == "download_qpt_file":
            self.download_qpt()
            return

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

        self.history.append((self.current_page, self.current_html_content))
        self.current_page = page_name
        self.load_page(page_name, from_export=False)
        self.back_button.setEnabled(True)
        self.current_html_content = self.help_text.toHtml()

    def go_back(self):
        if self.history:
            last_page, last_content = self.history.pop()
            self.current_page = last_page
            self.current_html_content = last_content
            self.help_text.setHtml(self.current_html_content)
        self.back_button.setEnabled(len(self.history) > 0)

    def restore_help_content(self):
        if self.help_text:
            if self.current_html_content:
                if (
                    not self.help_text.toHtml().strip()
                    or self.help_text.toHtml() != self.current_html_content
                ):
                    self.help_text.setHtml(self.current_html_content)
            else:
                self.load_page(self.current_page)

    # --- JSON Form ---

    def open_json_form(self):
        self.current_html_content = self.help_text.toHtml()
        json_form_dialog = QtWidgets.QDialog(self.iface.mainWindow())
        json_form_dialog.setWindowTitle("Criar Arquivo JSON")
        json_form_dialog.resize(800, 600)

        scroll_area = QScrollArea(json_form_dialog)
        scroll_area.setWidgetResizable(True)

        form_content = uic.loadUi(
            Path(self.plugin_dir) / "Help" / "export" / "src" / "exportjson.ui"
        )
        scroll_area.setWidget(form_content)

        layout = QVBoxLayout(json_form_dialog)
        layout.addWidget(scroll_area)

        form_content.input_licenciamento.setText("CC-BY-NC-SA 4.0")
        form_content.input_edicao.setText("1 - DSG")

        form_content.browse_mde_button.clicked.connect(
            lambda: self._select_file(form_content.input_mde_diagrama)
        )
        form_content.browse_project_button.clicked.connect(
            lambda: self._select_file(form_content.input_creditos)
        )
        form_content.add_fase_button.clicked.connect(
            lambda: self._add_table_row(form_content.fasesTable)
        )
        form_content.add_dado_terceiro_button.clicked.connect(
            lambda: self._add_table_row(form_content.dadosTerceirosTable)
        )
        form_content.rm_fase_button.clicked.connect(
            lambda: self._remove_selected_row(form_content.fasesTable)
        )
        form_content.rm_dado_terceiro_button.clicked.connect(
            lambda: self._remove_selected_row(form_content.dadosTerceirosTable)
        )
        form_content.generate_button.clicked.connect(
            lambda: self._generate_json(form_content)
        )

        json_form_dialog.finished.connect(self.restore_help_content)
        json_form_dialog.show()
        self.help_text.setHtml(self.current_html_content)

    def _select_file(self, line_edit):
        file_path, _ = QFileDialog.getOpenFileName(
            self.iface.mainWindow(), "Selecionar Arquivo", "", "Todos os Arquivos (*)"
        )
        if file_path:
            line_edit.setText(file_path.replace("/", "\\"))

    def _add_table_row(self, table_widget):
        row = table_widget.rowCount()
        table_widget.insertRow(row)
        for col in range(table_widget.columnCount()):
            table_widget.setItem(row, col, QTableWidgetItem(""))

    def _remove_selected_row(self, table_widget):
        selected_rows = table_widget.selectionModel().selectedRows()
        if not selected_rows:
            QMessageBox.warning(
                table_widget, "Atenção", "Por favor, selecione uma linha para remover."
            )
            return
        for index in sorted(selected_rows, reverse=True):
            table_widget.removeRow(index.row())

    def _generate_json(self, form_dialog):
        def add_if_not_empty(dictionary, key, value):
            if value not in ("", None):
                dictionary[key] = value

        nome = form_dialog.input_nome.text().strip()
        territorio_internacional = (
            form_dialog.input_territorio_internacional.currentText() == "True"
        )
        acesso_restrito = form_dialog.input_acesso_restrito.currentText() == "True"
        tipo_produto = form_dialog.input_produto.currentText() == "Carta Topográfica"
        caminho_mde = form_dialog.input_mde_diagrama.text().strip().replace("/", "\\")
        epsg = form_dialog.input_epsg.text().strip()

        if not tipo_produto or not nome or not caminho_mde or not epsg:
            QMessageBox.critical(
                form_dialog, "Erro", "Preencha todos os campos obrigatórios!"
            )
            return

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

        add_if_not_empty(json_object, "inom", form_dialog.input_inom.text().strip())
        add_if_not_empty(json_object, "licenciamento_produto", form_dialog.input_licenciamento.text().strip())
        add_if_not_empty(json_object, "edicao_produto", form_dialog.input_edicao.text().strip())
        add_if_not_empty(json_object, "escala", form_dialog.input_escala.text().strip())
        add_if_not_empty(json_object, "centro_carta", form_dialog.input_centro_carta.text().strip())
        add_if_not_empty(json_object, "projeto", form_dialog.input_creditos.text().strip())

        info_tecnica = json_object["info_tecnica"]
        add_if_not_empty(info_tecnica, "data_criacao", form_dialog.input_data_criacao.text().strip())
        add_if_not_empty(info_tecnica, "datum_vertical", form_dialog.input_datum_vertical.text().strip())
        add_if_not_empty(info_tecnica, "origem_dados_altimetricos", form_dialog.input_origem_dados_altimetricos.text().strip())
        add_if_not_empty(info_tecnica, "pec_planimetrico", form_dialog.input_pec_planimetrico.text().strip())
        add_if_not_empty(info_tecnica, "pec_altimetrico", form_dialog.input_pec_altimetrico.text().strip())

        banco = json_object["banco"]
        add_if_not_empty(banco, "servidor", form_dialog.bancoTable.item(0, 0).text().strip() if form_dialog.bancoTable.item(0, 0) else "")
        add_if_not_empty(banco, "porta", form_dialog.bancoTable.item(0, 1).text().strip() if form_dialog.bancoTable.item(0, 1) else "")
        add_if_not_empty(banco, "nome", form_dialog.bancoTable.item(0, 2).text().strip() if form_dialog.bancoTable.item(0, 2) else "")

        for row in range(form_dialog.fasesTable.rowCount()):
            fase_nome = form_dialog.fasesTable.item(row, 0)
            executante_nome = form_dialog.fasesTable.item(row, 1)
            executante_ano = form_dialog.fasesTable.item(row, 2)
            if fase_nome and executante_nome and executante_ano:
                fn, en, ea = fase_nome.text().strip(), executante_nome.text().strip(), executante_ano.text().strip()
                if fn and en and ea:
                    json_object["fases"].append({"nome": fn, "executantes": [{"nome": en, "ano": ea}]})

        for row in range(form_dialog.dadosTerceirosTable.rowCount()):
            nome_t = form_dialog.dadosTerceirosTable.item(row, 0)
            sigla_t = form_dialog.dadosTerceirosTable.item(row, 1)
            if nome_t and sigla_t:
                nt, st = nome_t.text().strip(), sigla_t.text().strip()
                if nt and st:
                    json_object["info_tecnica"]["dados_terceiros"].append(f"{nt}: {st}")

        json_str = json.dumps(json_object, indent=4, ensure_ascii=False)
        save_file_path, _ = QFileDialog.getSaveFileName(
            form_dialog, "Salvar Arquivo JSON", "", "JSON Files (*.json)"
        )
        if save_file_path:
            try:
                with open(save_file_path, "w", encoding="utf-8") as json_file:
                    json_file.write(json_str)
                QMessageBox.information(form_dialog, "Sucesso", f"Arquivo JSON salvo em: {save_file_path}")
            except Exception as e:
                QMessageBox.critical(form_dialog, "Erro", f"Falha ao salvar o arquivo: {e}")

    # --- QPT dialogs ---

    def open_change_project_name_dialog(self):
        self.current_html_content = self.help_text.toHtml()
        change_dialog = QtWidgets.QDialog(self.iface.mainWindow())
        uic.loadUi(
            Path(self.plugin_dir) / "Help" / "export" / "src" / "alter_qpt.ui",
            change_dialog,
        )
        change_dialog.save_button.clicked.connect(
            lambda: self._save_project_name_and_credits(change_dialog)
        )
        change_dialog.finished.connect(self.restore_help_content)
        change_dialog.show()
        self.help_text.setHtml(self.current_html_content)

    def open_alter_institution_dialog(self):
        self.current_html_content = self.help_text.toHtml()
        change_dialog = QtWidgets.QDialog(self.iface.mainWindow())
        uic.loadUi(
            Path(self.plugin_dir) / "Help" / "export" / "src" / "alter_dois.ui",
            change_dialog,
        )
        change_dialog.browse_image_button.clicked.connect(
            lambda: self._select_file(change_dialog.input_imagem)
        )
        change_dialog.save_button.clicked.connect(
            lambda: self._save_project_and_institution_data(change_dialog)
        )
        change_dialog.finished.connect(self.restore_help_content)
        change_dialog.show()
        self.help_text.setHtml(self.current_html_content)

    def download_qpt(self):
        self.current_html_content = self.help_text.toHtml()
        qpt_file_path = Path(self.plugin_dir) / "Help" / "export" / "src" / "creditsDSG.qpt"
        if qpt_file_path.exists():
            save_file_path, _ = QFileDialog.getSaveFileName(
                self.iface.mainWindow(), "Salvar Arquivo QPT", "", "QPT Files (*.qpt)"
            )
            if save_file_path:
                try:
                    with open(qpt_file_path, "rb") as f_in, open(save_file_path, "wb") as f_out:
                        f_out.write(f_in.read())
                    QMessageBox.information(self.iface.mainWindow(), "Sucesso", f"Arquivo QPT salvo em: {save_file_path}")
                except Exception as e:
                    QMessageBox.critical(self.iface.mainWindow(), "Erro", f"Falha ao salvar o arquivo QPT: {e}")
        else:
            QMessageBox.critical(self.iface.mainWindow(), "Erro", "Arquivo QPT não encontrado.")
        self.help_text.setHtml(self.current_html_content)

    def _save_project_name_and_credits(self, dialog):
        novo_nome = dialog.input_nome_projeto.text().strip().upper()
        novos_creditos = dialog.input_creditos.toPlainText().strip().upper()
        qpt_path = Path(self.plugin_dir) / "Help" / "export" / "src" / "creditsDSG.qpt"
        self._save_qpt_with_replacements(qpt_path, dialog, {
            'labelText="MAPEAMENTO DE INTERESSE DA FORÇA TERRESTRE"': f'labelText="{novo_nome}"',
            'labelText="PRODUTO ELABORADO PELA DIRETORIA DE SERVIÇO GEOGRÁFICO NO CONTEXTO DO PROJETO MAPEAMENTO DE INTERESSE DA FORÇA TERRESTRE"': f'labelText="{novos_creditos}"',
        })

    def _save_project_and_institution_data(self, dialog):
        nome_inst = dialog.input_nome_projeto.text().strip().upper()
        endereco = dialog.input_creditos.toPlainText().strip()
        imagem = dialog.input_imagem.text().strip()
        novo_nome = dialog.input_nome_projeto2.text().strip().upper()
        novos_creditos = dialog.input_creditos2.toPlainText().strip().upper()
        qpt_path = Path(self.plugin_dir) / "Help" / "export" / "src" / "creditsDOIS.qpt"
        self._save_qpt_with_replacements(qpt_path, dialog, {
            'labelText="name_2"': f'labelText="{nome_inst}"',
            'labelText="address"': f'labelText="{endereco}"',
            'file="teste.png"': f'file="{imagem}"',
            'labelText="MAPEAMENTO DE INTERESSE DA FORÇA TERRESTRE"': f'labelText="{novo_nome}"',
            'labelText="PRODUTO ELABORADO PELA DIRETORIA DE SERVIÇO GEOGRÁFICO NO CONTEXTO DO PROJETO MAPEAMENTO DE INTERESSE DA FORÇA TERRESTRE"': f'labelText="{novos_creditos}"',
        })

    def _save_qpt_with_replacements(self, qpt_path, dialog, replacements):
        if not qpt_path.exists():
            QMessageBox.critical(self.iface.mainWindow(), "Erro", f"Arquivo {qpt_path.name} não encontrado em: {qpt_path}")
            return
        with open(qpt_path, "r", encoding="utf-8") as f:
            content = f.read()
        for old, new in replacements.items():
            content = content.replace(old, new)
        save_path, _ = QFileDialog.getSaveFileName(
            self.iface.mainWindow(), "Salvar Arquivo QPT Alterado", "", "QPT Files (*.qpt)"
        )
        if save_path:
            try:
                with open(save_path, "w", encoding="utf-8") as f:
                    f.write(content)
                QMessageBox.information(self.iface.mainWindow(), "Sucesso", f"Arquivo QPT salvo em: {save_path}")
            except Exception as e:
                QMessageBox.critical(self.iface.mainWindow(), "Erro", f"Falha ao salvar o arquivo: {e}")
