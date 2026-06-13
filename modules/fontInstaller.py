# -*- coding: utf-8 -*-
import os

from qgis.core import QgsApplication
from qgis.PyQt.QtWidgets import QMessageBox
from qgis.PyQt.QtGui import QDesktopServices
from qgis.PyQt.QtCore import QUrl


def _alreadyInstalled(font_manager):
    """Retorna o conjunto de nomes de arquivos de fonte já instalados no perfil."""
    try:
        return {
            os.path.basename(caminho)
            for caminho in font_manager.userFontToFamilyMap().keys()
        }
    except Exception:
        return set()


def _installFontData(font_manager, caminho_fonte, arquivo):
    """Instala uma fonte a partir dos bytes do .ttf via QgsFontManager.

    Grava o arquivo no diretório de fontes do perfil do QGIS e registra a fonte
    na sessão atual (sem exigir admin nem reinício). Retorna (ok, mensagem_erro).
    """
    with open(caminho_fonte, "rb") as f:
        data = f.read()
    resultado = font_manager.installFontsFromData(data, filename=arquivo)
    # Desempacota defensivamente: a API retorna (ok, erro, familias, licenca).
    if isinstance(resultado, (tuple, list)):
        ok = bool(resultado[0])
        erro = resultado[1] if len(resultado) > 1 else ""
    else:
        ok, erro = bool(resultado), ""
    return ok, erro


def install_fonts(plugin_dir, parent_window):
    """Instala as fontes Noto Sans no diretório de fontes do perfil do QGIS.

    Usa QgsFontManager.installFontsFromData (QGIS >= 3.28), que grava os .ttf em
    ``<perfil>/fonts`` e os registra na sessão atual via QFontDatabase, sem
    necessidade de privilégios de administrador nem de reiniciar o QGIS.

    Retorna ``True`` se todas as fontes foram instaladas com sucesso.
    """
    pasta_fontes = os.path.join(plugin_dir, "Help", "button", "fonts")
    if not os.path.exists(pasta_fontes):
        QMessageBox.warning(parent_window, "Erro", "Pasta de fontes não encontrada.")
        return False

    font_manager = QgsApplication.fontManager()
    instaladas = _alreadyInstalled(font_manager)

    sucessos = 0
    falhas = []
    for arquivo in sorted(os.listdir(pasta_fontes)):
        if not arquivo.lower().endswith(".ttf"):
            continue
        if arquivo in instaladas:
            sucessos += 1
            continue
        try:
            ok, erro = _installFontData(
                font_manager, os.path.join(pasta_fontes, arquivo), arquivo
            )
        except Exception as e:  # noqa: BLE001
            ok, erro = False, str(e)
        if ok:
            sucessos += 1
        else:
            falhas.append(f"{arquivo}: {erro}" if erro else arquivo)

    if not falhas:
        QMessageBox.information(
            parent_window,
            "Sucesso",
            f"{sucessos} fontes Noto Sans instaladas no perfil do QGIS.",
        )
        return True

    resp = QMessageBox.warning(
        parent_window,
        "Atenção",
        "Algumas fontes não puderam ser instaladas automaticamente:\n"
        + "\n".join(falhas)
        + "\n\nClique em 'Abrir pasta' para instalá-las manualmente: copie os "
        "arquivos .ttf para a pasta 'fonts' do seu perfil do QGIS.",
        QMessageBox.StandardButton.Open | QMessageBox.StandardButton.Cancel,
    )
    if resp == QMessageBox.StandardButton.Open:
        QDesktopServices.openUrl(QUrl.fromLocalFile(pasta_fontes))
    return False
