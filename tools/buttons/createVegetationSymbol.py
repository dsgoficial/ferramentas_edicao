from .createVegetationSymbolTool import CreateVegetationSymbolTool

from PyQt5.QtWidgets import QWidget


class CreateVegetationSymbol(QWidget):

    def __init__(self, iface, toolBar):
        super().__init__()
        self.iface = iface
        self.toolBar = toolBar
        self.tool = CreateVegetationSymbolTool(iface.mapCanvas())

    def setupUi(self):
        self.toolBar.addWidget(self)