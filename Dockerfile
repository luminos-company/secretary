FROM golang:1.19-alpine AS builder

RUN apk add build-base

WORKDIR $GOPATH/github.com/luminos-company/secretary

COPY . .

RUN go get ./...
RUN go install ./...

ARG CGO_ENABLED=1
ARG GOOS=linux
ARG GOARCH=amd64

RUN go build -o /main ./main


FROM alpine:latest AS deploy

WORKDIR /

COPY --from=builder /main .

EXPOSE 50051
EXPOSE 8080

CMD ["./main"]