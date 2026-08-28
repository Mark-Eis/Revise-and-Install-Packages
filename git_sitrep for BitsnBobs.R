# ___________________________________
# usethis::git_sitrep for BitsnBobs

tmpdir <- getwd()
setwd("~/OneDrive - University of Bristol/Documents/R/Packages/BitsnBobs")
devtools::dev_sitrep() |> print()
usethis::git_sitrep()
setwd(tmpdir)

# ____________________________________________
# To update the GitHub Personal access token
gitcreds::gitcreds_set()

#> ? Enter password or token: ghp_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
#> -> Adding new credentials...
#> -> Removing credentials from cache...
#> -> Done.
