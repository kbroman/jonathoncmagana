R_OPTS=--no-save --no-restore --no-init-file --no-site-file # --vanilla, but without --no-environ

project.html: .R
	R ${R_OPTS} -e 'library(knitr);spin("maganaProject.R")'

clean:
	rm project.md project.html
