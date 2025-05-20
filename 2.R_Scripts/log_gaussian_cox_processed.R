
# Step 1. load the dataset ####
load("/Users/felipedzul/Library/CloudStorage/OneDrive-Personal/proyects/geocoding_mex/2024/8.RData/denmex_2024.RData")

# Step 2. set the onset variable
z <- z |>
    dplyr::mutate(onset = lubridate::ymd(FEC_INI_SIGNOS_SINT)) |>
    dplyr::filter(ESTATUS_CASO %in% c(2)) |>
    dplyr::mutate(x = long,
                  y = lat)

# 2. Aplicar the lgcp ####
111.132 * 0.1     # 11.132 km
111.132 * 0.009   # 1.00 km
111.132 * 0.005   # 500 metros
111.132 * 0.001   # 100 metros
lattice <- denhotspots::spatial_lgcp(dataset = z,
                                     locality = "León de Aldama",
                                     cve_edo = "11",
                                     longitude = "long",
                                     latitude = "lat",
                                     k = 40,
                                     plot = TRUE,
                                     aproximation = "gaussian",
                                     integration = "eb",
                                     resolution = 0.015,
                                     approach = "lattice",
                                     cell_size = 1000,
                                     name = "YlGnBu")

#lattice$gg_mesh
lattice$map
