FROM golang:1.19 AS builder

WORKDIR $GOPATH/github.com/luminos-company/secretary

COPY . .

ARG CGO_ENABLED=0
ARG GOOS=linux
ARG GOARCH=amd64

RUN go get ./...
RUN go build -a -installsuffix cgo -o /main ./main

FROM alpine:latest AS deploy
WORKDIR /

COPY --from=builder /main .

CMD ["./main"]