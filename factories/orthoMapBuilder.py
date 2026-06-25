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
from functools import partial
from pathlib import Path
from typing import Dict, List
from qgis.core import QgsProject

from ..config.configDefaults import ConfigDefaults
from ..factories.mapBuilderUtils import MapBuilderUtils
from ..interfaces.iMapBuilder import IMapBuilder
from ..modules.mapBuilder.components.buildContext import BuildContext
from ..modules.mapBuilder.factories.componentFactory import ComponentFactory


class OrthoMapBuilder(IMapBuilder, MapBuilderUtils):
    def __init__(self, componentFactory: ComponentFactory, versionFolder) -> None:
        super().__init__()
        self.componentFactory = componentFactory
        self.productPath = (
            Path(__file__).parent.parent
            / "modules"
            / "mapBuilder"
            / "resources"
            / "products"
            / "orthoMap"
            / versionFolder
        )
        self.components = dict()
        self.components.update(
            {"map": self.componentFactory.getComponent("Map", "orthoMap")}
        )
        self.components.update(
            {"elevationDiagram": self.componentFactory.getComponent("ElevationDiagram")}
        )
        self.components.update(
            {
                "imageArticulation": self.componentFactory.getComponent(
                    "ImageArticulation"
                )
            }
        )
        self.components.update(
            {
                "localization": self.componentFactory.getComponent(
                    "Localization", "orthoMap"
                )
            }
        )
        self.components.update(
            {
                "articulation": self.componentFactory.getComponent(
                    "Articulation", "orthoMap"
                )
            }
        )
        self.components.update(
            {"division": self.componentFactory.getComponent("Division")}
        )
        self.components.update(
            {"subtitle": self.componentFactory.getComponent("Subtitle")}
        )
        self.components.update(
            {
                "legend": self.componentFactory.getComponent(
                    "Legend", versionFolder=versionFolder
                )
            }
        )
        self.components.update(
            {"anglesHandler": self.componentFactory.getComponent("AnglesHandler")}
        )
        self.components.update(
            {"mapScale": self.componentFactory.getComponent("MapScale")}
        )
        self.components.update({"table": self.componentFactory.getComponent("Table")})
        self.components.update({"qrcode": self.componentFactory.getComponent("Qrcode")})

    def filterLayers(
        self,
        mapType: str,
        jsonData: Dict,
        defaults: ConfigDefaults,
        mapLayers: List[Dict],
    ):
        """Filters displayed classes by merging mandatory layers from ConfigDefaults and desired classes from json file.
        Args:
            mapType: map
            jsonData: dict with json data + other parameters
            defaults: instance of configuration defaults
            mapLayers: Dict with available layers
        """
        if mapType == "imageArticulation":
            return [
                x for x in mapLayers if x.get("table") == "edicao_articulacao_imagem_a"
            ]
        _complementarClasses = set(jsonData.get("classes_complementares", list()))
        _toDisplay = defaults.orthoMandatoryClasses.union(
            defaults.orthoOptionalClasses.intersection(_complementarClasses)
        )
        layersToDisplay = [x for x in mapLayers if x.get("table") in _toDisplay]
        if mapType == "map":
            if "infra_elemento_energia_l" in _toDisplay:
                layersToDisplay.insert(
                    0, {"table": "edicao_simb_torre_energia_p", "schema": "edgv"}
                )

            if "elemnat_curva_nivel_l" in _toDisplay:
                layersToDisplay.insert(
                    0, {"table": "edicao_simb_cota_mestra_l", "schema": "edgv"}
                )

            if "llp_unidade_federacao_a" in _toDisplay:
                layersToDisplay.insert(
                    0, {"table": "llp_limite_legal_l", "schema": "edgv"}
                )

            if "llp_area_pub_militar_a" in _toDisplay:
                layersToDisplay.insert(
                    0, {"table": "edicao_area_pub_militar_l", "schema": "edgv"}
                )

            if "llp_terra_indigena_a" in _toDisplay:
                layersToDisplay.insert(
                    0, {"table": "edicao_terra_indigena_l", "schema": "edgv"}
                )

            if "llp_unidade_conservacao_a" in _toDisplay:
                layersToDisplay.insert(
                    0, {"table": "edicao_unidade_conservacao_l", "schema": "edgv"}
                )

        # As camadas de linha/símbolo acima entram via insert(0, ...) apenas para
        # serem INCLUÍDAS (não estão no filtro _toDisplay), mas o topo fixo ignora a
        # posição delas no camadas.json e faz, p.ex., llp_limite_legal_l e
        # edicao_area_pub_militar_l renderizarem por cima do grid. Reordena pela ordem
        # do camadas.json (mapLayers); o que não estiver no json mantém o topo (-1).
        order = {x.get("table"): i for i, x in enumerate(mapLayers)}
        layersToDisplay.sort(key=lambda x: order.get(x.get("table"), -1))

        return layersToDisplay

    def run(self, debugMode: bool = False):
        """Creates the necessary components for the OrthoMap product and populates the composition.
        Args:
            debugMode: Boolean value holding the debugMode status
        """
        self.layersIdsToBeRemoved = []
        self.groupsToBeRemoved = []
        getLayersFromDbLambda = lambda x: self.getLayersFromDB(
            uri=self.conn,
            data=self.data,
            defaults=self.defaults,
            productPath=self.productPath,
            group=x,
            filterF=partial(self.filterLayers, x, self.data, self.defaults),
            mapAreaFeature=self.mapAreaFeature,
        )
        mapLayers, mapLayersIds = getLayersFromDbLambda("map")
        elevationDiagramLayers, elevationDiagramLayersIds = getLayersFromDbLambda(
            "elevationDiagram"
        )
        imageArticulationLayers, imageArticulationIds = getLayersFromDbLambda(
            "imageArticulation"
        )
        imgLayers, imgLayersIds = self.createRasterLayers(
            self.data.get("imagens", tuple())
        )
        mapLayers = [*mapLayers, *imgLayers]
        mapLayersIds = [*mapLayersIds, *imgLayersIds]
        self.instance.addMapLayer(self.mapAreaLayer, False)
        if debugMode:
            manager = self.instance.layoutManager()
            manager.addLayout(self.composition)
            self.composition.setName(self.data.get("productName"))

        layersByGroup = {
            "map": mapLayers,
            "elevationDiagram": elevationDiagramLayers,
            "imageArticulation": imageArticulationLayers,
        }
        context = BuildContext(
            composition=self.composition,
            data=self.data,
            defaults=self.defaults,
            mapAreaFeature=self.mapAreaFeature,
            mapAreaLayer=self.mapAreaLayer,
            showLayers=debugMode,
        )
        allLayerIds = self.buildAllComponents(context, layersByGroup)

        auxLayerIds = [
            lyr.id()
            for lyr in QgsProject.instance().mapLayers().values()
            if lyr.name() in ("convexhull", "auxiliar_moldura_outside")
        ]

        self.layersIdsToBeRemoved.extend(
            [self.mapAreaLayer.id(), *allLayerIds, *auxLayerIds]
        )
        self.groupsToBeRemoved.extend(
            [
                "map",
                "elevationDiagram",
                "imageArticulation",
                "localization",
                "articulation",
                "division",
            ]
        )
        self.classifiedMapHandler(self.composition, self.data)
        self.setupMasks(self.productPath, mapLayers)
