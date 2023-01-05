package dbmodel

import (
	"github.com/bytedance/sonic"
	"gorm.io/datatypes"
	"time"
)

type KeyRotatedModel struct {
	PrimaryModel
	KeyId      string         `json:"key" gorm:"index"`
	PrivateKey string         `json:"private_key" gorm:"uniqueIndex"`
	PublicKey  string         `json:"public_key" gorm:"uniqueIndex"`
	Kid        string         `json:"kid"`
	JWK        datatypes.JSON `json:"jwk" gorm:"type:jsonb"`
	ExpiresAt  *time.Time     `json:"expires_at" gorm:"index"`
	TimesModel
}

func (*KeyRotatedModel) TableName() string {
	return "key_rotated"
}

func (k *KeyRotatedModel) JWKMap() map[string]interface{} {
	var res map[string]interface{}
	err := sonic.Unmarshal([]byte(k.JWK), &res)
	if err != nil {
		return map[string]interface{}{}
	}
	return res
}
