package types

import (
	"database/sql/driver"
	"encoding/json"
	"google.golang.org/protobuf/types/known/timestamppb"
	"gorm.io/gorm"
	"gorm.io/gorm/clause"
	"gorm.io/gorm/schema"
	"reflect"
	"strings"
	"time"
)

func (n *DeletedAt) Value() (driver.Value, error) {
	if n == nil || n.Timestamp == nil {
		return nil, nil
	}
	return n.Timestamp.AsTime().Format(ISO8601), nil
}

func (n *DeletedAt) Scan(value interface{}) error {
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
	*n = DeletedAt{Timestamp: timestamppb.New(parse)}
	return nil
}

func (n *DeletedAt) GormDBDataType(db *gorm.DB, field *schema.Field) string {
	return "timestamptz"
}

func (n *DeletedAt) MarshalJSON() ([]byte, error) {
	if n.Timestamp != nil {
		return json.Marshal(n.Timestamp.AsTime())
	}
	return json.Marshal(nil)
}

func (n *DeletedAt) UnmarshalJSON(b []byte) error {
	if string(b) == "null" {
		n.Timestamp = nil
		return nil
	}
	var t time.Time
	if err := json.Unmarshal(b, &t); err != nil {
		return err
	}
	n.Timestamp = timestamppb.New(t)
	return nil
}

func (*DeletedAt) QueryClauses(f *schema.Field) []clause.Interface {
	return []clause.Interface{SoftDeleteQueryClause{Field: f}}
}

type SoftDeleteQueryClause struct {
	Field *schema.Field
}

func (sd SoftDeleteQueryClause) Name() string {
	return ""
}

func (sd SoftDeleteQueryClause) Build(clause.Builder) {
}

func (sd SoftDeleteQueryClause) MergeClause(*clause.Clause) {
}

func (sd SoftDeleteQueryClause) ModifyStatement(stmt *gorm.Statement) {
	if _, ok := stmt.Clauses["soft_delete_enabled"]; !ok && !stmt.Statement.Unscoped {
		if c, ok := stmt.Clauses["WHERE"]; ok {
			if where, ok := c.Expression.(clause.Where); ok && len(where.Exprs) >= 1 {
				for _, expr := range where.Exprs {
					if orCond, ok := expr.(clause.OrConditions); ok && len(orCond.Exprs) == 1 {
						where.Exprs = []clause.Expression{clause.And(where.Exprs...)}
						c.Expression = where
						stmt.Clauses["WHERE"] = c
						break
					}
				}
			}
		}

		if stmt.TableExpr != nil && strings.Contains(stmt.TableExpr.SQL, "\" AS \"") {
			alias := strings.Split(stmt.TableExpr.SQL, "\" AS \"")[1]
			stmt.AddClause(clause.Where{Exprs: []clause.Expression{
				clause.Eq{Column: clause.Column{Table: "\"" + alias, Name: sd.Field.DBName}, Value: nil},
			}})
		} else {
			stmt.AddClause(clause.Where{Exprs: []clause.Expression{
				clause.Eq{Column: clause.Column{Table: clause.CurrentTable, Name: sd.Field.DBName}, Value: nil},
			}})
		}
		stmt.Clauses["soft_delete_enabled"] = clause.Clause{}
	}
}

func (DeletedAt) UpdateClauses(f *schema.Field) []clause.Interface {
	return []clause.Interface{SoftDeleteUpdateClause{Field: f}}
}

type SoftDeleteUpdateClause struct {
	Field *schema.Field
}

func (sd SoftDeleteUpdateClause) Name() string {
	return ""
}

func (sd SoftDeleteUpdateClause) Build(clause.Builder) {
}

func (sd SoftDeleteUpdateClause) MergeClause(*clause.Clause) {
}

func (sd SoftDeleteUpdateClause) ModifyStatement(stmt *gorm.Statement) {
	if stmt.SQL.Len() == 0 && !stmt.Statement.Unscoped {
		SoftDeleteQueryClause(sd).ModifyStatement(stmt)
	}
}

func (DeletedAt) DeleteClauses(f *schema.Field) []clause.Interface {
	return []clause.Interface{SoftDeleteDeleteClause{Field: f}}
}

type SoftDeleteDeleteClause struct {
	Field *schema.Field
}

func (sd SoftDeleteDeleteClause) Name() string {
	return ""
}

func (sd SoftDeleteDeleteClause) Build(clause.Builder) {
}

func (sd SoftDeleteDeleteClause) MergeClause(*clause.Clause) {
}

func (sd SoftDeleteDeleteClause) ModifyStatement(stmt *gorm.Statement) {
	if stmt.SQL.Len() == 0 && !stmt.Statement.Unscoped {
		curTime := stmt.DB.NowFunc()
		stmt.AddClause(clause.Set{{Column: clause.Column{Name: sd.Field.DBName}, Value: curTime}})
		stmt.SetColumn(sd.Field.DBName, curTime, true)

		if stmt.Schema != nil {
			_, queryValues := schema.GetIdentityFieldValuesMap(stmt.Context, stmt.ReflectValue, stmt.Schema.PrimaryFields)

			var column interface{}
			var values []interface{}
			if stmt.TableExpr != nil && strings.Contains(stmt.TableExpr.SQL, "\" AS \"") {
				alias := strings.Split(stmt.TableExpr.SQL, "\" AS \"")[1]
				column, values = schema.ToQueryValues("\""+alias, stmt.Schema.PrimaryFieldDBNames, queryValues)
			} else {
				column, values = schema.ToQueryValues(stmt.Table, stmt.Schema.PrimaryFieldDBNames, queryValues)
			}

			if len(values) > 0 {
				stmt.AddClause(clause.Where{Exprs: []clause.Expression{clause.IN{Column: column, Values: values}}})
			}

			if stmt.ReflectValue.CanAddr() && stmt.Dest != stmt.Model && stmt.Model != nil {
				_, queryValues = schema.GetIdentityFieldValuesMap(stmt.Context, reflect.ValueOf(stmt.Model), stmt.Schema.PrimaryFields)
				if stmt.TableExpr != nil && strings.Contains(stmt.TableExpr.SQL, "\" AS \"") {
					alias := strings.Split(stmt.TableExpr.SQL, "\" AS \"")[1]
					column, values = schema.ToQueryValues("\""+alias, stmt.Schema.PrimaryFieldDBNames, queryValues)
				} else {
					column, values = schema.ToQueryValues(stmt.Table, stmt.Schema.PrimaryFieldDBNames, queryValues)
				}

				if len(values) > 0 {
					stmt.AddClause(clause.Where{Exprs: []clause.Expression{clause.IN{Column: column, Values: values}}})
				}
			}
		}

		SoftDeleteQueryClause(sd).ModifyStatement(stmt)
		stmt.AddClauseIfNotExists(clause.Update{})
		stmt.Build(stmt.DB.Callback().Update().Clauses...)
	}
}
