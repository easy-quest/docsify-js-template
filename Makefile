.PHONY: docs

h help:
	@grep '^[a-z]' Makefile

docs:
	npx docsify-cli serve docs

docs-py:
	cd docs && python3 -m http.server 3000

gpp:
	xx=$(uname -a);echo $xx;git add .;git commit -am "$xx";git push;git status; 
