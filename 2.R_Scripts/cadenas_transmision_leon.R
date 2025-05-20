load("/Users/felipedzul/Library/CloudStorage/OneDrive-Personal/proyects/geocoding_mex/2025/8.RData/denmex_2025.RData")

# paso 2. cadenas de transmisión ###
library(magrittr)
denhotspots::transmission_chains_map(geocoded_dataset = z,
                                     cve_edo = "11",
                                     locality = "León de Aldama",
                                     dengue_cases = "Probable")
