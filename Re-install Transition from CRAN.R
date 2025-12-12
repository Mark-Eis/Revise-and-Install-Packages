# Re-install Transition from GitHub 
.libPaths()

remove.packages("Transition")

install.packages("Transition") ## defaults to the first element of .libPaths()
# install.packages("Transition", "/Users/frzmce/Library/R/arm64/4.4/library")

library(Transition)
help(package = "Transition")
