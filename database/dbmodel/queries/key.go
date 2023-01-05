package queries

import (
	"github.com/luminos-company/secretary/database/dbmodel"
	"github.com/luminos-company/secretary/generated/query"
	"github.com/luminos-company/secretary/tools/keys"
	"github.com/luminos-company/secretary/typ"
	"time"
)

var KeyEnhancer = &KeyEnhancerImpl{}

type KeyEnhancerImpl struct {
}

func (*KeyEnhancerImpl) Rotate(k *dbmodel.KeyModel) {
	tk := *k
	rsa := keys.Rsa{}
	rsa.ImportBase64(tk.PublicKey, tk.PrivateKey)
	rsa.Generate(rsa.PrivateKey.N.BitLen())
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
		ExpiresAt:  typ.TimeP(tk.NextExpirationDate().Add(time.Hour * 24)),
	})
	if err != nil {
		return
	}
	k.PublicKey, k.PrivateKey = rsa.ExportBase64()
	k.ExpiresAt = tk.NextExpirationDate()
	tk = *k
	err = query.KeyModel.Save(&tk)
	if err != nil {
		return
	}
}
