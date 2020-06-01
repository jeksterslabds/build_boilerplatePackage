Install Dependencies before Creating boilerplatePackage
================
Ivan Jacob Agaloos Pesigan
2020-06-01

``` r
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

    ## Skipping install of 'jeksterslabRpkg' from a github remote, the SHA1 (afed5d70) has not changed since last install.
    ##   Use `force = TRUE` to force installation
