Create boilerplatePackage
================
Ivan Jacob Agaloos Pesigan
2020-06-02

  - [Create a Boilerplate `R`
    Package.](#create-a-boilerplate-r-package.)

``` r
library(jeksterslabRpkg)
```

## Create a Boilerplate `R` Package.

Creates a boilerplate `R` package by generating the following:

  - `DESCRIPTION` file,
  - `NAMESPACE` file,
  - `LICENSE` and `LICENSE.md`,
  - a simple `R` script and accompanying `Rd` documentation file,
  - sample data, test, and vignette,
  - optional `pkgdown` and `travis` `YAML` files,
  - optional `README.Rmd` file, and
  - other files like `.Rbuildignore`, `.gitignore`, and `Rproj`.

Optionally, the function can also set up a `Git` repository and push the
created repo to `Github`. This requires that `git` and `hub` are
installed and configured in the system.

If you are going to document, check, and build your package using
`devtools`, you may delete the boilerplate `NAMESPACE` and `MAN` files.

``` r
pkg_create(
  pkg_dir = getwd(),
  input_file = "DESCRIPTION.yml",
  docs = TRUE,
  pkgdown = TRUE,
  travis = TRUE,
  appveyor = TRUE,
  readme = TRUE,
  add_description = NULL,
  add_namespace = NULL,
  add_rbuildignore = NULL,
  add_gitignore = NULL,
  add_travis = NULL,
  add_appveyor = NULL,
  git = TRUE,
  github = TRUE
)
```

    ## Creating /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage

    ## .Rbuildignore file path: /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/.Rbuildignore

    ## .gitignore file path: /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/.gitignore

    ## DESCRIPTION file path: /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/DESCRIPTION

    ## LICENSE file path: /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/LICENSE

    ## LICENSE file path: /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/LICENSE.md

    ## .Rbuildignore file path: /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/.Rbuildignore

    ## NAMESPACE file path: /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/NAMESPACE

    ## z.R file path: /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/R/z.R

    ## z.Rd file path: /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/man/z.Rd

    ## z.Rmd file path: /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/vignettes/z.Rmd

    ## test_z.R file path: /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/tests/testthat/test_z.R

    ## Data script file path: /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/data_raw/data_raw_galton.R

    ## ✔ Setting active project to '/media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage'

    ## ✔ Creating 'data/'

    ## ✔ Saving 'galton' to 'data/galton.rda'

    ## ● Document your data (see 'https://r-pkgs.org/data.html')

    ## Rproj file path: /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/boilerplatePackage.Rproj

    ## .Rbuildignore file path: /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/.Rbuildignore

    ## NEWS.md file path: /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/NEWS.md

    ## .Rbuildignore file path: /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/.Rbuildignore

    ## Get started file path: /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/vignettes/boilerplatePackage.Rmd

    ## .travis.yml file path: /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/.travis.yml

    ## .Rbuildignore file path: /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/.Rbuildignore

    ## appveyor.yml file path: /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/appveyor.yml

    ## .Rbuildignore file path: /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/.Rbuildignore

    ## _pkgdown.yml file path: /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/_pkgdown.yml

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
    ## Reading 'vignettes/z.Rmd'
    ## Writing 'articles/z.html'
    ## ── Building news ───────────────────────────────────────────────────────────────
    ## Writing 'news/index.html'
    ## ══ DONE ════════════════════════════════════════════════════════════════════════

    ## .Rbuildignore file path: /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/.Rbuildignore

    ## README.Rmd file path: /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/README.Rmd

    ## .Rbuildignore file path: /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage/.Rbuildignore

    ## boilerplatePackage has been saved in /media/jeksterslab/scripts/r/build_boilerplatePackage/boilerplatePackage.

    ## If you are going to document, check, and build boilerplatePackage using `devtools`, you may delete the boilerplate `NAMESPACE` and `MAN` files.

    ## Setting up `git` repository.

    ## Creating and pushing to a remote GiHub repository.
