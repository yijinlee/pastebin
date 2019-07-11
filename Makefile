.PHONY: dev build install clean

all: dev

dev: build
	./pastebin

build: clean
	go get ./...
	go build .

install:
	go install .

test:
	go test ./...

clean:
	rm -rf pastebin
