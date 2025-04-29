from qgis.PyQt.QtCore import QCoreApplication, QPointF
import processing
import os
from qgis.core import (QgsProcessing, QgsProcessingAlgorithm,
                       QgsProcessingParameterLayout, QgsGeometry,
                       QgsFeature, QgsVectorLayer, QgsProject,
                       QgsRectangle, QgsPointXY,
                       QgsLayoutItemMap, QgsLayoutItemShape, QgsLayoutItemPicture, QgsLayoutItemLabel, QgsProcessingParameterLayoutItem, QgsLayoutItemRegistry)

class LayoutItemsToCanvasAlgorithm(QgsProcessingAlgorithm):
    INPUT_LAYOUT = 'INPUT_LAYOUT'
    REFERENCE_MAP = 'REFERENCE_MAP'
    
    def tr(self, string):
        return QCoreApplication.translate('Processing', string)
        
    def createInstance(self):
        return LayoutItemsToCanvasAlgorithm()
        
    def name(self):
        return 'layoutitemstocanvasalgorithm'
        
    def displayName(self):
        return self.tr("Itens do Layout para o Canvas")
        
    def group(self):
        return self.tr("Auxiliar")
        
    def groupId(self):
        return 'auxiliar'
        
    def shortHelpString(self):
        return self.tr("Cria uma camada vetorial com o limite de elementos de um layout de interesse")
        
    def initAlgorithm(self, config=None):
        self.addParameter(QgsProcessingParameterLayout(self.INPUT_LAYOUT, self.tr('Input layout')))
        self.addParameter(QgsProcessingParameterLayoutItem(
            self.REFERENCE_MAP, self.tr('Mapa de referência'),
            parentLayoutParameterName=self.INPUT_LAYOUT,
            itemType=QgsLayoutItemRegistry.LayoutMap, defaultValue=None))
    def should_process_item(self, item):
        """Verifica se o item deve ser processado"""
        processable_types = (QgsLayoutItemMap, QgsLayoutItemShape, QgsLayoutItemPicture, QgsLayoutItemLabel)
        return isinstance(item, processable_types)

    def convert_layout_to_map(self, layout_x, layout_y, layout_rect, map_extent):
        """Transformação linear: Converte coordenadas do layout para coordenadas do mapa"""
        scale_x = (map_extent.xMaximum() - map_extent.xMinimum()) / (layout_rect.width())
        scale_y = (map_extent.yMaximum() - map_extent.yMinimum()) / (layout_rect.height())

        map_x = map_extent.xMinimum() + (layout_x - layout_rect.x()) * scale_x
        map_y = map_extent.yMaximum() - (layout_y - layout_rect.y()) * scale_y  # Inverter eixo Y 

        return QgsPointXY(map_x, map_y)

    def get_item_bounds(self, item, main_map, layout):
        """Obtém os limites do item no sistema de coordenadas do mapa"""
        scene_rect = item.sceneBoundingRect()

        # Obter os limites do mapa de referência
        map_extent = main_map.extent()
        layout_rect = main_map.sceneBoundingRect()  # Coordenadas do mapa no layout

        # Converter os pontos do layout para o sistema de coordenadas do mapa
        map_top_left = self.convert_layout_to_map(scene_rect.left(), scene_rect.top(), layout_rect, map_extent)
        map_bottom_right = self.convert_layout_to_map(scene_rect.right(), scene_rect.bottom(), layout_rect, map_extent)

        return QgsRectangle(map_top_left, map_bottom_right)

    def get_shape_geometry(self, item, main_map, layout):
        """Retorna a geometria da forma (QgsLayoutItemShape) como polígono"""
        scene_rect = item.sceneBoundingRect()
        map_extent = main_map.extent()
        layout_rect = main_map.sceneBoundingRect()

        points = [
            self.convert_layout_to_map(scene_rect.left(), scene_rect.top(), layout_rect, map_extent),
            self.convert_layout_to_map(scene_rect.right(), scene_rect.top(), layout_rect, map_extent),
            self.convert_layout_to_map(scene_rect.right(), scene_rect.bottom(), layout_rect, map_extent),
            self.convert_layout_to_map(scene_rect.left(), scene_rect.bottom(), layout_rect, map_extent),
            self.convert_layout_to_map(scene_rect.left(), scene_rect.top(), layout_rect, map_extent)  # Fechar o polígono
        ]

        return QgsGeometry.fromPolygonXY([points])

    def get_map_bounds_geometry(self, main_map, layout):
        """Retorna os limites do mapa de referência como polígono"""
        map_extent = main_map.extent()
        layout_rect = main_map.sceneBoundingRect()

        points = [
            self.convert_layout_to_map(layout_rect.left(), layout_rect.top(), layout_rect, map_extent),
            self.convert_layout_to_map(layout_rect.right(), layout_rect.top(), layout_rect, map_extent),
            self.convert_layout_to_map(layout_rect.right(), layout_rect.bottom(), layout_rect, map_extent),
            self.convert_layout_to_map(layout_rect.left(), layout_rect.bottom(), layout_rect, map_extent),
            self.convert_layout_to_map(layout_rect.left(), layout_rect.top(), layout_rect, map_extent)  # Fechar o polígono
        ]

        return QgsGeometry.fromPolygonXY([points])

    def processAlgorithm(self, parameters, context, feedback):
        layout = self.parameterAsLayout(parameters, self.INPUT_LAYOUT, context)
        reference_map = self.parameterAsLayoutItem(parameters, self.REFERENCE_MAP, context, layout)
        reference_map_id = reference_map.id()
        outputs = {}
        script_directory = os.path.dirname(__file__)
        assets_path = os.path.join(script_directory, 'layout_canvas_style')

        if not layout:
            raise QgsProcessingException('Layout not found')

        crs = QgsProject.instance().crs().toWkt()
        memory_layer = QgsVectorLayer(f"Polygon?crs={crs}", "Layout_Bounds", "memory")
        memory_layer.startEditing()

        main_map = next((item for item in layout.items() if isinstance(item, QgsLayoutItemMap) and item.id() == reference_map_id), None)

        if not main_map:
            feedback.reportError(f'Error: Map with ID "{reference_map_id}" not found in layout.', fatalError=True)
            return {}

        feedback.pushInfo(f'Reference map found: {reference_map_id}')
        ref_scale = main_map.scale()

        features_added = 0

        # Adicionando os limites do mapa
        map_bounds_geometry = self.get_map_bounds_geometry(main_map, layout)
        if map_bounds_geometry and not map_bounds_geometry.isNull():
            feature = QgsFeature()
            feature.setGeometry(map_bounds_geometry)
            if memory_layer.addFeature(feature):
                features_added += 1
                feedback.pushInfo('Map bounds feature added successfully.')

        # Processando outros itens do layout
        for item in layout.items():
            if item is None:
                continue

            if not self.should_process_item(item):
                continue
            feedback.pushInfo(f'Processing item: {item.id()} (Type: {type(item).__name__})')

            if isinstance(item, QgsLayoutItemMap):
                item.setScale(ref_scale)

            if isinstance(item, QgsLayoutItemShape):
                geometry = self.get_shape_geometry(item, main_map, layout)
            elif isinstance(item, QgsLayoutItemPicture) or isinstance(item, QgsLayoutItemLabel):
                bounds = self.get_item_bounds(item, main_map, layout)
                geometry = QgsGeometry.fromRect(bounds)

            feedback.pushInfo(f'Item bounds: {geometry.asWkt()}')

            if geometry and not geometry.isNull():
                feature = QgsFeature()
                feature.setGeometry(geometry)
                if memory_layer.addFeature(feature):
                    features_added += 1
                    feedback.pushInfo(f'Feature added successfully for {item.id()}')
                else:
                    feedback.pushInfo(f'Failed to add feature for {item.id()}')

            if features_added > 1000:
                feedback.reportError("Too many elements processed. Stopping for performance reasons.", fatalError=True)
                return {'OUTPUT': memory_layer}

        memory_layer.commitChanges()
        feedback.pushInfo(f'Total features added: {features_added}')

        QgsProject.instance().addMapLayer(memory_layer)

        # Adiciona o estilo à camada
        alg_params = {
            'INPUT': memory_layer,
            'STYLE': os.path.join(assets_path,'layoutItemsStyle.qml')
        }
        outputs['SetLayerStyle'] = processing.run('native:setlayerstyle', alg_params, context=context, feedback=feedback, is_child_algorithm=True)

        return {'OUTPUT': memory_layer}
    
    

