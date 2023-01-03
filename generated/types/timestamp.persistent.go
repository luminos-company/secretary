package types

import (
	"database/sql/driver"
	"google.golang.org/protobuf/types/known/timestamppb"
	"gorm.io/gorm"
	"gorm.io/gorm/schema"
	"time"
)

const ISO8601 = "2006-01-02T15:04:05-07:00"

func (n *Timestamp) Value() (driver.Value, error) {
	if n == nil || n.Timestamp == nil {
		return nil, nil
	}
	return n.Timestamp.AsTime().Format(ISO8601), nil
}

func (n *Timestamp) Scan(value interface{}) error {
	if value == nil {
		return nil
	}
	var toParse string
	switch value.(type) {
	case string:
		toParse = value.(string)
		break
	case time.Time:
		toParse = value.(time.Time).Format(ISO8601)
		break
	}
	parse, err := time.ParseInLocation(ISO8601, toParse, time.UTC)
	if err != nil {
		return err
	}
	*n = Timestamp{Timestamp: timestamppb.New(parse)}
	return nil
}

func (n *Timestamp) GormDBDataType(db *gorm.DB, field *schema.Field) string {
	return "timestamptz"
}

func (n *Timestamp) GormDataType() string {
	return "timestamptz"
}
