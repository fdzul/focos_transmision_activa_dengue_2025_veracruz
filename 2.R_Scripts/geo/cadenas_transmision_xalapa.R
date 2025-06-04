
# Step 1. load the dataset ####
load("/Users/felipedzul/OneDrive/proyects/geocoding_mex/2025/8.RData/denmex_2025.RData")

# paso 2. cadenas de transmisión xalapa ###
library(magrittr)
denhotspots::transmission_chains_map(geocoded_dataset = z,
                                     cve_edo = "30",
                                     locality = "Xalapa de Enriquez",
                                     dengue_cases = "Probable")


# paso 3. cadenas de transmisión veracruz ###
library(magrittr)
denhotspots::transmission_chains_map(geocoded_dataset = z,
                                     cve_edo = "30",
                                     locality = "Veracruz",
                                     dengue_cases = "Probable")
