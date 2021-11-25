
class MapIdentification:

    def editMapName(composition, nome, mi, inom, scale):
        if (mapNameLabel:=composition.itemById("label_nomeCarta")) is not None:
            mapText = nome.upper() if nome else 'ESPECIAL'
            mapNameLabel.setText(mapText)
            mapNameLabel.refresh()
        if (indiceLabel:=composition.itemById("label_indice")) is not None:
            if inom != 'Especial':
                indiceText = "ÍNDICE: " + inom
                indiceLabel.setVisible(True)
                indiceLabel.setText(indiceText)
            else:
                indiceLabel.setVisible(False)
            indiceLabel.refresh()
        if (miLabel:=composition.itemById("label_mi")) is not None:
            if mi and mi != 'Especial':
                miText = f'{"MIR" if int(scale) == 250 else "MI"}: {mi}'
                miLabel.setVisible(True)
                miLabel.setText(miText)
            else:
                miLabel.setVisible(False)
            miLabel.refresh()


    def editMapType(composition, productTypeText):
        if (productTypeLabel:=composition.itemById("label_nome_produto")) is not None:
            productTypeLabel.setText(productTypeText)
            productTypeLabel.refresh()


    def replaceLabelRegiao(composition, regioes_intersected):
        label_regiao = composition.itemById("label_regiao")
        regioes_intersected = [regiao.upper() for regiao in regioes_intersected]
        if label_regiao is not None:
            texto_label = 'REGIÃO {regiao} DO BRASIL'.format(regiao=' E '.join(regioes_intersected))
            regioes_onze = ['SUL', 'SUDESTE', 'CENTRO-OESTE']  # 11
            regioes_dez_one = ['NORDESTE', 'SUDESTE', 'CENTRO-OESTE']  # 10
            regioes_dez_two = ['NORTE', 'SUDESTE', 'CENTRO-OESTE']  # 10
            texto_label_font = label_regiao.font()
            if set(regioes_intersected) == set(regioes_onze):
                texto_label_font.setPointSize(11)
                label_regiao.setFont(texto_label_font)
            if (set(regioes_intersected) == set(regioes_dez_one)) or (set(regioes_intersected) == set(regioes_dez_two)):
                texto_label_font.setPointSize(10)
                label_regiao.setFont(texto_label_font)
            label_regiao.setText(texto_label)
            label_regiao.refresh()
