package main

import (
	"github.com/luminos-company/secretary/database"
	"github.com/luminos-company/secretary/generated/models"
	"github.com/luminos-company/secretary/generated/query"
	"github.com/luminos-company/secretary/tools/keys"
)

func main() {
	database.Get()
	query.SetDefault(database.Get())
	t := keys.Rsa{}
	t.Generate()
	r := &models.Key{
		PrivateKey:   t.ExportPrivateBase64(),
		PublicKey:    t.ExportPublicBase64(),
		ShouldRotate: false,
	}
	err := query.Key.Save(r)
	if err != nil {
		panic(err)
	}
}
