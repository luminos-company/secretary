// Code generated by gorm.io/gen. DO NOT EDIT.
// Code generated by gorm.io/gen. DO NOT EDIT.
// Code generated by gorm.io/gen. DO NOT EDIT.

package query

import (
	"context"

	"gorm.io/gorm"
	"gorm.io/gorm/clause"
	"gorm.io/gorm/schema"

	"gorm.io/gen"
	"gorm.io/gen/field"

	"gorm.io/plugin/dbresolver"

	"github.com/luminos-company/secretary/database/dbmodel"
)

func newKeyRotatedModel(db *gorm.DB, opts ...gen.DOOption) keyRotatedModel {
	_keyRotatedModel := keyRotatedModel{}

	_keyRotatedModel.keyRotatedModelDo.UseDB(db, opts...)
	_keyRotatedModel.keyRotatedModelDo.UseModel(&dbmodel.KeyRotatedModel{})

	tableName := _keyRotatedModel.keyRotatedModelDo.TableName()
	_keyRotatedModel.ALL = field.NewAsterisk(tableName)
	_keyRotatedModel.ID = field.NewString(tableName, "id")
	_keyRotatedModel.ExternalId = field.NewString(tableName, "external_id")
	_keyRotatedModel.PrivateKey = field.NewString(tableName, "private_key")
	_keyRotatedModel.PublicKey = field.NewString(tableName, "public_key")
	_keyRotatedModel.ExpiresAt = field.NewTime(tableName, "expires_at")
	_keyRotatedModel.CreatedAt = field.NewTime(tableName, "created_at")
	_keyRotatedModel.UpdatedAt = field.NewTime(tableName, "updated_at")
	_keyRotatedModel.DeletedAt = field.NewField(tableName, "deleted_at")

	_keyRotatedModel.fillFieldMap()

	return _keyRotatedModel
}

type keyRotatedModel struct {
	keyRotatedModelDo

	ALL        field.Asterisk
	ID         field.String
	ExternalId field.String
	PrivateKey field.String
	PublicKey  field.String
	ExpiresAt  field.Time
	CreatedAt  field.Time
	UpdatedAt  field.Time
	DeletedAt  field.Field

	fieldMap map[string]field.Expr
}

func (k keyRotatedModel) Table(newTableName string) *keyRotatedModel {
	k.keyRotatedModelDo.UseTable(newTableName)
	return k.updateTableName(newTableName)
}

func (k keyRotatedModel) As(alias string) *keyRotatedModel {
	k.keyRotatedModelDo.DO = *(k.keyRotatedModelDo.As(alias).(*gen.DO))
	return k.updateTableName(alias)
}

func (k *keyRotatedModel) updateTableName(table string) *keyRotatedModel {
	k.ALL = field.NewAsterisk(table)
	k.ID = field.NewString(table, "id")
	k.ExternalId = field.NewString(table, "external_id")
	k.PrivateKey = field.NewString(table, "private_key")
	k.PublicKey = field.NewString(table, "public_key")
	k.ExpiresAt = field.NewTime(table, "expires_at")
	k.CreatedAt = field.NewTime(table, "created_at")
	k.UpdatedAt = field.NewTime(table, "updated_at")
	k.DeletedAt = field.NewField(table, "deleted_at")

	k.fillFieldMap()

	return k
}

func (k *keyRotatedModel) GetFieldByName(fieldName string) (field.OrderExpr, bool) {
	_f, ok := k.fieldMap[fieldName]
	if !ok || _f == nil {
		return nil, false
	}
	_oe, ok := _f.(field.OrderExpr)
	return _oe, ok
}

func (k *keyRotatedModel) fillFieldMap() {
	k.fieldMap = make(map[string]field.Expr, 8)
	k.fieldMap["id"] = k.ID
	k.fieldMap["external_id"] = k.ExternalId
	k.fieldMap["private_key"] = k.PrivateKey
	k.fieldMap["public_key"] = k.PublicKey
	k.fieldMap["expires_at"] = k.ExpiresAt
	k.fieldMap["created_at"] = k.CreatedAt
	k.fieldMap["updated_at"] = k.UpdatedAt
	k.fieldMap["deleted_at"] = k.DeletedAt
}

func (k keyRotatedModel) clone(db *gorm.DB) keyRotatedModel {
	k.keyRotatedModelDo.ReplaceConnPool(db.Statement.ConnPool)
	return k
}

func (k keyRotatedModel) replaceDB(db *gorm.DB) keyRotatedModel {
	k.keyRotatedModelDo.ReplaceDB(db)
	return k
}

type keyRotatedModelDo struct{ gen.DO }

type IKeyRotatedModelDo interface {
	gen.SubQuery
	Debug() IKeyRotatedModelDo
	WithContext(ctx context.Context) IKeyRotatedModelDo
	WithResult(fc func(tx gen.Dao)) gen.ResultInfo
	ReplaceDB(db *gorm.DB)
	ReadDB() IKeyRotatedModelDo
	WriteDB() IKeyRotatedModelDo
	As(alias string) gen.Dao
	Session(config *gorm.Session) IKeyRotatedModelDo
	Columns(cols ...field.Expr) gen.Columns
	Clauses(conds ...clause.Expression) IKeyRotatedModelDo
	Not(conds ...gen.Condition) IKeyRotatedModelDo
	Or(conds ...gen.Condition) IKeyRotatedModelDo
	Select(conds ...field.Expr) IKeyRotatedModelDo
	Where(conds ...gen.Condition) IKeyRotatedModelDo
	Order(conds ...field.Expr) IKeyRotatedModelDo
	Distinct(cols ...field.Expr) IKeyRotatedModelDo
	Omit(cols ...field.Expr) IKeyRotatedModelDo
	Join(table schema.Tabler, on ...field.Expr) IKeyRotatedModelDo
	LeftJoin(table schema.Tabler, on ...field.Expr) IKeyRotatedModelDo
	RightJoin(table schema.Tabler, on ...field.Expr) IKeyRotatedModelDo
	Group(cols ...field.Expr) IKeyRotatedModelDo
	Having(conds ...gen.Condition) IKeyRotatedModelDo
	Limit(limit int) IKeyRotatedModelDo
	Offset(offset int) IKeyRotatedModelDo
	Count() (count int64, err error)
	Scopes(funcs ...func(gen.Dao) gen.Dao) IKeyRotatedModelDo
	Unscoped() IKeyRotatedModelDo
	Create(values ...*dbmodel.KeyRotatedModel) error
	CreateInBatches(values []*dbmodel.KeyRotatedModel, batchSize int) error
	Save(values ...*dbmodel.KeyRotatedModel) error
	First() (*dbmodel.KeyRotatedModel, error)
	Take() (*dbmodel.KeyRotatedModel, error)
	Last() (*dbmodel.KeyRotatedModel, error)
	Find() ([]*dbmodel.KeyRotatedModel, error)
	FindInBatch(batchSize int, fc func(tx gen.Dao, batch int) error) (results []*dbmodel.KeyRotatedModel, err error)
	FindInBatches(result *[]*dbmodel.KeyRotatedModel, batchSize int, fc func(tx gen.Dao, batch int) error) error
	Pluck(column field.Expr, dest interface{}) error
	Delete(...*dbmodel.KeyRotatedModel) (info gen.ResultInfo, err error)
	Update(column field.Expr, value interface{}) (info gen.ResultInfo, err error)
	UpdateSimple(columns ...field.AssignExpr) (info gen.ResultInfo, err error)
	Updates(value interface{}) (info gen.ResultInfo, err error)
	UpdateColumn(column field.Expr, value interface{}) (info gen.ResultInfo, err error)
	UpdateColumnSimple(columns ...field.AssignExpr) (info gen.ResultInfo, err error)
	UpdateColumns(value interface{}) (info gen.ResultInfo, err error)
	UpdateFrom(q gen.SubQuery) gen.Dao
	Attrs(attrs ...field.AssignExpr) IKeyRotatedModelDo
	Assign(attrs ...field.AssignExpr) IKeyRotatedModelDo
	Joins(fields ...field.RelationField) IKeyRotatedModelDo
	Preload(fields ...field.RelationField) IKeyRotatedModelDo
	FirstOrInit() (*dbmodel.KeyRotatedModel, error)
	FirstOrCreate() (*dbmodel.KeyRotatedModel, error)
	FindByPage(offset int, limit int) (result []*dbmodel.KeyRotatedModel, count int64, err error)
	ScanByPage(result interface{}, offset int, limit int) (count int64, err error)
	Scan(result interface{}) (err error)
	Returning(value interface{}, columns ...string) IKeyRotatedModelDo
	UnderlyingDB() *gorm.DB
	schema.Tabler
}

func (k keyRotatedModelDo) Debug() IKeyRotatedModelDo {
	return k.withDO(k.DO.Debug())
}

func (k keyRotatedModelDo) WithContext(ctx context.Context) IKeyRotatedModelDo {
	return k.withDO(k.DO.WithContext(ctx))
}

func (k keyRotatedModelDo) ReadDB() IKeyRotatedModelDo {
	return k.Clauses(dbresolver.Read)
}

func (k keyRotatedModelDo) WriteDB() IKeyRotatedModelDo {
	return k.Clauses(dbresolver.Write)
}

func (k keyRotatedModelDo) Session(config *gorm.Session) IKeyRotatedModelDo {
	return k.withDO(k.DO.Session(config))
}

func (k keyRotatedModelDo) Clauses(conds ...clause.Expression) IKeyRotatedModelDo {
	return k.withDO(k.DO.Clauses(conds...))
}

func (k keyRotatedModelDo) Returning(value interface{}, columns ...string) IKeyRotatedModelDo {
	return k.withDO(k.DO.Returning(value, columns...))
}

func (k keyRotatedModelDo) Not(conds ...gen.Condition) IKeyRotatedModelDo {
	return k.withDO(k.DO.Not(conds...))
}

func (k keyRotatedModelDo) Or(conds ...gen.Condition) IKeyRotatedModelDo {
	return k.withDO(k.DO.Or(conds...))
}

func (k keyRotatedModelDo) Select(conds ...field.Expr) IKeyRotatedModelDo {
	return k.withDO(k.DO.Select(conds...))
}

func (k keyRotatedModelDo) Where(conds ...gen.Condition) IKeyRotatedModelDo {
	return k.withDO(k.DO.Where(conds...))
}

func (k keyRotatedModelDo) Exists(subquery interface{ UnderlyingDB() *gorm.DB }) IKeyRotatedModelDo {
	return k.Where(field.CompareSubQuery(field.ExistsOp, nil, subquery.UnderlyingDB()))
}

func (k keyRotatedModelDo) Order(conds ...field.Expr) IKeyRotatedModelDo {
	return k.withDO(k.DO.Order(conds...))
}

func (k keyRotatedModelDo) Distinct(cols ...field.Expr) IKeyRotatedModelDo {
	return k.withDO(k.DO.Distinct(cols...))
}

func (k keyRotatedModelDo) Omit(cols ...field.Expr) IKeyRotatedModelDo {
	return k.withDO(k.DO.Omit(cols...))
}

func (k keyRotatedModelDo) Join(table schema.Tabler, on ...field.Expr) IKeyRotatedModelDo {
	return k.withDO(k.DO.Join(table, on...))
}

func (k keyRotatedModelDo) LeftJoin(table schema.Tabler, on ...field.Expr) IKeyRotatedModelDo {
	return k.withDO(k.DO.LeftJoin(table, on...))
}

func (k keyRotatedModelDo) RightJoin(table schema.Tabler, on ...field.Expr) IKeyRotatedModelDo {
	return k.withDO(k.DO.RightJoin(table, on...))
}

func (k keyRotatedModelDo) Group(cols ...field.Expr) IKeyRotatedModelDo {
	return k.withDO(k.DO.Group(cols...))
}

func (k keyRotatedModelDo) Having(conds ...gen.Condition) IKeyRotatedModelDo {
	return k.withDO(k.DO.Having(conds...))
}

func (k keyRotatedModelDo) Limit(limit int) IKeyRotatedModelDo {
	return k.withDO(k.DO.Limit(limit))
}

func (k keyRotatedModelDo) Offset(offset int) IKeyRotatedModelDo {
	return k.withDO(k.DO.Offset(offset))
}

func (k keyRotatedModelDo) Scopes(funcs ...func(gen.Dao) gen.Dao) IKeyRotatedModelDo {
	return k.withDO(k.DO.Scopes(funcs...))
}

func (k keyRotatedModelDo) Unscoped() IKeyRotatedModelDo {
	return k.withDO(k.DO.Unscoped())
}

func (k keyRotatedModelDo) Create(values ...*dbmodel.KeyRotatedModel) error {
	if len(values) == 0 {
		return nil
	}
	return k.DO.Create(values)
}

func (k keyRotatedModelDo) CreateInBatches(values []*dbmodel.KeyRotatedModel, batchSize int) error {
	return k.DO.CreateInBatches(values, batchSize)
}

// Save : !!! underlying implementation is different with GORM
// The method is equivalent to executing the statement: db.Clauses(clause.OnConflict{UpdateAll: true}).Create(values)
func (k keyRotatedModelDo) Save(values ...*dbmodel.KeyRotatedModel) error {
	if len(values) == 0 {
		return nil
	}
	return k.DO.Save(values)
}

func (k keyRotatedModelDo) First() (*dbmodel.KeyRotatedModel, error) {
	if result, err := k.DO.First(); err != nil {
		return nil, err
	} else {
		return result.(*dbmodel.KeyRotatedModel), nil
	}
}

func (k keyRotatedModelDo) Take() (*dbmodel.KeyRotatedModel, error) {
	if result, err := k.DO.Take(); err != nil {
		return nil, err
	} else {
		return result.(*dbmodel.KeyRotatedModel), nil
	}
}

func (k keyRotatedModelDo) Last() (*dbmodel.KeyRotatedModel, error) {
	if result, err := k.DO.Last(); err != nil {
		return nil, err
	} else {
		return result.(*dbmodel.KeyRotatedModel), nil
	}
}

func (k keyRotatedModelDo) Find() ([]*dbmodel.KeyRotatedModel, error) {
	result, err := k.DO.Find()
	return result.([]*dbmodel.KeyRotatedModel), err
}

func (k keyRotatedModelDo) FindInBatch(batchSize int, fc func(tx gen.Dao, batch int) error) (results []*dbmodel.KeyRotatedModel, err error) {
	buf := make([]*dbmodel.KeyRotatedModel, 0, batchSize)
	err = k.DO.FindInBatches(&buf, batchSize, func(tx gen.Dao, batch int) error {
		defer func() { results = append(results, buf...) }()
		return fc(tx, batch)
	})
	return results, err
}

func (k keyRotatedModelDo) FindInBatches(result *[]*dbmodel.KeyRotatedModel, batchSize int, fc func(tx gen.Dao, batch int) error) error {
	return k.DO.FindInBatches(result, batchSize, fc)
}

func (k keyRotatedModelDo) Attrs(attrs ...field.AssignExpr) IKeyRotatedModelDo {
	return k.withDO(k.DO.Attrs(attrs...))
}

func (k keyRotatedModelDo) Assign(attrs ...field.AssignExpr) IKeyRotatedModelDo {
	return k.withDO(k.DO.Assign(attrs...))
}

func (k keyRotatedModelDo) Joins(fields ...field.RelationField) IKeyRotatedModelDo {
	for _, _f := range fields {
		k = *k.withDO(k.DO.Joins(_f))
	}
	return &k
}

func (k keyRotatedModelDo) Preload(fields ...field.RelationField) IKeyRotatedModelDo {
	for _, _f := range fields {
		k = *k.withDO(k.DO.Preload(_f))
	}
	return &k
}

func (k keyRotatedModelDo) FirstOrInit() (*dbmodel.KeyRotatedModel, error) {
	if result, err := k.DO.FirstOrInit(); err != nil {
		return nil, err
	} else {
		return result.(*dbmodel.KeyRotatedModel), nil
	}
}

func (k keyRotatedModelDo) FirstOrCreate() (*dbmodel.KeyRotatedModel, error) {
	if result, err := k.DO.FirstOrCreate(); err != nil {
		return nil, err
	} else {
		return result.(*dbmodel.KeyRotatedModel), nil
	}
}

func (k keyRotatedModelDo) FindByPage(offset int, limit int) (result []*dbmodel.KeyRotatedModel, count int64, err error) {
	result, err = k.Offset(offset).Limit(limit).Find()
	if err != nil {
		return
	}

	if size := len(result); 0 < limit && 0 < size && size < limit {
		count = int64(size + offset)
		return
	}

	count, err = k.Offset(-1).Limit(-1).Count()
	return
}

func (k keyRotatedModelDo) ScanByPage(result interface{}, offset int, limit int) (count int64, err error) {
	count, err = k.Count()
	if err != nil {
		return
	}

	err = k.Offset(offset).Limit(limit).Scan(result)
	return
}

func (k keyRotatedModelDo) Scan(result interface{}) (err error) {
	return k.DO.Scan(result)
}

func (k keyRotatedModelDo) Delete(models ...*dbmodel.KeyRotatedModel) (result gen.ResultInfo, err error) {
	return k.DO.Delete(models)
}

func (k *keyRotatedModelDo) withDO(do gen.Dao) *keyRotatedModelDo {
	k.DO = *do.(*gen.DO)
	return k
}
