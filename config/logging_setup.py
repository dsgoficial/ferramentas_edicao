# -*- coding: utf-8 -*-
import logging

from qgis.core import Qgis, QgsMessageLog

PLUGIN_NAME = "ferramentas_edicao"
_root_configured = False


class QgsLogHandler(logging.Handler):
    """Logging handler that forwards messages to QGIS message log."""

    LEVEL_MAP = {
        logging.DEBUG: Qgis.MessageLevel.Info,
        logging.INFO: Qgis.MessageLevel.Info,
        logging.WARNING: Qgis.MessageLevel.Warning,
        logging.ERROR: Qgis.MessageLevel.Critical,
        logging.CRITICAL: Qgis.MessageLevel.Critical,
    }

    def emit(self, record):
        msg = self.format(record)
        level = self.LEVEL_MAP.get(record.levelno, Qgis.MessageLevel.Info)
        QgsMessageLog.logMessage(msg, PLUGIN_NAME, level)


def _setup_root_logger():
    """Configure handlers only on the root plugin logger. Children propagate."""
    global _root_configured
    if _root_configured:
        return
    _root_configured = True
    root = logging.getLogger(PLUGIN_NAME)
    root.setLevel(logging.DEBUG)
    fmt = logging.Formatter("%(name)s - %(levelname)s - %(message)s")
    qgs_handler = QgsLogHandler()
    qgs_handler.setFormatter(fmt)
    root.addHandler(qgs_handler)
    console = logging.StreamHandler()
    console.setFormatter(fmt)
    root.addHandler(console)


def get_logger(name: str = PLUGIN_NAME) -> logging.Logger:
    """Get a logger for the given module name. Handlers are only on the root logger."""
    _setup_root_logger()
    return logging.getLogger(name)
