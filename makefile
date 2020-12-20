.PHONY: help
help: ## Print this menu
	@grep -E '^[a-zA-Z_0-9-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

build: ## -
	docker build -t yngvark/linuxtools .

push: build ## -
	docker push yngvark/linuxtools

run: ## -
	 docker run -it yngvark/linuxtools:latest bash
