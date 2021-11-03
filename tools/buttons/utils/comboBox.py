

from PyQt5.QtWidgets import QComboBox

class ComboBox(QComboBox):

    def __init__(self, iface) -> None:
        super().__init__(iface)
        self.hide()
        # self.close()
        # self.setVisible(False)

    def updateItems(self, options):
        self.clear()
        self.insertItems(0,options)

    def showComboBox(self, position):
        print(position.x(), position.y())
        self.move(position)
        self.show()
        self.showPopup()
