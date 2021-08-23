import csv
import itertools
import math
import os
import string
from pathlib import Path

from qgis.core import (QgsFeature, QgsField, QgsFields, QgsGeometry,
                       QgsPointXY, QgsProject, QgsVectorLayer)
from qgis.PyQt.QtCore import QObject, QVariant

letters = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
numbers = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40', '41', '42', '43', '44', '45', '46', '47', '48', '49', '50', '51', '52', '53', '54', '55', '56', '57', '58', '59', '60']

class UtmGrid(QObject):
    def __init__(self):
        """Constructor."""
        super(UtmGrid,self).__init__()
        self.scales=[1000,500,250,100,50,25,10,5,2,1]
        nomen1000=['Nao Recorta']        
        nomen500=[['V','X'],['Y','Z']]
        nomen250=[['A','B'],['C','D']]
        nomen100=[['I','II','III'],['IV','V','VI']]
        nomen50=[['1','2'],['3','4']]
        nomen25=[['NO','NE'],['SO','SE']]
        nomen10=[['A','B'],['C','D'],['E','F']]
        nomen5=[['I','II'],['III','IV']]
        nomen2=[['1', '2', '3'], ['4', '5', '6']]
        nomen1=[['A','B'],['C','D']]
        self.scaleText=[nomen1000,nomen500,nomen250,nomen100,nomen50,nomen25,nomen10,nomen5,nomen2,nomen1]
        self.matrizRecorte=[]
        self.spacingX=[]
        self.spacingY=[]
        self.stepsDone=0
        self.stepsTotal=0
        self.featureBuffer=[]
        self.MIdict=[]
        self.MIRdict=[]
    
    def __del__(self):
        """Destructor."""
        pass
    
    def findScaleText(self,scaleText,scaleId):
        """Get the scale matrix for the given scaleText and scaleId
        """
        j=-1
        for j,row in enumerate(self.scaleText[scaleId]):
            if (scaleText in row):
                i=row.index(scaleText)
                break
        return (i,len(self.scaleText[scaleId])-j-1) 
        
    def getScale(self, inomen):
        """Get scale for the given map index
        """
        return self.scales[ self.getScaleIdFromiNomen(inomen) ]
    
    def getScaleIdFromiNomen(self, inomen):
        """Get scale index in self.scales object for the given map index
        """
        id = len(inomen.split('-')) - 2
        return id
     
    def getScaleIdFromScale(self, scale):
        """Get scale if for the given scale (e.g. 1, 2, 25, 250)
        """
        return self.scales.index(scale)
    
    def getInomRowCol(self, inomen):
        scaleIdFromiNomen = self.getScaleIdFromiNomen(inomen)
        inomenParts=inomen.upper().split('-')
        scalePart = inomenParts[-1]
        
        nomen = self.scaleText[scaleIdFromiNomen]
        linhas = len(nomen)
        colunas = len(nomen[0])

        for row, row_value in enumerate(nomen):
            for col, cell_value in enumerate(row_value):
                if cell_value == scalePart:
                    return row,col, linhas, colunas

    def getLeftNeighborC(self, inomen):
        # Going upper
        scaleIdFromiNomen = self.getScaleIdFromiNomen(inomen)
        rows = []

        nextInom = inomen
        row,col, linhas, colunas = self.getInomRowCol(inomen)        
        scaleId = self.getScaleIdFromiNomen(nextInom)             
        rows.append(row)   

        while col == 0:
            inom_splited = nextInom.split('-')
            nextInom = '-'.join(nextInom.split('-')[:-1])
            if len(inom_splited) == 3:
                vertical = inom_splited[0]                
                numero = numbers[numbers.index(inom_splited[1])-1]
                nextInom = vertical + '-' + numero + '-'+inom_splited[2]
                col = len(self.scaleText[scaleId][0])
                break

            else:             
                scaleId = self.getScaleIdFromiNomen(nextInom)      
                row,col, linhas, colunas = self.getInomRowCol(nextInom)   
                rows.append(row)            

        if col != 0:
            new_col = col-1
            # ACHEI        
            nextInom = '-'.join(nextInom.split('-')[:-1])
            upperInom = nextInom + '-' +  self.scaleText[scaleId][row][new_col]                        
            for i, rightrow in enumerate(reversed(rows[:-1])):                                                
                newScaleId = i + scaleId + 1                
                correct_col = len(self.scaleText[newScaleId][0])-1                
                rightInomPart = self.scaleText[newScaleId][rightrow][correct_col]
                upperInom = upperInom + '-' + rightInomPart                
            return upperInom

    def getRightNeighborC(self, inomen):
        # Going upper
        scaleIdFromiNomen = self.getScaleIdFromiNomen(inomen)
        rows = []

        nextInom = inomen
        row,col, linhas, colunas = self.getInomRowCol(inomen)        
        scaleId = self.getScaleIdFromiNomen(nextInom)             
        rows.append(row)   

        while col == len(self.scaleText[scaleId][0])-1:
            inom_splited = nextInom.split('-')
            nextInom = '-'.join(nextInom.split('-')[:-1])
            if len(inom_splited) == 3:
                vertical = inom_splited[0]                
                numero = numbers[numbers.index(inom_splited[1])+1]
                nextInom = vertical + '-' + numero + '-'+inom_splited[2]
                #col = len(self.scaleText[scaleId][0])
                col = -1
                break
            else:         
                scaleId = self.getScaleIdFromiNomen(nextInom)
                row,col, linhas, colunas = self.getInomRowCol(nextInom)   
                rows.append(row)            
        # if col != len(self.scaleText[scaleId][0])-1:
        new_col = col+1
        # ACHEI        
        nextInom = '-'.join(nextInom.split('-')[:-1])
        upperInom = nextInom + '-' +  self.scaleText[scaleId][row][new_col]                        
        for i, rightrow in enumerate(reversed(rows[:-1])):                                                
            newScaleId = i + scaleId + 1                
            correct_col = 0                
            rightInomPart = self.scaleText[newScaleId][rightrow][correct_col]
            upperInom = upperInom + '-' + rightInomPart  
        return upperInom                          

        counter = 0

    def getBottomNeighborC(self, inomen):
        # Going upper
        scaleIdFromiNomen = self.getScaleIdFromiNomen(inomen)
        cols = []
        nextInom = inomen       
        row,col, linhas, colunas = self.getInomRowCol(inomen)        
        scaleId = self.getScaleIdFromiNomen(nextInom)             
        cols.append(col)   

        while row == len(self.scaleText[scaleId])-1:
            inom_splited = nextInom.split('-')
            nextInom = '-'.join(inom_splited[:-1])            
            if len(inom_splited) == 3:
                vertical = inom_splited[0]
                fuso = vertical[0]
                letra = vertical[1]
                if vertical != 'NA':
                    if fuso == 'N':
                        letra = letters[letters.index(letra)-1]
                    else:
                        letra = letters[letters.index(letra)+1]
                    vertical = fuso + letra
                else:
                    vertical = 'SA'
                nextInom = vertical + '-' + inom_splited[1] + '-'+inom_splited[2]
                row = -1
                break
            else:
                scaleId = self.getScaleIdFromiNomen(nextInom)
                row,col, linhas, colunas = self.getInomRowCol(nextInom)   
                cols.append(col)            
        # if row != len(self.scaleText[scaleId])-1:
        new_row = row+1
        # ACHEI        
        nextInom = '-'.join(nextInom.split('-')[:-1])
        upperInom = nextInom + '-' +  self.scaleText[scaleId][new_row][col]                        
        for i, rightCol in enumerate(reversed(cols[:-1])):                                                
            newScaleId = i + scaleId + 1                
            correct_row = 0                
            rightInomPart = self.scaleText[newScaleId][correct_row][rightCol]
            upperInom = upperInom + '-' + rightInomPart   
        return upperInom                         

        counter = 0

    def getUpperNeighborC(self, inomen):
        # Going upper
        scaleIdFromiNomen = self.getScaleIdFromiNomen(inomen)
        cols = []

        nextInom = inomen
        row,col, linhas, colunas = self.getInomRowCol(inomen)        
        scaleId = self.getScaleIdFromiNomen(nextInom)             
        cols.append(col)   

        while row == 0:
            inom_splited = nextInom.split('-')
            nextInom = '-'.join(inom_splited[:-1])
            if len(inom_splited) == 3:
                vertical = inom_splited[0]
                fuso = vertical[0]
                letra = vertical[1]
                if vertical != 'SA':                    
                    if fuso == 'N':
                        letra = letters[letters.index(letra)+1]
                    else:
                        letra = letters[letters.index(letra)-1]
                    vertical = fuso + letra
                else:
                    vertical = 'NA'
                nextInom = vertical + '-' + inom_splited[1] + '-'+inom_splited[2]
                row = len(self.scaleText[scaleId])
                break
            else:                
                scaleId = self.getScaleIdFromiNomen(nextInom)      
                row,col, linhas, colunas = self.getInomRowCol(nextInom)   
                cols.append(col)            

        if row != 0:
            new_row = row-1
            # ACHEI        
            nextInom = '-'.join(nextInom.split('-')[:-1])
            upperInom = nextInom + '-' +  self.scaleText[scaleId][new_row][col]                        
            for i, rightCol in enumerate(reversed(cols[:-1])):                                                
                newScaleId = i + scaleId + 1                
                correct_row = len(self.scaleText[newScaleId])-1                
                rightInomPart = self.scaleText[newScaleId][correct_row][rightCol]
                upperInom = upperInom + '-' + rightInomPart    
            return upperInom                        
        counter = 0
        
        pass

    def getNeighbors(self, inomen):    
        upper = self.getUpperNeighborC(inomen)
        bottom = self.getBottomNeighborC(inomen)
        right = self.getRightNeighborC(inomen)
        left = self.getLeftNeighborC(inomen)
        up_right = self.getRightNeighborC(upper)
        up_left = self.getLeftNeighborC(upper)
        bottom_right = self.getRightNeighborC(bottom)  
        bottom_left = self.getLeftNeighborC(bottom) 
        neighbors = [up_left, upper, up_right, right, inomen, left, bottom_left, bottom,  bottom_right]
        return neighbors

    def getSpacingX(self,scale):
        """Get X spacing for the given scale
        """
        scaleId=self.scales.index(scale)
        if (scaleId<0): return 0
        if (len(self.spacingX)==0):
            dx=6
            self.spacingX=[dx]
            for i in range(1,len(self.scaleText)):
                subdivisions=len(self.scaleText[i][0])
                dx/=float(subdivisions)
                self.spacingX.append(dx)
        return self.spacingX[scaleId]
    
    def getSpacingY(self,scale): 
        """Get Y spacing for the given scale
        """
        scaleId=self.scales.index(scale)
        if (scaleId<0): return 0
        if (len(self.spacingY)==0):
            dy=4
            self.spacingY=[dy]
            for i in range(1,len(self.scaleText)):
                subdivisions=len(self.scaleText[i])
                dy/=float(subdivisions)
                self.spacingY.append(dy)
        return self.spacingY[scaleId]
    
    def makeQgsPolygon(self, xmin, ymin, xmax, ymax):
        """Creating a polygon for the given coordinates
        """
        dx = (xmax - xmin)/3
        dy = (ymax - ymin)/3
        
        polyline = []

        point = QgsPointXY(xmin, ymin)
        polyline.append(point)
        point = QgsPointXY(xmin+dx, ymin)
        polyline.append(point)
        point = QgsPointXY(xmax-dx, ymin) 
        polyline.append(point)
        point = QgsPointXY(xmax, ymin)
        polyline.append(point)
        point = QgsPointXY(xmax, ymin+dy)
        polyline.append(point)
        point = QgsPointXY(xmax, ymax-dy)
        polyline.append(point)
        point = QgsPointXY(xmax, ymax)
        polyline.append(point)
        point = QgsPointXY(xmax-dx, ymax)
        polyline.append(point)
        point = QgsPointXY(xmin+dx, ymax)
        polyline.append(point)
        point = QgsPointXY(xmin, ymax)
        polyline.append(point)
        point = QgsPointXY(xmin, ymax-dy)
        polyline.append(point)
        point = QgsPointXY(xmin, ymin+dy)
        polyline.append(point)
        point = QgsPointXY(xmin, ymin)
        polyline.append(point)

        qgsPolygon = QgsGeometry.fromMultiPolygonXY([[polyline]])
        return qgsPolygon
        
    def getHemisphereMultiplier(self,inomen):
        """Check the hemisphere
        """
        if (len(inomen) > 1):
            h = inomen[0].upper()
            if (h=='S'):
                return -1
            else:
                return 1

    def getLLCornerLatitude1kk(self,inomen):
        """Get lower left Latitude for 1:1.000.000 scale
        """
        try:
            l=inomen[1].upper()
            y = 0.0
            operator=self.getHemisphereMultiplier(inomen)
            verticalPosition=string.ascii_uppercase.index(l)
            y=(y+4*verticalPosition)*operator
            if (operator<0): y-=4
        except:
            raise Exception(self.tr('Invalid inomen parameter!'))
        return y

    def getLLCornerLongitude1kk(self,inomen):
        """Get lower left Longitude for 1:1.000.000 scale
        """
        try:
            fuso=int(inomen[3:5])
            x=0  
            if((fuso > 0) and (fuso <= 60)):
                x = (((fuso - 30)*6.0)-6.0)
            return x
        except:
            raise Exception(self.tr('Invalid inomen parameter!'))
    
    def getLLCorner(self,inomen):
        """Get lower left coordinates for scale determined by the given map index
        """
        try:
            x=self.getLLCornerLongitude1kk(inomen)
            y=self.getLLCornerLatitude1kk(inomen)
            inomenParts=inomen.upper().split('-')
            #Escala de 500.00
            for partId in range(2,len(inomenParts)):
                scaleId=partId-1
                dx=self.getSpacingX(self.scales[scaleId])
                dy=self.getSpacingY(self.scales[scaleId])
                scaleText=inomenParts[partId]
                i,j=self.findScaleText(scaleText, partId-1)
                x+=i*dx
                y+=j*dy
            return (x,y)
        except:
            raise Exception(self.tr('Invalid inomen parameter!'))
    
    def computeNumberOfSteps(self,startScaleId,stopScaleId):
        """Compute the number of steps to build a progress
        """
        steps=1
        for i in range(startScaleId+1,stopScaleId+1):
            steps*=len(self.scaleText[i])*len(self.scaleText[i][0])
        return steps
    
    def createFrame(self, map_index, layer):
        stopScale = self.getScale(map_index)
        
        # Enter in edit mode
        layer.startEditing()

        self.populateQgsLayer(map_index, stopScale, layer)

        # Commiting changes        
        layer.commitChanges()        
        
    def getQgsPolygonFrame(self, map_index):
        """Particular case used to create frame polygon for the given
        map_index
        """
        scale = self.getScale(map_index)
        (x, y) = self.getLLCorner(map_index)
        dx = self.getSpacingX(scale)
        dy = self.getSpacingY(scale)
        poly = self.makeQgsPolygon(x, y, x + dx, y + dy)
        return poly
    
    def populateQgsLayer(self, iNomen, stopScale, layer):
        """Generic recursive method to create frame polygon for the given
        stopScale within the given map index (iNomen)
        """
        scale = self.getScale(iNomen)            
        #first run
        if (self.stepsTotal==0):
            self.stepsTotal=self.computeNumberOfSteps(self.getScaleIdFromScale(scale), self.getScaleIdFromScale(stopScale))
            self.stepsDone=0
        if scale == stopScale:
            (x, y) = self.getLLCorner(iNomen)
            dx = self.getSpacingX(stopScale)
            dy = self.getSpacingY(stopScale)
            poly = self.makeQgsPolygon(x, y, x + dx, y + dy)
            
            self.insertFrameIntoQgsLayer(layer, poly, iNomen)
            
            self.stepsDone+=1
        else:
            scaleId = self.getScaleIdFromiNomen(iNomen)
            matrix = self.scaleText[ scaleId+1 ]
            
            for i in range(len(matrix)):
                line = matrix[i]
                for j in range(len(line)):
                    inomen2 = iNomen + '-' + line[j]
                    self.populateQgsLayer(inomen2, stopScale, layer)
                    
    def insertFrameIntoQgsLayer(self, layer, poly, map_index):
        """Inserts the poly into layer
        """
        provider = layer.dataProvider()

        #Creating the feature
        feature = QgsFeature()
        feature.initAttributes(1)
        feature.setAttribute(0, map_index)
        feature.setGeometry(poly)

        # Adding the feature into the file
        provider.addFeatures([feature])
    
    def getMIdict(self):
        if not self.MIdict:
            self.MIdict = self.getDict("MI100.csv")
        return self.MIdict
            
    def getMIRdict(self):
        if not self.MIRdict:
            self.MIRdict = self.getDict("MIR250.csv")
        return self.MIRdict    
    
    def getDict(self, file_name):            
        csvFile = open(os.path.join(os.path.dirname(__file__),file_name))        
        data = csvFile.readlines()
        csvFile.close()
        l1 = [(x.strip()).split(';') for x in data]
        dicionario = dict((a[1],a[0]) for a in l1)
        return dicionario

    def getINomenFromMI(self,mi):
        mi = self.checkLeftPadding(mi, 4)
        inom = self.getINomen(self.getMIdict(), mi)
        exceptions = self.getMIexceptions()
        if inom in exceptions or self.checkContainedUpperLevel(inom, exceptions):
            return None
        return inom

    def getINomenFromMIR(self,mir):
        mir = self.checkLeftPadding(mir, 3)
        inom = self.getINomen(self.getMIRdict(), mir)
        exceptions = self.getMIexceptions()
        if inom in exceptions or self.checkContainedUpperLevel(inom, exceptions):
            return None
        return inom
        
    def getINomen(self, dict, index):
        key = index.split('-')[0]
        otherParts = index.split('-')[1:]
        if key in dict:
            if len(otherParts)==0:
                return dict[key]
            else:
                return dict[key]+'-'+'-'.join(otherParts)
        else:
            return ''
    
    def getMIfromInom(self,inom):
        return self.getMI(self.getMIdict(),inom)
    
    def getMI(self, miDict, inom):
        parts = inom.split('-')
        hundredInom = '-'.join(parts[0:5])
        remains = parts[5::]
        for k,v in miDict.items():
            if v == hundredInom:
                return '-'.join([k]+remains)
    
    def getMIR(self, miDict, inom):
        parts = inom.split('-')
        hundredInom = '-'.join(parts[0:4])
        remains = parts[4::]
        for k,v in miDict.items():
            if v == hundredInom:
                return '-'.join([k]+remains)
    
    def get_MI_MIR_from_inom(self, inom):
        exceptions = self.getMIexceptions()
        if inom in exceptions or self.checkContainedUpperLevel(inom, exceptions):
            return None
        if len(inom.split('-')) > 4:
            return self.getMIfromInom(inom)
        else:
            return self.getMIR(self.getMIRdict(), inom)
    
    def get_INOM_from_lat_lon(self, lon, lat, scale=250):
        # Initial part 
        INOM = 'N' if lat >= 0 else 'S'        
        INOM += string.ascii_uppercase[math.floor(abs(lat/4.)) % 26] + '-'
        utm_zone = math.floor(31 + lon/6)
        INOM += str(utm_zone)
        # division         
        div_lat = 4
        div_lon = 6
        next_lat = abs(lat) % div_lat
        next_lon = abs(lon) % div_lon        
        for i in range(1,self.scales.index(scale)+1):
            div_lat = div_lat/len(self.scaleText[i])            
            n_lat = len(self.scaleText[i])-1
            n_lon = len(self.scaleText[i][0])-1
            div_lon = div_lon/len(self.scaleText[i][0])
            index_lat = math.floor(next_lat / div_lat) if lat <= 0 else n_lat - math.floor(next_lat / div_lat)
            index_lon = math.floor(next_lon / div_lon) if lon >= 0 else n_lon- math.floor(next_lon / div_lon)
            part_inom = self.scaleText[i][index_lat][index_lon]
            INOM += '-' + part_inom
            next_lat = abs(next_lat) % div_lat
            next_lon = abs(next_lon) % div_lon
        return INOM


    def get_INOM_range_from_BB(self, xmin, ymin, xmax, ymax):
        """
        Returns a set of INOM that intersect bbRect formed by 
        xmin, xmax, ymin, ymax
        """
        minInom = self.get_INOM_from_lat_lon(xmin, ymin)
        maxInom = self.get_INOM_from_lat_lon(xmax, ymax)
        if minInom == maxInom:
            return list([minInom])
        return self.get_INOM_range_from_min_max_inom(minInom, maxInom)
    
    def get_INOM_range_from_min_max_inom(self, minInom, maxInom):
        minFuse = int(minInom.split('-')[-1])
        maxFuse = int(maxInom.split('-')[-1])
        fuseRange = map(str, range(minFuse,maxFuse+2,1))
        letterRange = self.get_letter_range(minInom, maxInom)
        return list(
            '-'.join(i) for i in itertools.product(letterRange, fuseRange)
        )

    def get_letter_range(self, minInom, maxInom):
        if minInom[0] == 'S' and maxInom[0] == 'N':
            return self.get_letter_range('SA-XX', minInom) + self.get_letter_range('NA-XX', maxInom)
        else:
            startIndex = string.ascii_uppercase.index(minInom[1])
            endIndex = string.ascii_uppercase.index(maxInom[1])
            multiplier = 1 if minInom[0] == 'N' else -1
            return list(
                map(
                    lambda x: minInom[0]+x,
                    string.ascii_uppercase[min(startIndex, endIndex):max(startIndex, endIndex)+3:1]
                )
            )[::multiplier]

    def getNewGridFeat(self, index, geom, fields, hasMI=True):
        feat = QgsFeature(fields)
        feat['inom'] = index
        feat['mi'] = self.get_MI_MIR_from_inom(index) if hasMI else None
        feat.setGeometry(geom)
        return feat

    def createGridLayer(self, name, layerType='Multipolygon', crsAuthId='4326'):
        layer = QgsVectorLayer('%s?crs=EPSG:%s'% (layerType, crsAuthId), name, 'memory')
        if not layer.isValid():
            return None
        else:
            provider = layer.dataProvider()
            fields = QgsFields()
            fields.append(QgsField('inom', QVariant.String))
            fields.append(QgsField('mi', QVariant.String))
            provider.addAttributes(fields)
            layer.updateFields()
            return layer, fields

    def get_new_grid_layer_from_inoms_list(self, inomList):
        layer, fields = self.createGridLayer('moldura', 'Multipolygon', '4326')
        feats = [self.getNewGridFeat(map_index,self.getQgsPolygonFrame(map_index), fields) for map_index in inomList]
        provider = layer.dataProvider()
        provider.addFeatures(feats)
        layer.startEditing()
        provider = layer.dataProvider()
        layer.commitChanges()
        return layer, feats

    def getNewGridFromInom(self, inom):
        layer, fields = self.createGridLayer('moldura', 'Multipolygon', '4326')
        feat = self.getNewGridFeat(inom, self.getQgsPolygonFrame(inom), fields)
        provider = layer.dataProvider()
        provider.addFeatures([feat])
        # layer.startEditing()
        # provider = layer.dataProvider()
        # layer.commitChanges()
        return layer, feat

    def get_neighbors_inom(self, inom):
        layer, fields = self.createGridLayer('moldura', 'Multipolygon', '4326')
        exceptions = self.getMIexceptions()
        noMi = (inom in exceptions) or self.checkContainedUpperLevel(inom, exceptions)
        inomenList = self.getNeighbors(inom)
        feats = [self.getNewGridFeat(map_index,self.getQgsPolygonFrame(map_index), fields, not noMi) for map_index in inomenList]
        center_feat = self.getNewGridFeat(inom,self.getQgsPolygonFrame(inom), fields)
        provider = layer.dataProvider()
        provider.addFeatures(feats)
        layer.startEditing()
        provider = layer.dataProvider()       
        layer.commitChanges()        
        return layer, center_feat

    def createGridRectangleLayer(self, layer_name, geometries):
        baseuri = "Polygon"
        uri = baseuri + "?crs=EPSG:4326"   
        grid_rectangleLayer = QgsVectorLayer(uri, layer_name, "memory")
        # Start Editing
        grid_rectangleLayer.startEditing()    
        pr = grid_rectangleLayer.dataProvider()
        grid_rectangleLayer.startEditing()
        # Feature
        feats = []
        for geom in geometries:
            fet = QgsFeature()
            fet.setGeometry(geom)
            feats.append(fet)
        pr.addFeatures(feats)
        # Commit changes
        grid_rectangleLayer.commitChanges()
        return grid_rectangleLayer

    def testOne(self, inom):
        frameGeom = self.getQgsPolygonFrame(inom)  
        layer_name = 'test'
        grid_rectangleLayer = self.createGridRectangleLayer(layer_name, [frameGeom.buffer(0.1,10)])
        QgsProject.instance().addMapLayer(grid_rectangleLayer)
    
    def testTwo(self, inom):         
        grid_rectangleLayer, center_feat = self.get_neighbors_inom(inom)
        QgsProject.instance().addMapLayer(grid_rectangleLayer)
    
    def get_degrees_from_scale(self, scale):
        degrees_lat = 4
        degrees_lon = 6
        for i in range(1,self.scales.index(scale)+1):
            degrees_lat = degrees_lat/len(self.scaleText[i])            
            degrees_lon = degrees_lon/len(self.scaleText[i][0])            
        return degrees_lat, degrees_lon

    @staticmethod
    def getMIexceptions():
        pathCsvExceptions25k = Path(__file__).parent / 'exclusionList25k.csv'
        pathCsvExceptions50k = Path(__file__).parent / 'exclusionList50k.csv'
        with open(pathCsvExceptions25k, 'r') as file:
            exceptions25k = [x[0] for x in csv.reader(file)]
        with open(pathCsvExceptions50k, 'r') as file:
            exceptions50k = [x[0] for x in csv.reader(file)]

        return set((*exceptions25k, *exceptions50k))

    @staticmethod
    def checkLeftPadding(mi, zeroes):
        leftPart = mi.split('-')[0]
        if len(leftPart) < zeroes:
            return f'{"".join("0" for _ in range(zeroes-len(leftPart)))}{mi}'
        return mi

    @staticmethod
    def checkContainedUpperLevel(inom, exceptions):
        if isinstance(inom, str):
            if '-'.join(inom.split('-')[:-1]) in exceptions:
                return True
        
if __name__ == "__main__":    
    x = UtmGrid()
    inom = 'SH-21-Z-D-I-1'
    layer = qgis.utils.iface.activeLayer()
    selected_features = layer.selectedFeatures()
    for selected_feat in selected_features:
        x.testTwo(selected_feat['inom'])
