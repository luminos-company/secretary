package dbmodel

import (
	"github.com/luminos-company/secretary/typ"
	"github.com/robfig/cron/v3"
	"gorm.io/gorm"
	"time"
)

type KeyModel struct {
	PrimaryModel
	ExternalId   *string    `json:"external_id" gorm:"uniqueIndex"`
	PrivateKey   string     `json:"private_key"`
	PublicKey    string     `json:"public_key"`
	ShouldRotate *bool      `json:"should_rotate" gorm:"default:false"`
	RotateCron   *string    `json:"rotate_cron"`
	ExpiresAt    *time.Time `json:"expires_at" gorm:"index"`
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
