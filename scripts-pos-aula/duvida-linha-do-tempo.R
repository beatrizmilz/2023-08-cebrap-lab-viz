# https://cran.r-project.org/web/packages/vistime/vignettes/gg_vistime-vignette.html

library(tidyverse)
library(vistime)


timeline_data <- data.frame(event = c("Event 1", "Event 2"), 
                            start = c("2020-06-06", "2020-10-01"), 
                            end = c("2020-10-01", "2020-12-31"), 
                            group = "My Events")

gg_vistime(timeline_data)



# ---- Exemplo na minha tese ---

timeline_data <-
  googlesheets4::read_sheet(
    "https://docs.google.com/spreadsheets/d/1HO1uWJfJFvYalyZES54cTumZIDULCitig5HSQ-FYx2c/edit?usp=sharing"
  )

dados_timeline <- timeline_data |>
  dplyr::mutate(
    group = stringr::str_wrap(group, width = 15),
    event = as.character(event),
    event = dplyr::if_else(event == "NA", "", event)
  )

dados_timeline |>
  vistime::gg_vistime(linewidth = 8) +
  ggplot2::scale_x_datetime(labels = scales::label_date("%m/%Y"),
                            
                            date_breaks = "5 months") +
  ggplot2::theme_light()
