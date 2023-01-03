package services

import (
	"github.com/luminos-company/secretary/database"
	"github.com/luminos-company/secretary/generated/query"
)

func init() {
	query.SetDefault(database.Get())
}
