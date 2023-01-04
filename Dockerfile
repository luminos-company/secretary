FROM golang:1.19-alpine AS builder


RUN apk add --no-cache git go zig file --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/

WORKDIR $GOPATH/github.com/luminos-company/secretary

COPY . .

RUN go get ./...

RUN  CGO_ENABLED=1 GOARCH=amd64 GOOS=linux CC="zig cc" CXX="zig cc" go build -o /main ./main


FROM alpine:latest AS deploy

WORKDIR /

RUN apk add --no-cache gcc g++ git openssh-client

COPY --from=builder /main .

EXPOSE 50051
EXPOSE 8080

CMD ["./main"]