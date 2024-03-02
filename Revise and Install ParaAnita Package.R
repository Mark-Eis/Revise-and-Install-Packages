ls()
rm(list = ls())
ls()
getwd()
# setwd("/Users/markeisler/Documents/R/Packages/ParaAnita")
# setwd("/Users/frzmce/Library/CloudStorage/OneDrive-UniversityofBristol/Documents/R/Packages/ParaAnita")
setwd("~/OneDrive - University of Bristol/Documents/R/Packages/ParaAnita")
getwd()

library(devtools)
library(roxygen2)
# library(pkgdown)

# Only used once!
# use_package_doc()
# use_readme_md()

use_package("broom")
use_package("dplyr")
use_package("ggplot2")
use_package("forcats")
use_package("purrr")
use_package("rlang")
use_package("stats")
use_package("stringr")
use_package("tidyr")
use_package("tidyselect")
# use_package("lobstr", "Suggests")

use_tibble()

use_import_from("broom",
                   c("glance")
               )
use_import_from("dplyr",
                   c("across", "arrange", "bind_cols", "bind_rows", "count", "desc", "filter", "group_by", "mutate", "n",
                   "pull", "relocate", "rename", "rename_with", "select", "summarise")
               )
use_import_from("forcats",
                   c("fct_collapse", "fct_count", "fct_cross", "fct_drop","fct_recode", "fct_relevel", "fct_reorder")
               )
use_import_from("ggplot2",
                   c("aes", "as_labeller", "element_text", "facet_wrap", "geom_col", "geom_errorbar", "geom_histogram",
                   "geom_point", "geom_text", "ggplot", "labs", "labeller", "margin", "scale_y_continuous",
                   "scale_y_reverse", "theme", "theme_get", "theme_set", "theme_update")
               )
use_import_from("methods", c("is"))
use_import_from("purrr",
                c("list_rbind", "list_transpose", "imap", "map", "map2", "map_chr", "map2_chr", "map_dbl", "map_int",
                   "map_lgl", "walk")
               )
use_import_from("rlang",
                   c("%@%", "%@%<-", "%|%", "%||%", ":=", ".data", "as_name", "as_string", "call2", "check_dots_empty",
                   "check_dots_unnamed", "check_dots_used", "data_sym", "data_syms", "enexpr", "enexprs", "enquo",
                   "enquos","eval_tidy", "expr", "exprs", "f_rhs", "inject", "list2", "quo_is_missing", "quos",
                   "set_names", "sym", "syms")
               )
use_import_from("stats",
                   c("AIC", "C", "add1", "anova", "binomial", "chisq.test", "coef", "confint", "contr.helmert",
                   "contr.treatment", "contrasts", "contrasts<-", "family", "fisher.test", "formula", "glm", "predict",
                   "prop.test", "pt", "qt", "rbinom", "setNames", "weights")
               )
use_import_from("stringr",
                   c("str_detect", "str_locate", "str_split", "str_sub", "str_to_title", "str_trim")
               )
use_import_from("tibble",
                   c("as_tibble", "column_to_rownames", "is_tibble", "rownames_to_column")
               )
use_import_from("tidyr",
                   c("pivot_wider")
               )
use_import_from("tidyselect",
                   c("all_of", "any_of", "contains", "ends_with", "eval_select", "everything", "last_col", "matches",
                   "num_range", "starts_with", "where")
               )

budworm <- data.frame(
	ldose = rep(0:5, 2),
	sex = factor(rep(c("M", "F"), c(6, 6))),
	numdead = c(1, 4, 9, 13, 18, 20, 0, 2, 6, 10, 12, 16),
	numalive = c(19, 16, 11, 7, 2, 0, 20, 18, 14, 10, 8, 4)
)
if (FALSE)
	use_data_raw("budworm")
use_data(budworm, overwrite = TRUE)

use_mit_license()
use_tidy_description()

# use_pkgdown()
use_pkgdown_github_pages()

document()
# pkgdown::build_site()

setwd("..")
install("ParaAnita")

cat("\n\n=====================\nsessionInfo()\n\n")
sessionInfo() |> print()
cat("\n\n=====================\nsearch()\n\n")
search() |> print()
cat("\n\n=====================\ncitation()\n\n")
citation(package = "ParaAnita") |> print()

help(package = "ParaAnita")

