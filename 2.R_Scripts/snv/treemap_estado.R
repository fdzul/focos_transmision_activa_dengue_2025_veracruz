
path_sinave <- "/Users/felipedzul/OneDrive/datasets/DGE/denv/2025/DENGUE2_.txt"
x <- data.table::fread(path_sinave,
                       #select = vect_cols2,
                       encoding = "Latin-1",
                       quote="",
                       fill=TRUE)

#extrafont::loadfonts(quiet = TRUE)
densnv::mp_treemap(country = TRUE,
                   year = 2025,
                   snv_dataset = x)


densnv::mp_treemap(country = FALSE,
                   year = 2025,
                   cve_edo = "30",
                   snv_dataset = x)
