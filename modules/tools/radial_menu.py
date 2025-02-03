from qgis.PyQt.QtWidgets import QWidget, QPushButton
from qgis.PyQt.QtCore import Qt, QPoint, QSize
from qgis.PyQt.QtGui import QIcon, QCursor 
from qgis.gui import QgsMapTool
import math
import os

class RadialMenu(QWidget):
    def __init__(self, actions, parent=None):
        super().__init__(parent)
        self.setWindowFlags(Qt.FramelessWindowHint | Qt.WindowStaysOnTopHint)
        self.setAttribute(Qt.WA_TranslucentBackground)
        self.setFixedSize(200, 200)
        self.actions = actions
        self.init_ui()

    def init_ui(self):
        radius = 50
        angle_step = 360 / len(self.actions)

        # Verificar o caminho completo do diretório de ícones
        icon_path = os.path.normpath(os.path.join(os.path.dirname(__file__), "buttons", "icons"))
        print(f"Procurando ícones em: {icon_path}")

        if not os.path.exists(icon_path):
            print(f"Diretório de ícones não encontrado: {icon_path}")  # Debug

        for i, action in enumerate(self.actions):
            angle = i * angle_step
            x = radius * math.cos(math.radians(angle)) + 90
            y = radius * math.sin(math.radians(angle)) + 90

            button = QPushButton(self)
            button.setGeometry(int(x), int(y), 20, 20)

            # Verificar o nome do arquivo de ícone
            icon_name = f"{action.text().lower().replace(' ', '_')}.png"
            icon_file = os.path.normpath(os.path.join(icon_path, icon_name))
            print(f"Tentando carregar ícone: {icon_file}")  # Debug

            if os.path.exists(icon_file):
                icon = QIcon(icon_file)
                if not icon.isNull():
                    button.setIcon(icon)
                    button.setIconSize(QSize(20, 20))
                else:
                    print(f"Falha ao carregar ícone: {icon_file}")  # Debug
            else:
                print(f"Arquivo de ícone não encontrado: {icon_file}")  # Debug

            button.clicked.connect(action.trigger)

    def show_at_position(self, position):
        self.move(position - QPoint(100, 100))
        self.show()

    def keyPressEvent(self, event):
        if event.key() == Qt.Key_Escape:
            self.close()
        super().keyPressEvent(event)


class RadialMenuTool(QgsMapTool):
    def __init__(self, canvas, actions):
        super().__init__(canvas)
        self.canvas = canvas
        self.radial_menu = None
        self.actions = actions

    def keyPressEvent(self, event):
        if event.key() == Qt.Key_H:
            cursor_pos = self.canvas.mapFromGlobal(QCursor.pos())
            self.show_radial_menu(cursor_pos)
        elif event.key() == Qt.Key_Escape and self.radial_menu:
            self.radial_menu.close()

    def canvasReleaseEvent(self, event):
        if event.button() == Qt.RightButton:
            self.show_radial_menu(event.pos())

    def show_radial_menu(self, position):
        if self.radial_menu:
            self.radial_menu.close()

        self.radial_menu = RadialMenu(self.actions)
        global_position = self.canvas.mapToGlobal(position)
        self.radial_menu.show_at_position(global_position)

    def deactivate(self):
        if self.radial_menu:
            self.radial_menu.close()
        super().deactivate()

    def canvasKeyPressEvent(self, event):
        if event.key() == Qt.Key_H:
            cursor_pos = self.canvas.mouseLastXY()
            self.show_radial_menu(QPoint(cursor_pos.x(), cursor_pos.y()))
        elif event.key() == Qt.Key_Escape and self.radial_menu:
            self.radial_menu.close()