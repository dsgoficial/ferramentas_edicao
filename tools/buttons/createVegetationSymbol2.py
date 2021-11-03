from pathlib import Path

from .createVegetationSymbolTool import CreateVegetationSymbolTool

from PyQt5.QtWidgets import QWidget, QPushButton, QAction
from PyQt5.QtGui import QIcon


class CreateVegetationSymbol(QWidget):

    def __init__(self, iface, toolBar):
        super().__init__()
        self.iface = iface
        self.toolBar = toolBar
        self.tool = CreateVegetationSymbolTool(iface.mapCanvas())

    # def setupUi(self):
    #     buttonImg = Path(__file__).parent / 'icons' / 'createVegetationSymbol.png'
    #     self.button =  QPushButton(
    #         QIcon(str(buttonImg)),
    #         'CreateVegetationSymbol',
    #         self.iface.mainWindow()
    #     )
    #     # self.toolBar.addAction(self.button)
    #     self.toolBar.addWidget(self.button)
    #     # self.toolBar.addWidget(self)
