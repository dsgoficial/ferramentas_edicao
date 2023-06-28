# -*- coding: utf-8 -*-

from typing import Set
from ..labelTools.labelHandler import (
    getLayerByName,
)

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
    QgsFeatureSink,
    QgsProcessingParameterEnum,
    QgsRenderContext,
    QgsFields,
    QgsProcessingParameterNumber,
    QgsProcessingParameterFeatureSink,
    QgsMarkerSymbol,
    QgsLineSymbol,
    QgsSvgMarkerSymbolLayer,
    QgsRectangle,
    QgsProperty,
    QgsSimpleMarkerSymbolLayer,
    QgsWkbTypes,
    QgsProcessingException,
    NULL,
)
from DsgTools.core.DSGToolsProcessingAlgs.algRunner import AlgRunner
from qgis.PyQt.QtCore import QCoreApplication, QVariant


class VerifySymbolOverlap(QgsProcessingAlgorithm):

    INPUT_ = "INPUT"
    FRAME_LAYER = "FRAME_LAYER"
    SCALE = "SCALE"
    OUTPUT = "OUTPUT"
    MIN_AREA = "MIN_AREA"

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterVectorLayer(
                self.FRAME_LAYER,
                self.tr("Selecionar camada de MOLDURA"),
                [QgsProcessing.TypeVectorPolygon],
                optional=True,
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
        self.addParameter(
            QgsProcessingParameterNumber(
                self.MIN_AREA,
                self.tr(
                    "Área mínima (interseções menores que isso não serão consideradas)"
                ),
                type=QgsProcessingParameterNumber.Double,
                defaultValue=10,
            )
        )
        self.addParameter(
            QgsProcessingParameterFeatureSink(
                self.OUTPUT, self.tr("Flags Sobreposição de Simbologia")
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        # Os estilos ja estão carregados
        # Banco de edição tem que ser UTM
        frameLyrPre = self.parameterAsVectorLayer(parameters, self.FRAME_LAYER, context)
        scaleIdx = self.parameterAsEnum(parameters, self.SCALE, context)
        min_area = self.parameterAsDouble(parameters, self.MIN_AREA, context)
        scaleDict = {
            "1:25.000": 25000,
            "1:50.000": 50000,
            "1:100.000": 100000,
            "1:250.000": 250000,
        }
        scale = scaleDict[self.scales[scaleIdx]]
        multiStepFeedback = QgsProcessingMultiStepFeedback(3, feedback)
        multiStepFeedback.pushInfo(self.tr("Verificando as camadas."))
        multiStepFeedback.setCurrentStep(0)
        infra_via_deslocamento_l = getLayerByName("infra_via_deslocamento_l")
        constr_edificacao_p = getLayerByName("constr_edificacao_p")
        cobter_massa_dagua_a = getLayerByName("cobter_massa_dagua_a")
        algRunner = AlgRunner()
        crs = infra_via_deslocamento_l.crs()
        if crs.isGeographic():
            raise QgsProcessingException(
                "Verificar sobreposição não pode ser feito em lat/long"
            )
        verifyList = [
            (infra_via_deslocamento_l, infra_via_deslocamento_l),
        ]
        if constr_edificacao_p is not None:
            verifyList.append(
                (constr_edificacao_p, constr_edificacao_p),
                (infra_via_deslocamento_l, constr_edificacao_p),
            )
            if cobter_massa_dagua_a is not None:
                verifyList.append((cobter_massa_dagua_a, constr_edificacao_p))

        frameLyr = (
            algRunner.runDissolve(
                inputLyr=frameLyrPre,
                feedback=multiStepFeedback,
                context=context,
                is_child_algorithm=False,
            )
            if frameLyrPre
            else None
        )

        fields = QgsFields()
        fields.append(QgsField("id", QVariant.String))
        fields.append(QgsField("camada_1", QVariant.String))
        fields.append(QgsField("camada_2", QVariant.String))
        (feats_sink, feats_sink_id) = self.parameterAsSink(
            parameters,
            self.OUTPUT,
            context,
            fields,
            QgsWkbTypes.MultiPolygon,
            crs,
        )
        multiStepFeedback.setCurrentStep(1)
        multiStepFeedback.pushInfo(self.tr("Calculando as interseções."))
        featSet = self.calculateIntersections(
            verifyList, scale, fields, context, feedback=multiStepFeedback
        )
        multiStepFeedback.setCurrentStep(2)
        featSet = self.removeOutputFeatures(
            featSet, frameLyr, min_area, multiStepFeedback
        )
        list(
            map(
                lambda x: feats_sink.addFeature(x, QgsFeatureSink.FastInsert),
                featSet,
            )
        )

        return {self.OUTPUT: feats_sink_id}

    def calculateIntersections(self, layerList, scale, fields, context, feedback=None):
        featSet = set()
        if feedback is not None:
            multiStepFeedback = QgsProcessingMultiStepFeedback(
                5 * len(layerList), feedback
            )
            multiStepFeedback.setCurrentStep(0)
        else:
            multiStepFeedback = None
        for step, (a, b) in enumerate(layerList):
            if feedback is not None and feedback.isCanceled():
                return
            if feedback is not None:
                multiStepFeedback.setCurrentStep(step * 5)
            layer_pre_a = self.prepareInputLayer(a, context, None)
            if feedback is not None:
                multiStepFeedback.setCurrentStep(step * 5 + 1)
            layer_a = self.polygonLayer(layer_pre_a, a, scale, context, feedback=None)
            if a == b:
                layer_pre_b = layer_pre_a
                layer_b = layer_a
            else:
                if feedback is not None:
                    multiStepFeedback.setCurrentStep(step * 5 + 2)
                layer_pre_b = self.prepareInputLayer(b, context, feedback=None)
                if feedback is not None:
                    multiStepFeedback.setCurrentStep(step * 5 + 3)
                layer_b = self.polygonLayer(
                    layer_pre_b, b, scale, context, feedback=multiStepFeedback
                )
            if feedback is not None:
                multiStepFeedback.setCurrentStep(step * 5 + 4)
            featSet_a_b = self.getIntersectionsFeats(
                layer_a,
                layer_pre_a,
                layer_b,
                layer_pre_b,
                fields,
                context,
                feedback=multiStepFeedback,
            )
            featSet = featSet.union(featSet_a_b)
        return featSet

    def prepareInputLayer(self, lyr, context, feedback=None) -> QgsVectorLayer:
        algRunner = AlgRunner()
        if feedback is not None:
            multiStepFeedback = QgsProcessingMultiStepFeedback(4, feedback)
            multiStepFeedback.setCurrentStep(0)
        else:
            multiStepFeedback = None
        lyr_name = algRunner.runCreateFieldWithExpression(
            inputLyr=lyr,
            expression="@layer_name",
            fieldType=2,
            fieldName="nome_camada",
            feedback=multiStepFeedback,
            context=context,
            is_child_algorithm=False,
        )
        if feedback is not None:
            multiStepFeedback.setCurrentStep(1)
        lyr_x = algRunner.runCreateFieldWithExpression(
            inputLyr=lyr_name,
            expression="$x",
            fieldType=0,
            fieldName="x",
            feedback=multiStepFeedback,
            context=context,
            is_child_algorithm=False,
        )
        if feedback is not None:
            multiStepFeedback.setCurrentStep(2)
        lyr_xy = algRunner.runCreateFieldWithExpression(
            inputLyr=lyr_x,
            expression="$y",
            fieldType=0,
            fieldName="y",
            feedback=multiStepFeedback,
            context=context,
            is_child_algorithm=False,
        )
        lyr_xy.startEditing()
        lyr_xy.dataProvider().addAttributes(
            [
                QgsField("height", QVariant.Double),
                QgsField("width", QVariant.Double),
                QgsField("offset_x", QVariant.Double),
                QgsField("offset_y", QVariant.Double),
            ]
        )
        lyr_xy.updateFields()
        lyr_xy.commitChanges()
        if feedback is not None:
            multiStepFeedback.setCurrentStep(3)
        layer = self.addIdField(lyr_xy, "new_id", context, multiStepFeedback)
        return layer

    def addIdField(self, layer: QgsVectorLayer, fieldName, context, feedback):
        algRunner = AlgRunner()
        if feedback is not None:
            multiStepFeedback = QgsProcessingMultiStepFeedback(1, feedback)
            multiStepFeedback.setCurrentStep(0)
        else:
            multiStepFeedback = None
        newLayer = algRunner.runCreateFieldWithExpression(
            inputLyr=layer,
            expression="$id",
            fieldType=0,
            fieldName=fieldName,
            feedback=multiStepFeedback,
            context=context,
            is_child_algorithm=False,
        )
        return newLayer

    def polygonLayer(
        self,
        layer_pre: QgsVectorLayer,
        layer_orig: QgsVectorLayer,
        scale,
        context,
        feedback=None,
    ) -> QgsVectorLayer:
        if feedback is not None:
            multiStepFeedback = QgsProcessingMultiStepFeedback(4, feedback)
            multiStepFeedback.setCurrentStep(0)
        else:
            multiStepFeedback = None
        self.removeInvisibleFeatures(layer_pre)
        if feedback is not None:
            multiStepFeedback.setCurrentStep(1)
        if layer_pre.geometryType() == QgsWkbTypes.PolygonGeometry:
            return layer_pre
        if feedback is not None:
            multiStepFeedback.setCurrentStep(2)
        layer_buffered = self.getBufferedLayerWithAttributes(
            layer_pre, layer_orig, scale, context, multiStepFeedback
        )
        if feedback is not None:
            multiStepFeedback.setCurrentStep(3)
        if layer_pre.geometryType() == QgsWkbTypes.PointGeometry:
            self.updateGeometries(layer_buffered, multiStepFeedback)
        return layer_buffered

    def removeInvisibleFeatures(self, layer: QgsVectorLayer) -> QgsVectorLayer:
        if layer.fields().indexFromName("visivel") == -1:
            return
        featsToRemove = {f.id() for f in layer.getFeatures() if f["visivel"] == 2}
        layer.startEditing()
        dp = layer.dataProvider()
        dp.deleteFeatures(list(featsToRemove))
        layer.commitChanges()

    def getBufferedLayerWithAttributes(
        self,
        layer: QgsVectorLayer,
        layer_orig: QgsVectorLayer,
        scale,
        context,
        feedback=None,
    ) -> QgsVectorLayer:
        algRunner = AlgRunner()
        renderer = layer_orig.renderer().clone()
        renderer.startRender(QgsRenderContext(), layer.fields())
        layer.startEditing()
        updateFeats = {}
        endCap = 0  # Round
        if feedback is not None:
            multiStepFeedback = QgsProcessingMultiStepFeedback(2, feedback)
            multiStepFeedback.setCurrentStep(0)
        else:
            multiStepFeedback = None
        if feedback is not None:
            progressStep = 100 / layer.featureCount()
        for step, feat in enumerate(layer.getFeatures()):
            if feedback is not None and feedback.isCanceled():
                return
            if multiStepFeedback is not None:
                multiStepFeedback.setProgress(progressStep * step)
            symbolsFeat = renderer.symbolsForFeature(feat, QgsRenderContext())
            width_mm = 1e-13  # default, cannot be null (buffer)
            if len(symbolsFeat) == 0:
                newAttributes = {
                    feat.fieldNameIndex("width"): scale * (width_mm / 1000),
                    feat.fieldNameIndex("height"): 0,
                    feat.fieldNameIndex("offset_x"): 0,
                    feat.fieldNameIndex("offset_y"): 0,
                }
                updateFeats[feat.id()] = newAttributes
                continue
            symbolFeat = symbolsFeat[0]
            if isinstance(symbolFeat, QgsMarkerSymbol):
                symbolLyr = symbolFeat.symbolLayer(0)
                width_mm = symbolFeat.size()
                if isinstance(symbolLyr, QgsSimpleMarkerSymbolLayer):
                    width_mm += symbolLyr.strokeWidth()
                height_mm = width_mm
                if isinstance(symbolLyr, QgsSvgMarkerSymbolLayer):
                    ratio = symbolLyr.defaultAspectRatio()
                    height_mm = width_mm * ratio
                offset_geom = QgsGeometry()
                offset_geom = offset_geom.fromQPointF(symbolLyr.offset())
                offset = offset_geom.asPoint()
                offset_x_mm = offset.x()
                offset_y_mm = offset.y()
                # acuidade visual de 0.2 entre feições
                newAttributes = {
                    feat.fieldNameIndex("width"): scale * ((width_mm + 0.2) / 1000),
                    feat.fieldNameIndex("height"): scale * ((height_mm + 0.2) / 1000),
                    feat.fieldNameIndex("offset_x"): scale * (offset_x_mm / 1000),
                    feat.fieldNameIndex("offset_y"): scale * (offset_y_mm / 1000),
                }
                updateFeats[feat.id()] = newAttributes
            elif isinstance(symbolFeat, QgsLineSymbol):
                endCap = 1  # Flat
                width_mm = symbolFeat.width()
                for i in range(symbolFeat.symbolLayerCount()):
                    if feedback is not None and feedback.isCanceled():
                        return
                    symbolLyr = symbolFeat.symbolLayer(i)
                    offset = symbolLyr.offset()
                    strokeWidth = symbolLyr.width()
                    newWidth = abs(offset) + strokeWidth / 2
                    width_mm = 2 * newWidth if 2 * newWidth > width_mm else width_mm
                newAttributes = {
                    feat.fieldNameIndex("width"): scale * ((width_mm + 0.2) / 1000)
                }
                updateFeats[feat.id()] = newAttributes
        if feedback is not None:
            multiStepFeedback.setCurrentStep(1)
        renderer.stopRender(QgsRenderContext())
        dp = layer.dataProvider()
        dp.changeAttributeValues(updateFeats)
        layer.commitChanges()
        layer_buffered = algRunner.runBuffer(
            inputLayer=layer,
            distance=QgsProperty.fromExpression('"width"/2'),
            context=context,
            endCapStyle=endCap,
            feedback=None,
        )
        return layer_buffered

    def updateGeometries(self, layer: QgsVectorLayer, feedback=None):
        simbRotIndex = layer.fields().indexFromName("simb_rot")
        updateGeom = {}
        if feedback is not None:
            multiStepFeedback = QgsProcessingMultiStepFeedback(1, feedback)
            multiStepFeedback.setCurrentStep(0)
        if feedback is not None:
            progressStep = layer.featureCount()
        for step, feat in enumerate(layer.getFeatures()):
            if feedback is not None and feedback.isCanceled():
                return
            if feedback is not None:
                multiStepFeedback.setProgress(progressStep * step)
            x = feat["x"]
            width = feat["width"]
            offset_x = feat["offset_x"]
            y = feat["y"]
            height = feat["height"]
            offset_y = feat["offset_y"]
            rect = QgsRectangle(
                x - width / 2 + offset_x,
                y - height / 2 - offset_y,
                x + width / 2 + offset_x,
                y + height / 2 - offset_y,
            )
            newGeom = QgsGeometry()
            newGeom = newGeom.fromRect(rect)
            newGeom.convertToMultiType()
            if simbRotIndex != -1:
                simb_rot = feat["simb_rot"] if feat["simb_rot"] != NULL else 0
                pxy = QgsPointXY(x, y)
                newGeom.rotate(simb_rot, pxy)
            updateGeom[feat.id()] = newGeom
        layer.startEditing()
        dp = layer.dataProvider()
        dp.changeGeometryValues(updateGeom)
        layer.commitChanges()

    def getIntersectionsFeats(
        self,
        layer1: QgsVectorLayer,
        layer1_pre: QgsVectorLayer,
        layer2: QgsVectorLayer,
        layer2_pre: QgsVectorLayer,
        fields,
        context,
        frameLyr=None,
        feedback=None,
    ) -> Set[QgsFeature]:
        features = set()
        algRunner = AlgRunner()
        if feedback is not None:
            multiStepFeedback = QgsProcessingMultiStepFeedback(6, feedback)
            multiStepFeedback.setCurrentStep(0)
        else:
            multiStepFeedback = None
        layer1 = self.addIdField(layer1, "id_pol", context, None)
        if feedback is not None:
            multiStepFeedback.setCurrentStep(1)
        layer2 = self.addIdField(layer2, "id_pol", context, None)
        if feedback is not None:
            multiStepFeedback.setCurrentStep(2)
        algRunner.runCreateSpatialIndex(layer1, context, None)
        if feedback is not None:
            multiStepFeedback.setCurrentStep(3)
        algRunner.runCreateSpatialIndex(layer2, context, None)
        if feedback is not None:
            multiStepFeedback.setCurrentStep(4)
        interLayer = algRunner.runJoinAttributesByLocation(
            inputLyr=layer1, joinLyr=layer2, context=context, feedback=multiStepFeedback
        )
        if feedback is not None:
            multiStepFeedback.setCurrentStep(5)
            progressStep = 100 / interLayer.featureCount()
        alreadyVerify = []
        for step, feat in enumerate(interLayer.getFeatures()):
            if feedback is not None and feedback.isCanceled():
                return
            if {feat["id"], feat["id_2"]} in alreadyVerify:
                continue
            alreadyVerify.append({feat["id"], feat["id_2"]})
            if feat["id"] == feat["id_2"]:
                continue
            feat1_orig = layer1_pre.getFeature(feat["new_id"])
            feat2_orig = layer2_pre.getFeature(feat["new_id_2"])
            if feat1_orig.geometry().intersects(feat2_orig.geometry()):
                continue
            feat1 = layer1.getFeature(feat["id_pol"])
            feat2 = layer2.getFeature(feat["id_pol_2"])
            intersection = feat1.geometry().intersection(feat2.geometry())
            if intersection.isEmpty() or (
                not intersection.wkbType() == QgsWkbTypes.Polygon
                and not intersection.wkbType() == QgsWkbTypes.MultiPolygon
            ):
                continue
            if frameLyr is not None:
                if not self.geomInLayer(intersection, frameLyr, multiStepFeedback):
                    continue
            intersection.convertToMultiType()
            newFeat = QgsFeature(fields)
            newFeat.setGeometry(intersection)
            newFeat["id"] = feat["id"] + "_" + feat["id_2"]
            newFeat["camada_1"] = feat1["nome_camada"]
            newFeat["camada_2"] = feat2["nome_camada"]
            features.add(newFeat)
            if feedback is not None:
                multiStepFeedback.setProgress(progressStep * step)
        return features

    def geomInLayer(
        self, geom: QgsGeometry, lyr: QgsVectorLayer, feedback=None
    ) -> bool:
        for feat in lyr.getFeatures():
            if feedback is not None and feedback.isCanceled():
                return
            if geom.within(feat.geometry()):
                return True
        return False

    def removeOutputFeatures(
        self, feats: Set[QgsFeature], frameLyr: QgsVectorLayer, areaInput, feedback=None
    ):
        featsToRemove = set()
        if feedback is not None:
            progressStep = 100 / len(feats)
        for step, feat in enumerate(feats):
            if feedback is not None and feedback.isCanceled():
                return
            if feedback is not None:
                feedback.setProgress(progressStep * step)
            geom = feat.geometry()
            if geom.area() < areaInput:
                featsToRemove.add(feat)
        return feats - featsToRemove

    def tr(self, string):
        return QCoreApplication.translate("Processing", string)

    def createInstance(self):
        return VerifySymbolOverlap()

    def name(self):
        return "verifysymboloverlap"

    def displayName(self):
        return self.tr("Verifica Sobreposição de Símbolos")

    def group(self):
        return self.tr("Auxiliar")

    def groupId(self):
        return "auxiliar"

    def shortHelpString(self):
        return self.tr("O algoritmo ...")
