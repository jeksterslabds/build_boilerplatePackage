PREFIX=${HOME}/scripts/r
YML=${PREFIX}/jeksterslabRpkg/inst/extdata/DESCRIPTION.yml

.PHONY: all clean

all :
	cp $(YML) $(shell pwd)
	(cd boilerplatePackage && git pull)
	Rscript 01_dependencies.R
	Rscript -e 'rmarkdown::render("02_create.R")'
	Rscript -e 'rmarkdown::render("03_build.R")'
	rm -rf DESCRIPTION.yml
	echo "See generated package in https://github.com/jeksterslabds/boilerplatePackage."

clean :
	-(cd boilerplatePackage && git checkout master && git rm -rf \* && git commit -m "Automated clean." && git push origin master)
	-rm -rf DESCRIPTION.yml
	-rm -rf *.html
	-rm -rf *.md

