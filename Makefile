all: less minify

less:
	@echo "`date`\tCompiling LESS"
	@node node_modules/less/bin/lessc -verbose css/todos.less > css/todos.css

minify:
	@echo "`date`\tCompiling JS"
	@node node_modules/.bin/r.js -o js/build.js