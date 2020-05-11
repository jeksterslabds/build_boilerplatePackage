01\_dependencies.R
================
jek
2020-05-11

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

    ## Skipping install of 'jeksterslabRpkg' from a github remote, the SHA1 (e027567d) has not changed since last install.
    ##   Use `force = TRUE` to force installation
