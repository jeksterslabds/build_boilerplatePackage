01\_dependencies.R
================
jek
2020-05-05

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

    ## jekstersl... (18fe2f670... -> 1195d8aaa...) [GitHub]

    ## Downloading GitHub repo jeksterslabds/jeksterslabRutils@master

    ## 
    ##      checking for file ‘/tmp/Rtmp6tJSs7/remotes3e73f729dbd23/jeksterslabds-jeksterslabRutils-1195d8a/DESCRIPTION’ ...  ✔  checking for file ‘/tmp/Rtmp6tJSs7/remotes3e73f729dbd23/jeksterslabds-jeksterslabRutils-1195d8a/DESCRIPTION’
    ##   ─  preparing ‘jeksterslabRutils’:
    ##      checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
    ##   ─  checking for LF line-endings in source and make files and shell scripts
    ##   ─  checking for empty or unneeded directories
    ##   ─  building ‘jeksterslabRutils_0.9.0.tar.gz’
    ##      
    ## 

    ## Installing package into '/home/jek/R/x86_64-pc-linux-gnu/4.0'
    ## (as 'lib' is unspecified)

    ##      checking for file ‘/tmp/Rtmp6tJSs7/remotes3e73f1139447d/jeksterslabds-jeksterslabRpkg-89f9481/DESCRIPTION’ ...  ✔  checking for file ‘/tmp/Rtmp6tJSs7/remotes3e73f1139447d/jeksterslabds-jeksterslabRpkg-89f9481/DESCRIPTION’
    ##   ─  preparing ‘jeksterslabRpkg’:
    ##      checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
    ##   ─  checking for LF line-endings in source and make files and shell scripts
    ##   ─  checking for empty or unneeded directories
    ##   ─  building ‘jeksterslabRpkg_0.9.0.tar.gz’
    ##      
    ## 

    ## Installing package into '/home/jek/R/x86_64-pc-linux-gnu/4.0'
    ## (as 'lib' is unspecified)
