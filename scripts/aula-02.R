# Como ordenar as barras em um gráfico, de forma que a maior barra fique no topo?

media_idhm_por_uf <- dados_pnud_2010 |>
  group_by(regiao_nm, uf_sigla) |>
  summarise(media_idhm = mean(idhm))

media_idhm_por_regiao |>
  ggplot() +
  aes(x = media_idhm, y = uf_sigla) +
  geom_col()



# Podemos mudar a ordem das barras usando a função fct_reorder() do pacote forcats


# Escalas ----------------

# Escalas de cores

# Escalas de cores contínuas

# Escalas de cores discretas

# Escalas de cores manuais

# Escala logarítmica