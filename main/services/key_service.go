package services

import (
	"context"
	"encoding/base64"
	"errors"
	"github.com/bytedance/sonic"
	"github.com/luminos-company/secretary/database"
	"github.com/luminos-company/secretary/database/dbmodel"
	"github.com/luminos-company/secretary/database/dbmodel/converter"
	"github.com/luminos-company/secretary/database/dbmodel/queries"
	"github.com/luminos-company/secretary/generated/models"
	"github.com/luminos-company/secretary/generated/query"
	"github.com/luminos-company/secretary/tools/keys"
	"github.com/luminos-company/secretary/typ"
	"strings"
)

type KeyService struct {
	models.KeyServiceServer
}

func init() {
	query.SetDefault(database.Get())
}

func (k KeyService) Create(_ context.Context, request *models.KeyServiceCreateRequest) (*models.KeyServiceCreateResponse, error) {
	key := &dbmodel.KeyModel{
		ShouldRotate: request.ShouldRotate,
		RotateCron:   request.RotateCron,
		ExternalId:   request.Id,
	}
	err := key.GenerateKeys(request.Bits)
	if err != nil {
		return nil, err
	}
	err = query.KeyModel.Save(key)
	if err != nil {
		return nil, err
	}
	return &models.KeyServiceCreateResponse{
		Key: converter.KeyConverter.ToGrpc(key, request.GetShowPrivateKey()),
	}, nil
}

func (k KeyService) Get(_ context.Context, request *models.KeyServiceGetRequest) (*models.KeyServiceGetResponse, error) {
	key, err := query.KeyModel.GetByID(request.Id)
	if err != nil {
		return nil, err
	}
	return &models.KeyServiceGetResponse{
		Key: converter.KeyConverter.ToGrpc(key, request.GetShowPrivateKey()),
	}, nil
}

func (k KeyService) GetOrCreate(_ context.Context, request *models.KeyServiceGetOrCreateRequest) (*models.KeyServiceGetOrCreateResponse, error) {
	if request == nil {
		return nil, nil
	}
	bq, err := query.KeyModel.GetByID(request.Id)
	if err != nil {
		key := &dbmodel.KeyModel{
			ShouldRotate: request.ShouldRotate,
			RotateCron:   request.RotateCron,
			ExternalId:   &request.Id,
		}
		err = key.GenerateKeys(request.Bits)
		if err != nil {
			return nil, err
		}
		err = query.KeyModel.Save(key)
		if err != nil {
			return nil, err
		}
		return &models.KeyServiceGetOrCreateResponse{
			Key: converter.KeyConverter.ToGrpc(key, request.GetShowPrivateKey()),
		}, nil
	}
	return &models.KeyServiceGetOrCreateResponse{
		Key: converter.KeyConverter.ToGrpc(bq, request.GetShowPrivateKey()),
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
		Keys:   converter.KeyConverter.ToGrpcList(find, request.GetShowPrivateKey()),
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
		Kid:       bq.Kid,
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
		Key: converter.KeyConverter.ToGrpc(bq, request.GetShowPrivateKey()),
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

	jwks := []map[string]interface{}{bq.JWKMap()}

	bqList, err := query.KeyRotatedModel.Select().Where(query.KeyRotatedModel.KeyId.Eq(bq.ID)).Find()
	if err != nil {
		return nil, err
	}

	for _, bq := range bqList {
		jwks = append(jwks, bq.JWKMap())
	}

	marshal, err := sonic.Marshal(map[string]interface{}{
		"keys": jwks,
	})
	if err != nil {
		return nil, err
	}

	return &models.KeyServiceJWKResponse{
		Jwk: string(marshal),
	}, nil
}

func (k KeyService) JWTSign(_ context.Context, request *models.KeyServiceJWTSignRequest) (*models.KeyServiceJWTSignResponse, error) {
	if request == nil {
		return nil, nil
	}
	bq, err := query.KeyModel.GetByID(request.Id)
	if err != nil {
		return nil, err
	}
	rsaKeyGen := keys.Rsa{}
	rsaKeyGen.ImportBase64(bq.PublicKey, bq.PrivateKey)
	toSignHeader := map[string]interface{}{
		"alg": "RS256",
		"typ": "JWT",
		"kid": bq.Kid,
	}
	toSignHeaderJson, err := sonic.Marshal(toSignHeader)
	if err != nil {
		return nil, err
	}
	toSign := base64.RawURLEncoding.EncodeToString(toSignHeaderJson) + "." + base64.RawURLEncoding.EncodeToString([]byte(request.Message))
	token, err := rsaKeyGen.Sign([]byte(toSign))
	if err != nil {
		return nil, err
	}
	return &models.KeyServiceJWTSignResponse{
		Token: toSign + "." + base64.RawURLEncoding.EncodeToString(token),
	}, nil
}

func (k KeyService) JWTVerify(_ context.Context, request *models.KeyServiceJWTVerifyRequest) (*models.KeyServiceJWTVerifyResponse, error) {
	if request == nil {
		return nil, nil
	}
	bq, err := query.KeyModel.GetByID(request.Id)
	if err != nil {
		return nil, err
	}
	body := strings.Split(request.Token, ".")
	if len(body) != 3 {
		return nil, errors.New("invalid token")
	}
	toSign := body[0] + "." + body[1]
	signature, err := base64.RawURLEncoding.DecodeString(body[2])
	if err != nil {
		return nil, err
	}
	rsaKeyGen := keys.Rsa{}
	rsaKeyGen.ImportBase64(bq.PublicKey, bq.PrivateKey)
	verified := rsaKeyGen.Verify([]byte(toSign), []byte(signature))
	if !verified {
		bqList, err := query.KeyRotatedModel.Select().Where(query.KeyRotatedModel.KeyId.Eq(bq.ID)).Find()
		if err != nil {
			return nil, err
		}
		for _, bq := range bqList {
			rsaKeyGen.ImportBase64(bq.PublicKey, bq.PrivateKey)
			verified = rsaKeyGen.Verify([]byte(toSign), []byte(signature))
			if verified {
				break
			}
		}
	}
	return &models.KeyServiceJWTVerifyResponse{
		Valid: verified,
	}, nil
}
