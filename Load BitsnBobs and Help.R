pkg_name = "BitsnBobs"

library(pkg_name, character.only = T)

fmt_str <- "\n=========================================="

cat(fmt_str, "> sessionInfo()\n", sep = "\n")
sessionInfo() |> print()

cat(fmt_str, "> search()\n", sep = "\n")
search() |> print()

cat(fmt_str, "> rlang::search_envs()\n", sep = "\n")
rlang::search_envs() |> print()

cat(fmt_str, "\n> ns <- getNamespace(", pkg_name, ")\n> ns\n", sep = "")
ns <- getNamespace(pkg_name) |> print()

cat(fmt_str, "> nsn <- getNamespaceName(ns)", "> nsn\n", sep = "\n")
nsn <- getNamespaceName(ns) |> print()

cat(fmt_str, "rlang::env_parents(ns, last = rlang::empty_env())", sep = "\n")
rlang::env_parents(ns, last = rlang::empty_env()) |> print()

cat(fmt_str, "> ns_names <- names(ns)", "> ns_names\n", sep = "\n")
ns_names <- names(ns) |> sort() |> print()

cat(fmt_str, "> names(ns$.__NAMESPACE__.)\n", sep = "\n")
names(ns$.__NAMESPACE__.) |> sort() |> print()

cat(fmt_str, "> getNamespaceInfo(ns, \"path\")", sep = "\n")
getNamespaceInfo(ns, "path") |> print()

cat(fmt_str, "> getNamespaceInfo(ns, \"spec\")", sep = "\n")
getNamespaceInfo(ns, "spec") |> print()

cat(fmt_str, "ns_S3methods <- getNamespaceInfo(ns, \"S3methods\")",
	"dimnames(ns_S3methods)[2] <- list(c(\"Generic\", \"Class\", \"Method\", \"Unknown\"))",
	"ns_S3methods[, -4] |> as.data.frame()\n",
	sep = "\n> ")
ns_S3methods <- getNamespaceInfo(ns, "S3methods")
dimnames(ns_S3methods)[2] <- list(c("Generic", "Class", "Method", "Unknown"))
ns_S3methods[, -4] |> as.data.frame() |> print(right = FALSE, row.names = FALSE)

cat(fmt_str, "> ns_lzd <- getNamespaceInfo(ns, \"lazydata\")", "> ns_lzd\n", sep = "\n")
ns_lzd <- getNamespaceInfo(ns, "lazydata") |> print()

cat(fmt_str, "> names(ns_lzd)\n", sep = "\n")
names(ns_lzd) |> sort() |> print()

cat(fmt_str, "> as.list(ns_lzd)\n", sep = "\n")
as.list(ns_lzd, all.names = TRUE, sorted = TRUE) |> print()

cat(fmt_str, "> ns_exp <- getNamespaceExports(ns)", "> ns_exp\n", sep = "\n")
ns_exp <- getNamespaceExports(ns) |> sort() |> print()

cat(fmt_str, "\n# Namespace ", nsn, ", not exported: -\n", sep = "")
ns_names[!ns_names %in% getNamespaceExports(ns)] |> sort() |> print()

cat(fmt_str, "> getNamespaceImports(ns)\n", sep = "\n")
getNamespaceImports(ns) |> print()

cat(fmt_str, "\n# Namespace ", nsn, ", re-exported: -\n", sep = "")
ns_exp[ns_exp %in% getNamespaceImports(ns)] |> sort() |> print()

cat(fmt_str, "> ns_pkg_env <- rlang::pkg_env(nsn)", "> ns_pkg_env\n", sep = "\n")
ns_pkg_env <- rlang::pkg_env(nsn) |> print()

cat(fmt_str, "> pkg_names <- names(ns_pkg_env) |> sort()", "> pkg_names\n", sep = "\n")
pkg_names <- names(ns_pkg_env) |> sort() |> print()

cat(fmt_str, "> getExportedValue(ns, \"heights\")\n", sep = "\n")
getExportedValue(ns, "heights") |> print()

cat(fmt_str, "> getExportedValue(ns, \"litter_sizes\")\n", sep = "\n")
getExportedValue(ns, "litter_sizes") |> print()

cat(fmt_str, "> getExportedValue(ns, \"starwars2\")\n", sep = "\n")
getExportedValue(ns, "starwars2") |> print()

cat(fmt_str, "> getExportedValue(ns, \"starwars3\")\n", sep = "\n")
getExportedValue(ns, "starwars3") |> print()

cat(fmt_str, "\n# Data in package ", nsn, ", not exported from namespace: -\n", sep = "")
pkg_names[!pkg_names %in% getNamespaceExports(ns)] |> sort() |> print()

citation(pkg_name) |> print()

help(package = (nsn))

rm(fmt_str, ns, ns_exp, ns_lzd, ns_names, ns_pkg_env, ns_S3methods, nsn, pkg_name, pkg_names)
