FROM golang:1.19 AS builder

WORKDIR $GOPATH/github.com/luminos-company/secretary

COPY . .


RUN apk add --no-cache gcc g++ git openssh-client

RUN go get ./...

RUN CGO_ENABLED=0 GOARCH=amd64 GOOS=linux go build -ldflags "-linkmode external -extldflags -static" -o /main ./main

ARG CGO_ENABLED=0
ARG GOOS=linux
ARG GOARCH=amd64

RUN go build -a -installsuffix cgo -o /main ./main

FROM alpine:latest AS deploy

WORKDIR /

RUN apk add --no-cache gcc g++ git openssh-client

COPY --from=builder /main .

CMD ["./main"]