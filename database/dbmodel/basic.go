package dbmodel

import (
	"github.com/iancoleman/strcase"
	"github.com/luminos-company/secretary/database/dbmodel/types"
	"github.com/segmentio/ksuid"
	"gorm.io/gorm"
	"strings"
	"time"
)

type PrimaryModel struct {
	ID string `gorm:"primaryKey; type:text;" json:"id" swaggertype:"string"`
}

func (main *PrimaryModel) BeforeCreate(db *gorm.DB) error {
	if main.ID == "" {
		main.ID = TableNameGenerator(db.Statement.Table) + "_" + ksuid.New().String()
	}
	return nil
}
func (main *PrimaryModel) BeforeSave(db *gorm.DB) error {
	if main.ID == "" {
		main.ID = TableNameGenerator(db.Statement.Table) + "_" + ksuid.New().String()
	}
	return nil
}

type TimesModel struct {
	CreatedAt time.Time       `json:"created_at" gorm:"index;autoCreateTime" swaggertype:"string"`
	UpdatedAt time.Time       `json:"updated_at" gorm:"index;autoUpdateTime" swaggertype:"string"`
	DeletedAt types.DeletedAt `json:"deleted_at" gorm:"index;default:null" swaggertype:"string"`
}

func TableNameGenerator(name string) string {
	return strings.ReplaceAll(strcase.ToSnake(name), "_", "")
}
