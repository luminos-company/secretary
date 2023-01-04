package database

import (
	"github.com/luminos-company/secretary/database/dbmodel"
	"gorm.io/driver/postgres"
	"gorm.io/gen"
	"gorm.io/gorm"
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
	pgUser := os.Getenv("PG_USER")
	pgPassword := os.Getenv("PG_PASSWORD")
	pgHost := os.Getenv("PG_HOST")
	pgPort := os.Getenv("PG_PORT")
	pgDatabase := os.Getenv("PG_DATABASE")
	pgSSLMode := os.Getenv("PG_SSL_MODE")
	pgTimeZone := os.Getenv("PG_TIME_ZONE")
	pgURL := "host=" + pgHost + " port=" + pgPort + " user=" + pgUser + " dbname=" + pgDatabase + " password=" + pgPassword + " sslmode=" + pgSSLMode + " TimeZone=" + pgTimeZone
	dbt, _ := gorm.Open(postgres.Open(pgURL), &gorm.Config{})
	return dbt
}
