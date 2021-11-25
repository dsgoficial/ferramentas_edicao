from qgis.core import QgsDataSourceUri, QgsCredentials


class ConnectionSingleton:
    ''' Singleton which handles the Postgres connection by using a QgsDataSourceUri
    '''

    conn = None

    def getConnection(self, connSettings: dict, username: str, password: str) -> QgsDataSourceUri:
        ''' Gets the (Postgres) database connection. If the connSettings are the same returns the old connection.
        Args:
            connSettings: python dict containing keys 'servidor', 'porta' and 'nome'
            username: username :)
            password: :)
        Returns:
            QgsDataSourceUri with specified connSettings
        '''
        server = connSettings.get('servidor')
        port = connSettings.get('porta')
        database = connSettings.get('nome')
        if not self.conn or any((
            server != self.conn.host(),
            port != self.conn.port(),
            database != self.conn.database()
        )):
            uri = QgsDataSourceUri()
            uri.setConnection(server, port, database, username, password)
            uri.setDatabase(database)
            connInfo = uri.connectionInfo()
            instance = QgsCredentials.instance()
            instance.put(connInfo, username, username)
            self.conn = uri
        return self.conn