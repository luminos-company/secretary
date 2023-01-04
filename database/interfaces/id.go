package interfaces

import "gorm.io/gen"

type IdQuerier interface {
	// SELECT * FROM @@table WHERE id=@id or external_id=@id order by id=@id limit 1
	GetByID(id string) (*gen.T, error)
}
