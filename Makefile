HUGO ?= hugo
HUGO_CACHEDIR ?= $(CURDIR)/.cache/hugo

export HUGO_CACHEDIR

.PHONY: serve build clean

serve:
	$(HUGO) server --buildDrafts --disableFastRender --renderToMemory

build:
	$(HUGO) --gc --minify

clean:
	rm -rf .cache public resources .hugo_build.lock
