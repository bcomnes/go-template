.PHONY: all build deps generate help test validate
CHECK_FILES?=$$(go list ./... | grep -v /vendor/)

help: ## Show this help.
		@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {sub("\\\\n",sprintf("\n%22c"," "), $$2);printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

all: deps generate build test ## Run all steps

build: ## Build all
	go build ./...

deps: ## Download dependencies.
	GO111MODULE=off go get -u github.com/myitcv/gobin && go mod download

generate: ## Generate the API Go client and the JSON document for the UI.
	go generate

test: ## Test the go code.
	gobin -m -run github.com/kyoh86/richgo test -v $(CHECK_FILES)
