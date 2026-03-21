# -*- coding: utf-8 -*-
import os
import platform
import shutil
import ctypes

from qgis.PyQt.QtWidgets import QMessageBox
from qgis.PyQt.QtGui import QDesktopServices
from qgis.PyQt.QtCore import QUrl


def _installFontWindows(caminho_fonte, arquivo):
    """Instala uma fonte permanentemente no Windows (copia + registra no registry)."""
    import winreg

    fonts_dir = os.path.join(os.environ.get("WINDIR", r"C:\Windows"), "Fonts")
    destino = os.path.join(fonts_dir, arquivo)
    if not os.path.exists(destino):
        shutil.copy2(caminho_fonte, destino)
    nome_registro = os.path.splitext(arquivo)[0] + " (TrueType)"
    with winreg.OpenKey(
        winreg.HKEY_LOCAL_MACHINE,
        r"SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts",
        0,
        winreg.KEY_SET_VALUE,
    ) as key:
        winreg.SetValueEx(key, nome_registro, 0, winreg.REG_SZ, arquivo)
    ctypes.windll.gdi32.AddFontResourceW(destino)


def install_fonts(plugin_dir, parent_window):
    """Instala as fontes Noto Sans no sistema."""
    pasta_fontes = os.path.join(plugin_dir, "Help", "button", "fonts")
    if not os.path.exists(pasta_fontes):
        QMessageBox.warning(parent_window, "Erro", "Pasta de fontes não encontrada.")
        return

    if platform.system() == "Windows":
        try:
            for arquivo in os.listdir(pasta_fontes):
                if not arquivo.endswith(".ttf"):
                    continue
                _installFontWindows(os.path.join(pasta_fontes, arquivo), arquivo)
            QMessageBox.information(
                parent_window,
                "Sucesso",
                "Fontes instaladas com sucesso! Reinicie o QGIS para aplicar as mudanças.",
            )
        except PermissionError:
            resp = QMessageBox.warning(
                parent_window,
                "Permissão negada",
                "A instalação automática requer que o QGIS seja executado como Administrador.\n\n"
                "Você pode:\n"
                "1. Fechar o QGIS, clicar com botão direito no ícone do QGIS e selecionar "
                '"Executar como administrador", depois tentar novamente.\n'
                "2. Instalar manualmente: clique em 'Abrir pasta' para acessar os arquivos "
                "de fonte, selecione todos os .ttf, clique com botão direito e escolha "
                '"Instalar para todos os usuários".',
                QMessageBox.StandardButton.Open | QMessageBox.StandardButton.Cancel,
            )
            if resp == QMessageBox.StandardButton.Open:
                QDesktopServices.openUrl(QUrl.fromLocalFile(pasta_fontes))
        except Exception as e:
            QMessageBox.warning(
                parent_window, "Erro", f"Erro ao instalar fontes: {str(e)}"
            )
    else:
        try:
            pasta_destino = (
                "/Library/Fonts/"
                if platform.system() == "Darwin"
                else os.path.expanduser("~/.local/share/fonts/")
            )
            for arquivo in os.listdir(pasta_fontes):
                if not arquivo.endswith(".ttf"):
                    continue
                shutil.copy(os.path.join(pasta_fontes, arquivo), pasta_destino)
            if platform.system() == "Linux":
                import subprocess
                subprocess.run(["fc-cache", "-f", "-v"], check=False)
            QMessageBox.information(
                parent_window,
                "Sucesso",
                "Fontes instaladas com sucesso! Reinicie o QGIS para aplicar as mudanças.",
            )
        except Exception as e:
            QMessageBox.warning(
                parent_window, "Erro", f"Erro ao instalar fontes: {str(e)}"
            )
