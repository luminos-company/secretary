package main

import (
	"context"
	"github.com/luminos-company/secretary/generated/models"
	"github.com/luminos-company/secretary/main/services"
	"strings"
	"testing"
)

func PTrue() *bool {
	b := true
	return &b
}

func PFalse() *bool {
	b := false
	return &b
}

func PInt32(i int32) *int32 {
	return &i
}

func TestKeyService_Create(t *testing.T) {
	ksv := services.KeyService{}
	res, err := ksv.Create(context.TODO(), &models.KeyServiceCreateRequest{
		ShouldRotate: PFalse(),
		Bits:         PInt32(2048),
	})
	if err != nil || res == nil {
		t.Fatal(err)
	}
}

func TestKeyService_Get(t *testing.T) {
	ksv := services.KeyService{}
	res1, err := ksv.Create(context.TODO(), &models.KeyServiceCreateRequest{
		ShouldRotate: PTrue(),
		Bits:         PInt32(256),
	})
	if err != nil || res1 == nil {
		t.Fatal(err)
	}
	res2, err := ksv.Get(context.TODO(), &models.KeyServiceGetRequest{
		Id: res1.Key.GetId(),
	})
	if err != nil || res2 == nil {
		t.Fatal(err)
	}
}

func TestKeyService_List(t *testing.T) {
	ksv := services.KeyService{}
	res1, err := ksv.Create(context.TODO(), &models.KeyServiceCreateRequest{
		ShouldRotate: PTrue(),
	})
	if err != nil || res1 == nil {
		t.Fatal(err)
	}
	res2, err := ksv.List(context.TODO(), &models.KeyServiceListRequest{})
	if err != nil || res2 == nil {
		t.Fatal(err)
	}
	t.Log(len(res2.Keys))
}

func TestKeyService_Sign(t *testing.T) {
	ksv := services.KeyService{}
	res1, err := ksv.Create(context.TODO(), &models.KeyServiceCreateRequest{
		ShouldRotate: PTrue(),
	})
	if err != nil || res1 == nil {
		t.Fatal(err)
	}
	res2, err := ksv.Sign(context.TODO(), &models.KeyServiceSignRequest{
		Id:      res1.Key.GetId(),
		Message: "HELLO IM A MESSAGE",
	})
	if err != nil || res2 == nil {
		t.Fatal(err)
	}
	t.Log(res2.Signature)
}

func TestKeyService_Verify(t *testing.T) {
	ksv := services.KeyService{}
	res1, err := ksv.Create(context.TODO(), &models.KeyServiceCreateRequest{
		ShouldRotate: PTrue(),
	})
	if err != nil || res1 == nil {
		t.Fatal(err)
	}
	res2, err := ksv.Sign(context.TODO(), &models.KeyServiceSignRequest{
		Id:      res1.Key.GetId(),
		Message: "HELLO IM A MESSAGE",
	})
	if err != nil || res2 == nil {
		t.Fatal(err)
	}
	res3, err := ksv.Verify(context.TODO(), &models.KeyServiceVerifyRequest{
		Id:        res1.Key.GetId(),
		Message:   "HELLO IM A MESSAGE",
		Signature: res2.Signature,
	})
	if err != nil || res3 == nil {
		t.Fatal(err)
	}
	t.Log(res3.Valid)
}

func TestKeyService_Crypto(t *testing.T) {
	ksv := services.KeyService{}
	res1, err := ksv.Create(context.TODO(), &models.KeyServiceCreateRequest{
		ShouldRotate: PTrue(),
		Bits:         PInt32(256),
	})
	if err != nil || res1 == nil {
		t.Fatal(err)
	}
	res2, err := ksv.Crypt(context.TODO(), &models.KeyServiceCryptRequest{
		Id:      res1.Key.GetId(),
		Message: "HELLO IM A MESSAGE",
	})
	if err != nil || res2 == nil {
		t.Fatal(err)
	}
	t.Log(res2.Ciphertext)
}

func TestKeyService_Crypto2(t *testing.T) {
	ksv := services.KeyService{}
	res1, err := ksv.Create(context.TODO(), &models.KeyServiceCreateRequest{
		ShouldRotate: PTrue(),
		Bits:         PInt32(2048),
	})
	if err != nil || res1 == nil {
		t.Fatal(err)
	}
	res2, err := ksv.Crypt(context.TODO(), &models.KeyServiceCryptRequest{
		Id:      res1.Key.GetId(),
		Message: strings.Repeat("hello", 2048),
	})
	if err != nil || res2 == nil {
		t.Fatal(err)
	}
	t.Log(res2.Ciphertext)
}
func TestKeyService_Crypto3(t *testing.T) {
	ksv := services.KeyService{}
	res1, err := ksv.Create(context.TODO(), &models.KeyServiceCreateRequest{
		ShouldRotate: PTrue(),
		Bits:         PInt32(256),
	})
	if err != nil || res1 == nil {
		t.Fatal(err)
	}
	res2, err := ksv.Crypt(context.TODO(), &models.KeyServiceCryptRequest{
		Id:      res1.Key.GetId(),
		Message: strings.Repeat("hello", 2048),
	})
	if err != nil || res2 == nil {
		t.Fatal(err)
	}
	t.Log(res2.Ciphertext)
}

func TestKeyService_Decrypt(t *testing.T) {
	ksv := services.KeyService{}
	res1, err := ksv.Create(context.TODO(), &models.KeyServiceCreateRequest{
		ShouldRotate: PTrue(),
	})
	if err != nil || res1 == nil {
		t.Fatal(err)
	}
	res2, err := ksv.Crypt(context.TODO(), &models.KeyServiceCryptRequest{
		Id:      res1.Key.GetId(),
		Message: "HELLO IM A MESSAGE",
	})
	if err != nil || res2 == nil {
		t.Fatal(err)
	}
	res3, err := ksv.Decrypt(context.TODO(), &models.KeyServiceDecryptRequest{
		Id:         res1.Key.GetId(),
		Ciphertext: res2.Ciphertext,
	})
	if err != nil || res3 == nil {
		t.Fatal(err)
	}
	t.Log(res3.Message)
}

func TestKeyService_Decrypt2(t *testing.T) {
	ksv := services.KeyService{}
	res1, err := ksv.Create(context.TODO(), &models.KeyServiceCreateRequest{
		ShouldRotate: PTrue(),
		Bits:         PInt32(2048),
	})
	if err != nil || res1 == nil {
		t.Fatal(err)
	}
	res2, err := ksv.Crypt(context.TODO(), &models.KeyServiceCryptRequest{
		Id:      res1.Key.GetId(),
		Message: strings.Repeat("hello", 2048),
	})
	if err != nil || res2 == nil {
		t.Fatal(err)
	}
	res3, err := ksv.Decrypt(context.TODO(), &models.KeyServiceDecryptRequest{
		Id:         res1.Key.GetId(),
		Ciphertext: res2.Ciphertext,
	})
	if err != nil || res3 == nil {
		t.Fatal(err)
	}
	t.Log(res3.Message)
}

func TestKeyService_Decrypt3(t *testing.T) {
	ksv := services.KeyService{}
	res1, err := ksv.Create(context.TODO(), &models.KeyServiceCreateRequest{
		ShouldRotate: PTrue(),
		Bits:         PInt32(256),
	})
	if err != nil || res1 == nil {
		t.Fatal(err)
	}
	res2, err := ksv.Crypt(context.TODO(), &models.KeyServiceCryptRequest{
		Id:      res1.Key.GetId(),
		Message: strings.Repeat("hello", 2048),
	})
	if err != nil || res2 == nil {
		t.Fatal(err)
	}
	res3, err := ksv.Decrypt(context.TODO(), &models.KeyServiceDecryptRequest{
		Id:         res1.Key.GetId(),
		Ciphertext: res2.Ciphertext,
	})
	if err != nil || res3 == nil {
		t.Fatal(err)
	}
	t.Log(res3.Message)
}

func TestKeyService_JWK(t *testing.T) {
	ksv := services.KeyService{}
	res1, err := ksv.Create(context.TODO(), &models.KeyServiceCreateRequest{
		ShouldRotate: PTrue(),
	})
	if err != nil || res1 == nil {
		t.Fatal(err)
	}
	res2, err := ksv.JWK(context.TODO(), &models.KeyServiceJWKRequest{
		Id: res1.Key.GetId(),
	})
	if err != nil || res2 == nil {
		t.Fatal(err)
	}
	t.Log(res2.Jwk)
}

func TestKeyService_JWTSign(t *testing.T) {
	ksv := services.KeyService{}
	res1, err := ksv.Create(context.TODO(), &models.KeyServiceCreateRequest{
		ShouldRotate: PTrue(),
	})
	if err != nil || res1 == nil {
		t.Fatal(err)
	}
	res2, err := ksv.JWTSign(context.TODO(), &models.KeyServiceJWTSignRequest{
		Id:      res1.Key.GetId(),
		Message: "HELLO IM A MESSAGE",
	})
	if err != nil || res2 == nil {
		t.Fatal(err)
	}
	t.Log(res2.Token)
}

func TestKeyService_JWTVerify(t *testing.T) {
	ksv := services.KeyService{}
	res1, err := ksv.Create(context.TODO(), &models.KeyServiceCreateRequest{
		ShouldRotate: PTrue(),
	})
	if err != nil || res1 == nil {
		t.Fatal(err)
	}
	res2, err := ksv.JWTSign(context.TODO(), &models.KeyServiceJWTSignRequest{
		Id:      res1.Key.GetId(),
		Message: "HELLO IM A MESSAGE",
	})
	if err != nil || res2 == nil {
		t.Fatal(err)
	}
	res3, err := ksv.JWTVerify(context.TODO(), &models.KeyServiceJWTVerifyRequest{
		Id:    res1.Key.GetId(),
		Token: res2.Token,
	})
	if err != nil || res3 == nil {
		t.Fatal(err)
	}
	t.Log(res3.Valid)
}
