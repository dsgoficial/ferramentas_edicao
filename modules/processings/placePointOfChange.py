# -*- coding: utf-8 -*-

from collections import defaultdict
from typing import Literal
from ..labelTools.labelHandler import createLabelFromLayerAToLayerB

from qgis.core import (
    QgsField,
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingMultiStepFeedback,
    QgsProcessingParameterVectorLayer,
    QgsGeometry,
    QgsFeature,
    QgsPointXY,
    QgsVectorLayer,
    QgsProcessingParameterEnum,
    QgsFields,
    NULL,
)
from DsgTools.core.DSGToolsProcessingAlgs.algRunner import AlgRunner
from qgis.PyQt.QtCore import QCoreApplication, QVariant
from qgis import processing


class PlacePointOfChange(QgsProcessingAlgorithm):

    INPUT = "INPUT"
    SCALE = "SCALE"
    OUTPUT = "OUTPUT"
    PRODUCT_TYPE = "PRODUCT_TYPE"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT,
                self.tr("Selecionar camada de linha de entrada (rodovia)"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="infra_via_deslocamento_l",
            )
        )
        self.scales = [
            "1:25.000",
            "1:50.000",
            "1:100.000",
            "1:250.000",
        ]
        self.addParameter(
            QgsProcessingParameterEnum(
                self.SCALE,
                self.tr("Escala"),
                options=self.scales,
                defaultValue=0,
            )
        )
        self.productType = [
            "Ortoimagem",
            "Topográfica",
        ]
        self.addParameter(
            QgsProcessingParameterEnum(
                self.PRODUCT_TYPE,
                self.tr("Tipo de produto"),
                options=self.productType,
                defaultValue=0,
            )
        )
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.OUTPUT,
                self.tr("Selecionar camada de camada de edição"),
                [QgsProcessing.TypeVectorPoint],
                defaultValue="edicao_ponto_mudanca_p",
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        inputLyrPre = self.parameterAsVectorLayer(parameters, self.INPUT, context)
        scaleIdx = self.parameterAsEnum(parameters, self.SCALE, context)
        scaleDict = {
            "1:25.000": 25000,
            "1:50.000": 50000,
            "1:100.000": 100000,
            "1:250.000": 250000,
        }
        scale = scaleDict[self.scales[scaleIdx]]
        productTypeDict = {"Ortoimagem": "orto", "Topográfica": "topo"}
        productTypeIdx = self.parameterAsEnum(parameters, self.PRODUCT_TYPE, context)
        productTypeName = productTypeDict[self.productType[productTypeIdx]]
        simbPointLayer = self.parameterAsVectorLayer(parameters, self.OUTPUT, context)
        fields = simbPointLayer.fields()
        multiStepFeedback = QgsProcessingMultiStepFeedback(7, feedback)
        multiStepFeedback.setCurrentStep(0)
        multiStepFeedback.pushInfo(self.tr("Criando campo de id."))
        algRunner = AlgRunner()
        inputLyr = algRunner.runCreateFieldWithExpression(
            inputLyr=inputLyrPre,
            expression="$id",
            fieldType=1,
            fieldName="inputid",
            feedback=multiStepFeedback,
            context=context,
            is_child_algorithm=False,
        )
        multiStepFeedback.setCurrentStep(1)
        multiStepFeedback.pushInfo(self.tr("Criando índice espacial."))
        algRunner.runCreateSpatialIndex(inputLyr, context, feedback=multiStepFeedback)
        multiStepFeedback.setCurrentStep(2)
        symbolTypeFieldName = "symbol_type"
        lanesNumberFieldName = "nr_faixas"
        self.addSymbolType(inputLyr, symbolTypeFieldName, feedback=multiStepFeedback)
        multiStepFeedback.setCurrentStep(3)
        self.addIdField(inputLyr, "featid")
        multiStepFeedback.setCurrentStep(4)
        boundary = algRunner.runExtractSpecificVertices(
            inputLyr, "0,-1", context, feedback=multiStepFeedback
        )
        multiStepFeedback.setCurrentStep(5)
        boundaryDict = defaultdict(set)
        for feat in boundary.getFeatures():
            geom = feat.geometry()
            geomWkb = geom.asWkb()
            boundaryDict[geomWkb].add(feat)
        featsToAdd = self.getPointOfChangeAndMakeLabel(
            scale,
            productTypeName,
            fields,
            inputLyr,
            symbolTypeFieldName,
            lanesNumberFieldName,
            boundaryDict,
            crsString="EPSG:3857",
            feedback=multiStepFeedback,
        )

        multiStepFeedback.setCurrentStep(6)
        simbPointLayer.startEditing()
        simbPointLayer.beginEditCommand("Criando pontos")
        simbPointLayer.dataProvider().addFeatures(featsToAdd)
        simbPointLayer.endEditCommand()
        return {self.OUTPUT: simbPointLayer}

    def getPointOfChangeAndMakeLabel(
        self,
        scale,
        productTypeName,
        fields: QgsFields,
        inputLyr: QgsVectorLayer,
        symbolTypeFieldName,
        lanesNumberFieldName,
        boundaryDict: dict,
        crsString="EPSG:3857",
        feedback=None,
    ):
        featsToAdd = []
        if feedback is not None:
            progressStep = 100 / len(boundaryDict.items())
        for currentStep, (geomWkb, featSet) in enumerate(boundaryDict.items()):
            if len(featSet) != 2:
                continue
            if feedback is not None and feedback.isCanceled():
                return
            a, b = featSet
            featA = inputLyr.getFeature(a["featid"])
            featB = inputLyr.getFeature(b["featid"])
            if not self.insertSymbolRule(
                a, b, "visivel", lanesNumberFieldName, symbolTypeFieldName
            ):
                continue
            geom = QgsGeometry()
            geom.fromWkb(geomWkb)
            geom.convertToMultiType()
            angleA = self.angleAtPoint(a, featA)
            angleB = self.angleAtPoint(b, featB)
            angle = (angleA + angleB) / 2
            if angle > 90 and angle < 270:
                angle = (angle + 180) % 360
            featToAdd = QgsFeature()
            featToAdd.setFields(fields)
            featToAdd.setGeometry(geom)
            featToAdd.setAttribute("simb_rot", angle)
            symbolDisplacementDict = {
                1: 1.25 / 2,  # displacement is half of the line's width
                2: 1.25 / 2,
                3: 0.9 / 2,
                4: 0.7 / 2,
                5: 0.5 / 2,
                6: 0.9 / 2,
                7: 0.7 / 2,
                8: 0.5 / 2,
                9: 0.9 / 2,
                10: 0.7 / 2,
                11: 0.5 / 2,
                12: 0.9 / 2,
                13: 0.7 / 2,
                14: 0.5 / 2,
                15: 0.5 / 2,
                16: 1.1 / 2,
                17: 0.7 / 2,
                18: 0.25 / 2,
                19: 0.2 / 2,
                20: 0.5 / 2,
                21: 0.3 / 2,
                22: 0.7 / 2,
            }
            featToAdd.setAttribute(
                "desloc", symbolDisplacementDict[int(a[symbolTypeFieldName])]
            )
            featToAdd.setAttribute("visivel", 1)  # 1 = Sim, 2 = Não
            featsToAdd.append(featToAdd)
            self.insertRoadLabel(a, featA, scale, productTypeName, crsString=crsString)
            self.insertRoadLabel(b, featB, scale, productTypeName, crsString=crsString)
            if feedback is not None:
                feedback.setProgress(progressStep * currentStep)
        return featsToAdd

    def addSymbolType(
        self, inputLyr: QgsVectorLayer, fieldToAdd, feedback=None
    ) -> None:
        if feedback is not None:
            nFeat = inputLyr.featureCount()
            progressStep = 100 / nFeat
        data = {}
        inputLyr.startEditing()
        inputLyr.beginEditCommand("start command")
        inputLyr.dataProvider().addAttributes([QgsField(fieldToAdd, QVariant.Int)])
        id_new_col = inputLyr.dataProvider().fieldNameIndex(fieldToAdd)
        for currentStep, feat in enumerate(inputLyr.getFeatures()):
            if feedback is not None and feedback.isCanceled():
                return
            value = self.symbolType(feat)
            data[feat.id()] = {id_new_col: value}
            if feedback is not None:
                feedback.setProgress(progressStep * currentStep)
        inputLyr.dataProvider().changeAttributeValues(data)
        inputLyr.endEditCommand()
        inputLyr.commitChanges()

    def addIdField(self, layer: QgsVectorLayer, fieldName):
        layer.startEditing()
        field_type = QVariant.Int
        layer.dataProvider().addAttributes([QgsField(fieldName, field_type)])
        layer.updateFields()
        features = layer.getFeatures()
        layer.dataProvider().changeAttributeValues(
            {
                f.id(): {layer.fields().indexFromName(fieldName): f.id()}
                for f in features
            }
        )
        layer.commitChanges()

    def angleAtPoint(self, point: QgsFeature, feat: QgsFeature):
        geom = feat.geometry()
        neighbourPoint = self.adjacentPointAtEndVertex(feat, point["vertex_index"])
        pt = QgsPointXY(geom.vertexAt(point["vertex_index"]))
        anglepre = point["angle"]
        # 0 = leste, 1 = oeste
        hemisferio = 0 if neighbourPoint.x() > pt.x() else 1
        angle = anglepre
        if anglepre // 180 != hemisferio:
            angle = anglepre + 180 if anglepre < 180 else anglepre - 180
        return angle

    def insertSymbolRule(
        self,
        feat1,
        feat2,
        visField="visivel",
        laneField="nr_faixas",
        symbolTypeField="symbol_type",
    ):
        if feat1[visField] == 2 or feat2[visField] == 2:
            return False
        elif feat1[laneField] == feat2[laneField]:
            return False
        elif (
            int(feat1[laneField]) <= 2 or int(feat2[laneField]) <= 2
        ):  # não tem rótulo nesse caso, então não vai ter point of change
            return False
        elif feat1[symbolTypeField] != feat2[symbolTypeField]:
            return False
        return True

    @staticmethod
    def symbolType(feat) -> int:
        if (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] in {0, 3}
            and feat["canteiro_divisorio"] == 1
            and feat["jurisdicao"] not in {2, 0}
        ):
            return 1  # L11302A
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] in {0, 3}
            and feat["revestimento"] == 3
            and feat["canteiro_divisorio"] == 1
            and feat["jurisdicao"] in {2, 0}
        ):
            return 2  # L11302_Est_Pav_cant_div
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] in {0, 3}
            and feat["canteiro_divisorio"] == 2
            and feat["revestimento"] == 3
            and feat["jurisdicao"] == 1
            and int(feat["nr_faixas"]) >= 4
        ):
            return 3  # L11302B
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] in {0, 3}
            and feat["canteiro_divisorio"] == 2
            and feat["revestimento"] == 3
            and feat["jurisdicao"] == 1
            and (int(feat["nr_faixas"]) in {2, 3} or int(feat["nr_faixas"]) is NULL)
        ):
            return 4  # L11302C
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] in {0, 3}
            and feat["canteiro_divisorio"] == 2
            and feat["revestimento"] == 3
            and feat["jurisdicao"] == 1
            and int(feat["nr_faixas"]) == 1
        ):
            return 5  # L11302D
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] in {0, 3}
            and feat["canteiro_divisorio"] == 2
            and feat["revestimento"] == 3
            and feat["jurisdicao"] in {0, 2}
            and int(feat["nr_faixas"]) >= 4
        ):
            return 6  # L11302E
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] in {0, 3}
            and feat["canteiro_divisorio"] == 2
            and feat["revestimento"] == 3
            and feat["jurisdicao"] in {0, 2}
            and (int(feat["nr_faixas"]) in {2, 3} or int(feat["nr_faixas"]) is NULL)
        ):
            return 7  # L11302F
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] in {0, 3}
            and feat["canteiro_divisorio"] == 2
            and feat["revestimento"] == 3
            and feat["jurisdicao"] in {0, 2}
            and int(feat["nr_faixas"]) == 1
        ):
            return 8  # L11302G
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] in {0, 3}
            and feat["revestimento"] != 3
            and feat["trafego"] == 1
            and feat["jurisdicao"] in {1}
            and int(feat["nr_faixas"]) >= 4
        ):
            return 9  # L11302H
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] in {0, 3}
            and feat["revestimento"] != 3
            and feat["trafego"] == 1
            and feat["jurisdicao"] in {1}
            and (int(feat["nr_faixas"]) in {2, 3} or int(feat["nr_faixas"]) is NULL)
        ):
            return 10  # L11302I
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] in {0, 3}
            and feat["canteiro_divisorio"] in {2}
            and feat["revestimento"] != 3
            and feat["trafego"] == 1
            and feat["jurisdicao"] in {1}
            and int(feat["nr_faixas"]) == 1
        ):
            return 11  # L11302J
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] in {0, 3}
            and feat["revestimento"] != 3
            and feat["trafego"] == 1
            and feat["jurisdicao"] in {0, 2}
            and int(feat["nr_faixas"]) >= 4
        ):
            return 12  # L11302K
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] in {0, 3}
            and feat["revestimento"] != 3
            and feat["trafego"] == 1
            and feat["jurisdicao"] in {0, 2}
            and (int(feat["nr_faixas"]) in {2, 3} or int(feat["nr_faixas"]) is NULL)
        ):
            return 13  # L11302L
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] in {0, 3}
            and feat["canteiro_divisorio"] in {2}
            and feat["revestimento"] != 3
            and feat["trafego"] == 1
            and feat["jurisdicao"] in {0, 2}
            and int(feat["nr_faixas"]) == 1
        ):
            return 14  # L11302M
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] in {0, 3}
            and feat["canteiro_divisorio"] in {2}
            and feat["revestimento"] != 3
            and feat["trafego"] != 1
        ):
            return 15  # L11302N
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] not in {0, 3}
            and feat["canteiro_divisorio"] == 1
        ):
            return 16  # L11302O
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] not in {0, 3}
            and feat["canteiro_divisorio"] == 2
        ):
            return 17  # L11302P
        elif feat["tipo"] == 3:
            return 18  # L10802A
        elif feat["tipo"] == 6:
            return 19  # L10815A
        elif (
            feat["tipo"] == 5
            and feat["revestimento"] == 3
            and feat["situacao_fisica"] in {0, 3}
        ):
            return 20  # L20227A
        elif (
            feat["tipo"] == 5
            and feat["revestimento"] != 3
            and feat["situacao_fisica"] in {0, 3}
        ):
            return 21  # L20227B
        elif feat["tipo"] == 5 and feat["situacao_fisica"] not in {0, 3}:
            return 22  # L20227C
        else:
            return 23

    def startOrEndIntersectionsDict(self, feat1: QgsFeature, feat2: QgsFeature):
        pointsDictWkb = {}
        feat1Geom = feat1.geometry()
        if feat1Geom.isMultipart():
            for geometry in feat1Geom.constGet():
                ptLast = QgsGeometry().fromPointXY(QgsPointXY(geometry[-1]))
                ptFirst = QgsGeometry().fromPointXY(QgsPointXY(geometry[0]))
        else:
            geometry = feat1Geom.asPolyline()
            ptLast = QgsGeometry().fromPointXY(QgsPointXY(geometry[-1]))
            ptFirst = QgsGeometry().fromPointXY(QgsPointXY(geometry[0]))
        points = [ptFirst, ptLast]
        for pt in points:
            feat2Geom = feat2.geometry()
            if feat1Geom.equals(feat2Geom):
                continue
            if feat1Geom.touches(feat2Geom):
                try:
                    # erro, mais de uma interseção
                    pointsDictWkb[pt.asWkb()].append(feat2)
                except KeyError:
                    pointsDictWkb[pt.asWkb()] = [feat2]
        pointsDict = {}
        for pt in pointsDictWkb:
            geom = QgsGeometry()
            geom.fromWkb(pt)
            pointsDict[geom] = pointsDictWkb[pt]
        return pointsDict

    def adjacentPointAtEndVertex(self, feat: QgsFeature, atVertex: int):
        geom = feat.geometry()
        adjpoints = geom.adjacentVertices(atVertex)
        adjptvertex = adjpoints[1]
        if adjptvertex < 0:
            adjptvertex = adjpoints[0]
        adjpt = feat.geometry().vertexAt(adjptvertex)
        return QgsPointXY(adjpt)

    def insertRoadLabel(
        self,
        point: QgsFeature,
        feat: QgsFeature,
        scale,
        productTypeName: Literal["orto", "topo"],
        crsString="EPSG:3857",
    ):
        geom = feat.geometry()
        neighbourPoint = self.adjacentPointAtEndVertex(feat, point["vertex_index"])
        pt = QgsPointXY(geom.vertexAt(point["vertex_index"]))
        middlePoint = QgsPointXY()
        middlePoint.setX((pt.x() + neighbourPoint.x()) / 2)
        # y um pouco para cima para o simbolo ser colocado no norte
        middlePoint.setY((pt.y() + neighbourPoint.y()) / 2 + 1e-5)
        posGeom = QgsGeometry()
        posGeom = posGeom.fromPointXY(middlePoint)
        createLabelFromLayerAToLayerB(
            posGeom, scale, "createroadlabel", productTypeName, crsString="EPSG:3857"
        )

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return PlacePointOfChange()

    def name(self):
        return "placepointofchange"

    def displayName(self):
        return self.tr("Insere ponto de mudança")

    def group(self):
        return self.tr("Edição")

    def groupId(self):
        return "edicao"

    def shortHelpString(self):
        return self.tr("O algoritmo ...")