#' ---
#' title: "Create boilerplatePackage"
#' author: "Ivan Jacob Agaloos Pesigan"
#' date: "`r Sys.Date()`"
#' output:
#'   rmarkdown::github_document:
#'     toc: true
#' ---
#'
#+ setup
library(jeksterslabRpkg)
#'
#' ## Create a Boilerplate `R` Package.
#'
#' Creates a boilerplate `R` package by generating the following:
#'
#'   - `DESCRIPTION` file,
#'   - `NAMESPACE` file,
#'   - `LICENSE` and `LICENSE.md`,
#'   - a simple `R` script and accompanying `Rd` documentation file,
#'   - sample data, test, and vignette,
#'   - optional `pkgdown` and `travis` `YAML` files,
#'   - optional `README.Rmd` file, and
#'   - other files like `.Rbuildignore`, `.gitignore`, and `Rproj`.
#'
#' Optionally, the function can also set up a `Git` repository
#' and push the created repo to `Github`.
#' This requires that `git` and `hub` are installed
#' and configured in the system.
#'
#' If you are going to document, check, and build your package using `devtools`,
#' you may delete the boilerplate `NAMESPACE` and `MAN` files.
#'
#+ create_01
pkg_create(
  pkg_dir = getwd(),
  input_file = "DESCRIPTION.yml",
  docs = TRUE,
  pkgdown = TRUE,
  travis = TRUE,
  appveyor = TRUE,
  readme = TRUE,
  add_description = NULL,
  add_namespace = NULL,
  add_rbuildignore = NULL,
  add_gitignore = NULL,
  add_travis = NULL,
  add_appveyor = NULL,
  git = TRUE,
  github = TRUE
)
