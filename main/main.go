package main

import (
	"github.com/luminos-company/secretary/cron"
	"github.com/luminos-company/secretary/database"
	"github.com/luminos-company/secretary/generated/query"
)

func HandleError(err error) {
	if err != nil {
		panic(err)
	}
}

func main() {
	query.SetDefault(database.Get())
	cron.RunCroner()
	runServer()
}
