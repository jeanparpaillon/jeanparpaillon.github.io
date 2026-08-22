HUGO ?= hugo
HUGO_CACHEDIR ?= $(CURDIR)/.cache/hugo

export HUGO_CACHEDIR

# Requires Hugo extended >= 0.158.0 (hugo-narrow theme requirement).

.PHONY: serve build check clean update-theme new-work new-recommendation

serve:
	$(HUGO) server --buildDrafts --disableFastRender --renderToMemory

build:
	$(HUGO) --gc --minify

check:
	$(HUGO) --gc --minify --renderToMemory --printPathWarnings

# Pull the latest theme release (hugo-narrow is a Hugo module).
update-theme:
	$(HUGO) mod get -u github.com/tom2almighty/hugo-narrow
	$(HUGO) mod tidy

# make new-work NAME=my-project
new-work:
	$(HUGO) new content portfolio/$(NAME).md

# make new-recommendation NAME=jane-doe
new-recommendation:
	$(HUGO) new content recommendations/$(NAME).md

clean:
	rm -rf .cache public resources .hugo_build.lock
