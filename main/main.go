package main

import (
	"github.com/improbable-eng/grpc-web/go/grpcweb"
	"github.com/luminos-company/secretary/database"
	"github.com/luminos-company/secretary/database/dbmodel"
	"github.com/luminos-company/secretary/generated/models"
	"github.com/luminos-company/secretary/generated/query"
	"github.com/luminos-company/secretary/main/services"
	"github.com/luminos-company/secretary/tools/keys"
	"github.com/luminos-company/secretary/typ"
	"google.golang.org/grpc"
	"log"
	"net"
	"net/http"
)

func HandleError(err error) {
	if err != nil {
		panic(err)
	}
}

func main() {
	runServer()
}

func runServer() {
	opts := []grpc.ServerOption{
		grpc.MaxConcurrentStreams(10),
	}
	grpcServer := grpc.NewServer(opts...)
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

func basicTest() {
	database.Get()
	query.SetDefault(database.Get())
	t := keys.Rsa{}
	t.Generate()
	r := &dbmodel.KeyModel{
		PrivateKey:   t.ExportPrivateBase64(),
		PublicKey:    t.ExportPublicBase64(),
		ShouldRotate: typ.PFalse(),
	}
	HandleError(query.KeyModel.Save(r))
}
