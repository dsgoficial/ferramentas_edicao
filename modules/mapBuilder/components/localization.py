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
from pathlib import Path
from qgis.core import (
    QgsCoordinateReferenceSystem,
    QgsFeature,
    QgsFeatureRequest,
    QgsGeometry,
    QgsLayerTreeGroup,
    QgsPrintLayout,
    QgsProject,
    QgsRectangle,
    QgsVectorLayer,
    QgsPointXY,
    QgsField,
    QgsWkbTypes,
)

from qgis.PyQt.QtCore import QMetaType
from ....config.logging_setup import get_logger
from ....interfaces.iComponent import IComponent
from .buildContext import BuildContext
from .componentUtils import ComponentUtils

logger = get_logger(__name__)
from .find_largest_rectangle_inside_polygon import RasterLabelPositioner

class Localization(ComponentUtils, IComponent):
    def __init__(self, *args, **kwargs):
        self.stylesFolder = (
            Path(__file__).parent.parent / "resources" / "styles" / "localization"
        )
        self.shpFolder = Path(__file__).parent.parent / "resources" / "limits" / "2025"
        self.stateShpPath = self.shpFolder / "Estados_2025.shp"

    def build(self, context: BuildContext):
        composition = context.composition
        data = context.data
        mapAreaFeature = context.mapAreaFeature
        showLayers = context.showLayers
        mapIDsToBeDisplayed = []
        instance = QgsProject.instance()
        isInternational = bool(data.get("territorio_internacional"))

        # Creating layer for mapArea
        mapAreaBoundingBox = mapAreaFeature.geometry().boundingBox()
        mapAreaLayer = self.createGridRectangle(
            mapAreaBoundingBox, data, "localizationMapArea"
        )
        mapIDsToBeDisplayed.append(mapAreaLayer.id())

        uriPath = self.shpFolder / "Oceano_2025.shp"
        stylePath = self.stylesFolder / "oceano.qml"
        layerOcean = self.loadShapeLayer(uriPath, stylePath, "ocean")

        # Getting state layer
        uriPath = self.shpFolder / "Estados_2025.shp"
        stylePath = self.stylesFolder / "estados.qml"
        stateLayerBackground = self.loadShapeLayer(
            uriPath, stylePath, "backgroundstates"
        )
        mapExtents = self.getExtent(
            mapAreaFeature, stateLayerBackground, isInternational
        )
        # calcular escala
        if (
            len(self.estados) == 1 and mapExtents.area() < 0.5
        ):  # menor que 0.5 graus, considerar caso ilha
            mapExtents = self.getExtent2(mapAreaFeature)
        if (mapItem := composition.itemById("localization")) is not None:
            mapSize = mapItem.sizeWithUnits()
            mapItem.setFixedSize(mapSize)
            mapItem.zoomToExtent(mapExtents)
            mapItem.setCrs(QgsCoordinateReferenceSystem("EPSG:4674"))
            mapItem.refresh()
            self.scale = mapItem.scale()

        self.setupBackgroundLayer(stateLayerBackground)
        self.setLabel(stateLayerBackground, isInternational, mapExtents)

        uriPath = self.shpFolder / "Paises_2025.shp"
        stylePath = self.stylesFolder / "paises.qml"
        layerCountryArea = self.loadShapeLayer(uriPath, stylePath, "countries")
        self.setupCountryLayer(layerCountryArea)
        mapIDsToBeDisplayed.extend(
            [layerOcean.id(), layerCountryArea.id(), stateLayerBackground.id()]
        )

        layersToShow = [stateLayerBackground, layerCountryArea, layerOcean]

        self.updateComposition(composition, layersToShow, mapAreaLayer, mapExtents)
        # # Adding layers
        for layer in layersToShow:
            instance.addMapLayer(layer, False)

        instance.addMapLayer(mapAreaLayer, False)
        # Updating composition

        if showLayers:
            localizationGroupNode = QgsLayerTreeGroup("localization")
            localizationGroupNode.setItemVisibilityChecked(False)
            for layer in [mapAreaLayer, *layersToShow]:
                localizationGroupNode.addLayer(layer)
            root = instance.layerTreeRoot()
            root.addChildNode(localizationGroupNode)

        return mapIDsToBeDisplayed

    def getExtent(
        self,
        selectedFeature: QgsFeature,
        stateLayer: QgsVectorLayer,
        isInternational: bool,
    ) -> QgsRectangle:
        """Gets the component extents by checking intersections between selectedFeature and
        stateLayer.
        """
        self.estados = set()
        self.paises = set()
        geom = selectedFeature.geometry()
        geomBbox = geom.boundingBox()
        rectBounds = [geomBbox]
        request = QgsFeatureRequest().setFilterRect(geomBbox)
        for stateFeature in stateLayer.getFeatures(request):
            if not isInternational and stateFeature["SIGLA_PAIS"] != "BR":
                continue
            stateGeom = stateFeature.geometry()
            if stateGeom.isMultipart():
                parts = stateGeom.asGeometryCollection()
                for part in parts:
                    if geom.intersects(part):
                        self.estados.add(stateFeature["SIGLA_UF"])
                        self.paises.add(stateFeature["SIGLA_PAIS"])
                        rectBounds.append(part.boundingBox())
            elif geom.intersects(stateGeom):
                self.estados.add(stateFeature["SIGLA_UF"])
                self.paises.add(stateFeature["SIGLA_PAIS"])
                rectBounds.append(stateGeom.boundingBox())
        bound = rectBounds[0]
        if len(rectBounds) > 1:
            for stateBound in rectBounds[1:]:
                bound.combineExtentWith(stateBound)
        bound.grow(0.1)
        return bound

    def getExtent2(self, mapAreaFeature: QgsFeature):
        gridBound = mapAreaFeature.geometry().boundingBox()
        x_min, x_max = gridBound.xMinimum(), gridBound.xMaximum()
        delta = round(abs(x_max - x_min) * 60)
        angle_spliter = delta
        centroid = mapAreaFeature.geometry().centroid()
        x = centroid.asPoint().x()
        x_min = x - (1 / 60) * angle_spliter
        x_max = x + (1 / 60) * angle_spliter
        y = centroid.asPoint().y()
        y_min = y - (1 / 60) * angle_spliter
        y_max = y + (1 / 60) * angle_spliter
        return QgsRectangle(x_min, y_min, x_max, y_max)

    def createGridRectangle(
        self, mapBounds: QgsRectangle, data: dict, layerName: str
    ) -> QgsVectorLayer:
        """Creates the mapArea layer for this component by using mapBounds.
        Also sets its style.
        """
        productType = data.get("productType")
        mapBoundsLayer = self.createVectorLayerFromIter(
            layerName, [QgsGeometry.fromRect(mapBounds)]
        )
        if productType == "omMap":
            stylePath = self.stylesFolder / "localizationMapAreaForOmMap.qml"
        else:
            stylePath = self.stylesFolder / "localizationMapArea.qml"
        self.loadStyleToLayer(mapBoundsLayer, stylePath)
        return mapBoundsLayer

    def createStateRule(self, rootRule, label):
        """
        Creates a copy of the root rule and sets its filter expression based on the field SIGLA_UF
        """
        rule = rootRule.children()[0].clone()
        rule.setLabel(label)
        expression = " \"SIGLA_UF\" = '{}'".format(label)
        rule.setFilterExpression(expression)
        return rule

    def setupBackgroundLayer(self, stateLayer: QgsVectorLayer):
        """
        Sets symbol rules for background layer in localization component
        """
        stateLayer.startEditing()
        for f in stateLayer.getFeatures():
            if f["SIGLA_UF"] in self.estados:
                f["SELECT"] = 1
            if f["SIGLA_PAIS"] in self.paises:
                f["SHOW"] = 1
            stateLayer.updateFeature(f)
        stateLayer.commitChanges()
        stateLayer.triggerRepaint()

    def setupCountryLayer(self, countryLayer: QgsVectorLayer):
        countryLayer.startEditing()
        for f in countryLayer.getFeatures():
            if f["sigla"] in self.paises:
                f["SELECT"] = 1
            countryLayer.updateFeature(f)
        countryLayer.commitChanges()
        countryLayer.triggerRepaint()

    def setLabel(
        self, stateLayer: QgsVectorLayer, isInternational, mapExtents=QgsRectangle()
    ):
        """
        Sets label rules for layer in localization component
        """
        # Getting base rule
        if isInternational:
            # pass
            stateLayer.startEditing()
            for f in stateLayer.getFeatures():
                f["NOME"] = f["NOME"] + " - " + f["SIGLA_PAIS"]
                stateLayer.updateFeature(f)
            stateLayer.commitChanges()
        if mapExtents != QgsRectangle():
            stateLayer.startEditing()
            extent = QgsGeometry().fromRect(mapExtents)
            mapExtents = self.squareOutsideRectangle(mapExtents)
            localization_extent = QgsGeometry().fromRect(mapExtents)
            request = QgsFeatureRequest().setFilterRect(mapExtents)

            try:                    
                # Cria camadas de resultado
                crs_authid = stateLayer.crs().authid()
                
                rect_layer = QgsVectorLayer(f"Polygon?crs={crs_authid}", 
                                        "Largest Rectangles", "memory")
                point_layer = QgsVectorLayer(f"Point?crs={crs_authid}", 
                                            "Rectangle Centers", "memory")
                
                # Define campos dos atributos
                fields = [
                    QgsField('nome', QMetaType.Type.QString, 'varchar', 100),
                    QgsField('sigla', QMetaType.Type.QString, 'varchar', 10),
                    QgsField('texto_final', QMetaType.Type.QString, 'varchar', 150),
                    QgsField('tipo_texto', QMetaType.Type.QString, 'varchar', 20),
                    QgsField('linhas', QMetaType.Type.Int, 'integer'),
                    QgsField('width_cells', QMetaType.Type.Int, 'integer'),
                    QgsField('height_cells', QMetaType.Type.Int, 'integer')
                ]
                
                rect_layer.dataProvider().addAttributes(fields)
                point_layer.dataProvider().addAttributes(fields)
                rect_layer.updateFields()
                point_layer.updateFields()
                
                rect_features = []
                point_features = []
                for feature in stateLayer.getFeatures(request):
                    if len(self.estados) == 1 and feature["SIGLA_UF"] in self.estados:
                        if (
                            mapExtents.area() < 0.5
                        ):  # menor que 0.5 graus, considerar caso ilha
                            feature["SOLO"] = 1
                        stateLayer.updateFeature(feature)
                        continue
                    if feature["SIGLA_PAIS"] not in self.paises:
                        continue




                    molduraGeometry = QgsGeometry.fromRect(mapExtents)
                    geometry = feature.geometry()
                    
                    if geometry.type() != QgsWkbTypes.GeometryType.PolygonGeometry:
                        continue
                    
                    nome = feature['NOME'] if feature['NOME'] else ''
                    sigla = feature['SIGLA_UF'] if feature['SIGLA_UF'] else ''
                    
                    if not nome:
                        continue
                    
                    # Clipa polígono com moldura
                    clipped_geometry = geometry.intersection(molduraGeometry)
                    
                    if clipped_geometry.isEmpty() or clipped_geometry.type() != QgsWkbTypes.GeometryType.PolygonGeometry:
                        continue
                    
                    # Encontra melhor opção de posicionamento
                    result = self.escolher_melhor_opcao(nome, sigla, molduraGeometry, clipped_geometry, stateLayer)
                    
                    if result['success']:
                        # Prepara atributos limpos
                        texto_limpo = result['texto_final'].replace('\\n', ' | ').replace('\n', ' | ')
                        attributes = [
                            str(nome),
                            str(sigla),
                            str(texto_limpo),
                            str(result['tipo_texto']),
                            int(result['linhas']),
                            int(result['width_cells']),
                            int(result['height_cells'])
                        ]
                        
                        # Cria features
                        rect_feature = QgsFeature(rect_layer.fields())
                        rect_feature.setGeometry(result['rectangle_geometry'])
                        rect_feature.setAttributes(attributes)
                        rect_features.append(rect_feature)
                        
                        point_feature = QgsFeature(point_layer.fields())
                        point_geometry = result['center_point_geometry']
                        point_feature.setGeometry(point_geometry)
                        point_feature.setAttributes(attributes)
                        point_features.append(point_feature)
                        point = point_geometry.asPoint()
                        feature["NOME"] = result['texto_final']
                        feature["LABEL_X"] = point.x()
                        feature["LABEL_Y"] = point.y()
                        stateLayer.updateFeature(feature)
                    
                    else:
                        feature["NOME"] = ""
                        stateLayer.updateFeature(feature)
                
            except Exception as e:
                logger.error("Erro no posicionamento de rótulos: %s", e, exc_info=True)

            stateLayer.commitChanges()
        stateLayer.triggerRepaint()

    def escolher_melhor_opcao(self, nome, sigla, moldura_geometry, polygon_geometry, layer):
        """Testa opções de texto na ordem de prioridade e retorna a melhor"""
        # Define ordem de prioridade baseada no tamanho do nome
        if len(nome) >= 15:
            opcoes = [
                ("nome_2_linhas", nome, 2),
                ("nome_1_linha", nome, 1),
                ("sigla", sigla, 1)
            ]
        else:
            opcoes = [
                ("nome_1_linha", nome, 1),
                ("nome_2_linhas", nome, 2),
                ("sigla", sigla, 1)
            ]
        
        # Testa cada opção na ordem de prioridade
        for tipo, texto, linhas in opcoes:
            width, height = self.calcular_dimensoes_texto(texto, linhas)
            # print(f"Debug {sigla}: W: {width} x H: {height}")
            
            positioner = RasterLabelPositioner(
                moldura_geometry, 
                polygon_geometry, 
                text_width_cells=width,
                text_height_cells=height
            )
            
            result = positioner.get_label_position(layer)
            # print(f"Debug {sigla}: result = {result}")
            
            if result['success']:
                # Adiciona informações sobre o texto escolhido
                if tipo == "nome_2_linhas":
                    linha1, linha2 = self.quebrar_texto_central(texto)
                    result['texto_final'] = f"{linha1}\n{linha2}"
                    result['linhas'] = 2
                else:
                    result['texto_final'] = texto
                    result['linhas'] = 1
                
                result['tipo_texto'] = tipo
                # print(f"Debug {sigla}: {result['texto_final']}, linhas: {result['linhas']}")
                return result
        
        return {'success': False}
    
    def quebrar_texto_central(self, texto):
        """Quebra texto no espaço mais central para balancear as linhas"""
        espacos = [i for i, char in enumerate(texto) if char == ' ']
        
        if not espacos:
            return (texto, '')
        
        meio = len(texto) / 2.0
        melhor_espaco = min(espacos, key=lambda x: abs(x - meio))
        
        linha1 = texto[:melhor_espaco].strip()
        linha2 = texto[melhor_espaco + 1:].strip()
        
        return (linha1, linha2)


    def calcular_dimensoes_texto(self, texto, linhas):
        """Calcula dimensões em células do grid para o texto"""
        celulas_por_letra = 2.7
        celulas_por_linha = 5
        height = linhas * celulas_por_linha
        if linhas == 1:
            width = len(texto) * celulas_por_letra
        else:  # linhas == 2
            if isinstance(texto, tuple):
                width = max(len(texto[0]), len(texto[1])) * celulas_por_letra
            else:
                linha1, linha2 = self.quebrar_texto_central(texto)
                width = max(len(linha1), len(linha2)) * celulas_por_letra
        
        return (width, height)

    def squareOutsideRectangle(self, rect: QgsRectangle) -> QgsRectangle:
        # location no QPT é quadrado, e o mapExtent originalmente pode ser retangulo
        xmin = rect.xMinimum()
        ymin = rect.yMinimum()
        xmax = rect.xMaximum()
        ymax = rect.yMaximum()
        width = rect.width()
        height = rect.height()
        largest_length = max(width, height)
        center_x = (xmin + xmax) / 2.0
        center_y = (ymin + ymax) / 2.0
        new_square_xmin = center_x - largest_length / 2.0
        new_square_ymin = center_y - largest_length / 2.0
        new_square_xmax = center_x + largest_length / 2.0
        new_square_ymax = center_y + largest_length / 2.0
        return QgsRectangle(
            new_square_xmin, new_square_ymin, new_square_xmax, new_square_ymax
        )

    def truncate_string(self, input_string, max_char):
        if len(input_string) <= max_char:
            return input_string
        truncated = input_string[:max_char]
        last_space = truncated.rfind(" ")
        if last_space == -1:
            return truncated
        return truncated[:last_space]

    def text_size_six_pt_in_mm(self, text):
        points_to_mm = 0.352778
        char_widths = {
            "a": 3.0,
            "b": 3.0,
            "c": 3.0,
            "d": 3.0,
            "e": 3.0,
            "f": 2.0,
            "g": 3.0,
            "h": 3.0,
            "i": 1.5,
            "j": 1.5,
            "k": 3.0,
            "l": 1.5,
            "m": 3.5,
            "n": 3.0,
            "o": 3.0,
            "p": 3.0,
            "q": 3.0,
            "r": 2.0,
            "s": 3.0,
            "t": 2.0,
            "u": 3.0,
            "v": 3.0,
            "w": 3.5,
            "x": 3.0,
            "y": 3.0,
            "z": 3.0,
            "A": 3.5,
            "B": 3.5,
            "C": 3.5,
            "D": 3.5,
            "E": 3.5,
            "F": 3.5,
            "G": 3.5,
            "H": 3.5,
            "I": 1.5,
            "J": 3.0,
            "K": 3.5,
            "L": 3.5,
            "M": 5.0,
            "N": 3.5,
            "O": 3.5,
            "P": 3.5,
            "Q": 3.5,
            "R": 3.5,
            "S": 3.5,
            "T": 3.5,
            "U": 3.5,
            "V": 3.5,
            "W": 5.0,
            "X": 3.5,
            "Y": 3.5,
            "Z": 3.5,
            "0": 3.0,
            "1": 3.0,
            "2": 3.0,
            "3": 3.0,
            "4": 3.0,
            "5": 3.0,
            "6": 3.0,
            "7": 3.0,
            "8": 3.0,
            "9": 3.0,
            " ": 5.0,
            "/": 2.0,
            ":": 1.5,
            ";": 1.5,
            ",": 1.5,
            ".": 1.5,
            "-": 2.0,
            "_": 3.0,
            "+": 3.0,
            "=": 3.0,
            "!": 1.5,
            "?": 3.0,
            "@": 5.0,
            "#": 3.0,
            "$": 3.0,
            "%": 5.0,
            "^": 3.0,
            "&": 4.0,
            "*": 3.0,
            "(": 2.0,
            ")": 2.0,
            "[": 2.0,
            "]": 2.0,
            "{": 2.0,
            "}": 2.0,
            "<": 3.0,
            ">": 3.0,
            "|": 1.5,
            "\\": 2.0,
            "'": 1.5,
            '"': 2.0,
        }  # Estimativa ChatGPT 4o

        # Calculate the width in points
        width_in_points = sum(
            char_widths.get(char, 3.0) for char in text
        )  # Default width is 3.0 if character not found
        height_in_points = 6
        # Convert points to millimeters
        width_in_mm = width_in_points * points_to_mm
        # height_in_mm = height_in_points * points_to_mm
        return width_in_mm

    def largestRectangleOnPoint(
        self, height, center: QgsPointXY, polygon, maxWidth=5
    ) -> QgsRectangle:
        maxRect = QgsRectangle(
            center.x() - maxWidth / 2,
            center.y() - height / 2,
            center.x() + maxWidth / 2,
            center.y() + height / 2,
        )
        maxRectGeom = QgsGeometry.fromRect(maxRect)
        inter = maxRectGeom.intersection(polygon)
        minY = min(set(v.y() for v in inter.vertices()))
        maxY = max(set(v.y() for v in inter.vertices()))
        xSmaller = set(v.x() for v in inter.vertices() if v.x() < center.x())
        xBigger = set(v.x() for v in inter.vertices() if v.x() > center.x())
        minX = max(xSmaller)
        maxX = min(xBigger)
        return QgsRectangle(minX, minY, maxX, maxY)

    def updateComposition(
        self,
        composition: QgsPrintLayout,
        layersToShow: tuple[QgsVectorLayer],
        mapAreaLayer: QgsVectorLayer,
        bounds: QgsRectangle,
    ):
        if (mapItem := composition.itemById("localization")) is not None:
            mapSize = mapItem.sizeWithUnits()
            mapItem.setFixedSize(mapSize)
            mapItem.zoomToExtent(bounds)
            mapItem.setCrs(QgsCoordinateReferenceSystem("EPSG:4674"))
            mapItem.setLayers([mapAreaLayer, *layersToShow])
            mapItem.refresh()
