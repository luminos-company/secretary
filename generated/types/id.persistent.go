package types

import (
	"database/sql"
	"database/sql/driver"
	"github.com/google/uuid"
	"gorm.io/gorm"
	"gorm.io/gorm/clause"
	"gorm.io/gorm/schema"
	"reflect"
)

func (n *ID) toString() *sql.NullString {
	t := sql.NullString{
		String: n.GetId(),
		Valid:  true,
	}
	return &t
}

func (n *ID) Scan(value interface{}) error {
	id := n.toString()
	err := id.Scan(value)
	if err == nil {
		n.Id = id.String
	}
	return err
}

func (n *ID) Value() (driver.Value, error) {
	if n == nil || n.Id == "" {
		return sql.NullString{
			String: uuid.New().String(),
			Valid:  true,
		}, nil
	}
	return n.toString().Value()
}

func (n *ID) GormDBDataType(db *gorm.DB, field *schema.Field) string {
	return "string"
}

func (*ID) CreateClauses(f *schema.Field) []clause.Interface {
	return []clause.Interface{CreateDBClauses{Field: f}}
}

type CreateDBClauses struct {
	Field *schema.Field
}

func (sd CreateDBClauses) Name() string {
	return sd.Field.Name
}

func (sd CreateDBClauses) Build(clause.Builder) {
}

func (sd CreateDBClauses) MergeClause(*clause.Clause) {
}

func (sd CreateDBClauses) ModifyStatement(stmt *gorm.Statement) {
	if stmt.Statement.ReflectValue.Type().Kind() == reflect.Slice {
		for i := 0; i < stmt.Statement.ReflectValue.Len(); i++ {
			if CheckValue(stmt.Statement.ReflectValue.Index(i).Elem().FieldByName(sd.Name())) {
				stmt.Statement.SetColumn(sd.Name(), uuid.New().String())
			}
		}
	} else {
		if CheckValue(stmt.Statement.ReflectValue.FieldByName(sd.Name())) {
			stmt.Statement.SetColumn(sd.Name(), uuid.New().String())
		}
	}
}

func CheckValue(val reflect.Value) bool {
	if !val.IsValid() {
		return true
	}
	if val.Kind() == reflect.Ptr {
		return val.IsNil() || val.String() == ""
	}
	return val.String() == ""
}
