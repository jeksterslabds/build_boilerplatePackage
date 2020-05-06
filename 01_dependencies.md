01\_dependencies.R
================
jek
2020-05-07

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

    ## 
    ##      checking for file ‘/tmp/RtmpdFPAQB/remotes6adb16ff6afbe/jeksterslabds-jeksterslabRpkg-68dd51e/DESCRIPTION’ ...  ✔  checking for file ‘/tmp/RtmpdFPAQB/remotes6adb16ff6afbe/jeksterslabds-jeksterslabRpkg-68dd51e/DESCRIPTION’
    ##   ─  preparing ‘jeksterslabRpkg’:
    ##      checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
    ##   ─  excluding invalid files
    ##      Subdirectory 'R' contains invalid file names:
    ##      ‘.test.R’
    ##   ─  checking for LF line-endings in source and make files and shell scripts
    ##   ─  checking for empty or unneeded directories
    ##   ─  building ‘jeksterslabRpkg_0.9.0.tar.gz’
    ##      
    ## 

    ## Installing package into '/home/jek/R/x86_64-pc-linux-gnu/4.0'
    ## (as 'lib' is unspecified)
