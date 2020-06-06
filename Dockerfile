FROM golang:alpine

EXPOSE 8000/tcp

ENTRYPOINT ["pastebin"]

RUN \
    apk add --update git && \
    rm -rf /var/cache/apk/*

COPY . /usr/local/go/src/pastebin
WORKDIR /usr/local/go/src/pastebin

RUN go get -v -d
RUN go get github.com/GeertJohan/go.rice/rice
RUN rice embed-go
RUN go install -v
