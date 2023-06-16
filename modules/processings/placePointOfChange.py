# -*- coding: utf-8 -*-

from collections import defaultdict
from itertools import chain, tee
from typing import Iterable
import math

from qgis import core
from qgis.core import (
    QgsField,
    QgsProcessing,
    QgsProcessingAlgorithm,
    QgsProcessingMultiStepFeedback,
    QgsProcessingParameterVectorLayer,
    QgsProcessingParameterBoolean,
    QgsVectorLayerUtils,
    QgsGeometry,
    QgsGeometryUtils,
    QgsSpatialIndex,
    QgsFeature,
    QgsPointXY,
    QgsVectorLayer,
    NULL,
)
from qgis.PyQt.QtCore import QCoreApplication, QVariant
from qgis import processing


class PlacePointOfChange(QgsProcessingAlgorithm):

    INPUT = "INPUT"
    OUTPUT = "OUTPUT"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.INPUT,
                self.tr("Selecionar camada de linha (rodovia, ferrovia)"),
                [QgsProcessing.TypeVectorLine],
                defaultValue="infra_via_deslocamento_l",
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
        simbPointLayer = self.parameterAsVectorLayer(parameters, self.OUTPUT, context)
        fields = simbPointLayer.fields()
        multiStepFeedback = QgsProcessingMultiStepFeedback(2, feedback)
        multiStepFeedback.setCurrentStep(0)
        multiStepFeedback.pushInfo(self.tr("Creating count field."))
        inputLyr = self.runCreateFieldWithExpression(
            inputLyr=inputLyrPre,
            expression="$id",
            fieldType=1,
            fieldName="inputid",
            feedback=multiStepFeedback,
            context=context,
            is_child_algorithm=False,
        )
        multiStepFeedback.setCurrentStep(1)
        multiStepFeedback.pushInfo(self.tr("Creating spatial index on frame layer."))
        self.runCreateSpatialIndex(inputLyr, feedback=multiStepFeedback)
        symbolTypeFieldName = "symbol_type"
        lanesNumberFieldName = "nr_faixas"
        self.addSymbolType(inputLyr, symbolTypeFieldName, feedback=multiStepFeedback)
        lyrWithId = self.runCreateFieldWithExpression(
            inputLyr=inputLyr,
            expression="$id",
            fieldType=1,
            fieldName="featid",
            feedback=multiStepFeedback,
            context=context,
            is_child_algorithm=False,
        )
        boundary = self.runExtractSpecificVertices(
            lyrWithId, "0,-1", context, feedback=multiStepFeedback
        )
        boundaryDict = defaultdict(set)
        for feat in boundary.getFeatures():
            geom = feat.geometry()
            geomWkb = geom.asWkb()
            boundaryDict[geomWkb].add(feat)
        featsToAdd = []
        for geomWkb, featSetId in boundaryDict.items():
            if len(featSetId) != 2:
                continue
            a, b = featSetId
            if a[symbolTypeFieldName] != b[symbolTypeFieldName]:
                continue
            if a[lanesNumberFieldName] == b[lanesNumberFieldName]:
                continue
            geom = QgsGeometry()
            geom.fromWkb(geomWkb)
            geom.convertToMultiType()
            angleA = self.angleAtFeat(a)
            angleB = self.angleAtFeat(b)
            angle = (angleA + angleB) / 2
            if angle > 90 and angle < 270:
                angle = (angle + 180) % 360
            featToAdd = QgsFeature()
            featToAdd.setFields(fields)
            featToAdd.setGeometry(geom)
            featToAdd.setAttribute("simb_rot", angle)
            featToAdd.setAttribute("visivel", 1)  # 1 = Sim, 2 = Não
            featsToAdd.append(featToAdd)

        simbPointLayer.startEditing()
        simbPointLayer.beginEditCommand("Criando pontos")
        simbPointLayer.dataProvider().addFeatures(featsToAdd)
        simbPointLayer.endEditCommand()

        # Para fazer:
        # Usar algrunner do dsgtools
        # is child algorithm  =  True no runCreateSpatialIndex
        # Colocar feedback
        return {self.OUTPUT: ""}

    def addSymbolType(
        self, inputLyr: QgsVectorLayer, fieldToAdd, feedback=None
    ) -> None:
        data = {}
        inputLyr.startEditing()
        inputLyr.beginEditCommand("start command")
        inputLyr.dataProvider().addAttributes([QgsField(fieldToAdd, QVariant.Int)])
        id_new_col = inputLyr.dataProvider().fieldNameIndex(fieldToAdd)
        for feat in inputLyr.getFeatures():
            value = self.symbolType(feat)
            data[feat.id()] = {id_new_col: value}
        inputLyr.dataProvider().changeAttributeValues(data)
        inputLyr.endEditCommand()
        inputLyr.commitChanges()

    def runCreateFieldWithExpression(
        self,
        inputLyr,
        expression,
        fieldName,
        context,
        fieldType=0,
        fieldLength=1000,
        fieldPrecision=0,
        feedback=None,
        outputLyr=None,
        is_child_algorithm=False,
    ):
        outputLyr = "memory:" if outputLyr is None else outputLyr
        output = processing.run(
            "native:fieldcalculator",
            {
                "INPUT": inputLyr,
                "FIELD_NAME": fieldName,
                "FIELD_TYPE": fieldType,
                "FIELD_LENGTH": fieldLength,
                "FIELD_PRECISION": fieldPrecision,
                "FORMULA": expression,
                "OUTPUT": outputLyr,
            },
            context=context,
            feedback=feedback,
            is_child_algorithm=is_child_algorithm,
        )
        return output["OUTPUT"]

    def runExtractSpecificVertices(
        self, inputLyr, vertices, context, feedback=None, outputLyr=None
    ):
        outputLyr = "TEMPORARY_OUTPUT" if outputLyr is None else outputLyr
        output = processing.run(
            "native:extractspecificvertices",
            {
                "INPUT": inputLyr,
                "VERTICES": vertices,
                "OUTPUT": outputLyr,
            },
            context=context,
            feedback=feedback,
        )
        return output["OUTPUT"]

    def runJoinAttributesByLocation(
        self,
        inputLyr,
        joinLyr,
        context,
        predicateList=None,
        joinFields=None,
        method=None,
        discardNonMatching=True,
        feedback=None,
        outputLyr=None,
    ):
        predicateList = [0] if predicateList is None else predicateList
        joinFields = [] if joinFields is None else joinFields
        method = 0 if method is None else method
        outputLyr = "memory:" if outputLyr is None else outputLyr
        parameters = {
            "INPUT": inputLyr,
            "JOIN": joinLyr,
            "PREDICATE": predicateList,
            "JOIN_FIELDS": joinFields,
            "METHOD": method,
            "DISCARD_NONMATCHING": discardNonMatching,
            "PREFIX": "",
            "OUTPUT": outputLyr,
        }
        output = processing.run(
            "qgis:joinattributesbylocation",
            parameters,
            context=context,
            feedback=feedback,
        )
        return output["OUTPUT"]

    def runMultipartToSingleparts(inputLyr, context, feedback=None, outputLyr=None):
        outputLyr = "memory:" if outputLyr is None else outputLyr
        parameters = {"INPUT": inputLyr, "OUTPUT": outputLyr}
        output = processing.run(
            "native:multiparttosingleparts",
            parameters,
            context=context,
            feedback=feedback,
        )
        return output["OUTPUT"]

    def angleAtFeat(self, feat: QgsFeature):
        geom = feat.geometry()
        neighbourPoint = self.adjacentPointAtEndVertex(feat, feat["vertex_index"])
        pt = QgsPointXY(geom.vertexAt(feat["vertex_index"]))
        angle = feat["angle"] if neighbourPoint.x() > pt.x() else feat["angle"] + 180
        return angle

    def runAddCount(self, inputLyr, feedback=None):
        output = processing.run(
            "native:addautoincrementalfield",
            {
                "INPUT": inputLyr,
                "FIELD_NAME": "INCREMENT",
                "START": 0,
                "GROUP_FIELDS": [],
                "SORT_EXPRESSION": "",
                "SORT_ASCENDING": False,
                "SORT_NULLS_FIRST": False,
                "OUTPUT": "TEMPORARY_OUTPUT",
            },
            feedback=feedback,
        )
        return output["OUTPUT"]

    def runCreateSpatialIndex(self, inputLyr, feedback=None):
        processing.run(
            "native:createspatialindex", {"INPUT": inputLyr}, feedback=feedback
        )

        return False

    def insertSymbolRule(self, feat1, feat2):
        if feat1["visivel"] == 2 or feat2["visivel"] == 2:
            return False
        elif feat1["nr_faixas"] == feat2["nr_faixas"]:
            return False
        elif not self.symbolType(feat1) == self.symbolType(feat1):
            return False
        return True
        # elif feat1["tipo"] not in {2,4} and not feat1["tipo"]==feat2["tipo"]:
        #     return False
        # elif feat1["tipo"] in {3,6} and feat1["tipo"]==feat2["tipo"]: #caso em que o resto nao importa
        #     return True
        # elif (feat1["situacao_fisica"] in {0,3} and feat2["situacao_fisica"] not in {0,3}) or (feat2["situacao_fisica"] in {0,3} and feat1["situacao_fisica"] not in {0,3}):
        #     return False
        # elif feat1["tipo"] in {2,4} and feat1["tipo"]==feat2["tipo"] and feat1["situacao_fisica"] not in {0,3} and feat1["situacao_fisica"]==feat2["situacao_fisica"] and feat1["canteiro_divisorio"]== feat2["canteiro_divisorio"]: # caso em que o resto nao importa
        #     return True
        # elif feat1["tipo"] == 5 and feat1["revestimento"]==feat2["revestimento"]:
        #     if not {0,3,feat1["situacao_fisica"], feat2["situacao_fisica"]} == {0,3} and not (feat1["situacao_fisica"] not in {0,3} and feat2["situacao_fisica"] not in {0,3}) and not feat1["situacao_fisica"]==feat2["situacao_fisica"]:
        #         return False
        #     return True
        # elif feat1["canteiro_divisorio"]==feat2["canteiro_divisorio"] and feat1["canteiro_divisorio"]==2:
        #     if not feat1["revestimento"]==feat2["revestimento"] and not (not feat1["revestimento"]==3 and not feat2["revestimento"]==3):
        #         return False

        # if "canteiro_divisorio" =  1 and "jurisdicao" not in (2,0):
        # elif "revestimento" = 3 and  "canteiro_divisorio" = 1 and "jurisdicao" in (2,0):
        # elif "canteiro_divisorio" = 2 and "revestimento" =  3 and "jurisdicao" = 1 and "nr_faixas"  >= 4:
        # elif "canteiro_divisorio" = 2 and "revestimento" =  3 and "jurisdicao" = 1 and ("nr_faixas"  IN (2,3) or "nr_faixas" is null):
        # elif "canteiro_divisorio" = 2 and "revestimento" =  3 and "jurisdicao" in (0,2) and "nr_faixas" >= 4:
        # elif "canteiro_divisorio" = 2 and "revestimento" =  3 and "jurisdicao" in (0,2) and ( "nr_faixas" in (2,3) or "nr_faixas" is null):
        # elif "revestimento" != 3 and "trafego" = 1 and "jurisdicao" in (1) and "nr_faixas" >= 4:
        # elif "revestimento" != 3 and "trafego" = 1 and "jurisdicao" in (1) and ("nr_faixas" in (2,3) or "nr_faixas" is null):
        # elif "revestimento" != 3 and "trafego" = 1 and "jurisdicao" in (0,2) and "nr_faixas" >= 4:
        # elif "revestimento" != 3 and "trafego" = 1 and "jurisdicao" in (0,2) and ( "nr_faixas" in (2,3) or "nr_faixas" is null):
        # elif "canteiro_divisorio" = 2 and "revestimento" != 3 and "trafego" !=  1:
        # if feat
        # representacao para "visivel" = 1 and "tipo" in (2,4) and "situacao_fisica" in (0,3) and "canteiro_divisorio" = 1 and "revestimento" != 3 and "trafego" !=  1
        # caso1
        # for feat in [feat1, feat2]

    @staticmethod
    def symbolType(feat) -> int:
        if (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] in {0, 3}
            and feat["canteiro_divisorio"] == 1
            and feat["jurisdicao"] not in {2, 0}
        ):
            return 1
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] in {0, 3}
            and feat["revestimento"] == 3
            and feat["canteiro_divisorio"] == 1
            and feat["jurisdicao"] in {2, 0}
        ):
            return 2
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] in {0, 3}
            and feat["canteiro_divisorio"] == 2
            and feat["revestimento"] == 3
            and feat["jurisdicao"] == 1
            and int(feat["nr_faixas"]) >= 4
        ):
            return 3
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] in {0, 3}
            and feat["canteiro_divisorio"] == 2
            and feat["revestimento"] == 3
            and feat["jurisdicao"] == 1
            and (int(feat["nr_faixas"]) in {2, 3} or int(feat["nr_faixas"]) is NULL)
        ):
            return 4
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] in {0, 3}
            and feat["canteiro_divisorio"] == 2
            and feat["revestimento"] == 3
            and feat["jurisdicao"] == 1
            and int(feat["nr_faixas"]) == 1
        ):
            return 5
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] in {0, 3}
            and feat["canteiro_divisorio"] == 2
            and feat["revestimento"] == 3
            and feat["jurisdicao"] in {0, 2}
            and int(feat["nr_faixas"]) >= 4
        ):
            return 6
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] in {0, 3}
            and feat["canteiro_divisorio"] == 2
            and feat["revestimento"] == 3
            and feat["jurisdicao"] in {0, 2}
            and (int(feat["nr_faixas"]) in {2, 3} or int(feat["nr_faixas"]) is NULL)
        ):
            return 7
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] in {0, 3}
            and feat["canteiro_divisorio"] == 2
            and feat["revestimento"] == 3
            and feat["jurisdicao"] in {0, 2}
            and int(feat["nr_faixas"]) == 1
        ):
            return 8
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] in {0, 3}
            and feat["revestimento"] != 3
            and feat["trafego"] == 1
            and feat["jurisdicao"] in {1}
            and int(feat["nr_faixas"]) >= 4
        ):
            return 9
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] in {0, 3}
            and feat["revestimento"] != 3
            and feat["trafego"] == 1
            and feat["jurisdicao"] in {1}
            and (int(feat["nr_faixas"]) in {2, 3} or int(feat["nr_faixas"]) is NULL)
        ):
            return 10
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] in {0, 3}
            and feat["canteiro_divisorio"] in {2}
            and feat["revestimento"] != 3
            and feat["trafego"] == 1
            and feat["jurisdicao"] in {1}
            and int(feat["nr_faixas"]) == 1
        ):
            return 11
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] in {0, 3}
            and feat["revestimento"] != 3
            and feat["trafego"] == 1
            and feat["jurisdicao"] in {0, 2}
            and int(feat["nr_faixas"]) >= 4
        ):
            return 12
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] in {0, 3}
            and feat["revestimento"] != 3
            and feat["trafego"] == 1
            and feat["jurisdicao"] in {0, 2}
            and (int(feat["nr_faixas"]) in {2, 3} or int(feat["nr_faixas"]) is NULL)
        ):
            return 13
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] in {0, 3}
            and feat["canteiro_divisorio"] in {2}
            and feat["revestimento"] != 3
            and feat["trafego"] == 1
            and feat["jurisdicao"] in {0, 2}
            and int(feat["nr_faixas"]) == 1
        ):
            return 14
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] in {0, 3}
            and feat["canteiro_divisorio"] in {2}
            and feat["revestimento"] != 3
            and feat["trafego"] != 1
        ):
            return 15
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] not in {0, 3}
            and feat["canteiro_divisorio"] == 1
        ):
            return 16
        elif (
            feat["tipo"] in {2, 4}
            and feat["situacao_fisica"] not in {0, 3}
            and feat["canteiro_divisorio"] == 2
        ):
            return 17
        elif feat["tipo"] == 3:
            return 18
        elif feat["tipo"] == 6:
            return 19
        elif (
            feat["tipo"] == 5
            and feat["revestimento"] == 3
            and feat["situacao_fisica"] in {0, 3}
        ):
            return 20
        elif (
            feat["tipo"] == 5
            and feat["revestimento"] != 3
            and feat["situacao_fisica"] in {0, 3}
        ):
            return 21
        elif feat["tipo"] == 5 and feat["situacao_fisica"] not in {0, 3}:
            return 22
        else:
            return 23

        # if feat["tipo"] in (2, 4) and feat["situacao_fisica"] in (0, 3) and feat["canteiro_divisorio"] == 1:
        #     if feat["jurisdicao"] not in (2, 0):
        #         return 1 # L11302A
        #     elif feat["revestimento"] == 3 and feat["jurisdicao"] in (2, 0):
        #         return 2 # L11302_Est_Pav_Cant_Div
        # elif feat["tipo"] in (2, 4) and feat["situacao_fisica"] in (0, 3) and feat["canteiro_divisorio"] == 2 and feat["revestimento"] == 3:
        #     if feat["jurisdicao"] == 1 and int( int(feat["nr_faixas"])) >= 3:
        #         return 3 # L11302B
        #     elif feat["jurisdicao"] == 1 and ( int(feat["nr_faixas"]) in (2, 3) or  int(feat["nr_faixas"]) is None):
        #         return 4 # L11302C
        #     elif feat["jurisdicao"] in (0, 2) and int( int(feat["nr_faixas"])) >= 3:
        #         return 5 # L11302E
        #     elif feat["jurisdicao"] in (0, 2) and ( int(feat["nr_faixas"]) in (2, 3) or  int(feat["nr_faixas"]) is None):
        #         return 6 # L11302F
        # elif feat["tipo"] in (2, 4) and feat["situacao_fisica"] in (0, 3) and feat["revestimento"] != 3 and feat["trafego"] == 1:
        #     if feat["jurisdicao"] == 1 and int( int(feat["nr_faixas"])) >= 4:
        #         return 7 # L11302H
        #     elif feat["jurisdicao"] == 1 and ( int(feat["nr_faixas"]) in (2, 3) or  int(feat["nr_faixas"]) is None):
        #         return 8 # L11302I
        #     elif feat["jurisdicao"] in (0, 2) and int( int(feat["nr_faixas"])) >= 4:
        #         return 9 # L11302K
        #     elif feat["jurisdicao"] in (0, 2) and ( int(feat["nr_faixas"]) in (2, 3) or  int(feat["nr_faixas"]) is None):
        #         return 10 # L11302L
        # elif feat["tipo"] in (2, 4) and feat["situacao_fisica"] in (0, 3) and feat["revestimento"] != 3 and feat["trafego"] != 1:
        #     return 11 # L11302N
        # elif feat["tipo"] in (2, 4) and feat["situacao_fisica"] not in (0, 3):
        #     if feat["canteiro_divisorio"] == 1:
        #         return 12 #L11302O
        #     elif feat["canteiro_divisorio"] == 2:
        #         return 13 #L11302P
        # else:
        #     return 14

        # if "tipo" in (2,4) and "situacao_fisica" IN (0,3) and "canteiro_divisorio" =  1 and "jurisdicao" not in (2,0):
        # elif "tipo" in (2,4) and "situacao_fisica" IN (0,3) and "revestimento" = 3 and  "canteiro_divisorio" = 1 and "jurisdicao" in (2,0):
        # elif "tipo" in (2,4) and "situacao_fisica" IN (0,3) and "canteiro_divisorio" = 2 and "revestimento" =  3 and "jurisdicao" = 1 and "nr_faixas"  >= 4:
        # elif "tipo" in (2,4) and "situacao_fisica" IN (0,3) and "canteiro_divisorio" = 2 and "revestimento" =  3 and "jurisdicao" = 1 and ("nr_faixas"  IN (2,3) or "nr_faixas" is null):
        # elif "tipo" in (2,4) and "situacao_fisica" IN (0,3) and "canteiro_divisorio" = 2 and "revestimento" =  3 and "jurisdicao" = 1 and "nr_faixas"  = 1:
        # elif "tipo" in (2,4) and "situacao_fisica" in (0,3) and "canteiro_divisorio" = 2 and "revestimento" =  3 and "jurisdicao" in (0,2) and "nr_faixas" >= 4:
        # elif "tipo" in (2,4) and "situacao_fisica" in (0,3) and "canteiro_divisorio" = 2 and "revestimento" =  3 and "jurisdicao" in (0,2) and ( "nr_faixas" in (2,3) or "nr_faixas" is null):
        # elif "tipo" in (2,4) and "situacao_fisica" in (0,3) and "canteiro_divisorio" = 2 and "revestimento" =  3 and "jurisdicao" in (0,2) and "nr_faixas" = 1:
        # elif "tipo" in (2,4) and "situacao_fisica" in (0,3) and "revestimento" != 3 and "trafego" = 1 and "jurisdicao" in (1) and "nr_faixas" >= 4:
        # elif "tipo" in (2,4) and "situacao_fisica" in (0,3) and "revestimento" != 3 and "trafego" = 1 and "jurisdicao" in (1) and ("nr_faixas" in (2,3) or "nr_faixas" is null):
        # elif "tipo" in (2,4) and "situacao_fisica" in (0,3) and "canteiro_divisorio" in (2) and "revestimento" != 3 and "trafego" = 1 and "jurisdicao" in (1) and "nr_faixas" = 1:
        # elif "tipo" in (2,4) and "situacao_fisica" in (0,3) and "revestimento" != 3 and "trafego" = 1 and "jurisdicao" in (0,2) and "nr_faixas" >= 4:
        # elif "tipo" in (2,4) and "situacao_fisica" in (0,3) and "revestimento" != 3 and "trafego" = 1 and "jurisdicao" in (0,2) and ( "nr_faixas" in (2,3) or "nr_faixas" is null):
        # elif "tipo" in (2,4) and "situacao_fisica" in (0,3) and "canteiro_divisorio" in (2) and "revestimento" != 3 and "trafego" = 1 and "jurisdicao" in (0,2) and "nr_faixas" = 1:
        # elif "tipo" in (2,4) and "situacao_fisica" in (0,3) and "canteiro_divisorio" in (2) and "revestimento" != 3 and "trafego" !=  1:
        # elif "tipo" in (2,4) and "situacao_fisica" not in (0,3) and "canteiro_divisorio" = 1:
        # elif "tipo" in (2,4) and "situacao_fisica" not in (0,3) and "canteiro_divisorio" = 2:
        # elif "tipo" = 3:
        # elif "tipo" = 6:
        # elif "tipo" = 5 and "revestimento" = 3 and "situacao_fisica" in (0,3):
        # elif "tipo" = 5 and "revestimento" != 3 and "situacao_fisica" in (0,3):
        # elif "tipo" = 5 and "situacao_fisica" not in (0,3):

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
        adjpoints = feat.geometry().adjacentVertices(atVertex)
        adjptvertex = adjpoints[1]
        if adjptvertex < 0:
            adjptvertex = adjpoints[0]
        adjpt = feat.geometry().vertexAt(adjptvertex)
        return QgsPointXY(adjpt)

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
