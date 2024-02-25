# Re-install BitsnBobs from GitHub 

remove.packages("BitsnBobs")

# install.packages("devtools")
devtools::install_github("Mark-Eis/BitsnBobs")

library(BitsnBobs)
help(package = "BitsnBobs")
