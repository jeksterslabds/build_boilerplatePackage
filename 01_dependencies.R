#' ---
#' title: "Install Dependencies before Creating boilerplatePackage"
#' author: "Ivan Jacob Agaloos Pesigan"
#' date: "`r Sys.Date()`"
#' output:
#'   rmarkdown::github_document:
#'     toc: true
#' ---
#'
#+ setup
dir <- Sys.getenv("HOME")
if (dir == "/home/travis" | dir == "/Users/travis") {
  source("https://raw.githubusercontent.com/jeksterslabds/jeksterslabRutils/master/R/util_txt2file.R")
  source("https://raw.githubusercontent.com/jeksterslabds/jeksterslabRutils/master/R/util_os.R")
  source("https://raw.githubusercontent.com/jeksterslabds/jeksterslabRterm/master/R/term_user_lib.R")
  source("https://raw.githubusercontent.com/jeksterslabds/jeksterslabRterm/master/R/term_renviron.R")
  GITHUB_PAT <- Sys.getenv("GITHUB_PAT")
  term_renviron(
    dir = dir,
    overwrite = TRUE,
    GITHUB_PAT = GITHUB_PAT,
    libpath = "~/R/Library"
  )
}
repos <- "https://cran.rstudio.org"
if (!require("remotes")) {
  install.packages(
    "remotes",
    repos = repos
  )
}
remotes::install_github(
  repo = "jeksterslabds/jeksterslabRpkg",
  ref = "master"
)
