import json
import re
from pathlib import Path
from typing import Callable, Union, Dict, Tuple, List

from qgis import processing
from qgis.core import (
    QgsDataSourceUri,
    QgsPrintLayout,
    QgsProject,
    QgsFeature,
    QgsGeometry,
    QgsVectorLayer,
    QgsCoordinateReferenceSystem,
    QgsRasterLayer,
    QgsCoordinateTransform,
    QgsCoordinateTransformContext,
    QgsExpressionContextUtils,
)

from ..config.configDefaults import ConfigDefaults
from qgis.utils import iface


class MapBuilderUtils:
    """Utility functions for MapBuilders"""

    instance = QgsProject.instance()

    def setParams(
        self,
        jsonData: Dict,
        defaults: ConfigDefaults,
        connection: QgsDataSourceUri,
        composition: QgsPrintLayout,
        mapAreaFeature: QgsFeature,
        mapAreaLayer: QgsVectorLayer,
    ):
        """Sets necessary parameters to create the map.
        Args:
            jsonData: dict with json data + other parameters
            defaults: default settings
            connection: instance of QgsDataSourceUri which points to the database to be used
            composition: QgsPrintLayout which will hold the map components
            mapAreaFeature: QgsFeature which covers the map area
            mapAreaLayer: QgsVectorLayer that contains a mapAreaFeature
        Returns:
            None
        """
        self.data = jsonData
        self.conn = connection
        self.defaults = defaults
        self.composition = composition
        self.mapAreaFeature = mapAreaFeature
        self.mapAreaLayer = mapAreaLayer

    def getLayersFromDB(
        self,
        uri: QgsDataSourceUri,
        data: Dict,
        defaults: ConfigDefaults,
        productPath: Path,
        group: str,
        filterF: Callable,
        mapAreaFeature: Union[QgsFeature, None] = None,
    ) -> Tuple[List[QgsVectorLayer], List[str]]:
        """Reads layer from "uri". The layers to be read are defined by "productType" and "group" and filtered by "filterF",
        which is callable. If mapAreaFeature is given, it will be used as a filter query in the layer.
        Returns a tuple of two lists containing QgsMapLayers and its ids, respectively.
        Args:
            uri: URI definition holding the database info
            data: Dict holding the map info
            defaults: Dataclass holding default plugin info
            productPath: Path instance pointing to the product path
            group: map
            filterF: filter function that receives available layers and return the filtered ones
            mapAreaFeature (QgsFeature): feature holding the map area
        Returns:
            Tuple of two lists: [QgsMapLayers] and [QgsMapLayers ids]
        """
        layersList = []
        layersIDsList = []
        scale = data.get("scale")
        equidistancia = data.get("equidistancia")
        exibirAuxiliar = data.get("exibirAuxiliar")
        productType = data.get("productType")
        useLayerFilter = data.get("useLayerFilter", True)
        stylesFolder = productPath / "styles" / group
        availableLayers = self.readJsonFromPath(productPath / "camadas.json").get(group)
        availableLayers = filterF(availableLayers)
        for lyr in availableLayers:
            layer = self.getLayerFromPostgres(uri, lyr)
            if layer.isValid():
                self.instance.addMapLayer(layer, False)
                layerName = layer.dataProvider().uri().table()
                if layerName == "elemnat_curva_nivel_l":
                    QgsExpressionContextUtils.setLayerVariable(
                        layer, "equidistancia", equidistancia
                    )
                    QgsExpressionContextUtils.setLayerVariable(
                        layer, "exibir_auxiliar", exibirAuxiliar
                    )
                if useLayerFilter and mapAreaFeature:
                    mapAreaFeature = QgsFeature(mapAreaFeature)
                    mapAreaGeometry = self.transformGeometryIfNecessary(
                        mapAreaFeature.geometry(), "EPSG:4674", layer.crs().authid()
                    )
                    mapAreaGeometryWkt = mapAreaGeometry.asWkt()
                    layer.setSubsetString(
                        f"st_relate(geom,st_geomfromewkt('SRID={layer.crs().postgisSrid()};{mapAreaGeometryWkt}'),'T********')"
                    )
                if stylePath := self.getStylePath(
                    layer.name(), defaults, productType, stylesFolder, scale
                ):
                    layer.loadNamedStyle(str(stylePath), True)
                    layer.triggerRepaint()
                layersList.append(layer)
                layersIDsList.append(layer.id())
        return layersList, layersIDsList

    def getLayerFromPostgres(self, uri: QgsDataSourceUri, data: Dict) -> QgsVectorLayer:
        """Reads a vector layer from a postgres database.
        Args:
            uri: URI definition holding the database info
            data: dict holding two postgres table infos: schema and table name
        Returns:
            A vector layer
        """
        schema = data.get("schema")
        table = data.get("table")
        uri.setDataSource(schema, table, "geom")
        return QgsVectorLayer(uri.uri(False), table, "postgres")

    def classifiedMapHandler(self, composition: QgsPrintLayout, data: Dict):
        """Switches the visibility status of QgsLayoutItems that are influentiated by the "acesso_restrito" json key
        Args:
            composition: QgsPrintLayout
            data: Dict holding the map info
        """
        if data.get("acesso_restrito"):
            if item := composition.itemById("label_bdgexQR"):
                item.setVisibility(False)
            if item := composition.itemById("label_bdgexWeb"):
                item.setVisibility(False)
            if item := composition.itemById("symbol_QRCODE"):
                item.setVisibility(False)
            if item := composition.itemById("label_classified"):
                item.setVisibility(True)
            if item := composition.itemById("label_militar"):
                item.setVisibility(False)
        elif data.get("tipo_produto") in (
            "Carta Topográfica Militar",
            "Carta Ortoimagem Militar",
        ):
            if item := composition.itemById("label_bdgexQR"):
                item.setVisibility(False)
            if item := composition.itemById("label_bdgexWeb"):
                item.setVisibility(False)
            if item := composition.itemById("symbol_QRCODE"):
                item.setVisibility(False)
            if item := composition.itemById("label_classified"):
                item.setVisibility(False)
            if item := composition.itemById("label_militar"):
                item.setVisibility(True)
        else:
            if item := composition.itemById("label_bdgexQR"):
                item.setVisibility(True)
            if item := composition.itemById("label_bdgexWeb"):
                item.setVisibility(True)
            if item := composition.itemById("symbol_QRCODE"):
                item.setVisibility(True)
            if item := composition.itemById("label_classified"):
                item.setVisibility(False)
            if item := composition.itemById("label_militar"):
                item.setVisibility(False)

    def getStylePath(
        self,
        layerName: str,
        defaults: ConfigDefaults,
        productType: str,
        stylesFolder: Path,
        scale: int,
    ) -> Path:
        """Returns the style path of some layer. The style path depends on its "productType", "scale". Variables such as
        "stylesFolder" and "layerName" are also necessary to define the path.
        Args:
            layerName: layer's name string
            defaults: Dataclass holding default plugin info
            productType: orthoMap or topoMap
            stylesFolder: Path instance pointing to the styles folder
            scale: int in (25,50,100,250)
        Returns:
            Path instance containing the style path
        """
        if productType in ("orthoMap", "militaryOrthoMap"):
            basedOnScale = defaults.scaleBasedStyleOrtho
        elif productType in ("topoMap", "militaryTopoMap"):
            basedOnScale = defaults.scaleBasedStyleTopo
        elif productType == "omMap":
            basedOnScale = set()
        if layerName in basedOnScale:
            p = stylesFolder / f"{layerName}_{scale}.qml"
            p = p if p.exists() else stylesFolder / f"{layerName}.qml"
        else:
            p = stylesFolder / f"{layerName}.qml"
        if p.exists():
            return p

    def createRasterLayers(
        self, listDictImages: List[Dict]
    ) -> Tuple[List[QgsRasterLayer], List[str]]:
        instance = QgsProject.instance()
        imageLayers = []
        imageLayersIDs = []
        for dictImage in listDictImages:
            rasterPath = dictImage.get("caminho_imagem")
            stylePath = dictImage.get("caminho_estilo")
            epsg = dictImage.get("epsg")
            if rasterLayer := self.createRasterLayer(rasterPath, stylePath):
                if epsg:
                    epsgId = QgsCoordinateReferenceSystem(f"EPSG:{epsg}")
                    rasterLayer.setCrs(epsgId)
                imageLayers.insert(0, (rasterLayer))
                imageLayersIDs.insert(0, (rasterLayer.id()))
                instance.addMapLayer(rasterLayer, False)
        return imageLayers, imageLayersIDs

    def createRasterLayer(self, rasterPath: str, stylePath: str = None):
        """Creates a QgsRasterLayer using getRasterLayerByType and checks if it's valid.
        Also applies a style, when it's provided.
        Args:
            rasterPath: str with raster path
            stylePath: str with raster style path
        Returns:
            A QgsMapLayer
        """
        rasterLayer = self.getRasterLayerByType(rasterPath)
        if not rasterLayer or not rasterLayer.isValid():
            return None
        elif stylePath:
            rasterLayer.loadNamedStyle(stylePath)
        rasterLayer.triggerRepaint()
        return rasterLayer

    def getRasterLayerByType(self, rasterUri: str) -> QgsRasterLayer:
        """Returs a QgsRasterLayer based on its source: xyz or path-like.
        Args:
            rasterUri: str containing the raster path or its url (in case of xyz)
        Returns:
            A QgsRasterLayer (it may be valid or not, the caller of this function should check it)
        """
        if "type=xyz" in rasterUri:
            expression = re.compile(
                r"type=xyz&url=https?:\/\/(.+?)&zmax=\d{1,2}&zmin=\d{1,2}"
            )
            if found := expression.findall(rasterUri):
                return QgsRasterLayer(rasterUri, found[0], "wms")
        elif "GetCapabilities" in rasterUri:
            return QgsRasterLayer(rasterUri, "servico_wms", "wms")
        else:
            rasterPath = Path(rasterUri)
            return QgsRasterLayer(str(rasterPath), rasterPath.stem)

    def readJsonFromPath(self, jsonPath: Path) -> Dict:
        """Reads a json file.
        Args:
            jsonPath: json's path instance
        Returns:
            dict containig the json data
        """
        with open(jsonPath, "r", encoding="utf-8") as fp:
            data = json.load(fp)
        return data

    def deleteLayerTreeNode(self, group: str):
        """Delete LayerTreeNodes
        Args:
            group: string with group name
        """
        root = self.instance.layerTreeRoot()
        if foundGroup := root.findGroup(group):
            root.removeChildNode(foundGroup)

    def cleanProject(self, debugMode: bool = False):
        """Removes a composition from the layoutManager. Only called when not in debug mode.
        Args:
            debugMode: Boolean value holding the debugMode status
        """
        if debugMode:
            return
        if iface is not None:
            iface.newProject()
        if not hasattr(self, "composition"):
            return
        self.instance.layoutManager().removeLayout(self.composition)

    def removeLayers(self, debugMode: bool = False):
        """Removes map layers and layer tree roots. Should be called when not running in debug mode, specially when exporting multiple maps at once.
        This function is called pre-export process to remove mapLayers that won't be used and in the end of the exportation process (when not running in debug mode)
        to cleanup layers from the interface.
        Args:
            debugMode: Boolean value holding the debugMode status
        """
        if debugMode:
            return
        if iface is None:
            return
        iface.newProject(promptToSaveFlag=False)
        # if not debugMode and hasattr(self, 'layersIdsToBeRemoved') and hasattr(self, 'groupsToBeRemoved'):
        #     self.instance.removeMapLayers(self.layersIdsToBeRemoved)
        #     root = self.instance.layerTreeRoot()
        #     for group in self.groupsToBeRemoved:
        #         groupTree = root.findGroup(group)
        #         root.removeChildNode(groupTree)

    def transformGeometryIfNecessary(self, geom: QgsGeometry, srcSrc: str, dstSrc: str):
        if srcSrc != dstSrc:
            transform = QgsCoordinateTransform(
                QgsCoordinateReferenceSystem(srcSrc),
                QgsCoordinateReferenceSystem(dstSrc),
                QgsCoordinateTransformContext(),
            )
            geom.transform(transform)
        return geom

    def setupMasks(self, productPath: Path, layers: List[QgsVectorLayer]):
        """Runs the "loadmasks" processing to setup the layers masks.
        Args:
            productPath: Product Path instance
            layers: list of vector layers which masks will be modified
        """
        pathJson = productPath / "masks.json"
        if pathJson.exists():
            processing.run(
                "ferramentasedicao:loadmasks",
                {"JSON_FILE": str(pathJson), "INPUT_LAYERS": layers},
            )
