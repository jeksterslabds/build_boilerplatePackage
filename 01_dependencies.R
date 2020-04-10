repos <- "https://cran.rstudio.org"
if (!require("devtools")) {
  install.packages("devtools", repos = repos)
}
if (!require("rmarkdown")) {
  install.packages("rmarkdown", repos = repos)
}
remotes::install_github(
  repo = "jeksterslabds/jeksterslabRpkg",
  ref = "develop"
)
