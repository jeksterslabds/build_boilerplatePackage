Install Dependencies before Creating boilerplatePackage
================
Ivan Jacob Agaloos Pesigan
2020-07-09

``` r
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
```

    ## Loading required package: remotes

``` r
remotes::install_github(
  repo = "jeksterslabds/jeksterslabRpkg",
  ref = "master"
)
```

    ## Using github PAT from envvar GITHUB_PAT

    ## Skipping install of 'jeksterslabRpkg' from a github remote, the SHA1 (9810af83) has not changed since last install.
    ##   Use `force = TRUE` to force installation
