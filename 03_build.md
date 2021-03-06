boilerplatePackage
================
Ivan Jacob Agaloos Pesigan
2020-07-09

  - [Build Package.](#build-package.)
      - [minimal = TRUE](#minimal-true)
      - [minimal = FALSE](#minimal-false)

``` r
library(jeksterslabRpkg)
tmp <- getwd()
pkg_name <- "boilerplatePackage"
pkg_root <- file.path(
  tmp,
  pkg_name
)
```

## Build Package.

Builds the `R` package on `pkg_root` by:

  - styling the `R` scripts and `R` Markdown files,
  - building package data by running `R` scripts stored in `data_raw`,
  - rendering the `R` scripts and `R` Markdown files using
    `rmarkdown::render()`, and
  - building `pkgdown` site.

### minimal = TRUE

``` r
pkg_build(
  pkg_root = pkg_root,
  clean = TRUE,
  minimal = TRUE,
  par = TRUE
)
```

    ## Building boilerplatePackage
    ## Path: /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage

    ## Updating boilerplatePackage documentation

    ## First time using roxygen2. Upgrading automatically...

    ## Updating roxygen version in /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/DESCRIPTION

    ## Loading boilerplatePackage

    ## Writing NAMESPACE
    ## Writing NAMESPACE
    ## Writing galton.Rd
    ## Writing z.Rd

### minimal = FALSE

``` r
pkg_build(
  pkg_root = pkg_root,
  clean = TRUE,
  minimal = FALSE,
  style = TRUE,
  data = TRUE,
  render = TRUE,
  readme = TRUE,
  vignettes = TRUE,
  tests = TRUE,
  pkgdown = TRUE,
  par = TRUE,
  git = TRUE,
  github = TRUE
)
```

    ## Building boilerplatePackage
    ## Path: /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage

    ## Styling...

    ## Updating boilerplatePackage documentation

    ## First time using roxygen2. Upgrading automatically...

    ## Loading boilerplatePackage

    ## Writing NAMESPACE
    ## Writing NAMESPACE
    ## Writing galton.Rd
    ## Writing z.Rd

    ## Loading boilerplatePackage

    ## Generating data...

    ## ✔ Setting active project to '/media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage'

    ## ✔ Saving 'galton' to 'data/galton.rda'

    ## ● Document your data (see 'https://r-pkgs.org/data.html')

    ## Rendering...

    ## 
    ## 
    ## processing file: README.Rmd

    ##   |                                                                              |                                                                      |   0%  |                                                                              |.......................                                               |  33%
    ##    inline R code fragments
    ## 
    ##   |                                                                              |...............................................                       |  67%
    ## label: unnamed-chunk-1 (with options) 
    ## List of 1
    ##  $ include: logi FALSE
    ## 
    ##   |                                                                              |......................................................................| 100%
    ##   ordinary text without R code

    ## output file: README.knit.md

    ## /usr/bin/pandoc +RTS -K512m -RTS README.utf8.md --to gfm --from markdown+autolink_bare_uris+tex_math_single_backslash --output README.md --standalone --template /home/jek/R/x86_64-pc-linux-gnu/4.0/rmarkdown/rmarkdown/templates/github_document/resources/default.md 
    ## /usr/bin/pandoc +RTS -K512m -RTS README.md --to html4 --from gfm --output README.html --standalone --self-contained --highlight-style pygments --template /home/jek/R/x86_64-pc-linux-gnu/4.0/rmarkdown/rmarkdown/templates/github_document/resources/preview.html --variable 'github-markdown-css:/home/jek/R/x86_64-pc-linux-gnu/4.0/rmarkdown/rmarkdown/templates/github_document/resources/github.css' --email-obfuscation none --metadata pagetitle=PREVIEW

    ## 
    ## Preview created: README.html

    ## 
    ## Output created: README.md

    ## 
    ## 
    ## processing file: test_z.spin.Rmd

    ## Warning in value[[3L]](cond): Error rendering /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/tests/testthat/test_z.R

    ## Updating boilerplatePackage documentation

    ## Loading boilerplatePackage

    ## Writing NAMESPACE
    ## Writing NAMESPACE
    ## ── Building ────────────────────────────────────────────── boilerplatePackage ──
    ## Setting env vars:
    ## ● CFLAGS    : -Wall -pedantic
    ## ● CXXFLAGS  : -Wall -pedantic
    ## ● CXX11FLAGS: -Wall -pedantic
    ## ────────────────────────────────────────────────────────────────────────────────
    ##      checking for file ‘/media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/DESCRIPTION’ ...  ✔  checking for file ‘/media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/DESCRIPTION’
    ##   ─  preparing ‘boilerplatePackage’:
    ##    checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
    ##   ─  installing the package to build vignettes
    ##      creating vignettes ...  ✔  creating vignettes (1.3s)
    ##   ─  checking for LF line-endings in source and make files and shell scripts
    ##   ─  checking for empty or unneeded directories
    ##   ─  building ‘boilerplatePackage_0.9.0.tar.gz’
    ##      
    ## ── Checking ────────────────────────────────────────────── boilerplatePackage ──
    ## Setting env vars:
    ## ● _R_CHECK_CRAN_INCOMING_USE_ASPELL_: TRUE
    ## ● _R_CHECK_CRAN_INCOMING_REMOTE_    : FALSE
    ## ● _R_CHECK_CRAN_INCOMING_           : FALSE
    ## ● _R_CHECK_FORCE_SUGGESTS_          : FALSE
    ## ● NOT_CRAN                          : true
    ## ── R CMD check ─────────────────────────────────────────────────────────────────
    ##   ─  using log directory ‘/tmp/RtmpQuT0pG/boilerplatePackage.Rcheck’
    ##   ─  using R version 4.0.2 (2020-06-22)
    ## ─  using platform: x86_64-pc-linux-gnu (64-bit)
    ## ─  using session charset: UTF-8
    ##   ─  using options ‘--no-manual --as-cran’
    ##   ✔  checking for file ‘boilerplatePackage/DESCRIPTION’
    ## ─  this is package ‘boilerplatePackage’ version ‘0.9.0’
    ## ─  package encoding: UTF-8
    ##    checking package namespace information ...  ✔  checking package namespace information
    ##    checking package dependencies ...  ✔  checking package dependencies (1.2s)
    ##   ✔  checking if this is a source package
    ## ✔  checking if there is a namespace
    ##      checking for executable files ...  ✔  checking for executable files
    ##   ✔  checking for hidden files and directories
    ## ✔  checking for portable file names
    ##    checking for sufficient/correct file permissions ...  ✔  checking for sufficient/correct file permissions
    ##    checking whether package ‘boilerplatePackage’ can be installed ...  ✔  checking whether package ‘boilerplatePackage’ can be installed (870ms)
    ##      checking installed package size ...  ✔  checking installed package size
    ##      checking package directory ...  ✔  checking package directory
    ##    checking for future file timestamps ...  ✔  checking for future file timestamps (1.2s)
    ##   ✔  checking ‘build’ directory
    ##    checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
    ##   ✔  checking top-level files
    ## ✔  checking for left-over files
    ##    checking index information ...  ✔  checking index information
    ##      checking package subdirectories ...  ✔  checking package subdirectories
    ##    checking R files for non-ASCII characters ...  ✔  checking R files for non-ASCII characters
    ##      checking R files for syntax errors ...  ✔  checking R files for syntax errors
    ##      checking whether the package can be loaded ...  ✔  checking whether the package can be loaded
    ##      checking whether the package can be loaded with stated dependencies ...  ✔  checking whether the package can be loaded with stated dependencies
    ##        checking whether the package can be unloaded cleanly ...  ✔  checking whether the package can be unloaded cleanly
    ##      checking whether the namespace can be loaded with stated dependencies ...  ✔  checking whether the namespace can be loaded with stated dependencies
    ##      checking whether the namespace can be unloaded cleanly ...  ✔  checking whether the namespace can be unloaded cleanly
    ##      checking loading without being on the library search path ...  ✔  checking loading without being on the library search path
    ##      checking dependencies in R code ...  ✔  checking dependencies in R code
    ##    checking S3 generic/method consistency ...  ✔  checking S3 generic/method consistency (496ms)
    ##      checking replacement functions ...  ✔  checking replacement functions
    ##    checking foreign function calls ...  ✔  checking foreign function calls
    ##    checking R code for possible problems ...  ✔  checking R code for possible problems (1.3s)
    ##      checking Rd files ...  ✔  checking Rd files
    ##      checking Rd metadata ...  ✔  checking Rd metadata
    ##      checking Rd line widths ...  ✔  checking Rd line widths
    ##      checking Rd cross-references ...  ✔  checking Rd cross-references
    ##      checking for missing documentation entries ...  ✔  checking for missing documentation entries
    ##    checking for code/documentation mismatches ...  ✔  checking for code/documentation mismatches
    ##      checking Rd \usage sections ...  ✔  checking Rd \usage sections (574ms)
    ##      checking Rd contents ...  ✔  checking Rd contents
    ##      checking for unstated dependencies in examples ...  ✔  checking for unstated dependencies in examples
    ##      checking contents of ‘data’ directory ...  ✔  checking contents of ‘data’ directory
    ##      checking data for non-ASCII characters ...  ✔  checking data for non-ASCII characters
    ##      checking data for ASCII and uncompressed saves ...  ✔  checking data for ASCII and uncompressed saves
    ##      checking installed files from ‘inst/doc’ ...  ✔  checking installed files from ‘inst/doc’
    ##      checking files in ‘vignettes’ ...  ✔  checking files in ‘vignettes’
    ##      checking examples ...  ✔  checking examples (430ms)
    ##      checking for unstated dependencies in ‘tests’ ...  ✔  checking for unstated dependencies in ‘tests’
    ##      checking tests ...  ─  checking tests
    ##      Running ‘testthat.R’    ✔  Running ‘testthat.R’ (1.2s)
    ##      checking for unstated dependencies in vignettes ...  ✔  checking for unstated dependencies in vignettes (1.4s)
    ##   ✔  checking package vignettes in ‘inst/doc’
    ##      checking re-building of vignette outputs ...  ✔  checking re-building of vignette outputs (740ms)
    ##   ✔  checking for non-standard things in the check directory
    ## ✔  checking for detritus in the temp directory
    ##    
    ##    
    ##      checking for file ‘/media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/DESCRIPTION’ ...  ✔  checking for file ‘/media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/DESCRIPTION’
    ##   ─  preparing ‘boilerplatePackage’:
    ##    checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
    ##   ─  checking for LF line-endings in source and make files and shell scripts
    ##   ─  checking for empty or unneeded directories
    ##   ─  building ‘boilerplatePackage_0.9.0.tar.gz’
    ##      
    ## Running /usr/lib64/R/bin/R CMD INSTALL \
    ##   /tmp/RtmpQuT0pG/boilerplatePackage_0.9.0.tar.gz --install-tests 
    ## * installing to library ‘/home/jek/R/x86_64-pc-linux-gnu/4.0’
    ## * installing *source* package ‘boilerplatePackage’ ...
    ## ** using staged installation
    ## ** R
    ## ** data
    ## *** moving datasets to lazyload DB
    ## ** tests
    ## ** byte-compile and prepare package for lazy loading
    ## ** help
    ## *** installing help indices
    ## ** building package indices
    ## ** installing vignettes
    ## ** testing if installed package can be loaded from temporary location
    ## ** testing if installed package can be loaded from final location
    ## ** testing if installed package keeps a record of temporary installation path
    ## * DONE (boilerplatePackage)
    ## ── Installing package into temporary library ───────────────────────────────────
    ## ══ Building pkgdown site ═══════════════════════════════════════════════════════
    ## Reading from: '/media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage'
    ## Writing to:   '/media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/docs'
    ## ── Initialising site ───────────────────────────────────────────────────────────
    ## Copying '../../../../../../home/jek/R/x86_64-pc-linux-gnu/4.0/pkgdown/assets/bootstrap-toc.css' to 'bootstrap-toc.css'
    ## Copying '../../../../../../home/jek/R/x86_64-pc-linux-gnu/4.0/pkgdown/assets/bootstrap-toc.js' to 'bootstrap-toc.js'
    ## Copying '../../../../../../home/jek/R/x86_64-pc-linux-gnu/4.0/pkgdown/assets/docsearch.css' to 'docsearch.css'
    ## Copying '../../../../../../home/jek/R/x86_64-pc-linux-gnu/4.0/pkgdown/assets/docsearch.js' to 'docsearch.js'
    ## Copying '../../../../../../home/jek/R/x86_64-pc-linux-gnu/4.0/pkgdown/assets/link.svg' to 'link.svg'
    ## Copying '../../../../../../home/jek/R/x86_64-pc-linux-gnu/4.0/pkgdown/assets/pkgdown.css' to 'pkgdown.css'
    ## Copying '../../../../../../home/jek/R/x86_64-pc-linux-gnu/4.0/pkgdown/assets/pkgdown.js' to 'pkgdown.js'
    ## Writing 'sitemap.xml'
    ## Writing '404.html'
    ## ── Building home ───────────────────────────────────────────────────────────────
    ## Writing 'authors.html'
    ## Reading 'LICENSE.md'
    ## Writing 'LICENSE.html'
    ## Writing 'LICENSE-text.html'
    ## ── Building function reference ─────────────────────────────────────────────────
    ## Writing 'reference/index.html'
    ## Reading 'man/galton.Rd'
    ## Writing 'reference/galton.html'
    ## Reading 'man/z.Rd'
    ## Writing 'reference/z.html'
    ## ── Building articles ───────────────────────────────────────────────────────────
    ## Writing 'articles/index.html'
    ## Reading 'vignettes/boilerplatePackage.Rmd'
    ## Writing 'articles/boilerplatePackage.html'
    ## Reading 'vignettes/tests/test_z.Rmd'
    ## Writing 'articles/tests/test_z.html'
    ## Reading 'vignettes/z.Rmd'
    ## Writing 'articles/z.html'
    ## ── Building news ───────────────────────────────────────────────────────────────
    ## Writing 'news/index.html'
    ## ══ DONE ════════════════════════════════════════════════════════════════════════

    ## Build process for boilerplatePackage complete.

    ## Setting up `git` repository.

    ## Creating and pushing to a remote GiHub repository.
