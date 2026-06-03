from qgis.core import QgsProject

def gerar_configuracao_json():
    # Defina aqui a relação: "nome_do_atributo_na_tabela": ["Lista de Ferramentas"]
    regras = {
        "visivel": ["Alternar visibilidade"],
        "justificativa_txt": ["Alternar justificativa"]
    }
    
    camadas = QgsProject.instance().mapLayers().values()
    print("--- COPIE O CONTEÚDO ABAIXO PARA SEU JSON ---")
    
    for camada in camadas:
        ferramentas_da_camada = []
        
        # Verifica se o atributo existe na tabela de atributos da camada
        for atributo, ferramentas in regras.items():
            if camada.fields().indexFromName(atributo) != -1:
                ferramentas_da_camada.extend(ferramentas)
        
        # Se encontrou alguma ferramenta, imprime no formato JSON
        if ferramentas_da_camada:
            # Transforma a lista de ferramentas em string formatada com aspas duplas
            lista_str = ", ".join([f'"{f}"' for f in ferramentas_da_camada])
            print(f'"{camada.name()}": [{lista_str}],')
            
    print("--- FIM ---")

gerar_configuracao_json()