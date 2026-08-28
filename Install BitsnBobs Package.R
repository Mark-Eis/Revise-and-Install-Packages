ls()
rm(list = ls())
ls()
# setwd("/Users/markeisler/Documents/R/Packages/BitsnBobs")
# setwd("/Users/frzmce/Library/CloudStorage/OneDrive-UniversityofBristol/Documents/R/Packages/BitsnBobs")
setwd("~/OneDrive - University of Bristol/Documents/R/Packages/")
getwd()

devtools::install("BitsnBobs")

cat("\n\n=====================\nsessionInfo()\n\n")
sessionInfo() |> print()
cat("\n\n=====================\nsearch()\n\n")
search() |> print()
cat("\n\n=====================\ncitation()\n\n")
citation(package = "BitsnBobs") |> print()

help(package="BitsnBobs")

