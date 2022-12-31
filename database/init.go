package database

import (
	"os"
)

var dbFile = "v_1.db"

func init() {
	if !dbExists() {
		create()
		generate()
		return
	} else {
		Get()
	}
}

func dbExists() bool {
	_, err := os.Stat(dbFile)
	if os.IsNotExist(err) {
		return false
	}
	return true
}
