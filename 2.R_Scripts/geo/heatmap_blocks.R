
# Step 1. load the dengue dataset ####
load("~/Desktop/focos_transmision_activa_dengue_2025_veracruz-main/RData/denmex_2025_edo30.RData")

# Step 2. make the heatmap ####
heatmap_ver <- densnv::mp_heatmap(geocoded_datasets = z_ver,
                                  cve_edo = "30",
                                  locality = c("VERACRUZ"),
                                  status_caso = c(1, 2),
                                  week = c(17:20),
                                  zoom = NULL,
                                  map_type = NULL,
                                  alpha = 0.6,
                                  static = FALSE,
                                  palette = viridis::turbo)

# Step 3. make the heatmap ####
sectores <- rgeomex::extract_sectores(cve_edo = "30",
                                      locality = "VERACRUZ")


# Step 4. extrac sectores in heatmap ####
ver_sec <- sectores$sectores |>
    dplyr::filter(id %in% c(65416, 64847))

# Step 4. make the heatmap ####

# for extract 
heatmap_ver +
mapview::mapview(sectores$sectores, 
                 legend = FALSE, 
                 col.regions = "blue")

# final 
heatmap_ver +
    mapview::mapview(ver_sec, 
                     legend = FALSE, 
                     col.regions = "blue")


