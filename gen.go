package main

import (
	"github.com/luminos-company/secretary/database"
	"os"
	"time"
)

func main() {
	_ = os.Remove("v_1.db")
	time.Sleep(2 * time.Second)
	database.Get()
}
