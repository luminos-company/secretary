package database

import (
	"github.com/luminos-company/secretary/generated/models/dbmodel"
	"gorm.io/driver/sqlite"
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
	err := db.AutoMigrate(dbmodel.Key{})
	if err != nil {
		_ = os.RemoveAll(dbFile)
		panic(err)
	}
	generate()
}

func generate() {
	db = Get()
	g := gen.NewGenerator(gen.Config{
		OutPath: "generated/query",
		Mode:    gen.WithoutContext | gen.WithDefaultQuery | gen.WithQueryInterface, // generate mode
	})
	g.UseDB(Get())
	g.ApplyBasic(dbmodel.Key{})
	g.Execute()
}

func safeGet() *gorm.DB {
	db, _ := gorm.Open(sqlite.Open(dbFile), &gorm.Config{})
	return db
}
