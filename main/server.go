package main

import (
	"github.com/improbable-eng/grpc-web/go/grpcweb"
	"github.com/luminos-company/secretary/generated/models"
	"github.com/luminos-company/secretary/main/services"
	"google.golang.org/grpc"
	"google.golang.org/grpc/reflection"
	"log"
	"net"
	"net/http"
)

func runServer() {
	opts := []grpc.ServerOption{
		grpc.MaxConcurrentStreams(10),
	}
	grpcServer := grpc.NewServer(opts...)
	reflection.Register(grpcServer)
	models.RegisterKeyServiceServer(grpcServer, &services.KeyService{})

	wrappedGrpc := grpcweb.WrapServer(grpcServer, grpcweb.WithOriginFunc(func(origin string) bool {
		return true
	}))
	wrappedFunc := http.HandlerFunc(func(resp http.ResponseWriter, req *http.Request) {
		resp.Header().Set("Access-Control-Allow-Origin", "*")
		resp.Header().Set("Access-Control-Allow-Methods", "*")
		resp.Header().Set("Access-Control-Allow-Headers", "*")
		resp.Header().Set("Access-Control-Expose-Headers", "*")
		if wrappedGrpc.IsGrpcWebRequest(req) {
			wrappedGrpc.ServeHTTP(resp, req)
			return
		}
		if req.Method == "OPTIONS" {
			return
		}
	})

	go func() {
		log.Println("Starting web server on port 8080")
		HandleError(http.ListenAndServe(":8080", wrappedFunc))
	}()

	conn, err := net.Listen("tcp", ":50051")
	HandleError(err)
	log.Println("Starting grpc server on port 50051")
	HandleError(grpcServer.Serve(conn))
}
