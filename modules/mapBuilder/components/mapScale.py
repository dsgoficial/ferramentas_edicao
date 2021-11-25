# -*- coding: utf-8 -*-
"""
/***************************************************************************
 EditionPlugin
                                 A QGIS plugin
 This plugin helps the edition of maps.
                              -------------------
        begin                : 2020-09-13
        git sha              : $Format:%H$
        copyright            : (C) 2020 by Ronaldo Martins da Silva Junior
        email                : ronaldo.rmsjr@gmail.com
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
class MapScale:
	def __init__(self):		
		pass

	def setComposition(self, composition):
		self.composition = composition
	def setScale(self, scale):
		self.scale = scale    

	def changeScaleLabels(self, composition):
		# label_direita
		id_label_direita = "label_escala_direita" 
		text_label_direita = "ESCALA 1:" + '{:.3f}'.format((int(self.scale)/1000))
		composition_label_label_direita = composition.itemById(id_label_direita)
		if composition_label_label_direita is not None:
			composition_label_label_direita.setText(text_label_direita)
		#label_escala
		id_label_escala = "label_escala"
		text_label_escala = "ESCALA 1:" + '{:.3f}'.format((int(self.scale)/1000))
		composition_label_label_escala = composition.itemById(id_label_escala)
		if composition_label_label_escala is not None:
			composition_label_label_escala.setText(text_label_escala)
		# label_e1
		id_label_e1 = "label_escala_direita_e1"
		text_label_e1 = str(int((self.scale/100)))
		composition_label_e1 = composition.itemById(id_label_e1)
		if composition_label_e1 is not None:
			composition_label_e1.setText(text_label_e1)
		# label_e2
		id_label_e2 = "label_escala_direita_e2"
		text_label_e2 = str(int((self.scale/100)*2))
		composition_label_e2 = composition.itemById(id_label_e2)
		if composition_label_e2 is not None:
			composition_label_e2.setText(text_label_e2)
		# label_e3
		id_label_e3 = "label_escala_direita_e3"
		text_label_e3 = str(int((self.scale/100)*4))
		composition_label_e3 = composition.itemById(id_label_e3)
		if composition_label_e3 is not None:
			composition_label_e3.setText(text_label_e3)
		# label_e4
		id_label_e4 = "label_escala_direita_e4"
		text_label_e4 = str(int((self.scale/100)*6))
		composition_label_e4 = composition.itemById(id_label_e4)
		if composition_label_e4 is not None:
			composition_label_e4.setText(text_label_e4)
		# label_e5
		id_label_e5 = "label_escala_direita_e5"
		text_label_e5 = str(int((self.scale/100)*8)) + ' m'		
		composition_label_e5 = composition.itemById(id_label_e5)
		if composition_label_e5 is not None:
			composition_label_e5.setText(text_label_e5)