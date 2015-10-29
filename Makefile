LESSC=node_modules/less/bin/lessc
FLAGS=--relative-urls --strict-imports --include-path=node_modules/

build: dist dist/mail.css dist/mail.min.css
	@echo "Done"

dist:
	@mkdir -p dist/

dist/mail.css: src/mail.less
	@$(LESSC) $(FLAGS) $< > $@

dist/mail.min.css: src/mail.less
	@$(LESSC) $(FLAGS) --clean-css="advanced" $< > $@

