.PHONY: all clean 

all: node_modules public/index.html

clean:
	rm -rf public

nuke: clean
	rm -rf node_modules

node_modules: package.json
	npm install
	touch node_modules

deploy: all
	cd public && \
	git add --all && \
	git commit -m "Deploy to gh-pages" && \
	git push origin gh-pages

public/index.html: node_modules
	brunch build


