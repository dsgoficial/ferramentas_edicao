# CHANGELOG

## 1.3

Novas Funcionalidades:

- Remove modelagens Topo 1.3 e Orto 2.4

Melhorias:

Correção de bug:

- Inserido o estilo para tipo = 802 (Moinho) em constr_ocupacao_solo_p

## 1.2.68

Novas Funcionalidades

- Modo de exportação via linha de comando funcionando;
- Novo processo de execução remota por meio do serviço de edição;
- Novo processo de fixar o rótulo de curvas mestras;
- Adiciona licença nos produtos;
- Criar molduras não-SCN com base na escala e em um polígono de entrada;

Melhorias:

- Adicionado o conceito de versionamento de linha de produção;
- Melhora as entradas do processo de execução remota;
- Adicionado feedback para define o tamanho do texto de acordo com o comprimento;
- DPI padrão alterado para 300 dpi;
- Corrigido o estilo de infra_trecho_duto_l (caso duto nao agua subterraneo);
- Adicionado os limites municipais e estaduais da Guiana;
- Adicionada verificação de conexão com o banco de dados antes da exportação;
- Adicionada verificação de tipo de produto versus tipo de modelagem de banco de dados (para corrigir bug de exportar carta ortoimagem com modelagem de carta topográfica, o que implica falta da tabela edicao_articulacao_imagem_a);
- O quadrado verde representando a área mapeada no diagrama de estados agora tem um tamanho mínimo a ser exibido (para melhorar situação em que a escala muito pequena dificultava a visualização do quadrado);
- A ferramenta de pular linhas agora retorna ao estado original caso não tenha como inserir mais quebras;
- Melhoria no cálculo de posicionamento de rótulo no diagrama de localização do produto;
- Adicionada generalização automática de drenagens no diagrama de elevação;
- Melhoria na documentação dos seguintes processings: bridgeAndManholeRotation, bridgeAndManholeWidth, createCustomPolygons, damWidth, loadMasks, placePointOfChange;
- Melhoria no changeAttributeTopo: há previsão da abreviação dos textos de edição nas classes constr_edificacao_p, constr_edificacao_a e elemnat_trecho_drenagem_l.
- Melhoria na documentação dos seguintes processings: fixLabelPostionsCRS, placeBorderOfHydrographicElement, placeBuildingSymbol, placeMineralExtractionSymbol, placepowerPlantSymbol, placeVegetationSymbol, rapidsAndWaterfallRotation, reprojectAttributes, setCurveOrientation
- Melhoria no changeAttributeTopo: há previsão da abreviação dos textos de edição nas classes constr_ocupacao_solo_p e constr_ocupacao_solo_a. Além disso, a mudança automática para visivel e justificativa_txt nas mesmas classes.
- Melhoria no fixLabelsPositionOnLayers: Adição de uma checkbox para sobrescrever ou não os rótulos já fixados. 
- Refatoração do Insere Ponto de Mudança para compatibilidade com Workflow e organização;
- Melhora o nome do arquivo de carta especial;
- Parâmetros de distancias conforme sistema da camada de referência
- Inserido o constr_ocupacao_solo_l na lista de camadas que tem seu atributo alterado conforme o changeAttributeTopo.py
- Adicionada verificação de bounding box do produto versus imagens antes da exportação;
- Corrigido bug na carta orto de quando não tem ponto cotado nas classes opcionais;

Correção de bug:

- Corrige diagrama de elevação na exportação via linha de comando (para serviço de edição);
- Corrige bug no processo de orientação de curvas;
- Corrigido rótulo de Sede Operacional de fazenda ponto;
- Corrigido bug na exportação de Carta Ortoimagem de OM;
- Corrigido bug no estilo de camada da Carta Ortoimagem de OM;
- Corrige rotas no processo de exportação remota por meio do serviço de edição;
- Corrige bug no diagrama de localização da OM no município na exportação do produto Carta Ortoimagem OM 1.0 quando o polígono intersecta mais de um município;
- Corrige bug no define o tamanho do texto de acordo com o comprimento;
- Corrigido a fonte para Condensed Italic em "cobter_massa_dagua_a";
- Corrigido o atributo "visivel" no botão de Símbolo Idt.Tr.Rod.;
- Corrigido o Configura os atributos de edição de Carta Topográfica;
- Corrigido o Configura os atributos de edição de Carta Ortoimagem;
- Corrigido Moldura obrigatória em processings que usavam moldura e estava opcional (fixar rótulos e rótulos fora da moldura);
- Corrigido input nos processings setSobrepositionOrtho e setSobrepositionTopo
- Corrige símbolo de pista de pouso ponto e heliponto.
- Corrigido bug na identifLabelOverlap;
- Corrige bug na rotina de calcular o tamanho da fonte de rio para o caso dos dados em lat long;
- Corrige bug na ferramenta de alternar justificativa quando o campo está nulo;
- Corrige bug na geração dos diagramas de localização e de divisão político-administrativa;
- Corrige bug na rotina para verificar sobreposição de símbolos (casos de ponto cotado com suprimir_simbologia e torre de energia, que não tem simbologia, em elemento de energia)
- Corrige o ordenamento das camadas para a classe "constr_extracao_mineral_a" nas Cartas Topográficas e Cartas Ortoimagem
- Corrigido os símbolos de constr_eficacao_a, infra_trecho_duto_l, infra_travessia_hidroviaria_l e infra_elemento_infraestrutura_l para contemplar mais classes em Carta Topográfica
- Corrigido bug na definição da região da carta
- Corrigido bug na Configura atributos de edição de carta topo e orto
- Corrige o ordenamento das camadas para a classe "constr_extracao_mineral_a" nas Cartas Topográficas e Cartas Ortoimagem;
- Corrige bug no diagrama de elevação de não aparecerem as valas;
- Corrige bug de múltiplos projetos aparecerem sobrepostos na exportação em lote;
- Corrige gap com a moldura na escala 1:250.000;
- Corrige de bug ao calcular extensão do mapa de localização;
- Corrigido o tamanho maximo da fonte de massa d'água e ilha;
- Corrigido o posicionamento dos seguintes elementos no QPT da Carta Ortoimagem 2.4 e 2.5: tabela_articulacao_imagens, imagemArticulation, label_tabela_info_ortoimagem, label_tabela_info_carta;
- Removida a entrada duplicada de PROXY_HOST do Sv Edição;
- Correção do símbolo de palafitas em constr_edificacao_p e _a;
- Correção de bug na ferramenta Gera Vetor de Grade: Grade gerada a partir de cada feição da moldura, ao invés de utilizar a extensão total da camada;
- Corrige bug no diagrama de elevação quando não há drenagens;
- Correção do bug na ferramenta "Copiar texto sugerido" do "ferramentas de edição": agora, para Cartas Ortoimagem, os atributos 'cor_do_buffer' e 'tamanho_buffer' também são copiados;
- Adicionado o estilo para constr_edificacao_p com tipo = 606 e edicao_simb_area_p com tipo = 13;
- Correção de bug em "Configura Sobreposição de Linhas Carta Topo" - correção de KeyError:length_otf;
- Correção ao calcular a extensão do mapa de localização para posicionamento dos rótulos;
- Adicionado o estilo para infra_elemento_energia_l, tipo = 408 e infra_elemento_infraestrutura_l, tipo = 1001;
- Corrigido cor do grid orto e topo
- Corrigido posição da escala na carta orto
- Corrigido o bug de rotação de elemnat_elemento_hidrografico_p
- Inserido os estilos de Estação Meteorológica e Cemitério Israelita nas respectivas classes.
- Inserido o estilo de Caverna em elemnat_elemento_fisiografico_p.
- Inserido o estilo para Cemitério Mulçumano em edicao_simb_area_p e em constr_ocupacao_solo_p.
- Corrigido o bug em changeAttributeTopo.py na configuração de atributos default em Ocupação do Solo.
- Inserido o estilo para infra_barragem_a e infra_elemento_infraestrutura_l para o caso Comporta.
- Corrigido o bug no placeBorderOfHydrographicElement do funcionamento apenas em feições selecionadas.
- Corrige projeto em produto militar;

## 1.1.90

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
- Novo botão para desligar/ligar o estilo "Não visível";

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
- Adicionado a análise das feições selecionadas se há alguma fora do canvas e informando o usuário caso esteja, para os botões;
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
- Agora "Esc" desativa a ferramenta ativa;

Correção de bug:

- Corrigido bug no Inserir identificador trecho rodoviário (casos complexos como rodovias com rotatórias);
- Correção de bug no diagrama de elevação (colocado um filtro de mediana para retirar ruídos do MDS e corrigido um erro de lógica na regra de mais de 50% da MTM);
- Correção de bug no diagrama de elevação (a geração agora é feita de metro em metro no caso de 2 classes, ao invés de degraus de 10 metros. Também foi alterada a lógica de quando as classes tem menos de 10 metros de intervalo);
- Correção de bug na Divisão Político-Administrativa quando o nome do município possui aspa simples, como Sant'Ana do Livramento;
- Correção de bug do grid (sobreposição nas coordenadas utm da parte superior esquerda do grid);
- Correção de bug em Verifica sobreposição de simbologia (estava sendo passado 2 parâmetros no append);
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
- Corrige bug de loop infinito quando há valor nulo no MDT para a geração do diagrama de elevação;
- Corrige saídas dos processings que modificam os dados (modificação feita para evitar problemas ao utilizar em um model);
