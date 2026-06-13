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
from ..config.exportJsonBuilder import (
    build_export_json,
    validate_fields,
    collect_export_form_fields,
    wire_export_form,
)


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
            ok = install_fonts(self.plugin_dir, self.iface.mainWindow())
            if ok:
                self.help_text.setHtml(
                    "<h2>Fontes instaladas!</h2><p>As fontes Noto Sans já estão "
                    "disponíveis no QGIS.</p>"
                )
            else:
                self.help_text.setHtml(
                    "<h2>Instalação incompleta</h2><p>Algumas fontes não puderam ser "
                    "instaladas automaticamente. Copie os arquivos .ttf para a pasta "
                    "'fonts' do seu perfil do QGIS.</p>"
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

        form_content.input_licenciamento.setText("CC-BY-SA 4.0")
        form_content.input_edicao.setText("1-DSG")

        wire_export_form(
            form_content,
            on_browse_file=self._select_file,
            on_add_row=self._add_table_row,
            on_remove_row=self._remove_selected_row,
            on_generate=lambda: self._generate_json(form_content),
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
        fields = collect_export_form_fields(form_dialog)
        ok, missing = validate_fields(fields)
        if not ok:
            QMessageBox.critical(
                form_dialog,
                "Erro",
                "Preencha os campos obrigatórios:\n- " + "\n- ".join(missing),
            )
            return

        json_object = build_export_json(fields)
        json_str = json.dumps(json_object, indent=4, ensure_ascii=False)
        save_file_path, _ = QFileDialog.getSaveFileName(
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
