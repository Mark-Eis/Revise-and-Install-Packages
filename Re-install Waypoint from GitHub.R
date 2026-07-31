# Re-install Waypoint from GitHub 

remove.packages("Waypoint")

pak::pkg_install("Mark-Eis/Waypoint")

library(Waypoint)
help(package = "Waypoint")
