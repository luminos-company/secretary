package dbmodel

import (
	"github.com/bytedance/sonic"
	"github.com/luminos-company/secretary/tools/keys"
	"github.com/luminos-company/secretary/typ"
	"github.com/robfig/cron/v3"
	"gorm.io/datatypes"
	"gorm.io/gorm"
	"time"
)

type KeyModel struct {
	PrimaryModel
	ExternalId   *string        `json:"external_id" gorm:"uniqueIndex"`
	PrivateKey   string         `json:"private_key"`
	PublicKey    string         `json:"public_key"`
	Kid          string         `json:"kid"`
	JWK          datatypes.JSON `json:"jwk" gorm:"type:jsonb"`
	ShouldRotate *bool          `json:"should_rotate" gorm:"default:false"`
	RotateCron   *string        `json:"rotate_cron"`
	ExpiresAt    *time.Time     `json:"expires_at" gorm:"index"`
	TimesModel
}

func (*KeyModel) TableName() string {
	return "keys"
}

func (k *KeyModel) BeforeCreate(db *gorm.DB) error {
	err := k.PrimaryModel.BeforeCreate(db)
	if err != nil {
		return err
	}
	if k.ShouldRotate != nil && *k.ShouldRotate == true {
		if k.RotateCron == nil {
			k.RotateCron = typ.StringP("0 0 1 * *") // default to every month
		}
		k.ExpiresAt = k.NextExpirationDate()
	}
	return nil
}

func (k *KeyModel) NextExpirationDate() *time.Time {
	if k.ShouldRotate != nil && *k.ShouldRotate == true && k.RotateCron != nil && *k.RotateCron != "" {
		if k.RotateCron == nil {
			k.RotateCron = typ.StringP("0 0 1 * *") // default to every month
		}
		parse, err := cron.NewParser(cron.Minute | cron.Hour | cron.Dom | cron.Month | cron.Dow).Parse(*k.RotateCron)
		if err != nil {
			return nil
		}
		return typ.TimeP(parse.Next(time.Now()))
	}
	return nil
}

func (k *KeyModel) GenerateKeys(bits *int32) error {
	rsaKeyGen := keys.Rsa{}
	if bits != nil {
		err := rsaKeyGen.Generate(int(*bits))
		if err != nil {
			return err
		}
	} else {
		err := rsaKeyGen.Generate(2048)
		if err != nil {
			return err
		}
	}
	k.PublicKey, k.PrivateKey = rsaKeyGen.ExportBase64()
	return k.GenerateJWK()
}

func (k *KeyModel) GenerateJWK() error {
	rsa := keys.Rsa{}
	rsa.ImportBase64(k.PublicKey, k.PrivateKey)
	jwk, err := rsa.CalculateJWK()
	if err != nil {
		return err
	}
	k.Kid = jwk["kid"].(string)
	marshal, err := sonic.Marshal(jwk)
	if err != nil {
		return err
	}
	k.JWK = datatypes.JSON(marshal)
	return nil
}

func (k *KeyModel) JWKMap() map[string]interface{} {
	var res map[string]interface{}
	err := sonic.Unmarshal([]byte(k.JWK), &res)
	if err != nil {
		return map[string]interface{}{}
	}
	return res
}
