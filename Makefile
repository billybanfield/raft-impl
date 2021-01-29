VERSION=$(shell git rev-parse HEAD)
OUTPUT_NAME=raft-impl

build:
	GO111MODULE=on go build -mod=readonly -o bin/$(OUTPUT_NAME) -ldflags '-X main.version=$(VERSION)' ./cmd/$(OUTPUT_NAME)

clean:
	rm -rf bin/
	go clean
