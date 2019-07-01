generate:
	saait `ls -1r pages/*.cfg`
	cp style.css print.css output/

view:
	$(BROWSER) output/index.html

sync:
	rsync -av output/ zlofgren.com:/var/www/zlofgren.com/
