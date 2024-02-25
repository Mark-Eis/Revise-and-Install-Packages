ls()
rm(list = ls())
ls()
getwd()
# setwd("~")
# getwd()
# setwd("/Users/markeisler/Documents/R/Packages/BitsnBobs")
# setwd("/Users/frzmce/Library/CloudStorage/OneDrive-UniversityofBristol/Documents/R/Packages/BitsnBobs")
setwd("~/OneDrive - University of Bristol/Documents/R/Packages/BitsnBobs")
getwd()

library(devtools)
library(roxygen2)

use_package("dplyr")
use_package("FinancialMath", "Suggests")
use_package("forcats")
use_package("ggplot2")
use_package("purrr")
use_package("rlang")
use_package("stringr")
use_package("tidyr")
use_package("lobstr", "Suggests")

use_tibble()

use_import_from("dplyr", c("across", "arrange", "bind_rows", "count", "desc", "if_else", "filter", "group_by", "mutate",
							"rename_with", "select", "summarise"))
use_import_from("forcats", c("fct_expand", "fct_relevel", "fct_drop"))
use_import_from("ggplot2", c("aes", "element_text", "facet_wrap", "geom_histogram", "ggplot", "labs", "margin", "theme",
							"theme_get", "theme_set", "theme_update"))
use_import_from("methods", c("formalArgs"))
use_import_from("purrr", c("map", "map2_chr", "map_chr", "map_dbl", "map_int", "modify_at", "pmap_lgl"))
use_import_from("rlang", c("%||%", "enexprs", "eval_tidy", "expr", "f_rhs", "f_rhs<-"))
use_import_from("rlang", c(":=", "%@%", "%@%<-", "%||%", "f_rhs<-", ".data", "data_syms", "as_label", "as_name", "enexprs",
							"enquo", "enquos", "eval_tidy", "expr", "exprs", "f_rhs", "set_names"))
use_import_from("stats", c("optimise", "pt", "pnorm", "qnorm", "qt", "setNames"))
use_import_from("stringr", c("boundary", "coll", "fixed", "regex"))
use_import_from("tibble", c("rownames_to_column"))
use_import_from("tidyselect", c("all_of", "any_of", "contains", "ends_with", "eval_select", "everything", "last_col",
							"matches", "num_range", "starts_with", "where"))
use_import_from("utils", c("methods"))

starwars2 <- dplyr::starwars |> dplyr::select(name:species) |> 
  tidyr::separate_wider_delim(name, " ", names = c("name", "Surname"), too_few = "align_start", too_many = "merge") |> 
  dplyr::rename(Firstname = name) |> dplyr::filter(!is.na(Surname))
if (FALSE)
	use_data_raw("starwars2")
use_data(starwars2, overwrite = TRUE)

starwars3 <- dplyr::starwars |> dplyr::select(c(name, skin_color)) |>
  dplyr::arrange(stringr::str_length(skin_color) |> desc()) |> head(10) |> dplyr::arrange(name)
if (FALSE)
	use_data_raw("starwars3")
use_data(starwars3, overwrite = TRUE)

heights <- rep(c(61, 64, 67, 70, 73), c(5, 18, 42, 27, 8))
if (FALSE)
	use_data_raw("heights")
use_data(heights, overwrite = TRUE)

litter_sizes <- rep(1:12, c(7, 33, 58, 116, 125, 126, 121, 107, 56, 37, 25, 4))
if (FALSE)
	use_data_raw("litter_sizes")
use_data(litter_sizes, overwrite = TRUE)

use_mit_license()
use_tidy_description()

## Only used once!
# use_package_doc()
# use_readme_md()

use_pkgdown_github_pages()
# use_article("Using wizard")

document()
# pkgdown::build_site()

setwd("..")
install("BitsnBobs")

cat("\n\n=====================\nsessionInfo()\n\n")
sessionInfo() |> print()
cat("\n\n=====================\nsearch()\n\n")
search() |> print()
cat("\n\n=====================\ncitation()\n\n")
citation(package = "BitsnBobs") |> print()

help(package = "BitsnBobs")

