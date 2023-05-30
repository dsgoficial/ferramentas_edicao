import json
from collections import OrderedDict
from pathlib import Path

from ....config.configDefaults import ConfigDefaults
from PyQt5.QtCore import QPointF
from PyQt5.QtXml import QDomDocument
from qgis.core import QgsPrintLayout, QgsReadWriteContext


class Legend:

    order_group = {
        "localidades": {
            "order": 0,
            "order_classes": [
                "cidade",
                "cidade_250",
                "vila",
                "vila_250",
                "aglomerado_rural",
                "aglomerado_rural_250",
                "nome_local",
            ],
        },
        "rodovias": {"order": 1, "order_classes": ["rodovia"]},
        "ferrovias": {"order": 2, "order_classes": ["ferrovia"]},
        "limites": {
            "order": 3,
            "order_classes": [
                "limite_legal",
                "area_militar",
                "terra_indigena",
                "unidade_conservacao",
                "area_sem_dados",
            ],
        },
        "estruturas": {
            "order": 4,
            "order_classes": [
                "atracadouro_terminal",
                "extracao_mineral",
                "subestacao_energia_eletrica",
                "trecho_de_energia",
            ],
        },
        "transporte_aereo": {"order": 5, "order_classes": ["pista_pouso", "heliponto"]},
        "hidrografia": {
            "order": 6,
            "order_classes": [
                "massa_dagua",
                "terreno_sujeito_inundacao",
                "queda_dagua",
                "ilha",
            ],
        },
        "relevo": {
            "order": 7,
            "order_classes": ["elemento_fisiografico", "curva_nivel", "ponto_cotado"],
        },
    }

    def __init__(self):
        _p = Path(__file__).parent.parent / "resources" / "products" / "orthoMap"
        self.qptsPath = _p / "symbols" / "legend"
        with open(_p / "mapClassToLegend.json") as mappingData:
            self.legendMappingData = json.load(mappingData)

    @staticmethod
    def getSizeFromDomComponent(domGroup):
        sizeStr = (
            domGroup.elementsByTagName("LayoutItem")
            .item(0)
            .toElement()
            .attribute("size")
        )
        w, h, unit = sizeStr.split(",")
        return (float(w), float(h))

    def buildLegend(self, composition, legendDict, anchor):
        xAnchor, yAnchor = anchor
        x, y = xAnchor, yAnchor
        ySpacing = 0.5
        context = QgsReadWriteContext()
        for group, labels in legendDict.items():
            position = QPointF(x, y)
            domGroup = self.loadQDomComponent(self.qptsPath / f"group_{group}.qpt")
            composition.addItemsFromXml(
                domGroup.documentElement(), domGroup, context, position
            )
            _, title_h = self.getSizeFromDomComponent(domGroup)
            y += title_h
            for label in labels:
                position = QPointF(x, y)
                domGroup = self.loadQDomComponent(self.qptsPath / f"{label}.qpt")
                composition.addItemsFromXml(
                    domGroup.documentElement(), domGroup, context, position
                )
                _, label_item_h = self.getSizeFromDomComponent(domGroup)
                y = y + label_item_h
            y += ySpacing

    def groupLegend(self, classes, legendMappingData):
        groupedClasses = dict()
        for _cls in classes:
            _groupInfo = legendMappingData.get(_cls)
            if _groupInfo is None:
                continue
            group = _groupInfo.get("group")
            labels = _groupInfo.get("labels")
            if group is None:
                continue
            if (_p := groupedClasses.get(group)) and isinstance(_p, set):
                _p.update(labels)
            else:
                groupedClasses.update({group: set(labels)})
        return groupedClasses

    def orderLegend(self, legend):
        orderedLegend = OrderedDict()
        for group in sorted(legend, key=lambda x: self.order_group.get(x).get("order")):
            classes = legend.get(group)
            orderedLegend.update(
                {
                    group: sorted(
                        classes,
                        key=lambda x: self.order_group.get(group)
                        .get("order_classes")
                        .index(x),
                    )
                }
            )
        return orderedLegend

    def loadQDomComponent(self, path):
        doc = QDomDocument()
        with open(path) as content:
            doc.setContent(content.read())
        return doc

    @staticmethod
    def getAnchor(scale):
        if str(scale) == "250":
            return 6, 266
        return 723, 14

    def build(
        self, composition: QgsPrintLayout, jsonData: dict, defaults: ConfigDefaults
    ):
        scale = jsonData.get("scale")
        displayAuxContour = jsonData.get("exibirAuxiliar")
        complementaryClasses = jsonData.get("classes_complementares", [])
        legendMappingData = self.legendMappingData.get(str(scale))

        if displayAuxContour == 1:
            legendMappingData["elemnat_curva_nivel_l"]["labels"].insert(
                0, "curva_nivel_auxiliar"
            )

        legendClassesToDisplay = defaults.orthoMandatoryClasses.union(
            defaults.orthoOptionalClasses.intersection(set(complementaryClasses))
        )
        legendClassesGrouped = self.groupLegend(
            legendClassesToDisplay, legendMappingData
        )
        legendClassesOrdered = self.orderLegend(legendClassesGrouped)
        self.buildLegend(composition, legendClassesOrdered, self.getAnchor(scale))
