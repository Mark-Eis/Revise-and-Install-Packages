library(Rcpp)
packageVersion("Rcpp")
library(devtools)
library(roxygen2)

ls()
rm(list = ls())
ls()
setwd("~/OneDrive - University of Bristol/Documents/R/Packages/Waypoint")
getwd()
list.files()

# use_version("dev", push = TRUE)  # "major", "minor", "patch", "dev"
# compileAttributes()

## Only used once!
# use_package_doc()
# use_readme_md()

# use_pkgdown_github_pages()

# document()
roxygen2::roxygenize(roclets="rd")
# pkgdown::build_site()

setwd("..")
getwd()
install("Waypoint")

cat("\n\n=====================\nsessionInfo()\n\n")
sessionInfo() |> print()
cat("\n\n=====================\nsearch()\n\n")
search() |> print()
cat("\n\n=====================\ncitation()\n\n")
citation(package = "Waypoint") |> print()

help(package = "Waypoint")

