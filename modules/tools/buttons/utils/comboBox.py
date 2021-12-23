

from PyQt5.QtWidgets import QComboBox
from PyQt5.QtGui import QCursor

class ComboBox(QComboBox):

    def __init__(self, iface) -> None:
        super().__init__(iface)
        self.hide()

    def updateItems(self, options):
        self.clear()
        self.insertItems(0,options)

    def showComboBox(self):
        pos=QCursor.pos()
        self.move(pos)
        self.showPopup()