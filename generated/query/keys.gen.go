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

	"github.com/luminos-company/secretary/generated/models"
)

func newKey(db *gorm.DB, opts ...gen.DOOption) key {
	_key := key{}

	_key.keyDo.UseDB(db, opts...)
	_key.keyDo.UseModel(&models.Key{})

	tableName := _key.keyDo.TableName()
	_key.ALL = field.NewAsterisk(tableName)
	_key.Id = field.NewField(tableName, "id")
	_key.UpdatedAt = field.NewField(tableName, "updated_at")
	_key.CreatedAt = field.NewField(tableName, "created_at")
	_key.DeletedAt = field.NewField(tableName, "deleted_at")
	_key.PrivateKey = field.NewString(tableName, "private_key")
	_key.PublicKey = field.NewString(tableName, "public_key")
	_key.ShouldRotate = field.NewBool(tableName, "should_rotate")
	_key.RotatedFromId = field.NewString(tableName, "rotated_from_id")
	_key.RotateCron = field.NewString(tableName, "rotate_cron")
	_key.ExpiresAt = field.NewField(tableName, "expires_at")

	_key.fillFieldMap()

	return _key
}

type key struct {
	keyDo

	ALL           field.Asterisk
	Id            field.Field
	UpdatedAt     field.Field
	CreatedAt     field.Field
	DeletedAt     field.Field
	PrivateKey    field.String
	PublicKey     field.String
	ShouldRotate  field.Bool
	RotatedFromId field.String
	RotateCron    field.String
	ExpiresAt     field.Field

	fieldMap map[string]field.Expr
}

func (k key) Table(newTableName string) *key {
	k.keyDo.UseTable(newTableName)
	return k.updateTableName(newTableName)
}

func (k key) As(alias string) *key {
	k.keyDo.DO = *(k.keyDo.As(alias).(*gen.DO))
	return k.updateTableName(alias)
}

func (k *key) updateTableName(table string) *key {
	k.ALL = field.NewAsterisk(table)
	k.Id = field.NewField(table, "id")
	k.UpdatedAt = field.NewField(table, "updated_at")
	k.CreatedAt = field.NewField(table, "created_at")
	k.DeletedAt = field.NewField(table, "deleted_at")
	k.PrivateKey = field.NewString(table, "private_key")
	k.PublicKey = field.NewString(table, "public_key")
	k.ShouldRotate = field.NewBool(table, "should_rotate")
	k.RotatedFromId = field.NewString(table, "rotated_from_id")
	k.RotateCron = field.NewString(table, "rotate_cron")
	k.ExpiresAt = field.NewField(table, "expires_at")

	k.fillFieldMap()

	return k
}

func (k *key) GetFieldByName(fieldName string) (field.OrderExpr, bool) {
	_f, ok := k.fieldMap[fieldName]
	if !ok || _f == nil {
		return nil, false
	}
	_oe, ok := _f.(field.OrderExpr)
	return _oe, ok
}

func (k *key) fillFieldMap() {
	k.fieldMap = make(map[string]field.Expr, 10)
	k.fieldMap["id"] = k.Id
	k.fieldMap["updated_at"] = k.UpdatedAt
	k.fieldMap["created_at"] = k.CreatedAt
	k.fieldMap["deleted_at"] = k.DeletedAt
	k.fieldMap["private_key"] = k.PrivateKey
	k.fieldMap["public_key"] = k.PublicKey
	k.fieldMap["should_rotate"] = k.ShouldRotate
	k.fieldMap["rotated_from_id"] = k.RotatedFromId
	k.fieldMap["rotate_cron"] = k.RotateCron
	k.fieldMap["expires_at"] = k.ExpiresAt
}

func (k key) clone(db *gorm.DB) key {
	k.keyDo.ReplaceConnPool(db.Statement.ConnPool)
	return k
}

func (k key) replaceDB(db *gorm.DB) key {
	k.keyDo.ReplaceDB(db)
	return k
}

type keyDo struct{ gen.DO }

type IKeyDo interface {
	gen.SubQuery
	Debug() IKeyDo
	WithContext(ctx context.Context) IKeyDo
	WithResult(fc func(tx gen.Dao)) gen.ResultInfo
	ReplaceDB(db *gorm.DB)
	ReadDB() IKeyDo
	WriteDB() IKeyDo
	As(alias string) gen.Dao
	Session(config *gorm.Session) IKeyDo
	Columns(cols ...field.Expr) gen.Columns
	Clauses(conds ...clause.Expression) IKeyDo
	Not(conds ...gen.Condition) IKeyDo
	Or(conds ...gen.Condition) IKeyDo
	Select(conds ...field.Expr) IKeyDo
	Where(conds ...gen.Condition) IKeyDo
	Order(conds ...field.Expr) IKeyDo
	Distinct(cols ...field.Expr) IKeyDo
	Omit(cols ...field.Expr) IKeyDo
	Join(table schema.Tabler, on ...field.Expr) IKeyDo
	LeftJoin(table schema.Tabler, on ...field.Expr) IKeyDo
	RightJoin(table schema.Tabler, on ...field.Expr) IKeyDo
	Group(cols ...field.Expr) IKeyDo
	Having(conds ...gen.Condition) IKeyDo
	Limit(limit int) IKeyDo
	Offset(offset int) IKeyDo
	Count() (count int64, err error)
	Scopes(funcs ...func(gen.Dao) gen.Dao) IKeyDo
	Unscoped() IKeyDo
	Create(values ...*models.Key) error
	CreateInBatches(values []*models.Key, batchSize int) error
	Save(values ...*models.Key) error
	First() (*models.Key, error)
	Take() (*models.Key, error)
	Last() (*models.Key, error)
	Find() ([]*models.Key, error)
	FindInBatch(batchSize int, fc func(tx gen.Dao, batch int) error) (results []*models.Key, err error)
	FindInBatches(result *[]*models.Key, batchSize int, fc func(tx gen.Dao, batch int) error) error
	Pluck(column field.Expr, dest interface{}) error
	Delete(...*models.Key) (info gen.ResultInfo, err error)
	Update(column field.Expr, value interface{}) (info gen.ResultInfo, err error)
	UpdateSimple(columns ...field.AssignExpr) (info gen.ResultInfo, err error)
	Updates(value interface{}) (info gen.ResultInfo, err error)
	UpdateColumn(column field.Expr, value interface{}) (info gen.ResultInfo, err error)
	UpdateColumnSimple(columns ...field.AssignExpr) (info gen.ResultInfo, err error)
	UpdateColumns(value interface{}) (info gen.ResultInfo, err error)
	UpdateFrom(q gen.SubQuery) gen.Dao
	Attrs(attrs ...field.AssignExpr) IKeyDo
	Assign(attrs ...field.AssignExpr) IKeyDo
	Joins(fields ...field.RelationField) IKeyDo
	Preload(fields ...field.RelationField) IKeyDo
	FirstOrInit() (*models.Key, error)
	FirstOrCreate() (*models.Key, error)
	FindByPage(offset int, limit int) (result []*models.Key, count int64, err error)
	ScanByPage(result interface{}, offset int, limit int) (count int64, err error)
	Scan(result interface{}) (err error)
	Returning(value interface{}, columns ...string) IKeyDo
	UnderlyingDB() *gorm.DB
	schema.Tabler
}

func (k keyDo) Debug() IKeyDo {
	return k.withDO(k.DO.Debug())
}

func (k keyDo) WithContext(ctx context.Context) IKeyDo {
	return k.withDO(k.DO.WithContext(ctx))
}

func (k keyDo) ReadDB() IKeyDo {
	return k.Clauses(dbresolver.Read)
}

func (k keyDo) WriteDB() IKeyDo {
	return k.Clauses(dbresolver.Write)
}

func (k keyDo) Session(config *gorm.Session) IKeyDo {
	return k.withDO(k.DO.Session(config))
}

func (k keyDo) Clauses(conds ...clause.Expression) IKeyDo {
	return k.withDO(k.DO.Clauses(conds...))
}

func (k keyDo) Returning(value interface{}, columns ...string) IKeyDo {
	return k.withDO(k.DO.Returning(value, columns...))
}

func (k keyDo) Not(conds ...gen.Condition) IKeyDo {
	return k.withDO(k.DO.Not(conds...))
}

func (k keyDo) Or(conds ...gen.Condition) IKeyDo {
	return k.withDO(k.DO.Or(conds...))
}

func (k keyDo) Select(conds ...field.Expr) IKeyDo {
	return k.withDO(k.DO.Select(conds...))
}

func (k keyDo) Where(conds ...gen.Condition) IKeyDo {
	return k.withDO(k.DO.Where(conds...))
}

func (k keyDo) Exists(subquery interface{ UnderlyingDB() *gorm.DB }) IKeyDo {
	return k.Where(field.CompareSubQuery(field.ExistsOp, nil, subquery.UnderlyingDB()))
}

func (k keyDo) Order(conds ...field.Expr) IKeyDo {
	return k.withDO(k.DO.Order(conds...))
}

func (k keyDo) Distinct(cols ...field.Expr) IKeyDo {
	return k.withDO(k.DO.Distinct(cols...))
}

func (k keyDo) Omit(cols ...field.Expr) IKeyDo {
	return k.withDO(k.DO.Omit(cols...))
}

func (k keyDo) Join(table schema.Tabler, on ...field.Expr) IKeyDo {
	return k.withDO(k.DO.Join(table, on...))
}

func (k keyDo) LeftJoin(table schema.Tabler, on ...field.Expr) IKeyDo {
	return k.withDO(k.DO.LeftJoin(table, on...))
}

func (k keyDo) RightJoin(table schema.Tabler, on ...field.Expr) IKeyDo {
	return k.withDO(k.DO.RightJoin(table, on...))
}

func (k keyDo) Group(cols ...field.Expr) IKeyDo {
	return k.withDO(k.DO.Group(cols...))
}

func (k keyDo) Having(conds ...gen.Condition) IKeyDo {
	return k.withDO(k.DO.Having(conds...))
}

func (k keyDo) Limit(limit int) IKeyDo {
	return k.withDO(k.DO.Limit(limit))
}

func (k keyDo) Offset(offset int) IKeyDo {
	return k.withDO(k.DO.Offset(offset))
}

func (k keyDo) Scopes(funcs ...func(gen.Dao) gen.Dao) IKeyDo {
	return k.withDO(k.DO.Scopes(funcs...))
}

func (k keyDo) Unscoped() IKeyDo {
	return k.withDO(k.DO.Unscoped())
}

func (k keyDo) Create(values ...*models.Key) error {
	if len(values) == 0 {
		return nil
	}
	return k.DO.Create(values)
}

func (k keyDo) CreateInBatches(values []*models.Key, batchSize int) error {
	return k.DO.CreateInBatches(values, batchSize)
}

// Save : !!! underlying implementation is different with GORM
// The method is equivalent to executing the statement: db.Clauses(clause.OnConflict{UpdateAll: true}).Create(values)
func (k keyDo) Save(values ...*models.Key) error {
	if len(values) == 0 {
		return nil
	}
	return k.DO.Save(values)
}

func (k keyDo) First() (*models.Key, error) {
	if result, err := k.DO.First(); err != nil {
		return nil, err
	} else {
		return result.(*models.Key), nil
	}
}

func (k keyDo) Take() (*models.Key, error) {
	if result, err := k.DO.Take(); err != nil {
		return nil, err
	} else {
		return result.(*models.Key), nil
	}
}

func (k keyDo) Last() (*models.Key, error) {
	if result, err := k.DO.Last(); err != nil {
		return nil, err
	} else {
		return result.(*models.Key), nil
	}
}

func (k keyDo) Find() ([]*models.Key, error) {
	result, err := k.DO.Find()
	return result.([]*models.Key), err
}

func (k keyDo) FindInBatch(batchSize int, fc func(tx gen.Dao, batch int) error) (results []*models.Key, err error) {
	buf := make([]*models.Key, 0, batchSize)
	err = k.DO.FindInBatches(&buf, batchSize, func(tx gen.Dao, batch int) error {
		defer func() { results = append(results, buf...) }()
		return fc(tx, batch)
	})
	return results, err
}

func (k keyDo) FindInBatches(result *[]*models.Key, batchSize int, fc func(tx gen.Dao, batch int) error) error {
	return k.DO.FindInBatches(result, batchSize, fc)
}

func (k keyDo) Attrs(attrs ...field.AssignExpr) IKeyDo {
	return k.withDO(k.DO.Attrs(attrs...))
}

func (k keyDo) Assign(attrs ...field.AssignExpr) IKeyDo {
	return k.withDO(k.DO.Assign(attrs...))
}

func (k keyDo) Joins(fields ...field.RelationField) IKeyDo {
	for _, _f := range fields {
		k = *k.withDO(k.DO.Joins(_f))
	}
	return &k
}

func (k keyDo) Preload(fields ...field.RelationField) IKeyDo {
	for _, _f := range fields {
		k = *k.withDO(k.DO.Preload(_f))
	}
	return &k
}

func (k keyDo) FirstOrInit() (*models.Key, error) {
	if result, err := k.DO.FirstOrInit(); err != nil {
		return nil, err
	} else {
		return result.(*models.Key), nil
	}
}

func (k keyDo) FirstOrCreate() (*models.Key, error) {
	if result, err := k.DO.FirstOrCreate(); err != nil {
		return nil, err
	} else {
		return result.(*models.Key), nil
	}
}

func (k keyDo) FindByPage(offset int, limit int) (result []*models.Key, count int64, err error) {
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

func (k keyDo) ScanByPage(result interface{}, offset int, limit int) (count int64, err error) {
	count, err = k.Count()
	if err != nil {
		return
	}

	err = k.Offset(offset).Limit(limit).Scan(result)
	return
}

func (k keyDo) Scan(result interface{}) (err error) {
	return k.DO.Scan(result)
}

func (k keyDo) Delete(models ...*models.Key) (result gen.ResultInfo, err error) {
	return k.DO.Delete(models)
}

func (k *keyDo) withDO(do gen.Dao) *keyDo {
	k.DO = *do.(*gen.DO)
	return k
}