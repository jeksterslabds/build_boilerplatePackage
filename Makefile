PREFIX=/media/jeksterslab/scripts/r
YML=${PREFIX}/jeksterslabRpkg/inst/extdata/DESCRIPTION.yml

.PHONY: all clean rm

all : clean
	cp $(YML) $(shell pwd)
	-(cd boilerplatePackage && git pull)
	Rscript -e 'if (!require("rmarkdown")) install.packages("rmarkdown", repos = "https://cran.rstudio.org")'
	Rscript -e 'rmarkdown::render("01_dependencies.R")'
	Rscript -e 'rmarkdown::render("02_create.R")'
	Rscript -e 'rmarkdown::render("03_build.R")'
	echo "See generated package in https://github.com/jeksterslabds/boilerplatePackage."
	git init
	git add -A
	git commit -m "Automated build."
	git push

clean : rm
	-(cd boilerplatePackage && rm -rf *)
	-(cd boilerplatePackage && git checkout master)
	-(cd boilerplatePackage && git add --all)
	-(cd boilerplatePackage && git commit -m "[skip ci] Automated clean.")
	-(cd boilerplatePackage && git push origin master)
	
rm :
	-rm -rf DESCRIPTION.yml
	-rm -rf *.html
	-rm -rf 0*.md
