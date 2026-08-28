# Re-install Waypoint from GitHub 
.libPaths()

remove.packages("Waypoint")

install.packages("Waypoint") ## defaults to the first element of .libPaths()
# install.packages("Waypoint", "/Users/frzmce/Library/R/arm64/4.4/library")

library(Waypoint)
help(package = "Waypoint")
