import math
import os
from pathlib import Path

from PyQt5.QtCore import QVariant
from PyQt5.QtGui import QColor
from qgis.core import (QgsCoordinateReferenceSystem, QgsCoordinateTransform,
                       QgsDistanceArea, QgsFeatureRequest, QgsGeometry,
                       QgsLayerTreeGroup, QgsLayoutItemLabel, QgsLineString,
                       QgsPalLayerSettings, QgsProject, QgsRectangle,
                       QgsRuleBasedLabeling, QgsTextBufferSettings,
                       QgsTextFormat, QgsPrintLayout, QgsFeature,
                       QgsVectorLayerSimpleLabeling, QgsVectorLayer)

from .componentUtils import ComponentUtils
from ....interfaces.iComponent import IComponent


class Division(ComponentUtils,IComponent):
    def __init__(self, *args, **kwargs):
        self.itemname_tableMunicipios = 'label_divisao_municipios'
        self.maxCountiesToDisplay = 27
        self.shpFolder = Path(__file__).parent.parent / 'resources' / 'limits' / '2020'
        self.styleFolder = Path(__file__).parent.parent / 'resources' / 'styles' / 'division'
        self.htmlTablePath = Path(__file__).parent.parent / 'htmlBarebone' / 'divisao.html'
        self.n_maxlines = 6
        self.nameAttribute = 'NOME'
        self.countyAttribute = 'SIGLA_UF'
        self.countryAttribute = 'SIGLA_PAIS'

    def build(self, composition: QgsPrintLayout, data: dict, mapAreaFeature: QgsFeature, showLayers: bool = False):

        mapIDsToBeDisplayed = []
        instance = QgsProject.instance()
        
        isInternational = data.get('territorio_internacional')

        # Inserting necessary layers

        layerCountyArea, layerCountyLine, layerStateLine, layerCountryArea, layerCountryLine, layerOcean = self.createLayersGroup()
        mapIDsToBeDisplayed.extend([
            layerCountyArea.id(),layerCountyLine.id(), layerStateLine.id(), layerOcean.id(), layerCountryArea.id(), layerCountryLine.id()])

        # Getting map extents
        gridBound = mapAreaFeature.geometry().boundingBox()
        gridRectangleLayer = self.createGridRectangle(gridBound, 'divisionMapArea')
        mapIDsToBeDisplayed.append(gridRectangleLayer.id())

        # Get map extent for intersections
        # TODO: Check possible refactor on getExtent
        outerExtents = self.getExtent(gridBound, mapAreaFeature, data)
        orderedCountiesByCentroidDistance, orderedCountiesNamesByArea = self.getIntersections(
            layerCountyArea, outerExtents, mapAreaFeature, data)

        # Labeling counties
        self.setStyles(layerCountyArea, orderedCountiesByCentroidDistance, orderedCountiesNamesByArea)

        # Inserting counties table
        html_tabledata = self.customcreateHtmlTableData(orderedCountiesNamesByArea)
        self.setMunicipiosTable(composition,  html_tabledata)

        if not isInternational:
            self.hideInternationalCouties(layerCountryArea)
            # self.unsetLabel(layerCountry)

        # Update map in correct sequence
        layersToShow = (
            layerCountryLine, layerStateLine, layerCountyLine, gridRectangleLayer, layerOcean, layerCountryArea, layerCountyArea)
        for layer in layersToShow:
            instance.addMapLayer(layer, False)
                
        if showLayers:
            divisionGroupNode = QgsLayerTreeGroup('division')
            divisionGroupNode.setItemVisibilityChecked(False)
            root = instance.layerTreeRoot()
            for layer in layersToShow:
                divisionGroupNode.addLayer(layer)
            root.addChildNode(divisionGroupNode)
            
        self.updateComposition(composition, outerExtents, layersToShow)
        return mapIDsToBeDisplayed

    def createLayersGroup(self):
        '''
        Creates QgsVectorLayer and sets up its style for classes: County, State, Contry and Ocean.
        Layers with Limites suffix are used for displaying purposes only.
        '''

        uriPath = self.shpFolder / 'Municipios_2020.shp'
        stylePath = self.styleFolder / 'municipio.qml'
        layerCountyArea = self.loadShapeLayer(uriPath, stylePath, 'counties')

        uriPath = self.shpFolder / 'Limites_Municipios_2020.shp'
        stylePath = self.styleFolder / 'municipio_l.qml'
        layerCountyLine = self.loadShapeLayer(uriPath, stylePath, 'countiesLimits')

        uriPath = self.shpFolder / 'Limites_Estados_2020.shp'
        stylePath = self.styleFolder / 'estados_l.qml'
        layerStateLine = self.loadShapeLayer(uriPath, stylePath, 'statesLimits')

        uriPath = self.shpFolder / 'Paises_2020.shp'
        stylePath = self.styleFolder / 'paises.qml'
        layerCountryArea = self.loadShapeLayer(uriPath, stylePath, 'countries')

        uriPath = self.shpFolder / 'Limites_Paises_2020.shp'
        stylePath = self.styleFolder / 'paises_l.qml'
        layerCountryLine = self.loadShapeLayer(uriPath, stylePath, 'countriesLimits')

        uriPath = self.shpFolder / 'Oceano_2020.shp'
        stylePath = self.styleFolder / 'oceano.qml'
        layerOcean = self.loadShapeLayer(uriPath, stylePath, 'ocean')

        return layerCountyArea, layerCountyLine, layerStateLine, layerCountryArea, layerCountryLine, layerOcean

    def getExtent(self, gridBound, selected_feature, data):
        if data.get('poligono'):
            extents = QgsRectangle(gridBound)
            extents.grow(.1)
            return extents
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

    def checkRadiusPoleForLabel(self, countyFeature, outerExtentsGeometry, data):
        '''
        Uses poleOfInaccessibility to decide the renderization of countyFeature if it intersects outerExtentsGeometry
        '''
        epsg = data.get('epsg')
        maxRadiusPerMapArea = 2300
        outerExtentsArea = math.sqrt(outerExtentsGeometry.area())
        intersectionGeometry = countyFeature.geometry().intersection(outerExtentsGeometry)
        crsSrc = QgsCoordinateReferenceSystem('EPSG:4326')  # WGS 84
        crsExtents = QgsCoordinateReferenceSystem(f'EPSG:{epsg}')
        transform = QgsCoordinateTransform(crsSrc, crsExtents, QgsProject.instance())
        intersectionGeometry.transform(transform)
        _, radius = intersectionGeometry.poleOfInaccessibility(10)
        radiusPerMapArea = radius/(outerExtentsArea + 1e-8)
        show = False if radiusPerMapArea < maxRadiusPerMapArea else True
        return radiusPerMapArea, show

    # def convertPolygonToMultilineGeometry(self, geom):
    #     _geom = geom.asWkt()
    #     loaded_poly = shapely.wkt.loads(_geom)
    #     shapely_multipoly = shapely.geometry.Polygon(loaded_poly)
    #     shapely_multipoly_boundary = shapely_multipoly.boundary
    #     boundary_polyline = QgsLineString()
    #     boundary_polyline.fromWkt(shapely_multipoly_boundary.wkt)
    #     boundary_geom = QgsGeometry(boundary_polyline)
    #     return boundary_geom

    def getIntersections(self, layerCounty, outerExtents, mapAreaFeature, data):
        '''
        Gets every county that intersects the outerExtents and decides if the county will be displayed or not.
        '''
        isInternational = data.get('territorio_internacional')
        d = QgsDistanceArea()
        outerExtentsGeometry = QgsGeometry.fromRect(outerExtents)
        # contourOuterExtents = self.convertPolygonToMultilineGeometry(outerExtentsGeometry)
        countiesToDisplay = []
        mapAreaCentroid = mapAreaFeature.geometry().centroid().asPoint()
        request = QgsFeatureRequest().setFilterRect(outerExtents)
        for countyFeature in layerCounty.getFeatures(request):
            # Inside map extents
            name = countyFeature[self.nameAttribute]
            county = countyFeature[self.countyAttribute]
            country = countyFeature[self.countryAttribute]
            countyGeometry = countyFeature.geometry()
            if name and not isinstance(name, QVariant):
                # Does not display international counties if isInternational is False
                if not isInternational and country != 'BR':
                    continue
                labelTable = f'{name} - {county}'
                if isInternational:
                    labelTable = f'{labelTable} / {country}'
                _, show = self.checkRadiusPoleForLabel(countyFeature, outerExtentsGeometry, data)
                if show:
                    countyIntersection = countyGeometry.intersection(outerExtentsGeometry)
                    countyCentroid = countyIntersection.centroid().asPoint()
                    countyDict = {
                        self.nameAttribute: name,
                        self.countyAttribute: county,
                        self.countryAttribute: country,
                        'label': labelTable,
                        'area': d.measureArea(countyGeometry),
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
        if n_municipio == n_column1 or n_municipio == n_column1 + n_column2 or n_municipio == n_column1 + n_column2 + n_column3:
            return True
        else:
            return False

    def customcreateHtmlTableData(self, sortedCounties):
        nCounties = len(sortedCounties)
        nColumns = math.ceil(nCounties/self.n_maxlines)
        nColumns = 1 if nColumns == 0 else nColumns
        with open(self.htmlTablePath, "r") as f:
            baseHtml = f.read()
        fontSize = '0.6'
        if 6 < nCounties < 13:
            fontSize = '0.5'
        elif 12 < nCounties:
            fontSize = '0.4'

        nColumns, nColumn1, nColumn2, nColumn3 = self.getNColums(nCounties)

        baserows_str = '<tr {style}> {}</tr>'
        style_str = 'style="width: {value}%;"'.replace('{value}', str(round(100/nColumns, 2)))
        baserows_str = baserows_str.replace('{style}', style_str)
        basecolumn_str = '<td class = "mid" >{}</td>'

        tableColumns = []
        tableRows = []
        for municipio_index, municipio in enumerate(sortedCounties):
            n_municipio = municipio_index + 1
            cell_str = f'{n_municipio} - {municipio.upper()}'
            tableColumn = basecolumn_str.format(cell_str)
            tableColumns.append(tableColumn)
            if self.goNextColumn(municipio_index, nColumn1, nColumn2, nColumn3):
                tablerow = baserows_str.format('\n'.join(tableColumns))
                tableRows.append(tablerow)
                tableColumns = []
        tableContent = '\n'.join(tableRows)
        edited = baseHtml.format(font_size=fontSize, table_data=tableContent)
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
        #settings.fitInPolygonOnly = True #config de label text rendering "only draw label wich fit completely witihn feature"
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
        rectangleLayer = self.createVectorLayerFromIter(
            layer_name, [QgsGeometry.fromRect(grid_bound)])
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

    def updateComposition(self, composition: QgsPrintLayout, mapExtent: QgsRectangle, layersToShow: tuple[QgsVectorLayer]):
        if (mapItem:=composition.itemById("map_divisao")) is not None:
            mapItem.setExtent(mapExtent)
            mapItem.setLayers(layersToShow)
            mapItem.setCrs(QgsCoordinateReferenceSystem('EPSG:4674'))
            mapItem.refresh()

    def unsetLabel(self, layer):
        rule = QgsVectorLayerSimpleLabeling(QgsPalLayerSettings())
        layer.setLabeling(rule)

    def hideInternationalCouties(self, layerCountry):
        renderer = layerCountry.renderer()
        rootRule = renderer.rootRule()
        rootRule.children()[0].setActive(False)
        rootRule.children()[1].setActive(True)
        layerCountry.triggerRepaint()
