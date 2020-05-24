01\_dependencies.R
================
jek
2020-05-24

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

    ## Downloading GitHub repo jeksterslabds/jeksterslabRpkg@master

    ## jekstersl... (30fb5e284... -> 541bff57f...) [GitHub]

    ## Downloading GitHub repo jeksterslabds/jeksterslabRutils@master

    ## 
    ##      checking for file ‘/tmp/Rtmpiqbq3K/remotesd86b75a358455/jeksterslabds-jeksterslabRutils-30fb5e2/DESCRIPTION’ ...  ✔  checking for file ‘/tmp/Rtmpiqbq3K/remotesd86b75a358455/jeksterslabds-jeksterslabRutils-30fb5e2/DESCRIPTION’
    ##   ─  preparing ‘jeksterslabRutils’:
    ##      checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
    ##   ─  checking for LF line-endings in source and make files and shell scripts
    ##   ─  checking for empty or unneeded directories
    ##   ─  building ‘jeksterslabRutils_0.9.0.tar.gz’
    ##      
    ## 

    ## Installing package into '/home/jek/R/x86_64-pc-linux-gnu/4.0'
    ## (as 'lib' is unspecified)

    ##      checking for file ‘/tmp/Rtmpiqbq3K/remotesd86b722f960f1/jeksterslabds-jeksterslabRpkg-43b7879/DESCRIPTION’ ...  ✔  checking for file ‘/tmp/Rtmpiqbq3K/remotesd86b722f960f1/jeksterslabds-jeksterslabRpkg-43b7879/DESCRIPTION’
    ##   ─  preparing ‘jeksterslabRpkg’:
    ##    checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
    ##   ─  checking for LF line-endings in source and make files and shell scripts
    ##   ─  checking for empty or unneeded directories
    ##   ─  building ‘jeksterslabRpkg_0.9.0.tar.gz’
    ##      
    ## 

    ## Installing package into '/home/jek/R/x86_64-pc-linux-gnu/4.0'
    ## (as 'lib' is unspecified)
