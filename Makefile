generate:
	saait `ls -1r pages/*.cfg`
	cp style.css print.css output/

view:
	$(BROWSER) output/index.html

sync:
	rsync -av output/ hiltjo@cow:/home/www/domains/www.codemadness.org/htdocs/
	scp output/atom.xml output/twtxt.txt hiltjo@cow:/home/www/gopher/
