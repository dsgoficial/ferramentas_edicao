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

from uuid import uuid4
import numpy as np
import json
import processing
from osgeo import gdal, ogr
from PyQt5.QtCore import QCoreApplication, QVariant
from qgis.core import (QgsFeature, QgsFeatureSink, QgsField, QgsFields,
                       QgsGeometry, QgsProcessing, QgsProcessingAlgorithm,
                       QgsProcessingMultiStepFeedback,
                       QgsProcessingParameterFeatureSink,
                       QgsProcessingParameterFeatureSource,
                       QgsProcessingParameterNumber,
                       QgsProcessingParameterRasterDestination,
                       QgsProcessingParameterRasterLayer, QgsProcessingUtils,
                       QgsProject, QgsVectorLayer, QgsWkbTypes, QgsProcessingParameterFileDestination,
                       QgsVectorFileWriter)


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
        areaWithoutInformationLyr = self.parameterAsVectorLayer(
            parameters, self.AREA_WITHOUT_INFORMATION_POLYGONS, context)
        waterBodiesLyr = self.parameterAsVectorLayer(
            parameters, self.WATER_BODIES_POLYGONS, context)
        outputRaster = self.parameterAsOutputLayer(parameters, self.OUTPUT_RASTER, context)
        outputJsonPath = self.parameterAsFileOutput(parameters, self.OUTPUT_JSON, context)
        multiStepFeedback = QgsProcessingMultiStepFeedback(6, feedback)
        currentStep = 0
        multiStepFeedback.setCurrentStep(currentStep)

        clippedRaster = self.runClipRasterLayer(
            inputRaster,
            mask=parameters[self.GEOGRAPHIC_BOUNDARY],
            context=context,
            feedback=multiStepFeedback,
            noData=-9999,
            outputRaster=QgsProcessingUtils.generateTempFilename(f'clip_{str(uuid4().hex)}.tif')
        )
        currentStep += 1

        clippedRasterLyr = QgsProcessingUtils.mapLayerFromString(clippedRaster, context)   

        multiStepFeedback.setCurrentStep(currentStep)
        areaWithoutInformationNpArray = self.buildNumpyNodataMask(
            rasterLyr=clippedRasterLyr,
            vectorLyr=areaWithoutInformationLyr
        )
        currentStep += 1

        multiStepFeedback.setCurrentStep(currentStep)
        waterBodyNpArray = self.buildNumpyNodataMask(
            rasterLyr=clippedRasterLyr,
            vectorLyr=waterBodiesLyr
        )
        currentStep += 1

        multiStepFeedback.setCurrentStep(currentStep)
        slicingThresholdDict, npRaster, ds = self.findSlicingThresholdDict(
            clippedRaster, areaWithoutInformationNpArray, waterBodyNpArray, threshold)

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
        out_ds = None

    def findSlicingThresholdDict(self, inputRaster, areaWithoutInformationNpArray, waterBodyNpArray, threshold):
        ds = gdal.Open(inputRaster)
        npRaster = np.array(ds.GetRasterBand(1).ReadAsArray())
        npRaster[npRaster < 0] = np.nan
        areaWithoutInformationNpArray.resize(npRaster.shape, refcheck=False)
        waterBodyNpArray.resize(npRaster.shape, refcheck=False)
        npRaster = npRaster + areaWithoutInformationNpArray + waterBodyNpArray #performs clipping in raster
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
    
    def buildNumpyNodataMask(self, rasterLyr, vectorLyr):
        _out = QgsProcessingUtils.generateTempFilename(f'clip_{str(uuid4().hex)}.tif')
        _temp_in = QgsProcessingUtils.generateTempFilename(f'feats_{str(uuid4().hex)}.shp')

        NoData_value = -9999
        x_res = rasterLyr.rasterUnitsPerPixelX()
        y_res = rasterLyr.rasterUnitsPerPixelY()
        x_min, y_min, x_max, y_max = rasterLyr.extent().toRectF().getCoords()

        # 4. Create Target - TIFF
        cols = int( (x_max - x_min) / x_res )
        rows = int( (y_max - y_min) / y_res )

        _raster = gdal.GetDriverByName('GTiff').Create(_out, cols, rows, 1, gdal.GDT_Byte)
        _raster.SetGeoTransform((x_min, x_res, 0, y_max, 0, -y_res))
        _band = _raster.GetRasterBand(1)
        _band.SetNoDataValue(NoData_value)

        if vectorLyr is None or vectorLyr.featureCount() == 0:
            _raster = None
            ds = gdal.Open(_out)
            npRaster = np.array(ds.GetRasterBand(1).ReadAsArray())
            ds = None
            return npRaster
        
        save_options = QgsVectorFileWriter.SaveVectorOptions()
        save_options.driverName = "ESRI Shapefile"
        save_options.fileEncoding = "UTF-8"
        transform_context = QgsProject.instance().transformContext()
        error = QgsVectorFileWriter.writeAsVectorFormatV3(
            vectorLyr,
            _temp_in,
            transform_context,
            save_options
        )

        # 3. Open Shapefile
        driver = ogr.GetDriverByName('ESRI Shapefile')
        source_ds = driver.Open(_temp_in, 0)
        source_layer = source_ds.GetLayer()

        gdal.RasterizeLayer(_raster, [1], source_layer, burn_values=[255.])
        _raster = None
        ds = gdal.Open(_out)
        npRaster = np.array(ds.GetRasterBand(1).ReadAsArray(), dtype=float)
        ds = None
        npRaster[npRaster == 255.] = np.nan
        return npRaster


    def tr(self, string):
        return QCoreApplication.translate('BuildElevationDiagram', string)

    def createInstance(self):
        return BuildElevationDiagram()

    def name(self):
        return 'buildelevationdiagram'

    def displayName(self):
        return self.tr('Constrói diagrama de elevação')

    def group(self):
        return self.tr('Auxiliar')

    def groupId(self):
        return 'auxiliar'

    def shortHelpString(self):
        return self.tr("O algoritmo constrói o diagrama de elevação baseado no MDS de entrada.")
