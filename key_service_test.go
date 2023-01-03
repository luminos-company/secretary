package main

import (
	"context"
	"github.com/luminos-company/secretary/generated/models"
	"github.com/luminos-company/secretary/main/services"
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

func TestKeyService_Create(t *testing.T) {
	ksv := services.KeyService{}
	res, err := ksv.Create(context.TODO(), &models.KeyServiceCreateRequest{
		ShouldRotate: PTrue(),
	})
	if err != nil || res == nil {
		t.Fatal(err)
	}
}

func TestKeyService_Get(t *testing.T) {
	ksv := services.KeyService{}
	res1, err := ksv.Create(context.TODO(), &models.KeyServiceCreateRequest{
		ShouldRotate: PTrue(),
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
	})
	if err != nil || res1 == nil {
		t.Fatal(err)
	}
	res2, err := ksv.Crypto(context.TODO(), &models.KeyServiceCryptoRequest{
		Id:      res1.Key.GetId(),
		Message: "HELLO IM A MESSAGE",
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
	res2, err := ksv.Crypto(context.TODO(), &models.KeyServiceCryptoRequest{
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
