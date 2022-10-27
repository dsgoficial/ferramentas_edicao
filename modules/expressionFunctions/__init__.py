import os
from qgis import gui, core

def getFunctionsFolderPath():
    return os.path.join(
        os.path.abspath(os.path.dirname(__file__)),
        'functions'
    )

def loadExpressionFunctions():
    functionsFolderPath = getFunctionsFolderPath()
    for fileName in os.listdir( functionsFolderPath ):
        if '__init__' in fileName:
            continue
        codeFilePath = os.path.join( functionsFolderPath, fileName )
        with open(codeFilePath, 'r') as f:
            code = f.read()
            gui.QgsExpressionBuilderWidget().loadFunctionCode(  code )
        core.QgsPythonRunner.run( code )
