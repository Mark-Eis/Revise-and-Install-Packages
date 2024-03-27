# ___________________________________
# usethis::git_sitrep for ParaAnita

tmpdir <- getwd()
setwd("~/OneDrive - University of Bristol/Documents/R/Packages/ParaAnita")
devtools::dev_sitrep() |> print()
usethis::git_sitrep()
setwd(tmpdir)