# ___________________________________
# usethis::git_sitrep for BitsnBobs

tmpdir <- getwd()
setwd("~/OneDrive - University of Bristol/Documents/R/Packages/BitsnBobs")
devtools::dev_sitrep() |> print()
usethis::git_sitrep()
setwd(tmpdir)