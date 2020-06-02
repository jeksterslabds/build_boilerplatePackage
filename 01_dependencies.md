Install Dependencies before Creating boilerplatePackage
================
Ivan Jacob Agaloos Pesigan
2020-06-02

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

    ## Downloading GitHub repo jeksterslabds/jeksterslabRpkg@master

    ## 
    ##      checking for file ‘/tmp/RtmpfKnEn3/remotes23db9b2a0788/jeksterslabds-jeksterslabRpkg-fa79457/DESCRIPTION’ ...  ✔  checking for file ‘/tmp/RtmpfKnEn3/remotes23db9b2a0788/jeksterslabds-jeksterslabRpkg-fa79457/DESCRIPTION’
    ##   ─  preparing ‘jeksterslabRpkg’:
    ##    checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
    ##   ─  checking for LF line-endings in source and make files and shell scripts
    ##   ─  checking for empty or unneeded directories
    ## ─  building ‘jeksterslabRpkg_0.9.0.tar.gz’
    ##      
    ## 

    ## Installing package into '/home/jek/R/x86_64-pc-linux-gnu/4.0'
    ## (as 'lib' is unspecified)
