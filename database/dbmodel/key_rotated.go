package dbmodel

import "time"

type KeyRotatedModel struct {
	PrimaryModel
	ExternalId *string   `json:"external_id" gorm:"unique_index"`
	PrivateKey string    `json:"private_key" gorm:"unique_index"`
	PublicKey  string    `json:"public_key" gorm:"unique_index"`
	ExpiresAt  time.Time `json:"expires_at" gorm:"index"`
	TimesModel
}

func (KeyRotatedModel) TableName() string {
	return "key_rotated"
}
