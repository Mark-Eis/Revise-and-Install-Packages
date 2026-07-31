# Re-install Transition from GitHub 

remove.packages("Transition")

# install.packages("devtools")
devtools::install_github("Mark-Eis/Transition", build_vignettes = TRUE)

library(Transition)
help(package = "Transition")
