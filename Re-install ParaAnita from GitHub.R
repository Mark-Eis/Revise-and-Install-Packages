# Re-install ParaAnita from GitHub 

remove.packages("ParaAnita")

# install.packages("devtools")
devtools::install_github("Mark-Eis/ParaAnita")

library(ParaAnita)
help(package = "ParaAnita")
