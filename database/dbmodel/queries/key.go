package queries

import (
	"github.com/luminos-company/secretary/database/dbmodel"
	"github.com/luminos-company/secretary/generated/query"
	"github.com/luminos-company/secretary/tools/keys"
)

type KeyModel dbmodel.KeyModel

func EnhanceKey(key *dbmodel.KeyModel) *KeyModel {
	tk := KeyModel(*key)
	return &tk
}

func (k *KeyModel) Rotate() {
	tk := dbmodel.KeyModel(*k)
	rsa := keys.Rsa{}
	rsa.Generate()
	if tk.ShouldRotate != nil && *tk.ShouldRotate == false {
		_, err := query.KeyRotatedModel.Where(query.KeyRotatedModel.KeyId.Eq(k.ID)).Unscoped().Delete()
		if err != nil {
			return
		}
	}
	err := query.KeyRotatedModel.Save(&dbmodel.KeyRotatedModel{
		KeyId:      k.ID,
		PrivateKey: k.PrivateKey,
		PublicKey:  k.PublicKey,
		ExpiresAt:  tk.NextExpirationDate(),
	})
	if err != nil {
		return
	}
	k.PublicKey, k.PrivateKey = rsa.ExportBase64()
	k.ExpiresAt = tk.NextExpirationDate()
	tk = dbmodel.KeyModel(*k)
	err = query.KeyModel.Save(&tk)
	if err != nil {
		return
	}

}
