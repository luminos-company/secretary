package cron

import (
	"github.com/go-co-op/gocron"
	"github.com/luminos-company/secretary/database/dbmodel/queries"
	"github.com/luminos-company/secretary/generated/query"
	"github.com/luminos-company/secretary/typ"
	"log"
	"time"
)

var s = gocron.NewScheduler(time.UTC)

func RunCroner() {
	_, err := s.Cron(typ.GetEnv("SECRETARY_ROTATION_CHECK", "*/1 * * * *")).Do(rotator)
	if err != nil {
		log.Fatalln(err)
	}
	s.StartAsync()
}

func rotator() {
	find, err := query.KeyModel.Where(query.KeyModel.ExpiresAt.Lt(time.Now()), query.KeyModel.ShouldRotate.Is(true)).Find()
	if err != nil {
		return
	}
	for _, key := range find {
		queries.EnhanceKey(key).Rotate()
	}
	_, _ = query.KeyRotatedModel.Where(query.KeyRotatedModel.ExpiresAt.Lt(time.Now())).Unscoped().Delete()
}
