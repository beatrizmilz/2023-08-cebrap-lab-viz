# Introdução ao ggplot2

library(tidyverse)

# Importação dos dados sobre mananciais que abastecem a RMSP

# Link onde a base está disponível
url_mananciais <- "https://github.com/beatrizmilz/mananciais/raw/master/inst/extdata/mananciais.csv"

# Lendo o arquivo csv (separado por ponto e vírgula)
mananciais <- read_csv2(url_mananciais)

glimpse(mananciais)
# Rows: 53,832
# Columns: 8
# $ data                <date> 2023-08-21, 2023-08-21, 2023-08-2…
# $ sistema             <chr> "Cantareira", "Alto Tietê", "Guara…
# $ volume_porcentagem  <dbl> 74.7, 64.6, 60.5, 86.5, 93.7, 40.9…
# $ volume_variacao     <dbl> -0.2, -0.2, -0.4, -0.2, -0.3, -0.3…
# $ volume_operacional  <dbl> 733.38001, 362.11105, 103.53826, 1…
# $ pluviometria_dia    <dbl> 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,…
# $ pluviometria_mensal <dbl> 1.9, 24.6, 8.6, 8.0, 9.6, 51.2, 13…
# $ pluviometria_hist   <dbl> 34.1, 29.0, 39.9, 40.2, 48.7, 100.…


# Utilizando a base de dados de mananciais, use as funções vistas na aula 1
#  para criar os seguintes gráficos:

# 01. Gráfico de linhas, do volume (em porcentagem) armazenado no sistema
# cantareira ao longo do tempo




# 02. Gráfico de colunas, do volume (em porcentagem) armazenado nos sistemas,
# na data mais recente dos dados





# 03. Gráfico de colunas, do volume operacional (em valores absolutos)
#  armazenado nos sistemas, na data mais recente dos dados.



# Importação da base de Barragens de mineração no Brasil

library(readxl)
library(janitor)

barragens <- read_xlsx("dados/sigbm_download_2022-05-05.xlsx", skip = 4) |>
  # limpar os nomes das colunas
  clean_names() |>
  mutate(
    # transformar a coluna volume_atual_m3 em número
    # por padrão ela está como texto.
    volume_m3 = parse_number(volume_atual_m3,
      locale = locale(
        decimal_mark = ",",
        grouping_mark = "."
      )
    ),
  )

glimpse(barragens)
# Rows: 912
# Columns: 19
# $ id_barragem              <dbl> 9776, 8662, 8435, 8619, 8806,…
# $ nome_da_barragem         <chr> "VALE GOLD", "0-1", "1 Mina",…
# $ nome_do_empreendedor     <chr> "VALE GOLD S.A.", "MINERACAO …
# $ cpf_cnpj                 <chr> "38.615.413/0001-53", "34.019…
# $ latitude                 <chr> "-15°55'09.590\"", "-00°44'00…
# $ longitude                <chr> "-56°29'27.180\"", "-60°08'18…
# $ posicionamento           <chr> "Sul do Equador", "Sul do Equ…
# $ municipio                <chr> "NOSSA SENHORA DO LIVRAMENTO"…
# $ uf                       <chr> "MT", "AM", "PA", "PA", "SP",…
# $ minerio_principal        <chr> NA, "Minério de Estanho Primá…
# $ altura_atual_m           <dbl> 0.00, 19.60, 8.50, 8.78, 3.00…
# $ volume_atual_m3          <chr> "0,00", "57.463.773,00", "188…
# $ metodo_construtivo       <chr> "Indefinido", "0 - Etapa únic…
# $ categoria_de_risco       <chr> "N/A", "Médio", "N/A", "N/A",…
# $ dano_potencial_associado <chr> "N/A", "Alto", "N/A", "N/A", …
# $ classe                   <chr> "N/A", "B", "N/A", "N/A", "N/…
# $ inserida_na_pnsb         <chr> "Não", "Sim", "Não", "Não", "…
# $ nivel_de_emergencia      <chr> "Sem emergência", "Sem emergê…
# $ status_dce_atual         <chr> "-", "1º Campanha 2022 - Ates…
# $ volume_m3                <dbl> 0.00, 57463773.00, 188680.72,…


# Utilizando a base de dados de barragens, use as funções vistas na aula 1
#  para criar os seguintes gráficos:

# 04. Crie um boxplot, onde o eixo y representa a altura atual das barragens,
#  e o eixo x representa a categoria de risco das barragens.




# 05. Crie um gráfico de dispersão, onde o eixo x representa a altura atual das barragens,
#  e o eixo y representa o volume atual das barragens.
# deixe os pontos coloridos segundo o dano potencial associado.
# Deixe os pontos com transparência de 50%.
# Bonus: transforme o eixo y em escala logarítmica, usando a função
#  `scale_y_log10()` no ggplot.
