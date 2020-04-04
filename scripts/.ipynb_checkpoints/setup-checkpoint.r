##############################
# Setup directories
##############################
root <- rprojroot::find_rstudio_root_file()
# setwd("")

## we are going to set the data file path here
data_in <- file.path(root, 'data')
data_out <- file.path(root, 'data_out')

##############################
# Package Setup
##############################
install.packages('pacman')
devtools::install_github('rstudio/packrat')
library('pacman')

Packages <- c(
  'tidyverse',
  'dplyr',
  'ggplot2',
  'tidyr',
  'readr',
  'devtools',
  # 'googleway',
  'rmarkdown',
  'sf',
  'purrr',
  'lwgeom',
  'tmap',
  'raster',
  'tigris',
  'remotes',
  # 'yelp',
  'spData'
  )
# Add vega-lite later

p_load(
  char = Packages,
  character.only = TRUE,
  install = TRUE,
  update = TRUE
)

# packrat::snapshot()