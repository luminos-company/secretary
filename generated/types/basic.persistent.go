package types

import (
	"google.golang.org/protobuf/types/known/timestamppb"
	"time"
)

func (b *Basic) GetID() string {
	return b.Id.GetId()
}

func (b *Basic) SetID(id string) {
	b.Id.Id = id
}

func (b *Basic) GetCreated() time.Time {
	return b.CreatedAt.Timestamp.AsTime()
}

func (b *Basic) SetCreated(t time.Time) {
	b.CreatedAt.Timestamp = timestamppb.New(t)
}

func (b *Basic) GetUpdated() time.Time {
	return b.UpdatedAt.Timestamp.AsTime()
}

func (b *Basic) SetUpdated(t time.Time) {
	b.UpdatedAt.Timestamp = timestamppb.New(t)
}

func (b *Basic) GetDeleted() time.Time {
	return b.DeletedAt.Timestamp.AsTime()
}

func (b *Basic) SetDeleted(t time.Time) {
	b.DeletedAt.Timestamp = timestamppb.New(t)
}
