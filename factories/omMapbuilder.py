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

from qgis.core import QgsPrintLayout, QgsProperty, QgsLayoutPoint
from typing import Dict
from ..config.configDefaults import ConfigDefaults
from ..factories.mapBuilderUtils import MapBuilderUtils
from ..interfaces.iMapBuilder import IMapBuilder
from ..modules.mapBuilder.components.buildContext import BuildContext
from ..modules.mapBuilder.factories.componentFactory import ComponentFactory


class OmMapBuilder(IMapBuilder, MapBuilderUtils):
    def __init__(self, componentFactory: ComponentFactory, versionFolder) -> None:
        super().__init__()
        self.componentFactory = componentFactory
        self.productPath = (
            Path(__file__).parent.parent
            / "modules"
            / "mapBuilder"
            / "resources"
            / "products"
            / "omMap"
            / versionFolder
        )
        self.components = dict()
        self.components.update({"map": self.componentFactory.getComponent("MapOM")})
        self.components.update(
            {
                "localization": self.componentFactory.getComponent(
                    "Localization", "omMap"
                )
            }
        )
        self.components.update(
            {"division": self.componentFactory.getComponent("DivisionOM")}
        )
        self.components.update(
            {"subtitle": self.componentFactory.getComponent("Subtitle")}
        )
        self.components.update(
            {"anglesHandler": self.componentFactory.getComponent("AnglesHandler")}
        )
        self.components.update(
            {"mapScale": self.componentFactory.getComponent("MapScaleOM")}
        )
        self.components.update({"table": self.componentFactory.getComponent("Table")})
        self.components.update({"qrcode": self.componentFactory.getComponent("Qrcode")})

    def handleMapRotation(self, data: Dict, composition: QgsPrintLayout):
        """Rotates the north indication
        Args:
            data: dict holding the map info
            composition: a QgsPrintLayout for the mapOm product
        """
        rotationAngle = 90 - float(data.get("rotationAngle"))
        if item := composition.itemById("quadriculaRotation"):
            item.setItemRotation(rotationAngle)
        if item := composition.itemById("quadriculaRotationLabel"):
            item.setText(f"ROTAÇÃO DE {rotationAngle:.2f}°")

    def isDefaultSarp(self, data: Dict) -> bool:
        configuracao_carta = str(
            data.get("configuracao_carta", "dafault")
        ).strip().lower()

        return configuracao_carta != "om"

    def handleOmInfo(self, data: Dict, composition: QgsPrintLayout):
        """Configura as informações específicas da Carta Ortoimagem SARP."""

        isDefault = self.isDefaultSarp(data)

        if isDefault:

            if item := composition.itemById("labelSubordination1"):
                item.setText("DIRETORIA DE SERVIÇO GEOGRÁFICO")
                item.setVisibility(True)

            # No modo default não existe uma segunda subordinação
            if item := composition.itemById("labelSubordination2"):
                item.setVisibility(False)

            if item := composition.itemById("label_nomeCarta"):
                item.setText(str(data.get("nome", "")).upper())

                # Centraliza verticalmente no espaço anteriormente ocupado pelo brasão da OM
                item.attemptMove(QgsLayoutPoint(62.5, 103.0))

            if item := composition.itemById("symbolOM"):
                item.setVisibility(False)

            if item := composition.itemById("symbolSubordination"):

                # Remove eventual caminho controlado por expressão
                propertyKeys = item.dataDefinedProperties().propertyKeys()

                if isinstance(propertyKeys, list) and len(propertyKeys) > 0:
                    propertyKey = propertyKeys[0]
                    item.dataDefinedProperties().setProperty(
                        propertyKey,
                        QgsProperty(),
                    )

                dsgSymbolPath = (
                    self.productPath.parent.parent
                    / "common"
                    / "dsgSymbol.png"
                )

                item.setPicturePath(str(dsgSymbolPath))
                item.setVisibility(True)
                item.refresh()

        else:

            if item := composition.itemById("labelSubordination1"):
                if text := data.get("subordinacao1"):
                    item.setText(str(text).upper())
                    item.setVisibility(True)
                else:
                    item.setVisibility(False)

            if item := composition.itemById("labelSubordination2"):
                if text := data.get("subordinacao2"):
                    item.setText(str(text).upper())
                    item.setVisibility(True)
                else:
                    item.setVisibility(False)

            if item := composition.itemById("label_nomeCarta"):
                item.setText(str(data.get("nome", "")).upper())

                # Posição normal da carta de OM
                item.attemptMove(QgsLayoutPoint(62.5, 141.0))

            if item := composition.itemById("symbolOM"):
                item.setVisibility(True)

                imgPath = data.get("imagemOM")

                if imgPath:
                    item.setPicturePath(str(Path(imgPath)))

            if item := composition.itemById("symbolSubordination"):

                propertyKeys = item.dataDefinedProperties().propertyKeys()

                if isinstance(propertyKeys, list) and len(propertyKeys) > 0:
                    propertyKey = propertyKeys[0]
                    item.dataDefinedProperties().setProperty(
                        propertyKey,
                        QgsProperty(),
                    )

                imgPath = data.get("imagemSubordinacao")

                if imgPath:
                    item.setPicturePath(str(Path(imgPath)))

                item.setVisibility(True)
                item.refresh()

        composition.refresh()

    def run(self, debugMode: bool = False):
        """Creates the necessary components for the OmMap product and populates the composition.
        Args:
            debugMode: Boolean value holding the debugMode status
        """
        self.layersIdsToBeRemoved = []
        self.groupsToBeRemoved = []
        mapLayers, mapLayersIds = self.getLayersFromDB(
            self.conn, self.data, self.defaults, self.productPath, "map", lambda x: x
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
            self.composition.setName(
                f"Carta Ortoimagem SARP {self.data.get('omTemplateType')}"
            )

        layersByGroup = {"map": mapLayers}
        context = BuildContext(
            composition=self.composition,
            data=self.data,
            defaults=self.defaults,
            mapAreaFeature=self.mapAreaFeature,
            mapAreaLayer=self.mapAreaLayer,
            showLayers=debugMode,
        )
        allLayerIds = self.buildAllComponents(context, layersByGroup)

        for itemId in (
            "symbol_QRCODE",
            "geoportal_qrcode",
            "label_bdgexQR",
            "label_bdgexWeb",
            "geoportalEB_label",
        ):
            if item := self.composition.itemById(itemId):
                item.setVisibility(False)

        self.handleMapRotation(self.data, self.composition)
        self.handleOmInfo(self.data, self.composition)
        self.layersIdsToBeRemoved.extend(
            [self.mapAreaLayer.id(), *allLayerIds]
        )
        self.groupsToBeRemoved.extend(
            ["map", "localization", "articulation", "division"]
        )
