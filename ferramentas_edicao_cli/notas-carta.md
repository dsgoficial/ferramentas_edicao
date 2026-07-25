# Notas da exportação de carta (o que o código não diz)

Aqui fica só o **porquê**: regra de domínio, invariante e consequência. O **quê**
(produtos aceitos, argumentos do `standalone.py`, chaves do json por produto, nome do
arquivo de saída) sai do próprio código em tempo de execução, pelo comando `contract`, e
por isso não se repete aqui:

```
python ferramentas_edicao_cli.py contract
python ferramentas_edicao_cli.py contract --produto "Carta Topográfica"
```

## Por que validar antes

Uma exportação sobe o QGIS, conecta no banco de edição e renderiza uma folha A1 a 300
dpi: minutos por folha, horas num lote. Quase todo motivo de a folha ser pulada
(chave obrigatória faltando, MDE inexistente, `-t` que não casa com o json) é decidível
em milissegundos, lendo só o json. É isso que `validate` faz, e o que `export` faz antes
de gastar a operação cara.

## Armadilhas verificadas no código

- **`.env` na raiz do plugin liga o `debugMode`** (`controllers/mapBuilderController.py`):
  o run pula a validação do json e **não escreve PDF nem GeoTIFF**, só gera QPT. O lote
  roda inteiro e não entrega nada. O `export` bloqueia quando acha o arquivo.
- **A mensagem final do plugin vale só pelo último json do lote.** Quem diz o que saiu é
  o disco, folha a folha: o `export` confere cada arquivo previsto depois do run.
- **Faltar uma lista obrigatória inteira** (um json sem `fases`, por exemplo) levanta
  `KeyError` dentro do próprio relator de erro do plugin, no lugar da mensagem. Por isso
  a validação local usa `.get` e diz qual chave falta.
- **`licenca_produto` não é checada de fato.** A comparação existe em
  `jsonStructure.validate_keys`, mas só roda para chave obrigatória, e essa é opcional:
  valor inválido passa e vira selo errado na folha. Daí ser **aviso**, não erro.
- **`caminho_mde` é resolvido como está ESCRITO** (`os.path.exists` na string literal).
  UNC com UMA barra (`\servidor\...` em vez de `\\servidor\...`) não resolve, e o plugin
  espera 5 s antes de desistir. Espaço no caminho também reprova.
- **Duas folhas podem escrever o mesmo arquivo.** O nome de saída vem do MI (ou do INOM,
  ou do `nome`), não do nome do json: dois json da mesma folha se sobrescrevem em
  silêncio. O `export` bloqueia antes.

## GeoTIFF: na carta topográfica, derive do PDF

O `-et`/`--tiff` gera o GeoTIFF por `QgsLayoutExporter.exportToImage()`, que
**re-renderiza o layout inteiro** para raster. Na carta ortoimagem isso fecha em minutos.
Na **topográfica** ele re-renderiza todas as camadas vetoriais com máscara a 300 dpi numa
A1: já se viu 2 h de CPU e ~10 GB de RAM sem o `.tif` materializar. O PDF exportado já é
um GeoPDF (`appendGeoreference`), então sai mais barato rasterizar o PDF por GDAL
(`gdal_translate` mais `gdalwarp` para EPSG:4674, JPEG/YCbCr), com o mesmo resultado em
cerca de um minuto. O `export` avisa quando `--tiff` é pedido para produto topográfico.

## Credenciais

O `standalone.py` recebe usuário e senha do banco por argumento (`-l`/`-s`), e argumento
fica visível na lista de processos e no histórico do shell. Prefira as variáveis
`FERRAMENTAS_EDICAO_DB_USER` e `FERRAMENTAS_EDICAO_DB_PASSWORD`: o `export` as usa quando
`--login`/`--senha` não vêm, e a senha nunca é impressa (o comando do `--dry-run` sai
mascarado).

## Pré-condições que só o run descobre

Não dá para checar sem banco nem QGIS, mas custam a folha inteira quando falham:

- **grid numérico gerado** (a camada `edicao_grid_numerico_p` não pode estar vazia);
- **geometrias válidas** (`ST_IsValid`) nas classes do diagrama de elevação
  (`cobter_massa_dagua_a`, `elemnat_*`): uma inválida aborta a folha;
- **MDE e imagens intersectando a moldura** (o plugin só compara os extents depois de
  carregar as camadas);
- **modelagem do banco compatível com o produto** (banco de orto para carta ortoimagem).
