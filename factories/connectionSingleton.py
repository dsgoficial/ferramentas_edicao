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
from qgis.core import QgsDataSourceUri, QgsCredentials
from typing import Dict


class ConnectionSingleton:
    """Singleton which handles the Postgres connection by using a QgsDataSourceUri"""

    conn = None

    def getConnection(
        self, connSettings: Dict, username: str, password: str
    ) -> QgsDataSourceUri:
        """Gets the (Postgres) database connection. If the connSettings are the same returns the old connection.
        Args:
            connSettings: python dict containing keys 'servidor', 'porta' and 'nome'
            username: username :)
            password: :)
        Returns:
            QgsDataSourceUri with specified connSettings
        """
        server = connSettings.get("servidor")
        port = connSettings.get("porta")
        database = connSettings.get("nome")
        if not self.conn or any(
            (
                server != self.conn.host(),
                port != self.conn.port(),
                database != self.conn.database(),
            )
        ):
            uri = QgsDataSourceUri()
            uri.setConnection(server, port, database, username, password)
            uri.setDatabase(database)
            connInfo = uri.connectionInfo()
            instance = QgsCredentials.instance()
            instance.put(connInfo, username, username)
            self.conn = uri
        return self.conn
