# Re-install Waypoint from GitHub 

remove.packages("Waypoint")

# install.packages("devtools")
devtools::install_github("Mark-Eis/Waypoint")

library(Waypoint)
help(package = "Waypoint")
