package database

import (
	"log"
	"os"
)

var dbFile = "v_1.db"
var dbFolder = "/var/lib/secretary/data"

func init() {
	if !dbExists() {
		if !folderExists() {
			err := os.MkdirAll(dbFolder, 0755)
			if err != nil {
				log.Fatalln(err)
			}
		}
		create()
	}
	Get()
}

func dbExists() bool {
	_, err := os.Stat(dbFolder + "/" + dbFile)
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
