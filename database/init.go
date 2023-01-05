package database

import (
	"os"
)

var dbFile = "v_1.db"
var dbFolder = "/var/lib/secretary/data"

func init() {
	if !dbExists() {
		if !folderExists() {
			_ = os.MkdirAll(dbFolder, 0755)
		}
		create()
	}
	Get()
}

func dbExists() bool {
	_, err := os.Stat(dbFile)
	if os.IsNotExist(err) {
		return false
	}
	return true
}

func folderExists() bool {
	_, err := os.Stat(dbFolder)
	if os.IsNotExist(err) {
		return false
	}
	return true
}
