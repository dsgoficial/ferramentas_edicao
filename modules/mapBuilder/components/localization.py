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
)

from ....interfaces.iComponent import IComponent
from .componentUtils import ComponentUtils


class Localization(ComponentUtils, IComponent):
    def __init__(self, *args, **kwargs):
        self.stylesFolder = (
            Path(__file__).parent.parent / "resources" / "styles" / "localization"
        )
        self.shpFolder = Path(__file__).parent.parent / "resources" / "limits" / "2020"
        self.stateShpPath = self.shpFolder / "Estados_2020.shp"

    def build(
        self,
        composition: QgsPrintLayout,
        data: dict,
        mapAreaFeature: QgsFeature,
        showLayers: bool = False,
    ):
        mapIDsToBeDisplayed = []
        instance = QgsProject.instance()
        isInternational = bool(data.get("territorio_internacional"))

        # Creating layer for mapArea
        mapAreaBoundingBox = mapAreaFeature.geometry().boundingBox()
        mapAreaLayer = self.createGridRectangle(
            mapAreaBoundingBox, data, "localizationMapArea"
        )
        mapIDsToBeDisplayed.append(mapAreaLayer.id())

        uriPath = self.shpFolder / "Oceano_2020.shp"
        stylePath = self.stylesFolder / "oceano.qml"
        layerOcean = self.loadShapeLayer(uriPath, stylePath, "ocean")

        # Getting state layer
        uriPath = self.shpFolder / "Estados_2020.shp"
        stylePath = self.stylesFolder / "estados.qml"
        stateLayerBackground = self.loadShapeLayer(
            uriPath, stylePath, "backgroundstates"
        )
        mapExtents = self.getExtent(
            mapAreaFeature, stateLayerBackground, isInternational
        )
        #calcular escala
        if (mapItem := composition.itemById("localization")) is not None:
            mapSize = mapItem.sizeWithUnits()
            mapItem.setFixedSize(mapSize)
            mapItem.zoomToExtent(mapExtents)
            mapItem.setCrs(QgsCoordinateReferenceSystem("EPSG:4674"))
            mapItem.refresh()
            self.scale = mapItem.scale()

        self.setupBackgroundLayer(stateLayerBackground)
        self.setLabel(stateLayerBackground, isInternational, mapExtents)

        uriPath = self.shpFolder / "Paises_2020.shp"
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
            for layer in [
                mapAreaLayer,
                *layersToShow       
            ]:
                localizationGroupNode.addLayer(layer)
            root = instance.layerTreeRoot()
            root.addChildNode(localizationGroupNode)

        return mapIDsToBeDisplayed

    def getExtent(
        self,
        selectedFeature: QgsFeature,
        stateLayer: QgsVectorLayer,
        isInternational: bool,
    )->QgsRectangle:
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
            if not isInternational:
                continue
            stateGeom = stateFeature.geometry()
            if stateGeom.isMultipart():
                for singleStateItem in stateGeom.constParts():
                    singleStateAbsGeom = singleStateItem.boundary()
                    if singleStateAbsGeom.boundingBoxIntersects(geomBbox):
                        self.estados.add(stateFeature["SIGLA_UF"])
                        self.paises.add(stateFeature["SIGLA_PAIS"])
                        rectBounds.append(singleStateAbsGeom.calculateBoundingBox())
            elif geom.intersects(stateGeom):
                self.estados.add(stateFeature["SIGLA_UF"])
                self.paises.add(stateFeature["SIGLA_PAIS"])
                rectBounds.append(stateGeom.boundingBox())
        bound = rectBounds[0]
        if len(rectBounds) > 1:
            for stateBound in rectBounds[1:]:
                bound.combineExtentWith(stateBound)
        return bound

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
            if f['SIGLA_UF'] in self.estados:
                f['SELECT'] = 1
            if f['SIGLA_PAIS'] in self.paises:
                f['SHOW'] = 1
            stateLayer.updateFeature(f)
        stateLayer.commitChanges()
        stateLayer.triggerRepaint()

    def setupCountryLayer(self, countryLayer: QgsVectorLayer):
        countryLayer.startEditing()
        for f in countryLayer.getFeatures():
            if f['sigla'] in self.paises:
                f['SELECT'] = 1
            countryLayer.updateFeature(f)
        countryLayer.commitChanges()
        countryLayer.triggerRepaint()


    def setLabel(self, stateLayer: QgsVectorLayer, isInternational, mapExtents = QgsRectangle()):
        """
        Sets label rules for layer in localization component
        """
        # Getting base rule
        if isInternational:
            #pass
            stateLayer.startEditing()
            for f in stateLayer.getFeatures():
                f['NOME']=f['NOME']+' - '+f["SIGLA_PAIS"]
                stateLayer.updateFeature(f)
            stateLayer.commitChanges()

        if mapExtents!=QgsRectangle():
            extent = QgsGeometry().fromRect(mapExtents)
            stateLayer.startEditing()
            request = QgsFeatureRequest().setFilterRect(mapExtents)
            for f in stateLayer.getFeatures(request):
                if len(self.estados) == 1 and f['SIGLA_UF']in self.estados:
                    continue
                intersectionGeometry = extent.intersection(f.geometry())
                pointGeom, radius = intersectionGeometry.poleOfInaccessibility(0.001)
                height = (2.11/1000)*self.scale/111000 #altura para caber uma letra, 2.11mm
                pointPoI = pointGeom.asPoint()
                #pode haver limitacao vertical, mas o rotulo ainda caber horizontalmente, por isso, verificar maior retangulo interno
                #para simplificar foi procurado maior retangulo interno centrado em um ponto (PoI) e altura fixa (uma linha)
                maxRect = self.largestRectangleOnPoint(height, pointPoI, f.geometry(), 5) # 5 graus deve pegar todos os estados
                maxWidth_m = maxRect.width()*111000
                maxWidth_mm = 1000*maxWidth_m/self.scale
                maxWordLen = max([len(word) for word in f["NOME"].split(' ')])
                if maxWidth_mm<maxWordLen: # checar se rotulo cabe no poligono, diam menor que maior palavra do rotulo, cada caractere aprox 1mm
                    f['NOME']=f['SIGLA_UF']+' - '+f["SIGLA_PAIS"]
                    if maxWidth_mm<len(f['NOME']):
                        f['NOME']= ''
                        stateLayer.updateFeature(f)
                        continue
                pointRect = maxRect.center()
                tolerancia_deslocamento_mm = 2.2 #pode deslocar rotulo ate 2.2mm, valor empirico, arbitrario
                distancia_pontos_mm = 1000*pointRect.distance(pointPoI)*110000/self.scale
                point = pointRect if distancia_pontos_mm<tolerancia_deslocamento_mm else pointPoI
                f['LABEL_X'] = point.x()
                f['LABEL_Y'] = point.y()
                stateLayer.updateFeature(f)
            stateLayer.commitChanges()
        stateLayer.triggerRepaint()

    def largestRectangleOnPoint(self, height, center:QgsPointXY, polygon, maxWidth = 5)->QgsRectangle:
        maxRect = QgsRectangle(center.x()-maxWidth/2, center.y()-height/2, center.x()+maxWidth/2, center.y()+height/2)
        maxRectGeom = QgsGeometry.fromRect(maxRect)
        inter = maxRectGeom.intersection(polygon)
        minY = min(set(v.y() for v in inter.vertices()))
        maxY = max(set(v.y() for v in inter.vertices()))
        if maxY-minY<height*0.9:
            return QgsRectangle()
        xSmaller = set(v.x() for v in inter.vertices() if v.x()<center.x())
        xBigger = set(v.x() for v in inter.vertices() if v.x()>center.x())
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
