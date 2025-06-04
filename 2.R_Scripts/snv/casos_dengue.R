# Step 1.1 define the path 
path_sinave <- "~/OneDrive/datasets/DGE/denv/2025"


# Step 1.2 load dengue dataset 
library(sf)
x <- densnv::cases_by_agem(path_vbd = path_sinave,
                           vbd = "DENGUE",
                           country = FALSE,
                           cve_edo = "17",
                           status_case = 2)

# Step 3. map the dengue dataset ####
mapview::mapview(x,
                 zcol = "n",
                 layer.name = "Casos de Dengue")
