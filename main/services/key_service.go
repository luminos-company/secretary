package services

import (
	"context"
	"github.com/luminos-company/secretary/generated/models"
	"github.com/luminos-company/secretary/generated/query"
	"github.com/luminos-company/secretary/generated/types"
	"github.com/luminos-company/secretary/tools/keys"
)

type KeyService struct {
	models.KeyServiceServer
}

func (k KeyService) Create(ctx context.Context, request *models.KeyServiceCreateRequest) (*models.KeyServiceCreateResponse, error) {
	rsaKeyGen := keys.Rsa{}
	rsaKeyGen.Generate()
	privateKey, publicKey := rsaKeyGen.ExportBase64()
	key := &models.Key{
		PrivateKey:   privateKey,
		PublicKey:    publicKey,
		ShouldRotate: request.ShouldRotate,
		RotateCron:   request.RotateCron,
	}
	err := query.Key.Save(key)
	if err != nil {
		return nil, err
	}
	return &models.KeyServiceCreateResponse{
		Key: key,
	}, nil
}

func (k KeyService) Get(ctx context.Context, request *models.KeyServiceGetRequest) (*models.KeyServiceGetResponse, error) {
	key, err := query.Key.Where(query.Key.Id.Eq(&types.ID{Id: request.Id})).First()
	if err != nil {
		return nil, err
	}
	return &models.KeyServiceGetResponse{
		Key: key,
	}, nil
}

func (k KeyService) List(ctx context.Context, request *models.KeyServiceListRequest) (*models.KeyServiceListResponse, error) {
	bq := query.Key.Select()
	if request != nil && request.FirstId != nil {
		bq = bq.Where(query.Key.Id.Lt(&types.ID{Id: *request.FirstId}))
	}
	bq = bq.Order(query.Key.Id.Desc())
	find, err := bq.Limit(100).Find()
	if err != nil {
		return nil, err
	}
	var lastId *string
	if len(find) > 0 {
		lastId = StringP(find[len(find)-1].Id.Id)
	}
	return &models.KeyServiceListResponse{
		Keys:   find,
		LastId: lastId,
	}, nil
}

func (k KeyService) Sign(ctx context.Context, request *models.KeyServiceSignRequest) (*models.KeyServiceSignResponse, error) {
	if request == nil {
		return nil, nil
	}
	bq, err := query.Key.Select().Where(query.Key.Id.Eq(&types.ID{Id: request.Id})).First()
	if err != nil {
		return nil, err
	}
	rsaKeyGen := keys.Rsa{}
	rsaKeyGen.ImportBase64(bq.PrivateKey, bq.PublicKey)
	signature, err := rsaKeyGen.SignString(request.Message)
	if err != nil {
		return nil, err
	}
	return &models.KeyServiceSignResponse{
		Signature: signature,
	}, nil
}

func (k KeyService) Verify(ctx context.Context, request *models.KeyServiceVerifyRequest) (*models.KeyServiceVerifyResponse, error) {
	if request == nil {
		return nil, nil
	}
	bq, err := query.Key.Select().Where(query.Key.Id.Eq(&types.ID{Id: request.Id})).First()
	if err != nil {
		return nil, err
	}
	rsaKeyGen := keys.Rsa{}
	rsaKeyGen.ImportBase64(bq.PrivateKey, bq.PublicKey)
	verified := rsaKeyGen.VerifyString(request.Message, request.Signature)
	if err != nil {
		return nil, err
	}
	return &models.KeyServiceVerifyResponse{
		Valid: verified,
	}, nil
}

func (k KeyService) Crypto(ctx context.Context, request *models.KeyServiceCryptoRequest) (*models.KeyServiceCryptoResponse, error) {
	if request == nil {
		return nil, nil
	}
	bq, err := query.Key.Select().Where(query.Key.Id.Eq(&types.ID{Id: request.Id})).First()
	if err != nil {
		return nil, err
	}
	rsaKeyGen := keys.Rsa{}
	rsaKeyGen.ImportBase64(bq.PrivateKey, bq.PublicKey)
	encrypted, err := rsaKeyGen.EncryptString(request.Message)
	if err != nil {
		return nil, err
	}
	return &models.KeyServiceCryptoResponse{
		Ciphertext: encrypted,
	}, nil
}

func (k KeyService) Decrypt(ctx context.Context, request *models.KeyServiceDecryptRequest) (*models.KeyServiceDecryptResponse, error) {
	if request == nil {
		return nil, nil
	}
	bq, err := query.Key.Select().Where(query.Key.Id.Eq(&types.ID{Id: request.Id})).First()
	if err != nil {
		return nil, err
	}
	rsaKeyGen := keys.Rsa{}
	rsaKeyGen.ImportBase64(bq.PrivateKey, bq.PublicKey)
	decrypted, err := rsaKeyGen.DecryptString(request.Ciphertext)
	if err != nil {
		return nil, err
	}
	return &models.KeyServiceDecryptResponse{
		Message: decrypted,
	}, nil
}

func (k KeyService) Rotate(ctx context.Context, request *models.KeyServiceRotateRequest) (*models.KeyServiceRotateResponse, error) {
	//TODO implement me
	panic("implement me")
}

func (k KeyService) Delete(ctx context.Context, request *models.KeyServiceDeleteRequest) (*models.KeyServiceDeleteResponse, error) {
	//TODO implement me
	panic("implement me")
}
