.PHONY: dev build install clean

all: dev

dev: build
	./pastebin

build: clean
	go get ./...
	go build ./cmd/pb/...
	go build .

install:
	go install ./cmd/pb/...
	go install .

test:
	go test ./...

clean:
	rm -rf pastebin
