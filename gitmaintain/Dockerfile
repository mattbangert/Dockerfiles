FROM golang:1.11.5-alpine3.9

WORKDIR /

RUN apk update && \
    apk upgrade && \
    apk add git bash

RUN bash

RUN go get github.com/github/git-sizer