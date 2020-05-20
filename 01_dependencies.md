01\_dependencies.R
================
jek
2020-05-21

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
    ##          checking      checking for file      checking for file ‘/tmp/Rtmp2cdWK6/remotesa6c11658685f/jeksterslabds-jeksterslabRpkg-7cd5e23/DESCRIPTION’     checking for file ‘/tmp/Rtmp2cdWK6/remotesa6c11658685f/jeksterslabds-jeksterslabRpkg-7cd5e23/DESCRIPTION’ ...     checking for file ‘/tmp/Rtmp2cdWK6/remotesa6c11658685f/jeksterslabds-jeksterslabRpkg-7cd5e23/DESCRIPTION’ ...      checking for file ‘/tmp/Rtmp2cdWK6/remotesa6c11658685f/jeksterslabds-jeksterslabRpkg-7cd5e23/DESCRIPTION’ ... OK  ✔  checking for file ‘/tmp/Rtmp2cdWK6/remotesa6c11658685f/jeksterslabds-jeksterslabRpkg-7cd5e23/DESCRIPTION’
    ##   ─  preparing ‘jeksterslabRpkg’:
    ##      checking DESCRIPTION meta-information ...     checking DESCRIPTION meta-information ...      checking DESCRIPTION meta-information ... OK  ✔  checking DESCRIPTION meta-information
    ##               excluding invalid files  ─  excluding invalid files
    ##      Subdirectory 'R' contains invalid file names:
    ##      ‘.test.R’
    ##               checking for LF line-endings in source and make files and shell scripts  ─  checking for LF line-endings in source and make files and shell scripts
    ##               checking for empty or unneeded directories  ─  checking for empty or unneeded directories
    ##               building      building ‘jeksterslabRpkg_0.9.0.tar.gz’  ─  building ‘jeksterslabRpkg_0.9.0.tar.gz’
    ##      
    ## 

    ## Installing package into '/home/jek/R/x86_64-pc-linux-gnu/4.0'
    ## (as 'lib' is unspecified)
