# -*- coding: utf-8 -*-
"""
/***************************************************************************
 DsgTools
                                 A QGIS plugin
 Brazilian Army Cartographic Production Tools
                              -------------------
        begin                : 2022-08-16
        git sha              : $Format:%H$
        copyright            : (C) 2022 by Philipe Borba - Cartographic Engineer @ Brazilian Army
        email                : borba.philipe@eb.mil.br
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

import numpy as np
import json
import processing
from osgeo import gdal
from PyQt5.QtCore import QCoreApplication, QVariant
from qgis.core import (QgsFeature, QgsFeatureSink, QgsField, QgsFields,
                       QgsGeometry, QgsProcessing, QgsProcessingAlgorithm,
                       QgsProcessingMultiStepFeedback,
                       QgsProcessingParameterFeatureSink,
                       QgsProcessingParameterFeatureSource,
                       QgsProcessingParameterNumber,
                       QgsProcessingParameterRasterDestination,
                       QgsProcessingParameterRasterLayer, QgsProcessingUtils,
                       QgsProject, QgsVectorLayer, QgsWkbTypes, QgsProcessingParameterFileDestination)


class BuildElevationDiagram(QgsProcessingAlgorithm):

    INPUT = 'INPUT'
    CONTOUR_INTERVAL = 'CONTOUR_INTERVAL'
    GEOGRAPHIC_BOUNDARY = 'GEOGRAPHIC_BOUNDARY'
    AREA_WITHOUT_INFORMATION_POLYGONS = 'AREA_WITHOUT_INFORMATION_POLYGONS'
    WATER_BODIES_POLYGONS = 'WATER_BODIES_POLYGONS'
    OUTPUT_RASTER = 'OUTPUT_RASTER'
    OUTPUT_JSON = 'OUTPUT_JSON'

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterRasterLayer(
                self.INPUT,
                self.tr('Input DEM'),
            )
        )
        self.addParameter(
            QgsProcessingParameterNumber(
                self.CONTOUR_INTERVAL,
                self.tr('Equidistance value'), 
                type=QgsProcessingParameterNumber.Integer, 
                minValue=0,
                defaultValue=10
            )
        )
        
        self.addParameter(
            QgsProcessingParameterFeatureSource(
                self.GEOGRAPHIC_BOUNDARY,
                self.tr('Geographic bounds layer'),
                [QgsProcessing.TypeVectorPolygon],
                optional=False
            )
        )

        self.addParameter(
            QgsProcessingParameterFeatureSource(
                self.AREA_WITHOUT_INFORMATION_POLYGONS,
                self.tr('Area without information layer'),
                [QgsProcessing.TypeVectorPolygon],
                optional=True
            )
        )

        self.addParameter(
            QgsProcessingParameterFeatureSource(
                self.WATER_BODIES_POLYGONS,
                self.tr('Water bodies layer'),
                [QgsProcessing.TypeVectorPolygon],
                optional=True
            )
        )

        self.addParameter(
            QgsProcessingParameterRasterDestination(
                self.OUTPUT_RASTER,
                self.tr('Output Elevation Diagram')
            )
        )

        self.addParameter(
            QgsProcessingParameterFileDestination(
                self.OUTPUT_JSON,
                self.tr('Output json'),
                fileFilter='*.json'
            )
        )
    
    def processAlgorithm(self, parameters, context, feedback):
        inputRaster = self.parameterAsRasterLayer(parameters, self.INPUT, context)
        threshold = self.parameterAsInt(
            parameters, self.CONTOUR_INTERVAL, context)
        geoBoundsSource = self.parameterAsSource(
            parameters, self.GEOGRAPHIC_BOUNDARY, context)
        areaWithoutInformationSource = self.parameterAsSource(
            parameters, self.AREA_WITHOUT_INFORMATION_POLYGONS, context)
        waterBodiesSource = self.parameterAsSource(
            parameters, self.WATER_BODIES_POLYGONS, context)
        outputRaster = self.parameterAsOutputLayer(parameters, self.OUTPUT_RASTER, context)
        outputJsonPath = self.parameterAsFileOutput(parameters, self.OUTPUT_JSON, context)
        multiStepFeedback = QgsProcessingMultiStepFeedback(5, feedback)
        currentStep = 0
        multiStepFeedback.setCurrentStep(currentStep)

        geographicBounds = self.overlayPolygonLayer(
            inputLyr=parameters[self.GEOGRAPHIC_BOUNDARY],
            polygonLyr=parameters[self.AREA_WITHOUT_INFORMATION_POLYGONS],
            crs=inputRaster.crs() if inputRaster is not None else QgsProject.instance().crs(),
            context=context,
            feedback=multiStepFeedback,
            operator=2
        ) if areaWithoutInformationSource is not None and \
            areaWithoutInformationSource.featureCount() > 0 else parameters[self.GEOGRAPHIC_BOUNDARY]
        
        currentStep += 1

        multiStepFeedback.setCurrentStep(currentStep)
        geographicBounds = self.overlayPolygonLayer(
            inputLyr=geographicBounds,
            polygonLyr=parameters[self.WATER_BODIES_POLYGONS],
            crs=inputRaster.crs() if inputRaster is not None else QgsProject.instance().crs(),
            context=context,
            feedback=multiStepFeedback,
            operator=2
        ) if waterBodiesSource is not None and \
            waterBodiesSource.featureCount() > 0 else geographicBounds
        currentStep += 1

        multiStepFeedback.setCurrentStep(currentStep)
        clippedRaster = self.runClipRasterLayer(
            inputRaster,
            mask=geographicBounds,
            context=context,
            feedback=multiStepFeedback,
            noData=-9999
        )
        currentStep += 1

        multiStepFeedback.setCurrentStep(currentStep)
        slicingThresholdDict, npRaster, ds = self.findSlicingThresholdDict(clippedRaster, threshold)

        self.writeOutputRaster(outputRaster, npRaster, ds)
        
        currentStep += 1

        with open(outputJsonPath, 'w') as f:
            f.write(json.dumps(slicingThresholdDict))

        return {
            "OUTPUT_RASTER": outputRaster,
            "OUTPUT_JSON": outputJsonPath,
        }

    def writeOutputRaster(self, outputRaster, npRaster, ds):
        driver = gdal.GetDriverByName("GTiff")
        out_ds = driver.Create(outputRaster, npRaster.shape[1], npRaster.shape[0], 1, gdal.GDT_Int32)
        out_ds.SetProjection(ds.GetProjection())
        out_ds.SetGeoTransform(ds.GetGeoTransform())
        out_ds.GetRasterBand(1).SetNoDataValue(-9999)
        band = out_ds.GetRasterBand(1)
        band.WriteArray(npRaster)
        band.FlushCache()
        band.ComputeStatistics(False)

    def findSlicingThresholdDict(self, inputRaster, threshold):
        ds = gdal.Open(inputRaster)
        npRaster = np.array(ds.GetRasterBand(1).ReadAsArray())
        npRaster[npRaster < 0] = np.nan
        npRaster_without_nodata = npRaster[~np.isnan(npRaster)] # removes nodata values
        npRaster_without_nodata = threshold * np.floor(npRaster_without_nodata / threshold).astype(int)
        nodataRasterPixelCount = np.count_nonzero(np.isnan(npRaster))
        minValue = np.amin(npRaster_without_nodata)
        maxValue = np.amax(npRaster_without_nodata)
        numberOfElevationBands = self.getNumberOfElevationBands(maxValue - minValue)
        areaRatioList = self.getAreaRatioList(numberOfElevationBands)
        uniqueValues, uniqueCount = np.unique(npRaster_without_nodata, return_counts=True)
        cumulativePercentage = np.cumsum(uniqueCount) / (npRaster.shape[0] * npRaster.shape[1] - nodataRasterPixelCount)
        areaPercentageValues = uniqueCount / (npRaster.shape[0] * npRaster.shape[1] - nodataRasterPixelCount)
        if any(areaPercentageValues >= 0.48) and numberOfElevationBands > 2:
            """
            The MTM spec states that if there is an elevation slice that covers more than
            50% of the map, there must only be 2 elevation bands.
            """
            idx = np.argmax(areaPercentageValues >= 0.5)
            if idx == 0:
                classDict = {
                    0: (int(uniqueValues[0]), int(uniqueValues[1])),
                    1: (int(uniqueValues[1]), int(uniqueValues[-1])),
                } 
            elif idx == len(areaPercentageValues):
                classDict = {
                    0: (int(uniqueValues[0]), int(uniqueValues[-2])),
                    1: (int(uniqueValues[-2]), int(uniqueValues[-1])),
                }
            else:
                classDict = {
                    0: (int(uniqueValues[0]), int(uniqueValues[idx])),
                    1: (int(uniqueValues[idx]), int(uniqueValues[idx+1])),
                }
    
        else:
            classThresholds = list(uniqueValues[
                    np.searchsorted(
                        cumulativePercentage,
                        np.cumsum(areaRatioList)
                    )
                ] + threshold
            )
            lowerBounds = [minValue]+classThresholds if minValue not in classThresholds else classThresholds
            classDict = {
                i: (int(a), int(b)) for i, (a, b) in enumerate(zip(lowerBounds, classThresholds))
            }
        outputRaster = np.zeros_like(npRaster, dtype=np.int)
        outputRaster[np.isnan(npRaster)] = -9999
        for i, (minB, maxB) in classDict.items():
            if int(i) == 0:
                outputRaster[ np.where( (minB <= npRaster) & (npRaster <= maxB) )] = int(i)
            else:
                outputRaster[ np.where( (minB < npRaster) & (npRaster <= maxB) )] = int(i)

        return classDict, outputRaster, ds


    def getAreaRatioList(self, numberOfElevationBands):
        bandDict = {
            2: [0.6, 0.4],
            3: [0.3, 0.4, 0.3],
            4: [0.2, 0.3, 0.3, 0.2],
        }
        return bandDict[numberOfElevationBands]
    
    def getNumberOfElevationBands(self, range):
        if range <= 100:
            return 2
        elif range <= 600:
            return 3
        else:
            return 4

    def overlayPolygonLayer(self, inputLyr, polygonLyr, crs, context, feedback, operator=0):
        parameters = {
            'ainput': inputLyr,
            'atype': 0,
            'binput': polygonLyr,
            'btype': 0,
            'operator': operator,
            'snap': 0,
            '-t': False,
            'output': 'TEMPORARY_OUTPUT',
            'GRASS_REGION_PARAMETER': None,
            'GRASS_SNAP_TOLERANCE_PARAMETER': -1,
            'GRASS_MIN_AREA_PARAMETER': 1e-15,
            'GRASS_OUTPUT_TYPE_PARAMETER': 3,
            'GRASS_VECTOR_DSCO': '',
            'GRASS_VECTOR_LCO': '',
            'GRASS_VECTOR_EXPORT_NOCAT': False
            }
        x = processing.run(
            'grass7:v.overlay',
            parameters,
            context=context,
            feedback=feedback
        )
        lyr = QgsProcessingUtils.mapLayerFromString(x['output'], context)
        lyr.setCrs(crs)
        return lyr

    def runGrassReclass(self, inputRaster, expression, context, feedback=None, outputRaster=None):
        outputRaster = 'TEMPORARY_OUTPUT' if outputRaster is None else outputRaster
        output = processing.run(
            "grass7:r.reclass",
            {
                'input': inputRaster,
                'rules': '',
                'txtrules': expression,
                'output': outputRaster,
                'GRASS_REGION_PARAMETER': None,
                'GRASS_REGION_CELLSIZE_PARAMETER': 0,
                'GRASS_RASTER_FORMAT_OPT': '',
                'GRASS_RASTER_FORMAT_META': ''
            },
            context=context,
            feedback=feedback
        )
        return output['output']
    
    def runSieve(self, inputRaster, threshold, context, eightConectedness=False, feedback=None, outputRaster=None):
        outputRaster = 'TEMPORARY_OUTPUT' if outputRaster is None else outputRaster
        output = processing.run(
            "gdal:sieve",
            {
                'INPUT': inputRaster,
                'THRESHOLD': threshold,
                'EIGHT_CONNECTEDNESS': eightConectedness,
                'NO_MASK': False,
                'MASK_LAYER': None,
                'EXTRA': '',
                'OUTPUT': outputRaster
            },
            context=context,
            feedback=feedback
        )
        return output['OUTPUT']
    
    def runGrassMapCalcSimple(self, inputA, expression, context, feedback=None, inputB=None, inputC=None, inputD=None, inputE=None, inputF=None, outputRaster=None):
        outputRaster = 'TEMPORARY_OUTPUT' if outputRaster is None else outputRaster
        output = processing.run(
            "grass7:r.mapcalc.simple",
            {
                'a': inputA,
                'b': inputB,
                'c': inputC,
                'd': inputD,
                'e': inputE,
                'f': inputF,
                'expression': expression,
                'output': outputRaster,
                'GRASS_REGION_PARAMETER': None,
                'GRASS_REGION_CELLSIZE_PARAMETER': 0,
                'GRASS_RASTER_FORMAT_OPT': '',
                'GRASS_RASTER_FORMAT_META': ''
            },
            context=context,
            feedback=feedback
        )
        return output['output']
    
    def runClipRasterLayer(self, inputRaster, mask, context, feedback=None, outputRaster=None, noData=None):
        outputRaster = 'TEMPORARY_OUTPUT' if outputRaster is None else outputRaster
        output = processing.run(
            "gdal:cliprasterbymasklayer",
            {
                'INPUT': inputRaster,
                'MASK': mask,
                'SOURCE_CRS': None,
                'TARGET_CRS': None,
                'TARGET_EXTENT': None,
                'NODATA': noData,
                'ALPHA_BAND': False,
                'CROP_TO_CUTLINE': True,
                'KEEP_RESOLUTION': False,
                'SET_RESOLUTION': False,
                'X_RESOLUTION': None,
                'Y_RESOLUTION': None,
                'MULTITHREADING': False,
                'OPTIONS': '',
                'DATA_TYPE': 0,
                'EXTRA': '',
                'OUTPUT': outputRaster
            },
            # context=context,
            feedback=feedback
        )
        return output['OUTPUT']

    def tr(self, string):
        return QCoreApplication.translate('BuildElevationDiagram', string)

    def createInstance(self):
        return BuildElevationDiagram()

    def name(self):
        return 'buildelevationdiagram'

    def displayName(self):
        return self.tr('Constrói diagrama de elevação')

    def group(self):
        return self.tr('Edição')

    def groupId(self):
        return 'edicao'

    def shortHelpString(self):
        return self.tr("O algoritmo constrói o diagrama de elevação baseado no MDS de entrada.")
