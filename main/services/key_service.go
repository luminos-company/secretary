package services

import (
	"context"
	"github.com/luminos-company/secretary/generated/models"
	"github.com/luminos-company/secretary/generated/types"
)

type KeyService struct {
	models.KeyServiceServer
}

func (k KeyService) CreateKey(ctx context.Context, creator *models.KeyCreator) (*models.Key, error) {
	//TODO implement me
	panic("implement me")
}

func (k KeyService) GetKey(ctx context.Context, id *types.ID) (*models.Key, error) {
	//TODO implement me
	panic("implement me")
}

func (k KeyService) GetKeys(ctx context.Context, list *models.IDList) (*models.KeyList, error) {
	//TODO implement me
	panic("implement me")
}

func (k KeyService) RotateKey(ctx context.Context, id *types.ID) (*models.Key, error) {
	//TODO implement me
	panic("implement me")
}

func (k KeyService) DeleteKey(ctx context.Context, id *types.ID) (*models.Key, error) {
	//TODO implement me
	panic("implement me")
}

func (k KeyService) Sign(ctx context.Context, request *models.SignRequest) (*models.SignResponse, error) {
	//TODO implement me
	panic("implement me")
}

func (k KeyService) Verify(ctx context.Context, request *models.VerifyRequest) (*models.VerifyResponse, error) {
	//TODO implement me
	panic("implement me")
}

func (k KeyService) Crypt(ctx context.Context, request *models.CryptRequest) (*models.CryptResponse, error) {
	//TODO implement me
	panic("implement me")
}

func (k KeyService) Decrypt(ctx context.Context, request *models.DecryptRequest) (*models.DecryptResponse, error) {
	//TODO implement me
	panic("implement me")
}
