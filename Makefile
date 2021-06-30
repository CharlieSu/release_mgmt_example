.PHONY: help create-release-branch
SHELL := /bin/bash
.DEFAULT_GOAL := help


create-release-branch: ## Create release branch on main
	git checkout dev
	git pull
	git checkout main
	git pull
	git checkout -b release-`date +%Y-%m-%d`
	echo "Run `git merge origin/dev`. If you have conflicts, resolve them, then git push and create a PR"

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
