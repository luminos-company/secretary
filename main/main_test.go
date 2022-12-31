package main

import (
	"github.com/google/uuid"
	"github.com/luminos-company/secretary/database"
	"github.com/luminos-company/secretary/generated/models"
	"github.com/luminos-company/secretary/generated/query"
	"github.com/luminos-company/secretary/generated/types"
	"testing"
)

func Test(t *testing.T) {
	t.Run("Test 100 Generate uuid", func(t *testing.T) {
		query.SetDefault(database.Get())
		for i := 0; i < 100; i++ {
			err := query.Key.Save(&models.Key{
				PrivateKey:   uuid.New().String(),
				PublicKey:    uuid.New().String(),
				ShouldRotate: false,
			})
			if err != nil {
				t.Error(err)
			}
		}
	})
	t.Run("Test 100 Replace", func(t *testing.T) {
		query.SetDefault(database.Get())
		for i := 0; i < 100; i++ {
			err := query.Key.Save(&models.Key{
				ID: &types.ID{
					Id: "37252e09-7848-4c4a-b3fa-db2a2a45634f",
				},
				PrivateKey:   uuid.New().String(),
				PublicKey:    uuid.New().String(),
				ShouldRotate: false,
			})
			if err != nil {
				t.Error(err)
			}
		}
	})
}
