package types

import (
	"database/sql"
	"database/sql/driver"
	"google.golang.org/protobuf/types/known/timestamppb"
	"gorm.io/gorm"
	"gorm.io/gorm/schema"
)

func (n *Timestamp) toTime() *sql.NullTime {
	if n.Timestamp == nil {
		return &sql.NullTime{}
	}
	t := sql.NullTime{
		Time:  n.Timestamp.AsTime(),
		Valid: n.Timestamp != nil,
	}
	return &t
}

func (n *Timestamp) Scan(value interface{}) error {
	time := n.toTime()
	err := time.Scan(value)
	if err == nil {
		n.Timestamp = timestamppb.New(time.Time)
	}
	return err
}

func (n *Timestamp) Value() (driver.Value, error) {
	if n == nil {
		return nil, nil
	}
	return n.toTime().Value()
}

func (n *Timestamp) GormDBDataType(db *gorm.DB, field *schema.Field) string {
	return "timestamptz"
}
