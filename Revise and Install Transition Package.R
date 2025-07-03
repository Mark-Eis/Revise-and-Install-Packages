library(Rcpp)
packageVersion("Rcpp")
library(devtools)
library(roxygen2)

ls()
rm(list = ls())
ls()
setwd("~/OneDrive - University of Bristol/Documents/R/Packages/Transition")
getwd()
list.files()

# use_version("dev", push = FALSE)  # "major", "minor", "patch", "dev"
compileAttributes()

data(Blackmore, package = "carData")
rownames(Blackmore) <- seq_len(nrow(Blackmore))
use_data(Blackmore, overwrite = TRUE)


# use_pkgdown_github_pages()

document()
roxygen2::roxygenize(roclets="rd")
pkgdown::build_site()

setwd("..")
getwd()
install("Transition")

cat("\n\n=====================\nsessionInfo()\n\n")
sessionInfo() |> print()
cat("\n\n=====================\nsearch()\n\n")
search() |> print()
cat("\n\n=====================\ncitation()\n\n")
citation(package = "Transition") |> print()

help(package = "Transition")

