library(tidyverse)

esquisse::esquisser(viewer = "browser")

# Colando o código gerado: 
dplyr::starwars %>%
  filter(!is.na(height)) %>%
  filter(!is.na(mass)) %>%
  filter(!is.na(gender)) %>%
  ggplot() +
  aes(x = mass, y = height, colour = gender) +
  geom_point(shape = "bullet", size = 2.55) +
  scale_color_brewer(palette = "Paired", direction = 1) +
  labs(
    x = "massa ",
    y = "altura",
    title = "titulo do grafico aqui",
    subtitle = "subtitulo do grafico",
    caption = "fonte: pacote dplyr",
    color = "Gênero"
  ) +
  ggthemes::theme_fivethirtyeight() +
  theme(legend.position = "top") +
  xlim(0, 200)
