run:
	docker run --rm -it -p 8787:8787 -e PASSWORD=123 -v $(shell pwd):/home/rstudio/ docker.io/rocker/verse:4.0.5

install:
	Rscript install_packages.R