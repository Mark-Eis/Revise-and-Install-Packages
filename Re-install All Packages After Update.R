
pkg_path <- function(priority = FALSE) {
    cols <- if (priority)  c("Package", "Priority") else "Package"
    ip <- installed.packages()
    libpaths <- unique(ip[, "LibPath"])
    seq_along(libpaths) |>
    lapply(\(y) ip[which(ip[, "LibPath"] == libpaths[y]), cols]) |>
    structure(libPaths = libpaths)
}

## _______________
## Before update
.libPaths()
.Library		## NB /Library/Frameworks/R.framework/Resources is a shortcut, probably same place as .libPaths()[[2]]
.Library.site

setwd("/Users/frzmce/Library/CloudStorage/OneDrive-UniversityofBristol/Documents/R/Packages/Installed")
getwd()

# Installed packages and priority by path
packages <- pkg_path(TRUE)
(names(packages) <- attr(packages, "libPaths"))
lapply(packages, nrow)
lapply(packages, \(x) {dimnames(x)[1] <- list(NULL); x})  ## each package name only once

# Save package names with priority
if (menu(c("Save", "Cancel"), title = "Save package names?") == 1) {
    saveRDS(pkg_path(TRUE), file = "Rpackages")
	cat("Rpackages saved")
} else	
	cat("Not saved")


## ______________
## After update
.libPaths()
.Library		## NB /Library/Frameworks/R.framework/Resources is a shortcut, probably same place as .libPaths()[[2]]
.Library.site

# Previously installed packages
oldwd <- setwd("/Users/frzmce/Library/CloudStorage/OneDrive-UniversityofBristol/Documents/R/Packages/Installed")
getwd()

old_packages <- readRDS("Rpackages")
# old_packages <- readRDS("Fake_Rpackages")
(names(old_packages) <- attr(old_packages, "libPaths"))
lapply(old_packages, nrow)
lapply(old_packages, unname)	## each package name only once

# Compare previously installed package paths to .libPaths()
attr(old_packages, "libPaths") %in% unlist(.libPaths())

# Currently installed packages and priority by path
packages <- pkg_path(TRUE)
(names(packages) <- attr(packages, "libPaths"))
lapply(packages, nrow)
lapply(packages, \(x) {dimnames(x)[1] <- list(NULL); x})  ## each package name only once
installed.packages() |> nrow() |> setNames("Total")

(all_installed <- installed.packages()[,"Package"] |> unname())

# Are previously installed packages installed currently?
attr(old_packages, "libPaths")[1]
old_packages[[1]][,"Package"] %in% all_installed
old_packages[[1]][,"Package"] %in% all_installed |> all()
old_packages[[1]][,"Package"] %in% all_installed |> sum(na.rm = TRUE)
old_packages[[1]][old_packages[[1]][,"Package"] %in% all_installed,"Package"] |> unname()

attr(old_packages, "libPaths")[2]
old_packages[[2]][,"Package"] %in% all_installed
old_packages[[2]][,"Package"] %in% all_installed |> all()
old_packages[[2]][,"Package"] %in% all_installed |> sum(na.rm = TRUE)
old_packages[[2]][old_packages[[2]][,"Package"] %in% all_installed,"Package"] |> unname()

# Missing packages
(!old_packages[[1]][,"Package"] %in% all_installed) |> sum(na.rm = TRUE)
(to_install1 <- old_packages[[1]][!old_packages[[1]][,"Package"] %in% all_installed,"Package"] |> unname())

(!old_packages[[2]][,"Package"] %in% all_installed) |> sum(na.rm = TRUE)
(to_install2 <- old_packages[[2]][!old_packages[[2]][,"Package"] %in% all_installed,"Package"] |> unname())

if (menu(c("Install", "Cancel"), title = "Install missing packages?") == 1) {
	cat("Installing packages")
    install.packages(c(to_install1, to_install2), dependencies = TRUE)
} else	
	cat("Packages not installed")

setwd(oldwd)