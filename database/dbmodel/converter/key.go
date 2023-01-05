package converter

import (
	"github.com/luminos-company/secretary/database/dbmodel"
	"github.com/luminos-company/secretary/generated/models"
	"github.com/luminos-company/secretary/typ"
	"google.golang.org/protobuf/types/known/timestamppb"
)

type KeyConverterImpl struct {
}

var KeyConverter = &KeyConverterImpl{}

func (*KeyConverterImpl) ToGrpc(k *dbmodel.KeyModel) *models.Key {
	out := &models.Key{
		Id:           k.ID,
		ExternalId:   k.ExternalId,
		PublicKey:    k.PublicKey,
		PrivateKey:   "---- REDACTED FOR SECURITY ----",
		ShouldRotate: k.ShouldRotate,
		RotateCron:   k.RotateCron,
		Kid:          k.Kid,
		CreatedAt:    timestamppb.New(k.CreatedAt),
		UpdatedAt:    timestamppb.New(k.UpdatedAt),
	}
	if k.ExpiresAt != nil {
		out.ExpiresAt = timestamppb.New(*k.ExpiresAt)
	}
	if typ.GetEnv("SECRETARY_INSECURE", "false") == "true" {
		out.PrivateKey = k.PrivateKey
	}
	return out
}

func (*KeyConverterImpl) ToGorm(key *models.Key) *dbmodel.KeyModel {
	out := &dbmodel.KeyModel{
		ExternalId:   key.ExternalId,
		PrivateKey:   key.PrivateKey,
		PublicKey:    key.PublicKey,
		ShouldRotate: key.ShouldRotate,
		RotateCron:   key.RotateCron,
		Kid:          key.Kid,
	}
	if key.Id != "" {
		out.ID = key.Id
	}
	if key.CreatedAt != nil {
		out.CreatedAt = key.CreatedAt.AsTime()
	}
	if key.UpdatedAt != nil {
		out.UpdatedAt = key.UpdatedAt.AsTime()
	}
	if key.ExpiresAt != nil {
		out.ExpiresAt = typ.TimeP(key.ExpiresAt.AsTime())
	}
	return out
}

func (*KeyConverterImpl) ToGormList(keys []*models.Key) []*dbmodel.KeyModel {
	out := make([]*dbmodel.KeyModel, len(keys))
	for i, key := range keys {
		out[i] = (&KeyConverterImpl{}).ToGorm(key)
	}
	return out
}

func (*KeyConverterImpl) ToGrpcList(keys []*dbmodel.KeyModel) []*models.Key {
	out := make([]*models.Key, len(keys))
	for i, key := range keys {
		out[i] = (&KeyConverterImpl{}).ToGrpc(key)
	}
	return out
}
