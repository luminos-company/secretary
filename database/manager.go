package database

import (
	"github.com/luminos-company/secretary/database/dbmodel"
	"github.com/luminos-company/secretary/typ"
	"gorm.io/driver/postgres"
	"gorm.io/gen"
	"gorm.io/gorm"
	"log"
	"os"
	"sync"
)

var (
	db   *gorm.DB
	once sync.Once
)

func Get() *gorm.DB {
	once.Do(func() {
		db = safeGet()
	})
	return db
}

func create() {
	db = Get()
	err := db.AutoMigrate(dbmodel.KeyModel{}, dbmodel.KeyRotatedModel{})
	if err != nil {
		_ = os.RemoveAll(dbFile)
		panic(err)
	}
}

func Generate() {
	db = Get()
	g := gen.NewGenerator(gen.Config{
		OutPath: "generated/query",
		Mode:    gen.WithoutContext | gen.WithDefaultQuery | gen.WithQueryInterface, // generate mode
	})
	g.UseDB(Get())
	g.ApplyBasic(dbmodel.KeyModel{}, dbmodel.KeyRotatedModel{})
	g.Execute()
}

func safeGet() *gorm.DB {
	pgUser := typ.GetEnv("PG_USER", "postgres")
	pgPassword := typ.GetEnv("PG_PASSWORD", "postgres")
	pgHost := typ.GetEnv("PG_HOST", "localhost")
	pgPort := typ.GetEnv("PG_PORT", "5432")
	pgDatabase := typ.GetEnv("PG_DATABASE", "postgres")
	pgSSLMode := typ.GetEnv("PG_SSL_MODE", "disable")
	pgTimeZone := typ.GetEnv("PG_TIME_ZONE", "UTC")
	pgURL := "host=" + pgHost + " port=" + pgPort + " user=" + pgUser + " dbname=" + pgDatabase + " password=" + pgPassword + " sslmode=" + pgSSLMode + " TimeZone=" + pgTimeZone
	log.Println(pgURL)
	dbt, _ := gorm.Open(postgres.Open(pgURL), &gorm.Config{})
	return dbt
}
