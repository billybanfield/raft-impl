VERSION=$(shell git rev-parse HEAD)
NODE_OUTPUT_NAME=node

.PHONY: build
build:
	bin/node

bin/node:
	GO111MODULE=on go build -mod=readonly -o bin/$(OUTPUT_NAME) -ldflags '-X main.version=$(VERSION)' ./cmd/$(OUTPUT_NAME)

clean:
	rm -rf bin/
	go clean
