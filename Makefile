edit:
	gedit style.css *.md &

compile:
	markdown2 objectweb.md > objectweb.html
	markdown2 objectweb.application.md > objectweb.application.html
	markdown2 objectweb.forms.md > objectweb.forms.html
	markdown2 objectweb.webapi.md > objectweb.webapi.html

run:
	python -m webbrowser -t "./objectweb.html" &

cleanup:
	rm -f *~
	rm -f *.html