package main

import (
	"github.com/luminos-company/secretary/database"
	"github.com/luminos-company/secretary/generated/models"
	"github.com/luminos-company/secretary/generated/query"
	"github.com/luminos-company/secretary/tools/keys"
	"log"
)

func main() {
	re := keys.Rsa{}
	re.Generate()
	log.Println(re.ExportJWK())
	query.SetDefault(database.Get())
	query.Key.Save(&models.Key{
		PrivateKey:   re.ExportPrivateBase64(),
		PublicKey:    re.ExportPublicBase64(),
		ShouldRotate: false,
	})

}
