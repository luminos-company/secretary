package main

import (
	"github.com/go-co-op/gocron"
	"github.com/luminos-company/secretary/database"
	"github.com/luminos-company/secretary/database/dbmodel"
	"github.com/luminos-company/secretary/generated/query"
	"github.com/luminos-company/secretary/tools/keys"
	"github.com/luminos-company/secretary/typ"
	"log"
	"time"
)

var s = gocron.NewScheduler(time.UTC)

func runCroner() {
	_, err := s.Cron(typ.GetEnv("SECRETARY_ROTATION_CHECK", "*/1 * * * *")).Do(rotator)
	if err != nil {
		log.Fatalln(err)
	}
	s.StartAsync()
}

func rotator() {
	query.SetDefault(database.Get())
	find, err := query.KeyModel.Where(query.KeyModel.ExpiresAt.Lt(time.Now()), query.KeyModel.ShouldRotate.Is(true)).Find()
	if err != nil {
		return
	}
	for _, key := range find {
		rsa := keys.Rsa{}
		rsa.Generate()
		err = query.KeyRotatedModel.Save(&dbmodel.KeyRotatedModel{
			KeyId:      key.ID,
			PrivateKey: key.PrivateKey,
			PublicKey:  key.PublicKey,
			ExpiresAt:  key.NextExpirationDate(),
		})
		if err != nil {
			return
		}
		key.PublicKey, key.PrivateKey = rsa.ExportBase64()
		key.ExpiresAt = key.NextExpirationDate()
		err = query.KeyModel.Save(key)
		if err != nil {
			return
		}
	}
	_, _ = query.KeyRotatedModel.Where(query.KeyRotatedModel.ExpiresAt.Lt(time.Now())).Unscoped().Delete()
}
