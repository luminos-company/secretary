package services

import (
	"context"
	"github.com/luminos-company/secretary/generated/models"
)

type KeyService struct {
	models.KeyServiceServer
}

func (k KeyService) Create(ctx context.Context, request *models.KeyServiceCreateRequest) (*models.KeyServiceCreateResponse, error) {
	//TODO implement me
	panic("implement me")
}

func (k KeyService) Get(ctx context.Context, request *models.KeyServiceGetRequest) (*models.KeyServiceGetResponse, error) {
	//TODO implement me
	panic("implement me")
}

func (k KeyService) List(ctx context.Context, request *models.KeyServiceListRequest) (*models.KeyServiceListResponse, error) {
	//TODO implement me
	panic("implement me")
}

func (k KeyService) Sign(ctx context.Context, request *models.KeyServiceSignRequest) (*models.KeyServiceSignResponse, error) {
	//TODO implement me
	panic("implement me")
}

func (k KeyService) Verify(ctx context.Context, request *models.KeyServiceVerifyRequest) (*models.KeyServiceVerifyResponse, error) {
	//TODO implement me
	panic("implement me")
}

func (k KeyService) Crypto(ctx context.Context, request *models.KeyServiceCryptoRequest) (*models.KeyServiceCryptoResponse, error) {
	//TODO implement me
	panic("implement me")
}

func (k KeyService) Decrypt(ctx context.Context, request *models.KeyServiceDecryptRequest) (*models.KeyServiceDecryptResponse, error) {
	//TODO implement me
	panic("implement me")
}

func (k KeyService) Rotate(ctx context.Context, request *models.KeyServiceRotateRequest) (*models.KeyServiceRotateResponse, error) {
	//TODO implement me
	panic("implement me")
}

func (k KeyService) Delete(ctx context.Context, request *models.KeyServiceDeleteRequest) (*models.KeyServiceDeleteResponse, error) {
	//TODO implement me
	panic("implement me")
}
