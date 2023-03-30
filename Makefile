.DEFAULT_GOAL = help

all: deps ## Build static website

deps: ## Install dependancies
	bundle install

run: ## Run local web server on http://localhost:4000
	bundle exec jekyll serve

HELP_TARGET_WIDTH=12

help: ## This help
	@grep -E '^[^: ]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":[^:]*?## "}; {printf "\033[36m%-${HELP_TARGET_WIDTH}s\033[0m %s\n", $$1, $$2}'

.PHONY: all deps run help