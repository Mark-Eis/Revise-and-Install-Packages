# Re-install Transition from GitHub 

remove.packages("Transition")

# install.packages("devtools")
devtools::install_github("Mark-Eis/Transition")

library(Transition)
help(package = "Transition")
