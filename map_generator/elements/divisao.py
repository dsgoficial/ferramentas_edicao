import os
from pathlib import Path
import math

from qgis.core import (
    QgsLayerTreeGroup, QgsProject, QgsVectorLayer, QgsGeometry,
    QgsDistanceArea, QgsCoordinateReferenceSystem, QgsLineString,
    QgsCoordinateTransform, QgsRectangle, QgsLayoutItemLabel,
    QgsPalLayerSettings, QgsTextFormat, QgsRuleBasedLabeling,
    QgsTextBufferSettings, QgsFeatureRequest, QgsVectorLayerSimpleLabeling
)
from PyQt5.QtGui import QColor
from PyQt5.QtCore import QVariant
import shapely.wkt
import shapely.geometry
from .map_utils import MapParent


class Divisao(MapParent):
    def __init__(self):
        self.itemname_tableMunicipios = 'label_divisao_municipios'
        self.maxCountiesToDisplay = 27
        self.styleFolder = Path(__file__).parent.parent / 'estilos' / 'divisao'
        self.setVariables()

    def setVariables(self):
        self.file_basehtmltable = 'divisao.html'
        self.n_maxlines = 6
        # 2020
        self.nameAttribute = 'NOME'
        self.countyAttribute = 'SIGLA_UF'
        self.countryAttribute = 'SIGLA_PAIS'
        #self.itemname_tableMunicipios = 'label_divisao_municipios'

    def make(self, composition, mapArea, showLayers=False, isInternational=False):
        # Deletando as variaveis
        self.deleteGroups(['divisao'])
        map_layers = []

        # Adiciona os layers de municipios, estado e limite internacional
        divisaoGroup_node = QgsLayerTreeGroup('divisao')
        divisaoGroup_node.setItemVisibilityChecked(False)

        layerCounty, layerState, layerBrazil, layerOcean, layerCountry = self.createLayersGroup()
        map_layers.extend([layerCounty.id(), layerState.id(),
                          layerBrazil.id(), layerOcean.id(), layerCountry.id()])

        # Cria o layer da área do mapa
        gridBound = mapArea.geometry().boundingBox()
        gridRectangleLayer = self.createGridRectangle(gridBound, 'auxiliar_divisao')
        map_layers.append(gridRectangleLayer.id())

        # Get map extent for intersections
        # TODO: Check possible refactor on getExtent
        outerExtents = self.getExtent(gridBound, mapArea)
        orderedCountiesByCentroidDistance, orderedCountiesNamesByArea = self.getIntersections(
            layerCounty, outerExtents, mapArea, isInternational)

        # Set styles and html table data for municipios que intersectam
        self.setStyles(layerCounty, orderedCountiesByCentroidDistance, orderedCountiesNamesByArea)
        html_tabledata = self.customcreateHtmlTableData(orderedCountiesNamesByArea)
        self.setMunicipiosTable(composition,  html_tabledata)

        if not isInternational:
            self.unsetLabel(layerCountry)

        for layer in (gridRectangleLayer, layerOcean, layerCountry, layerBrazil, layerState, layerCounty):
            QgsProject.instance().addMapLayer(layer, False)
            divisaoGroup_node.addLayer(layer)

        if showLayers:
            root = QgsProject.instance().layerTreeRoot()
            root.addChildNode(divisaoGroup_node)

        # Update map in correct sequence
        layers_to_show = (gridRectangleLayer, layerOcean, layerCountry,
                          layerBrazil, layerState, layerCounty)
        self.updateMapItem(composition, outerExtents, layers_to_show)
        return map_layers

    def createLayersGroup(self):
        '''
        Creates QgsVectorLayer and sets up its style for five inputs: County, State, Brazil, Ocean and Contry.
        '''
        uriPath = Path(__file__).parent.parent / 'limites' / '2020' / 'Municipios_2020.shp'
        stylePath = self.styleFolder / 'carta_topografica_rdg' / 'municipio_rdg.qml'
        layerCounty = QgsVectorLayer(str(uriPath), 'municipios', 'ogr')
        layerCounty.loadNamedStyle(str(stylePath))
        # QgsProject.instance().addMapLayer(municipios_layer)

        uriPath = Path(__file__).parent.parent / 'limites' / '2020' / 'Estados_2020.shp'
        stylePath = self.styleFolder / 'carta_topografica_rdg' / 'estados_rdg.qml'
        layerState = QgsVectorLayer(str(uriPath), 'limite_estado', 'ogr')
        layerState.loadNamedStyle(str(stylePath))

        uriPath = Path(__file__).parent.parent / 'limites' / '2020' / 'Brasil_2020.shp'
        stylePath = self.styleFolder / 'carta_topografica_rdg' / 'internacional_rdg.qml'
        layerBrazil = QgsVectorLayer(str(uriPath), 'internacional_rdg', 'ogr')
        layerBrazil.loadNamedStyle(str(stylePath))

        uriPath = Path(__file__).parent.parent / 'limites' / '2020' / 'Oceano_2020.shp'
        stylePath = self.styleFolder / 'carta_topografica_rdg' / 'oceano_rdg.qml'
        layerOcean = QgsVectorLayer(str(uriPath), 'oceano', 'ogr')
        layerOcean.loadNamedStyle(str(stylePath))

        uriPath = Path(__file__).parent.parent / 'limites' / '2020' / 'Paises_2020.shp'
        stylePath = self.styleFolder / 'carta_topografica_rdg' / 'paises_rdg.qml'
        layerCountry = QgsVectorLayer(str(uriPath), 'paises', 'ogr')
        layerCountry.loadNamedStyle(str(stylePath))

        return layerCounty, layerState, layerBrazil, layerOcean, layerCountry

    def getExtent(self, gridBound, selected_feature):
        x_min, x_max = gridBound.xMinimum(), gridBound.xMaximum()
        delta = round(abs(x_max-x_min)*60)
        angle_spliter = delta
        centroid = selected_feature.geometry().centroid()
        x = centroid.asPoint().x()
        x_min = x - (1/60)*angle_spliter
        x_max = x + (1/60)*angle_spliter
        y = centroid.asPoint().y()
        y_min = y - (1/60)*angle_spliter
        y_max = y + (1/60)*angle_spliter
        return QgsRectangle(x_min, y_min, x_max, y_max)

    def getDistance(self, geomOne, geomTwo):
        distance = QgsDistanceArea()
        distance.setEllipsoid('WGS84')
        m = round(distance.measureLine(geomOne, geomTwo), 2)
        return m

    def checkRadiusPoleForLabel(self, countyFeature, outerExtentsGeometry):
        '''
        Uses poleOfInaccessibility to decide the renderization of countyFeature if it intersects outerExtentsGeometry
        '''
        maxRadiusPerMapArea = 2300
        outerExtentsArea = math.sqrt(outerExtentsGeometry.area())
        intersectionGeometry = countyFeature.geometry().intersection(outerExtentsGeometry)
        crsSrc = QgsCoordinateReferenceSystem(4326)  # WGS 84
        crsExtents = QgsCoordinateReferenceSystem(
            int(self.epsg), QgsCoordinateReferenceSystem.EpsgCrsId)  # WGS 84 / UTM
        transform = QgsCoordinateTransform(crsSrc, crsExtents, QgsProject.instance())
        intersectionGeometry.transform(transform)
        _, radius = intersectionGeometry.poleOfInaccessibility(10)
        radiusPerMapArea = radius/outerExtentsArea
        show = False if radiusPerMapArea < maxRadiusPerMapArea else True
        return radiusPerMapArea, show

    def convertPolygonToMultilineGeometry(self, geom):
        _geom = geom.asWkt()
        loaded_poly = shapely.wkt.loads(_geom)
        shapely_multipoly = shapely.geometry.Polygon(loaded_poly)
        shapely_multipoly_boundary = shapely_multipoly.boundary
        boundary_polyline = QgsLineString()
        boundary_polyline.fromWkt(shapely_multipoly_boundary.wkt)
        boundary_geom = QgsGeometry(boundary_polyline)
        return boundary_geom

    def getIntersections(self, layerCounty, outerExtents, mapAreaFeature, isInternational=False):
        '''
        Gets every county that intersects the outerExtents and decides if the county will be displayed or not.
        '''
        d = QgsDistanceArea()
        outerExtentsGeometry = QgsGeometry.fromRect(outerExtents)
        contourOuterExtents = self.convertPolygonToMultilineGeometry(outerExtentsGeometry)
        countiesToDisplay = []
        mapAreaCentroid = mapAreaFeature.geometry().centroid().asPoint()
        request = QgsFeatureRequest().setFilterRect(outerExtents)
        for countyFeature in layerCounty.getFeatures(request):
            # Inside map extents
            if countyFeature.geometry().intersects(outerExtentsGeometry):
                name = countyFeature[self.nameAttribute]
                county = countyFeature[self.countyAttribute]
                country = countyFeature[self.countryAttribute]
                if name and not isinstance(name, QVariant):
                    labelTable = f'{name} - {county}'
                    if isInternational:
                        labelTable = f'{labelTable} / {country}'
                    # Intersects map extents
                    if countyFeature.geometry().intersects(contourOuterExtents):
                        _, show = self.checkRadiusPoleForLabel(countyFeature, outerExtentsGeometry)
                        if show:
                            countyCentroid = countyFeature.geometry().centroid().asPoint()
                            countyDict = {
                                self.nameAttribute: name,
                                self.countyAttribute: county,
                                self.countryAttribute: country,
                                'label': labelTable,
                                'area': d.measureArea(countyFeature.geometry()),
                                'centroidDistance': d.measureLine(mapAreaCentroid, countyCentroid)}
                            countiesToDisplay.append(countyDict)
        orderedCountiesByCentroidDistance = sorted(countiesToDisplay, key=lambda x: x['centroidDistance'], reverse=False)
        orderedCountiesNamesByCentroidDistance = [x['label'] for x in orderedCountiesByCentroidDistance]

        if len(orderedCountiesNamesByCentroidDistance) >= self.maxCountiesToDisplay:
            orderedCountiesNamesByCentroidDistance = orderedCountiesNamesByCentroidDistance[:self.maxCountiesToDisplay]

        return orderedCountiesByCentroidDistance, orderedCountiesNamesByCentroidDistance

    def getNColums(self, n_total):
        n_columns = 1
        n_extra = n_total-18
        n_mod = n_extra % 3
        n_div = math.floor(n_extra / 3)
        initial_n_column1 = 0
        initial_n_column2 = 0
        initial_n_column3 = 0
        add_column1 = 0
        add_column2 = 0
        add_column3 = 0
        if 0 < n_total <= 6:
            initial_n_column1 = n_total
        elif 6 < n_total <= 12:
            n_columns = 2
            initial_n_column1 = 6
            initial_n_column2 = n_total-6
        elif 12 < n_total <= 18:
            n_columns = 3
            initial_n_column1 = 6
            initial_n_column2 = 6
            initial_n_column3 = n_total-12
        else:
            n_columns = 3
            initial_n_column1 = 6
            initial_n_column2 = 6
            initial_n_column3 = 6
            add_column1 = n_div + (1 if n_mod == 1 or n_mod == 2 else 0)
            add_column2 = n_div + (1 if n_mod == 2 else 0)
            add_column3 = n_div

        n_column1 = initial_n_column1 + add_column1
        n_column2 = initial_n_column2 + add_column2
        n_column3 = initial_n_column3 + add_column3

        return n_columns, n_column1, n_column2, n_column3

    def goNextColumn(self, municipio_index, n_column1, n_column2, n_column3):
        n_municipio = municipio_index + 1
        # nextColumn = False
        if n_municipio == n_column1 or n_municipio == n_column1 + n_column2 or n_municipio == n_column1 + n_column2 + n_column3:
            return True
        else:
            return False

    def customcreateHtmlTableData(self, sorted_municipios):
        n_municipios = len(sorted_municipios)
        n_columns = math.ceil(n_municipios/self.n_maxlines)
        if n_columns == 0:
            n_columns = 1

        step = math.ceil(n_municipios/n_columns)
        txt_file = os.path.join(os.path.dirname(os.path.dirname(__file__)),
                                'html_auto', self.file_basehtmltable)
        #filepath = os.path.join(folder, filer)
        f = open(txt_file, "r")
        base_html = f.read()
        font_size = '0.6'
        if 6 < n_municipios < 13:
            font_size = '0.55'
        elif 12 < n_municipios:
            font_size = '0.50'

        n_columns, n_column1, n_column2, n_column3 = self.getNColums(n_municipios)

        # baserows_str = '<tr> {}</tr>'
        # baserows_str = '<tr> {}</tr>'
        baserows_str = '<tr {style}> {}</tr>'
        style_str = 'style="width: {value}%;"'.replace('{value}', str(round(100/n_columns, 2)))
        baserows_str = baserows_str.replace('{style}', style_str)
        # 'style="width: 50%;"'
        basecolumn_str = '<td class = "mid" >{}</td>'

        tablerow_columns = []
        tablerows_list = []
        for municipio_index, municipio in enumerate(sorted_municipios):
            n_municipio = municipio_index + 1
            cell_str = f'{n_municipio} - {municipio.upper()}'
            tablerow_column = basecolumn_str.format(cell_str)
            tablerow_columns.append(tablerow_column)
            if self.goNextColumn(municipio_index, n_column1, n_column2, n_column3):
                tablerow = baserows_str.format('\n'.join(tablerow_columns))
                tablerows_list.append(tablerow)
                tablerow_columns = []

        table_content = '\n'.join(tablerows_list)

        edited = base_html.format(font_size=font_size, table_data=table_content)
        return edited

    def setMunicipiosTable(self, composition,  html_tabledata):
        compositionItem = composition.itemById(self.itemname_tableMunicipios)
        if compositionItem is not None:
            compositionItem.setText(html_tabledata)
            compositionItem.setMode(QgsLayoutItemLabel.ModeHtml)
            compositionItem.refresh()

    def createRules(self, label, expression):
        '''
        Returns a QgsRuleBasedLabeling based on label and expression
        '''
        settings = QgsPalLayerSettings()
        settings.fieldName = label
        settings.Placement = QgsPalLayerSettings.OverPoint
        settings.centroidInside = True
        settings.isExpression = True
        textFormat = QgsTextFormat()
        textFormat.setColor(QColor(0, 0, 0, 255))
        textFormat.setSize(6)

        textBuffer = QgsTextBufferSettings()
        textBuffer.setColor(QColor(255, 255, 255, 255))
        textBuffer.setSize(0.4)
        textBuffer.setEnabled(True)
        textFormat.setBuffer(textBuffer)
        settings.setFormat(textFormat)

        rule = QgsRuleBasedLabeling.Rule(settings)
        rule.setFilterExpression(expression)
        rule.setActive(True)
        return rule

    def createGridRectangle(self, grid_bound, layer_name):
        geometries = [QgsGeometry.fromRect(grid_bound)]
        rectangleLayer = self.createGridRectangleLayer(layer_name, geometries)
        style_file = os.path.join(self.styleFolder, 'divisao_grid_bound_vf.qml')
        rectangleLayer.loadNamedStyle(style_file)
        rectangleLayer.triggerRepaint()
        return rectangleLayer

    def setStyles(self, layerCounty, orderedCountiesByCentroidDistance, orderedCountiesNamesByArea):
        rulesRoot = QgsRuleBasedLabeling.Rule(QgsPalLayerSettings())
        for n in range(len(orderedCountiesNamesByArea)):
            rule = self.createRules(
                f"'{n+1}'",
                f'"{self.nameAttribute}" = \'{orderedCountiesByCentroidDistance[n][self.nameAttribute]}\'')
            rulesRoot.appendChild(rule)
        rules = QgsRuleBasedLabeling(rulesRoot)
        layerCounty.setLabeling(rules)
        layerCounty.setLabelsEnabled(True)
        layerCounty.triggerRepaint()

    def updateMapItem(self, composition, map_extent, layers_to_show, mapItem=None):
        if mapItem is None:
            mapItem = composition.itemById("map_divisao")
        if mapItem is not None:
            mapItem.setExtent(map_extent)
            mapItem.refresh()
            mapItem.setLayers(layers_to_show)
            mapItem.refresh()

    def unsetLabel(self, layer):
        rule = QgsVectorLayerSimpleLabeling(QgsPalLayerSettings())
        layer.setLabeling(rule)