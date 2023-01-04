FROM golang:1.19 AS builder

WORKDIR $GOPATH/github.com/luminos-company/secretary

COPY . .


RUN apk add --no-cache gcc g++ git openssh-client

RUN go get ./...

RUN GO111MODULE=on CGO_ENABLED=0 GOOS=linux GOARCH=amd64 GOPROXY=https://goproxy.cn,direct \
    go build -ldflags="-w -s" -o /main ./main

FROM alpine:latest AS deploy

WORKDIR /

RUN apk add --no-cache gcc g++ git openssh-client

COPY --from=builder /main .

CMD ["./main"]