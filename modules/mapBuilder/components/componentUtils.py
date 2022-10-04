import re
from pathlib import Path

from numpy import ndarray, array, asarray, dot, cov, array, finfo, min as npmin, max as npmax
from numpy.linalg import eigh, norm

from PyQt5.QtCore import QPointF, QSettings
from PyQt5.QtXml import QDomDocument
from qgis.core import (QgsCoordinateReferenceSystem, QgsFeature, QgsGeometry,
                       QgsLayout, QgsLayoutItem, QgsLayoutPoint,QgsCoordinateTransform,
                       QgsPrintLayout, QgsProject, QgsRasterLayer, QgsRectangle, QgsCoordinateTransformContext,
                       QgsReadWriteContext, QgsVectorLayer)

from ..factories.gridFactory.gridFactory import GridFactory


class ComponentUtils:

    def __init__(self, *args, **kwargs):
        pass

    def getPrintLayoutFromQptPath(self, path, newValue):
        '''
        Returns a QgsPrintLayout from a template indicated by path.
        Also sets the composition variable 'variableNames' to newvalue
        '''
        # Load template from file
        layout = QgsPrintLayout(QgsProject.instance())
        # self.updateQptVariables(layout, newValue)
        # layout.initializeDefaults()
        with open(path) as template:
            templateContent = template.read()
        doc = QDomDocument()
        doc.setContent(templateContent)

        # adding to existing items
        #items, ok = layout.loadFromTemplate(doc, QgsReadWriteContext(), False)
        layout.loadFromTemplate(doc, QgsReadWriteContext())
        self.updateQptVariables(layout, str(newValue))
        return layout

    def updateQptVariables(self, composition, newValue, defaultKey='productFolder'):
        '''Sets composition variables
        '''
        commonFolderPropertyKey = 'commonFolder'
        commonFolderPropertyValue = str(Path(__file__).parent.parent / 'produtos' / 'common')
        if 'variableNames' in composition.customProperties():
            keys = composition.customProperty('variableNames')
            values = composition.customProperty('variableValues')
            keyIndex = -1
            if defaultKey in keys:
                keyIndex = keys.index(defaultKey)
                if isinstance(values, str):
                    values = newValue
                else:
                    values[keyIndex] = newValue
                composition.setCustomProperty('variableValues', values)
            else:
                keys.append(defaultKey)
                values.append(newValue)
                composition.setCustomProperty('variableNames', keys)
                composition.setCustomProperty('variableValues', values)
        else:
            composition.setCustomProperty('variableNames', [defaultKey, commonFolderPropertyKey])
            composition.setCustomProperty('variableValues', [newValue, commonFolderPropertyValue])

    def loadShapeLayer(self, pathShp: Path, pathStyle: Path, lyrName: str) -> QgsVectorLayer:
        if pathShp.is_file():
            layer = QgsVectorLayer(str(pathShp), lyrName, 'ogr')
            if layer.isValid():
                if pathStyle and isinstance(pathStyle, Path) and pathStyle.is_file():
                    layer.loadNamedStyle(str(pathStyle))
                    layer.triggerRepaint()
                layer.setProviderEncoding(u'UTF-8')
                layer.dataProvider().setEncoding(u'UTF-8')
            return layer
        else:
            return None

    def createLayersRasters(self, listDictImages):
        imageLayers = []
        imageLayersIDs = []
        for dictImage in listDictImages:
            rasterPath = dictImage.get('caminho_imagem')
            stylePath = dictImage.get('caminho_estilo')
            epsg = dictImage.get('epsg')
            if rasterLayer:= self.createLayerRaster(rasterPath, stylePath):
                if epsg:
                    epsgId = QgsCoordinateReferenceSystem(f'EPSG:{epsg}')
                    rasterLayer.setCrs(epsgId)
                imageLayers.insert(0, (rasterLayer))
                imageLayersIDs.insert(0, (rasterLayer.id()))
                QgsProject.instance().addMapLayer(rasterLayer, False)
        return imageLayers, imageLayersIDs

    def createLayerRaster(self, rasterPath, stylePath=None):
        rasterLayer = self.getRasterLayerByType(rasterPath)
        if not rasterLayer or not rasterLayer.isValid():
            return None
        elif stylePath:
            rasterLayer.loadNamedStyle(stylePath)
        rasterLayer.triggerRepaint()
        return rasterLayer

    def deleteGroups(self, groups):
        root = QgsProject.instance().layerTreeRoot()
        for groupToDelete in groups:
            root.removeChildNode(root.findGroup(groupToDelete))

    def getRasterLayerByType(self, rasterUri):
        if 'type=xyz' in rasterUri:
            expression = re.compile(r'type=xyz&url=https?:\/\/(.+?)&zmax=\d{1,2}&zmin=\d{1,2}')
            if found := expression.findall(rasterUri):
                return QgsRasterLayer(rasterUri, found[0], 'wms')
        else:
            rasterPath = Path(rasterUri)
            return QgsRasterLayer(str(rasterPath), rasterPath.stem) 

    def loadStyleToLayer(self, layer, stylePath):
        if layer.isValid():
            layer.loadNamedStyle(str(stylePath))
            layer.triggerRepaint()

    def setProjectProjection(self, projection="useProject"):
        settings = QSettings()
        oldProjValue = settings.value("/Projections/defaultBehavior", "prompt", type=str)
        settings.setValue("/Projections/defaultBehavior", projection)
        return oldProjValue

    def createGridLayer(self, inom):
        utmGrid = GridFactory()
        gridLayer, _ = utmGrid.get_neighbors_inom(inom)
        return gridLayer

    def createVectorLayerFromIter(self, layerName, iterable):
        '''
        Creates a vector layer from an Iterable[QgsGeometry,QgsFeature].
        Uses EPSG:4674, and has Polygon type.
        '''
        layer = QgsVectorLayer('Polygon?crs=EPSG:4674', layerName, 'memory')
        layerProvider = layer.dataProvider()
        featsToAdd = list()
        if not hasattr(iterable, '__iter__'):
            return layer
        for item in iterable:
            if isinstance(item, QgsFeature):
                feat = QgsFeature(item)
                featsToAdd.append(feat)
            elif isinstance(item, QgsGeometry):
                feat = QgsFeature()
                feat.setGeometry(item)
                featsToAdd.append(feat)
        layerProvider.addFeatures(featsToAdd)
        return layer
    
    @staticmethod
    def cloneVectorLayer(layer, layerName, customDataProviderUri=None):
        dataProviderUri = layer.dataProvider().dataSourceUri() if customDataProviderUri is None else customDataProviderUri
        copyLayer = QgsVectorLayer(dataProviderUri, layerName, 'memory')
        copyLayerDataProvider = copyLayer.dataProvider()
        renameDict = {x:layer.attributeDisplayName(x) for x in layer.attributeList()}
        copyLayerDataProvider.renameAttributes(renameDict)
        copyLayer.updateFields()
        copyLayerDataProvider.addFeatures(layer.getFeatures())
        return copyLayer

    @staticmethod
    def cloneVectorLayerReproject(layer, layerName, crsDest):
        dataProviderUri = layer.dataProvider().dataSourceUri()
        dataProviderUri = dataProviderUri.replace(layer.crs().authid(), crsDest.authid())
        copyLayer = QgsVectorLayer(dataProviderUri, layerName, 'memory')
        copyLayerDataProvider = copyLayer.dataProvider()
        renameDict = {x:layer.attributeDisplayName(x) for x in layer.attributeList()}
        copyLayerDataProvider.renameAttributes(renameDict)
        copyLayer.updateFields()
        transform = QgsCoordinateTransform(layer.crs(), crsDest, QgsProject.instance())
        _tmp = []
        for feat in layer.getFeatures():
            geom = feat.geometry()
            geom.transform(transform)
            feat.setGeometry(geom)
            _tmp.append(feat)
        copyLayerDataProvider.addFeatures(_tmp)
        return copyLayer

    def transformGeometry(self, geom: QgsGeometry, src: str, dest: str):
        '''Apply a QgsCoordinateTransform to a QgsGeometry. The transformation is made inplace.
        src and dst are (str) epsg definitions in the format EPSG:4326, for example.
        Args:
            geom (QgsGeometry): geometry to be (inplace) transformed
            src (str): Source Coordinate Reference System definition (Example: 'EPSG:4674', 'EPSG:31982')
            dest (str): Dest Coordinate Reference System definition (Example: 'EPSG:4674', 'EPSG:31982')
        '''
        if 'EPSG:' not in src or 'EPSG:' not in dest:
            return geom
        transformer = QgsCoordinateTransform(
            QgsCoordinateReferenceSystem(src),
            QgsCoordinateReferenceSystem(dest),
            QgsCoordinateTransformContext())
        geom.transform(transformer)
        return geom

def cloneItem(item, composition_dest, x_0, y_0):
    ref_point = item.referencePoint()
    item.setReferencePoint(QgsLayoutItem.UpperLeft)
    original_x = item.pagePos().x()
    original_y = item.pagePos().y()
    final_x = original_x + x_0
    final_y = original_y + y_0

    # Create doc xml
    doc = QDomDocument('Clipboard')
    element = doc.createElement('Copied items')
    context = QgsReadWriteContext()
    item.writeXml(element, doc, context)

    # Add doc xml
    composition_dest.addItemsFromXml(element, doc, context, QPointF(final_x, final_y))
    composition_dest.itemById(item.id()).attemptMove(QgsLayoutPoint(final_x, final_y))
    composition_dest.itemById(item.id()).refresh()
    item.setReferencePoint(ref_point)

def copyQptToCompositor(composition_dest, qptDict):
    project = QgsProject()
    layout = QgsLayout(project)
    with open(qptDict['caminho'], 'rt') as myTemplateFile:
        myTemplateContent = myTemplateFile.read()
    doc = QDomDocument()
    doc.setContent(myTemplateContent)

    items, sucess = layout.loadFromTemplate(doc, QgsReadWriteContext(), False)
    if sucess:
        for item in items:
            cloneItem(item, composition_dest, qptDict['x_0'], qptDict['y_0'])

class OBB:
    '''
    From https://github.com/pboechat/pyobb/blob/master/pyobb/obb.py
    '''
    def __init__(self):
        self.rotation = None
        self.min = None
        self.max = None

    def transform(self, point):
        return dot(array(point), self.rotation)

    @property
    def centroid(self):
        return self.transform((self.min + self.max) / 2.0)

    @property
    def extents(self):
        return abs(self.transform((self.max - self.min) / 2.0))

    @property
    def rectangle(self):
        pMin = self.transform((self.min[0], self.min[1]))
        pMax = self.transform((self.max[0], self.max[1]))
        return QgsRectangle(
            pMin[0],
            pMin[1],
            pMax[0],
            pMax[1]
        )

    @classmethod
    def build_from_covariance_matrix(cls, covariance_matrix, points):
        if not isinstance(points, ndarray):
            points = array(points, dtype=float)

        obb = OBB()

        _, eigen_vectors = eigh(covariance_matrix)

        def try_to_normalize(v):
            n = norm(v)
            if n < finfo(float).resolution:
                raise ZeroDivisionError
            return v / n

        r = try_to_normalize(eigen_vectors[:, 0])
        u = try_to_normalize(eigen_vectors[:, 1])

        obb.rotation = array((r, u)).T

        p_primes = asarray([obb.rotation.dot(p) for p in points])
        obb.min = npmin(p_primes, axis=0)
        obb.max = npmax(p_primes, axis=0)

        return obb

    @classmethod
    def build_from_points(cls, points):
        if not isinstance(points, ndarray):
            points = array(points, dtype=float)
        return OBB.build_from_covariance_matrix(cov(points, y=None, rowvar=0, bias=1), points)

    @classmethod
    def build_from_geom(cls, geom: QgsGeometry):
        geomWkt = geom.asWkt()
        if geom.isMultipart():
            coordsTxt = geomWkt.replace('MultiPolygon ', '').replace(')', '').replace('(', '').split(',')
        else:
            coordsTxt = geomWkt.replace('Polygon ', '').replace(')', '').replace('(', '').split(',')
        npCoords = [[float(x.strip().split(' ')[0]),float(x.strip().split(' ')[1])] for x in coordsTxt]
        return OBB.build_from_covariance_matrix(cov(npCoords, y=None, rowvar=0, bias=1), npCoords)