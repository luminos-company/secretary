package conversion

import (
	"github.com/luminos-company/secretary/generated/models"
	"github.com/luminos-company/secretary/generated/models/dbmodel"
	_ "github.com/luminos-company/secretary/generated/types"
)

// goverter:converter ./generated/converter
// goverter:extend Convert.*
type KeyConverter interface {
	// goverter:ignore state
	// goverter:ignore sizeCache
	// goverter:ignore unknownFields
	// goverter:ignore Seconds
	// goverter:ignore Nanos
	ToModel(source *dbmodel.Key) *models.Key
	// goverter:ignore state
	// goverter:ignore sizeCache
	// goverter:ignore unknownFields
	// goverter:ignore Timestamp
	ToGorm(source *models.Key) *dbmodel.Key
}
