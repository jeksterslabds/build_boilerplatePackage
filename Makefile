PREFIX=/media/jeksterslab/scripts/r
YML=${PREFIX}/jeksterslabRpkg/inst/extdata/DESCRIPTION.yml

.PHONY: all clean rm

all : rm
	cp $(YML) $(shell pwd)
	(cd boilerplatePackage && git pull)
	Rscript -e 'if (!require("rmarkdown")) install.packages("rmarkdown", repos = repos)'
	Rscript -e 'rmarkdown::render("01_dependencies.R")'
	Rscript -e 'rmarkdown::render("02_create.R")'
	Rscript -e 'rmarkdown::render("03_build.R")'
	rm -rf DESCRIPTION.yml
	echo "See generated package in https://github.com/jeksterslabds/boilerplatePackage."
	git init
	git add -A
	git commit -m "BUILD."
	git push

clean : rm
	-(cd boilerplatePackage && git checkout master && git rm -rf \* && git commit -m "Automated clean." && git push origin master)
	
rm :
	-rm -rf DESCRIPTION.yml
	-rm -rf *.html
	-rm -rf 0*.md
