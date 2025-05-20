

# Paso 1. Subir base geocodifica ####
load("/Users/felipedzul/Library/CloudStorage/OneDrive-Personal/proyects/geocoding_mex/2025/8.RData/denmex_2025.RData")

# paso 2. mapa de calor ###
library(magrittr)
densnv::mp_heatmap(geocoded_datasets = z,
                   cve_edo = "11",
                   locality = "León de Aldama",
                   status_caso = c(1, 2),
                   week = c(1:53),
                   zoom = NULL,
                   map_type = NULL,
                   alpha = 0.6,
                   static = FALSE,
                   palette = viridis::turbo)
