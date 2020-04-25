01\_dependencies.R
================
jek
2020-04-25

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
if (!require("rmarkdown")) {
  install.packages(
    "rmarkdown",
    repos = repos
  )
}
```

    ## Loading required package: rmarkdown

``` r
remotes::install_github(
  repo = "jeksterslabds/jeksterslabRpkg",
  ref = "master"
)
```

    ## Using github PAT from envvar GITHUB_PAT

    ## Downloading GitHub repo jeksterslabds/jeksterslabRpkg@master

    ## 
    ##      checking for file ‘/tmp/RtmpxE3Vmv/remotes2f0bf7be3dd64/jeksterslabds-jeksterslabRpkg-3fb4762/DESCRIPTION’ ...  ✔  checking for file ‘/tmp/RtmpxE3Vmv/remotes2f0bf7be3dd64/jeksterslabds-jeksterslabRpkg-3fb4762/DESCRIPTION’
    ##   ─  preparing ‘jeksterslabRpkg’:
    ##      checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
    ##   ─  checking for LF line-endings in source and make files and shell scripts
    ##   ─  checking for empty or unneeded directories
    ##   ─  building ‘jeksterslabRpkg_0.9.0.tar.gz’
    ##      
    ## 

    ## Installing package into '/home/jek/R/x86_64-pc-linux-gnu-library/4.0.0'
    ## (as 'lib' is unspecified)
