# CHANGELOG

## 1.1.83 - dev

Novas Funcionalidades

- Novo processo de inserir ponto de mudança (Point of change AP030);
- Novo processo de fixar a posição dos labels horizontais com a posição calculada pelo QGIS;
- Novo processo de verificação de overlap de labels horizontais;
- Novo processo de corrigir CRS dos campos label_x e label_y quando editados em sistema de coordenadas incorreto;
- Novo processo de calcular o tamanho do texto de acordo com a área e a largura do polígono;
- Novo botão para ciclar entre o lado da simbologia;
- Novo botão para ciclar entre a ponto da simbologia;
- Novo processo de identificar rótulos fora da moldura;
- O projeto agora é limpo antes de uma exportação para evitar camadas estranhas que estragam a exportação;

Melhorias:

- Corrigido o estilo de infra_elemento_viario_l (caso ponte/passarela)
- Adicionado o estilo para infra_elemento_energia_p (tipo = 405)
- Corrigido texto de Insere Símbolo de Vegetação.
- Corrigido o estilo de limite legal em Carta Topográfica.
- Melhoria no carrega estilos;
- Melhoria nas rotinas de Prepara Orto e Prepara Topo;
- Alterado o quadro de informações do produto da Carta Ortoimagem OM;
- O plugin agora guarda no projeto o estado dos combo boxes de tipo de produto e escala quando o projeto é salvo;
- Adicionado camada de aux_grid_revisao_a no configura estilos para edição;
- Adicionado mais camadas para verificação no Verifica Sobreposição de Simbologia
- Adicionado a ánalise das feições selecionadas se há alguma fora do canvas e informando o usuário caso esteja, para os butões;
- Simplificação da extração do atributo "tamanho_txt" para o rótulo de rio;
- Verificação se a feição selecionada está interseccionando o canvas, ao invés de analisar se está dentro;
- Adicionada a opção de selecionar a distância mínima de uma torre de energia com relação à moldura no processo de inserir torres de energia;
- As flags do processo de identificação de sobreposição de rótulos agora são agregadas por localização;
- O pdf exportado agora guarda metadados;
- Adicionado o estilo para Restinga (tipo = 401) em cobter_vegetacao_a
- Adicionado o estilo para Atracadouro - Cais (tipo = 1938) em infra_elemento_infraestrutura_l
- Adicionado os estilos para tipo in (605, 698) em constr_edificacao_p
- Criado o estilo de Bueiro/Galeria para elem_viario_l
- Adicionado regra para Passarela (tipo = 608)
- Adicionado estilo para Piscina (tipo = 501) em constr_ocupacao_solo_a
- Adicionado os estilos para tipo in (301, 304, 398, 1213, 1214) para constr_edificacao_a
- Quando existentes, alterados os estilos tanto de Edição quanto de Impressão.
- Adicionado texto_edicao para duto baseado no tipo em Configura os Atributos de Edição de Carta Topográfica;

Correção de bug:

- Corrigido bug no Inserir identificador trecho rodoviário (casos complexos como rodovias com rotatórias);
- Correção de bug no diagrama de elevação (colocado um filtro de mediana para retirar ruídos do MDS e corrigido um erro de lógica na regra de mais de 50% da MTM);
- Correção de bug no diagrama de elevação (a geração agora é feita de metro em metro no caso de 2 classes, ao invés de degraus de 10 metros. Também foi alterada a lógica de quando as classes tem menos de 10 metros de intervalo);
- Correção de bug na Divisão Político-Administrativa quando o nome do município possui aspa simples, como Sant'Ana do Livramento;
- Correção de bug do grid (sobreposição nas coordenadas utm da parte superior esquerda do grid);
- Correção de bug em Verifica sobreposição de simbologia (estava sendo passado 2 parametros no append);
- Correção de bug na ferramenta de inserir número de faixas quando utilizado em camada com sistema de referência em metros (Ex: SIRGAS 2000 UTM 21S - EPSG 31981);
- Correção de bug na ferramenta de inserir rótulo de fronteira quando utilizado em camada com sistema de referência em metros (Ex: SIRGAS 2000 UTM 21S - EPSG 31981);
- Correção de bug em Verifica sobreposição de simbologia (ignora símbolos que são texto e linhas com marcadores)
- Correção do cálculo do tamanho do rótulo em massa d'água
- Correção do erro pelo fato da camada não ter o atributo "suprimir_bandeira" e procurá-lo mesmo assim;
- Corrigido bug na geração do Articulação das Imagens quando o CRS não é 4674;
- Corrigido bug nos processos de preparo que não permitiam undo (uso incorreto do dataProvider);
- Corrige bug no processo de corrigir borda de elemento hidrográfico quando não há feições na camada de entrada;
- Corrige bug no processo de identificação de sobreposição de rótulos;
- Correção de bug em Verifica sobreposição de simbologia (exclui do calculo feições cujos símbolos que são apenas texto)
- Remover raise NameError quando passava por Caminho Carroçável, Arruamento e Trilha ou Picada em createRoadLabel para colocar PointOfChange
- Corrige bug no processo de fixar posição do label;
- Corrige geração da localização do pronto quando o estado não estava sendo enquadrado (caso de Tocantins);
- Corrige bug no cria vetor de grade quando a camada de entrada não é UTM;
- Corrige bug no Definir cota mais alta por moldura com várias molduras;
- Adiciona representação para infra_trecho_duto_l subterrâneo quando tipo não for água;
- Adiciona representação para gruta em elemnat_emento_fisiografico_p;
- Adiciona representação para viveiro para aquicultura em constr_edificacao_a;
- Adiciona representação para infra_trecho_duto_l submerso quando tipo não for água;
- Adiciona representação para infra_trecho_duto_l submerso quando tipo for água;
