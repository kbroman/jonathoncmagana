all: project.html
R_OPTS=--no-save --no-restore --no-init-file --no-site-file # --vanilla, but without --no-environ

project.html: project.Rasciidoc
	R ${R_OPTS} -e "knitr::knit('project.Rasciidoc')"

