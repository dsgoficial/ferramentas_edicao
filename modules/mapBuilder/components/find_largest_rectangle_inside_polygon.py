import numpy as np
from qgis.core import (QgsGeometry, QgsPointXY, QgsWkbTypes, QgsRasterLayer,
                       QgsVectorLayer, QgsFeature, QgsProject,
                       QgsCoordinateReferenceSystem, QgsField)
from qgis import processing
from qgis.utils import iface
from qgis.PyQt.QtCore import QVariant

class RasterLabelPositioner:
    def __init__(self, moldura_geometry, polygon_individual, text_width_cells=5, text_height_cells=5):
        self.moldura = moldura_geometry
        self.polygon = polygon_individual
        self.text_width_cells = text_width_cells
        self.text_height_cells = text_height_cells
        
        # Use moldura bounds for grid definition
        bbox = self.moldura.boundingBox()
        self.min_x = bbox.xMinimum()
        self.max_x = bbox.xMaximum()
        self.min_y = bbox.yMinimum()
        self.max_y = bbox.yMaximum()
        
        self.grid_size = 100
        self.interval_x = (self.max_x - self.min_x) / self.grid_size
        self.interval_y = (self.max_y - self.min_y) / self.grid_size
    
    def create_matrix_from_raster(self, layer):
        temp_layer = QgsVectorLayer("Polygon", "temp_polygon", "memory")
        provider = temp_layer.dataProvider()
        
        feature = QgsFeature()
        feature.setGeometry(self.polygon)
        provider.addFeatures([feature])
        
        crs = layer.crs() if layer else QgsCoordinateReferenceSystem('EPSG:4326')
        temp_layer.setCrs(crs)
        
        # Use moldura extent for rasterization
        moldura_bbox = self.moldura.boundingBox()
        extent_string = f"{moldura_bbox.xMinimum()},{moldura_bbox.xMaximum()},{moldura_bbox.yMinimum()},{moldura_bbox.yMaximum()}"
        
        params = {
            'INPUT': temp_layer,
            'FIELD': '',
            'BURN': 1,
            'DATA_TYPE': 0,
            'EXTENT': extent_string,
            'EXTRA': '',
            'HEIGHT': self.grid_size,
            'INIT': None,
            'INVERT': False,
            'NODATA': 0,
            'OPTIONS': '',
            'OUTPUT': 'TEMPORARY_OUTPUT',
            'UNITS': 0,
            'USE_Z': False,
            'WIDTH': self.grid_size
        }
        
        result = processing.run("gdal:rasterize", params)
        raster_layer = QgsRasterLayer(result['OUTPUT'], 'temp_raster')
        
        if not raster_layer.isValid():
            raise Exception("Failed to create raster")
        
        provider = raster_layer.dataProvider()
        block = provider.block(1, raster_layer.extent(), 
                              raster_layer.width(), raster_layer.height())
        
        matrix = np.zeros((self.grid_size, self.grid_size), dtype=np.uint8)
        
        for row in range(self.grid_size):
            for col in range(self.grid_size):
                value = block.value(row, col)
                matrix[self.grid_size - 1 - row, col] = 1 if value == 1 else 0
        
        del raster_layer
        return matrix
    
    def find_largest_rectangle(self, matrix):
        if matrix.size == 0 or np.sum(matrix) == 0:
            return None
        
        rows, cols = matrix.shape
        
        # Calculate heights for each position
        heights = np.zeros((rows, cols), dtype=int)
        heights[0] = matrix[0]
        
        for i in range(1, rows):
            heights[i] = np.where(matrix[i] == 1, heights[i-1] + 1, 0)
        
        max_area = 0
        best_rect = None
        
        for i in range(rows):
            area, left, right, height = self._largest_rectangle_in_histogram(heights[i])
            
            # Check constraints: min width, min height, width >= height
            width = right - left + 1 if area > 0 else 0
            if (area > max_area and height >= self.text_height_cells and 
                width >= self.text_width_cells and width >= height):
                max_area = area
                top_row = i - height + 1
                bottom_row = i
                best_rect = (top_row, bottom_row, left, right)
        
        return best_rect
    
    def _largest_rectangle_in_histogram(self, heights):
        stack = []
        max_area = 0
        best_result = (0, 0, 0, 0)
        
        for i, h in enumerate(heights):
            while stack and heights[stack[-1]] > h:
                height_idx = stack.pop()
                height = heights[height_idx]
                width = i if not stack else i - stack[-1] - 1
                
                if (height >= self.text_height_cells and width >= self.text_width_cells 
                    and width >= height):
                    area = height * width
                    if area > max_area:
                        max_area = area
                        left = stack[-1] + 1 if stack else 0
                        right = i - 1
                        best_result = (area, left, right, height)
            
            stack.append(i)
        
        while stack:
            height_idx = stack.pop()
            height = heights[height_idx]
            width = len(heights) if not stack else len(heights) - stack[-1] - 1
            
            if (height >= self.text_height_cells and width >= self.text_width_cells 
                and width >= height):
                area = height * width
                if area > max_area:
                    max_area = area
                    left = stack[-1] + 1 if stack else 0
                    right = len(heights) - 1
                    best_result = (area, left, right, height)
        
        return best_result
    
    def get_label_position(self, layer=None):
        matrix = self.create_matrix_from_raster(layer)
        largest_rect = self.find_largest_rectangle(matrix)
        
        # print(f"Debug: Largest rectangle: {largest_rect}")
        if largest_rect is None:
            return {'success': False}
        
        top_row, bottom_row, left_col, right_col = largest_rect
        
        rect_width_cells = right_col - left_col + 1
        rect_height_cells = bottom_row - top_row + 1
        
        center_col = (left_col + right_col) / 2.0
        center_row = (top_row + bottom_row) / 2.0
        
        center_x = self.min_x + center_col * self.interval_x
        center_y = self.min_y + center_row * self.interval_y
        
        # Create rectangle geometry
        rect_x1 = self.min_x + left_col * self.interval_x
        rect_y1 = self.min_y + top_row * self.interval_y
        rect_x2 = self.min_x + (right_col + 1) * self.interval_x
        rect_y2 = self.min_y + (bottom_row + 1) * self.interval_y
        
        rect_points = [
            QgsPointXY(rect_x1, rect_y1),
            QgsPointXY(rect_x2, rect_y1),
            QgsPointXY(rect_x2, rect_y2),
            QgsPointXY(rect_x1, rect_y2),
            QgsPointXY(rect_x1, rect_y1)
        ]
        rectangle_geometry = QgsGeometry.fromPolygonXY([rect_points])
        center_point_geometry = QgsGeometry.fromPointXY(QgsPointXY(center_x, center_y))
        
        return {
            'success': True,
            'center_point_geometry': center_point_geometry,
            'rectangle_geometry': rectangle_geometry,
            'width_cells': rect_width_cells,
            'height_cells': rect_height_cells
        }


def quebrar_texto_central(texto):
    """Quebra texto no espaço mais central para balancear as linhas"""
    espacos = [i for i, char in enumerate(texto) if char == ' ']
    
    if not espacos:
        return (texto, '')
    
    meio = len(texto) / 2.0
    melhor_espaco = min(espacos, key=lambda x: abs(x - meio))
    
    linha1 = texto[:melhor_espaco].strip()
    linha2 = texto[melhor_espaco + 1:].strip()
    
    return (linha1, linha2)


def calcular_dimensoes_texto(texto, linhas):
    """Calcula dimensões em células do grid para o texto (3 células/letra, 5 células/linha)"""
    if linhas == 1:
        width = len(texto) * 3
        height = 5
    else:  # linhas == 2
        if isinstance(texto, tuple):
            width = max(len(texto[0]), len(texto[1])) * 3
        else:
            linha1, linha2 = quebrar_texto_central(texto)
            width = max(len(linha1), len(linha2)) * 3
        height = 10
    
    return (width, height)


def escolher_melhor_opcao(nome, sigla, moldura_geometry, polygon_geometry, layer):
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
        width, height = calcular_dimensoes_texto(texto, linhas)
        
        positioner = RasterLabelPositioner(
            moldura_geometry, 
            polygon_geometry, 
            text_width_cells=width,
            text_height_cells=height
        )
        
        result = positioner.get_label_position(layer)
        
        if result['success']:
            # Adiciona informações sobre o texto escolhido
            if tipo == "nome_2_linhas":
                linha1, linha2 = quebrar_texto_central(texto)
                result['texto_final'] = f"{linha1}\n{linha2}"
                result['linhas'] = 2
            else:
                result['texto_final'] = texto
                result['linhas'] = 1
            
            result['tipo_texto'] = tipo
            return result
    
    return {'success': False}


# def find_layer_by_name(layer_name):
#     """Encontra camada por nome no projeto QGIS"""
#     layers = QgsProject.instance().mapLayers().values()
#     for layer in layers:
#         if layer.name().lower() == layer_name.lower():
#             return layer
#     return None


# def find_largest_rectangles_clipped():
#     """Função principal para processar polígonos de estado clipados com moldura"""
#     try:
#         # Busca camadas obrigatórias
#         moldura_layer = find_layer_by_name('moldura')
#         estado_layer = find_layer_by_name('estado')
        
#         if not moldura_layer or not estado_layer:
#             print("ERROR: Layers 'moldura' and 'estado' are required!")
#             return
        
#         if moldura_layer.type() != 0 or estado_layer.type() != 0:
#             print("ERROR: Both layers must be vector layers!")
#             return
        
#         # Valida campos obrigatórios
#         field_names = [field.name().lower() for field in estado_layer.fields()]
#         if 'nome' not in field_names or 'sigla' not in field_names:
#             print("ERROR: Estado layer must have 'nome' and 'sigla' attributes!")
#             return
        
#         # Obtém geometria da moldura
#         moldura_features = list(moldura_layer.getFeatures())
#         if not moldura_features:
#             print("ERROR: Moldura layer is empty!")
#             return
        
#         moldura_geometry = moldura_features[0].geometry()
        
#         if moldura_geometry.type() != QgsWkbTypes.PolygonGeometry:
#             print("ERROR: Moldura must be polygon geometry!")
#             return
        
#         # Cria camadas de resultado
#         crs_authid = estado_layer.crs().authid()
        
#         rect_layer = QgsVectorLayer(f"Polygon?crs={crs_authid}", 
#                                    "Largest Rectangles", "memory")
#         point_layer = QgsVectorLayer(f"Point?crs={crs_authid}", 
#                                     "Rectangle Centers", "memory")
        
#         # Define campos dos atributos
#         fields = [
#             QgsField('nome', QVariant.String, 'varchar', 100),
#             QgsField('sigla', QVariant.String, 'varchar', 10),
#             QgsField('texto_final', QVariant.String, 'varchar', 150),
#             QgsField('tipo_texto', QVariant.String, 'varchar', 20),
#             QgsField('linhas', QVariant.Int, 'integer'),
#             QgsField('width_cells', QVariant.Int, 'integer'),
#             QgsField('height_cells', QVariant.Int, 'integer')
#         ]
        
#         rect_layer.dataProvider().addAttributes(fields)
#         point_layer.dataProvider().addAttributes(fields)
#         rect_layer.updateFields()
#         point_layer.updateFields()
        
#         rect_features = []
#         point_features = []
        
#         # Processa cada polígono de estado
#         for feature in estado_layer.getFeatures():
#             geometry = feature.geometry()
            
#             if geometry.type() != QgsWkbTypes.PolygonGeometry:
#                 continue
            
#             nome = feature['nome'] if feature['nome'] else ''
#             sigla = feature['sigla'] if feature['sigla'] else ''
            
#             if not nome:
#                 continue
            
#             # Clipa polígono com moldura
#             clipped_geometry = geometry.intersection(moldura_geometry)
            
#             if clipped_geometry.isEmpty() or clipped_geometry.type() != QgsWkbTypes.PolygonGeometry:
#                 continue
            
#             # Encontra melhor opção de posicionamento
#             result = escolher_melhor_opcao(nome, sigla, moldura_geometry, clipped_geometry, estado_layer)
            
#             if result['success']:
#                 # Prepara atributos limpos
#                 texto_limpo = result['texto_final'].replace('\\n', ' | ').replace('\n', ' | ')
#                 attributes = [
#                     str(nome),
#                     str(sigla),
#                     str(texto_limpo),
#                     str(result['tipo_texto']),
#                     int(result['linhas']),
#                     int(result['width_cells']),
#                     int(result['height_cells'])
#                 ]
                
#                 # Cria features
#                 rect_feature = QgsFeature(rect_layer.fields())
#                 rect_feature.setGeometry(result['rectangle_geometry'])
#                 rect_feature.setAttributes(attributes)
#                 rect_features.append(rect_feature)
                
#                 point_feature = QgsFeature(point_layer.fields())
#                 point_feature.setGeometry(result['center_point_geometry'])
#                 point_feature.setAttributes(attributes)
#                 point_features.append(point_feature)
        
#         # Adiciona camadas ao projeto
#         if rect_features:
#             rect_layer.dataProvider().addFeatures(rect_features)
#             rect_layer.updateExtents()
#             QgsProject.instance().addMapLayer(rect_layer)
        
#         if point_features:
#             point_layer.dataProvider().addFeatures(point_features)
#             point_layer.updateExtents()
#             QgsProject.instance().addMapLayer(point_layer)
        
#         print(f"Processed {len(rect_features)} polygons successfully")
            
#     except Exception as e:
#         print(f"ERROR: {str(e)}")
#         import traceback
#         traceback.print_exc()


# find_largest_rectangles_clipped()