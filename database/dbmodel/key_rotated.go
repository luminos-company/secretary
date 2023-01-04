package dbmodel

import "time"

type KeyRotatedModel struct {
	PrimaryModel
	KeyId      string     `json:"key" gorm:"index"`
	PrivateKey string     `json:"private_key" gorm:"uniqueIndex"`
	PublicKey  string     `json:"public_key" gorm:"uniqueIndex"`
	ExpiresAt  *time.Time `json:"expires_at" gorm:"index"`
	TimesModel
}

func (KeyRotatedModel) TableName() string {
	return "key_rotated"
}
