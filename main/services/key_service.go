package services

import (
	"context"
	"github.com/luminos-company/secretary/database/dbmodel"
	"github.com/luminos-company/secretary/database/dbmodel/converter"
	"github.com/luminos-company/secretary/database/dbmodel/queries"
	"github.com/luminos-company/secretary/generated/models"
	"github.com/luminos-company/secretary/generated/query"
	"github.com/luminos-company/secretary/tools/keys"
	"github.com/luminos-company/secretary/typ"
)

type KeyService struct {
	models.KeyServiceServer
}

func (k KeyService) Create(_ context.Context, request *models.KeyServiceCreateRequest) (*models.KeyServiceCreateResponse, error) {
	rsaKeyGen := keys.Rsa{}
	rsaKeyGen.Generate()
	publicKey, privateKey := rsaKeyGen.ExportBase64()
	key := &dbmodel.KeyModel{
		PrivateKey:   privateKey,
		PublicKey:    publicKey,
		ShouldRotate: request.ShouldRotate,
		RotateCron:   request.RotateCron,
	}
	if request.Id != nil {
		key.ExternalId = request.Id
	}
	err := query.KeyModel.Save(key)
	if err != nil {
		return nil, err
	}
	return &models.KeyServiceCreateResponse{
		Key: converter.KeyConverter.ToGrpc(key),
	}, nil
}

func (k KeyService) Get(_ context.Context, request *models.KeyServiceGetRequest) (*models.KeyServiceGetResponse, error) {
	key, err := query.KeyModel.GetByID(request.Id)
	if err != nil {
		return nil, err
	}
	return &models.KeyServiceGetResponse{
		Key: converter.KeyConverter.ToGrpc(key),
	}, nil
}

func (k KeyService) GetOrCreate(_ context.Context, request *models.KeyServiceGetOrCreateRequest) (*models.KeyServiceGetOrCreateResponse, error) {
	if request == nil {
		return nil, nil
	}
	bq, err := query.KeyModel.GetByID(request.Id)
	if err != nil {
		rsaKeyGen := keys.Rsa{}
		rsaKeyGen.Generate()
		publicKey, privateKey := rsaKeyGen.ExportBase64()
		key := &dbmodel.KeyModel{
			PrivateKey:   privateKey,
			PublicKey:    publicKey,
			ShouldRotate: request.ShouldRotate,
			RotateCron:   request.RotateCron,
			ExternalId:   &request.Id,
		}
		err = query.KeyModel.Save(key)
		if err != nil {
			return nil, err
		}
		return &models.KeyServiceGetOrCreateResponse{
			Key: converter.KeyConverter.ToGrpc(key),
		}, nil
	}
	return &models.KeyServiceGetOrCreateResponse{
		Key: converter.KeyConverter.ToGrpc(bq),
	}, nil
}

func (k KeyService) List(_ context.Context, request *models.KeyServiceListRequest) (*models.KeyServiceListResponse, error) {
	bq := query.KeyModel.Select()
	if request != nil && request.FirstId != nil {
		bq = bq.Where(query.KeyModel.ID.Lt(*request.FirstId))
	}
	bq = bq.Order(query.KeyModel.ID.Desc())
	find, err := bq.Limit(100).Find()
	if err != nil {
		return nil, err
	}
	var lastId *string
	if len(find) > 0 {
		lastId = typ.StringP(find[len(find)-1].ID)
	}
	return &models.KeyServiceListResponse{
		Keys:   converter.KeyConverter.ToGrpcList(find),
		LastId: lastId,
	}, nil
}

func (k KeyService) Crypt(_ context.Context, request *models.KeyServiceCryptRequest) (*models.KeyServiceCryptResponse, error) {
	if request == nil {
		return nil, nil
	}
	bq, err := query.KeyModel.GetByID(request.Id)
	if err != nil {
		return nil, err
	}
	rsaKeyGen := keys.Rsa{}
	rsaKeyGen.ImportBase64(bq.PublicKey, bq.PrivateKey)
	encrypted, err := rsaKeyGen.EncryptString(request.Message)
	if err != nil {
		return nil, err
	}
	return &models.KeyServiceCryptResponse{
		Ciphertext: encrypted,
	}, nil
}

func (k KeyService) Decrypt(_ context.Context, request *models.KeyServiceDecryptRequest) (*models.KeyServiceDecryptResponse, error) {
	if request == nil {
		return nil, nil
	}
	bq, err := query.KeyModel.GetByID(request.Id)
	if err != nil {
		return nil, err
	}
	rsaKeyGen := keys.Rsa{}
	rsaKeyGen.ImportBase64(bq.PublicKey, bq.PrivateKey)
	decrypted, err := rsaKeyGen.DecryptString(request.Ciphertext)
	if err != nil {
		bqList, err := query.KeyRotatedModel.Select().Where(query.KeyRotatedModel.KeyId.Eq(bq.ID)).Find()
		if err != nil {
			return nil, err
		}
		for _, bq := range bqList {
			rsaKeyGen.ImportBase64(bq.PublicKey, bq.PrivateKey)
			decrypted, err = rsaKeyGen.DecryptString(request.Ciphertext)
			if err == nil {
				break
			}
		}
		if err != nil {
			return nil, err
		}
	}
	return &models.KeyServiceDecryptResponse{
		Message: decrypted,
	}, nil
}

func (k KeyService) Sign(_ context.Context, request *models.KeyServiceSignRequest) (*models.KeyServiceSignResponse, error) {
	if request == nil {
		return nil, nil
	}
	bq, err := query.KeyModel.GetByID(request.Id)
	if err != nil {
		return nil, err
	}
	rsaKeyGen := keys.Rsa{}
	rsaKeyGen.ImportBase64(bq.PublicKey, bq.PrivateKey)
	signature, err := rsaKeyGen.SignString(request.Message)
	if err != nil {
		return nil, err
	}
	return &models.KeyServiceSignResponse{
		Signature: signature,
	}, nil
}

func (k KeyService) Verify(_ context.Context, request *models.KeyServiceVerifyRequest) (*models.KeyServiceVerifyResponse, error) {
	if request == nil {
		return nil, nil
	}
	bq, err := query.KeyModel.GetByID(request.Id)
	if err != nil {
		return nil, err
	}
	rsaKeyGen := keys.Rsa{}
	rsaKeyGen.ImportBase64(bq.PublicKey, bq.PrivateKey)
	verified := rsaKeyGen.VerifyString(request.Message, request.Signature)
	if !verified {
		bqList, err := query.KeyRotatedModel.Select().Where(query.KeyRotatedModel.KeyId.Eq(bq.ID)).Find()
		if err != nil {
			return nil, err
		}
		for _, bq := range bqList {
			rsaKeyGen.ImportBase64(bq.PublicKey, bq.PrivateKey)
			verified = rsaKeyGen.VerifyString(request.Message, request.Signature)
			if verified {
				break
			}
		}
	}
	return &models.KeyServiceVerifyResponse{
		Valid: verified,
	}, nil
}

func (k KeyService) Rotate(_ context.Context, request *models.KeyServiceRotateRequest) (*models.KeyServiceRotateResponse, error) {
	if request == nil {
		return nil, nil
	}
	bq, err := query.KeyModel.GetByID(request.Id)
	if err != nil {
		return nil, err
	}
	queries.KeyEnhancer.Rotate(bq)
	return &models.KeyServiceRotateResponse{
		Key: converter.KeyConverter.ToGrpc(bq),
	}, nil
}

func (k KeyService) Delete(_ context.Context, request *models.KeyServiceDeleteRequest) (*models.KeyServiceDeleteResponse, error) {
	if request == nil {
		return nil, nil
	}
	bq, err := query.KeyModel.GetByID(request.Id)
	if err != nil {
		return nil, err
	}
	_, err = query.KeyModel.Where(query.KeyModel.ID.Eq(bq.ID)).Unscoped().Delete()
	if err != nil {
		return nil, err
	}
	return &models.KeyServiceDeleteResponse{}, nil
}

func (k KeyService) JWK(_ context.Context, request *models.KeyServiceJWKRequest) (*models.KeyServiceJWKResponse, error) {
	if request == nil {
		return nil, nil
	}
	bq, err := query.KeyModel.GetByID(request.Id)
	if err != nil {
		return nil, err
	}
	rsaKeyGen := keys.Rsa{}
	rsaKeyGen.ImportBase64(bq.PublicKey, bq.PrivateKey)
	jwk, err := rsaKeyGen.ExportJWK()
	if err != nil {
		return nil, err
	}
	return &models.KeyServiceJWKResponse{
		Jwk: jwk,
	}, nil
}
