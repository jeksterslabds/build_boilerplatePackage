#' ---
#' title: "boilerplatePackage"
#' author: "Ivan Jacob Agaloos Pesigan"
#' date: "`r Sys.Date()`"
#' output:
#'   rmarkdown::github_document:
#'     toc: true
#' ---
#'
#+ setup
library(jeksterslabRpkg)
tmp <- getwd()
pkg_name <- "boilerplatePackage"
pkg_root <- file.path(
  tmp,
  pkg_name
)
#'
#' ## Build Package.
#'
#' Builds the `R` package on `pkg_root` by:
#'
#'   - styling the `R` scripts and `R` Markdown files,
#'   - building package data by running `R` scripts stored in `data_raw`,
#'   - rendering the `R` scripts and `R` Markdown files using `rmarkdown::render()`, and
#'   - building `pkgdown` site.
#'
#' ### minimal = TRUE
#'
#+ build_01
pkg_build(
  pkg_root = pkg_root,
  minimal = TRUE,
  par = TRUE
)
#'
#' ### minimal = FALSE
#'
#+ build_02
pkg_build(
  pkg_root = pkg_root,
  minimal = FALSE,
  style = TRUE,
  data = TRUE,
  render = TRUE,
  readme = TRUE,
  vignettes = TRUE,
  tests = TRUE,
  pkgdown = TRUE,
  par = TRUE,
  git = TRUE,
  github = TRUE
)
