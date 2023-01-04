// Code generated by gorm.io/gen. DO NOT EDIT.
// Code generated by gorm.io/gen. DO NOT EDIT.
// Code generated by gorm.io/gen. DO NOT EDIT.

package query

import (
	"context"
	"strings"

	"gorm.io/gorm"
	"gorm.io/gorm/clause"
	"gorm.io/gorm/schema"

	"gorm.io/gen"
	"gorm.io/gen/field"

	"gorm.io/plugin/dbresolver"

	"github.com/luminos-company/secretary/database/dbmodel"
)

func newKeyModel(db *gorm.DB, opts ...gen.DOOption) keyModel {
	_keyModel := keyModel{}

	_keyModel.keyModelDo.UseDB(db, opts...)
	_keyModel.keyModelDo.UseModel(&dbmodel.KeyModel{})

	tableName := _keyModel.keyModelDo.TableName()
	_keyModel.ALL = field.NewAsterisk(tableName)
	_keyModel.ID = field.NewString(tableName, "id")
	_keyModel.ExternalId = field.NewString(tableName, "external_id")
	_keyModel.PrivateKey = field.NewString(tableName, "private_key")
	_keyModel.PublicKey = field.NewString(tableName, "public_key")
	_keyModel.ShouldRotate = field.NewBool(tableName, "should_rotate")
	_keyModel.RotateCron = field.NewString(tableName, "rotate_cron")
	_keyModel.ExpiresAt = field.NewTime(tableName, "expires_at")
	_keyModel.CreatedAt = field.NewTime(tableName, "created_at")
	_keyModel.UpdatedAt = field.NewTime(tableName, "updated_at")
	_keyModel.DeletedAt = field.NewField(tableName, "deleted_at")

	_keyModel.fillFieldMap()

	return _keyModel
}

type keyModel struct {
	keyModelDo

	ALL          field.Asterisk
	ID           field.String
	ExternalId   field.String
	PrivateKey   field.String
	PublicKey    field.String
	ShouldRotate field.Bool
	RotateCron   field.String
	ExpiresAt    field.Time
	CreatedAt    field.Time
	UpdatedAt    field.Time
	DeletedAt    field.Field

	fieldMap map[string]field.Expr
}

func (k keyModel) Table(newTableName string) *keyModel {
	k.keyModelDo.UseTable(newTableName)
	return k.updateTableName(newTableName)
}

func (k keyModel) As(alias string) *keyModel {
	k.keyModelDo.DO = *(k.keyModelDo.As(alias).(*gen.DO))
	return k.updateTableName(alias)
}

func (k *keyModel) updateTableName(table string) *keyModel {
	k.ALL = field.NewAsterisk(table)
	k.ID = field.NewString(table, "id")
	k.ExternalId = field.NewString(table, "external_id")
	k.PrivateKey = field.NewString(table, "private_key")
	k.PublicKey = field.NewString(table, "public_key")
	k.ShouldRotate = field.NewBool(table, "should_rotate")
	k.RotateCron = field.NewString(table, "rotate_cron")
	k.ExpiresAt = field.NewTime(table, "expires_at")
	k.CreatedAt = field.NewTime(table, "created_at")
	k.UpdatedAt = field.NewTime(table, "updated_at")
	k.DeletedAt = field.NewField(table, "deleted_at")

	k.fillFieldMap()

	return k
}

func (k *keyModel) GetFieldByName(fieldName string) (field.OrderExpr, bool) {
	_f, ok := k.fieldMap[fieldName]
	if !ok || _f == nil {
		return nil, false
	}
	_oe, ok := _f.(field.OrderExpr)
	return _oe, ok
}

func (k *keyModel) fillFieldMap() {
	k.fieldMap = make(map[string]field.Expr, 10)
	k.fieldMap["id"] = k.ID
	k.fieldMap["external_id"] = k.ExternalId
	k.fieldMap["private_key"] = k.PrivateKey
	k.fieldMap["public_key"] = k.PublicKey
	k.fieldMap["should_rotate"] = k.ShouldRotate
	k.fieldMap["rotate_cron"] = k.RotateCron
	k.fieldMap["expires_at"] = k.ExpiresAt
	k.fieldMap["created_at"] = k.CreatedAt
	k.fieldMap["updated_at"] = k.UpdatedAt
	k.fieldMap["deleted_at"] = k.DeletedAt
}

func (k keyModel) clone(db *gorm.DB) keyModel {
	k.keyModelDo.ReplaceConnPool(db.Statement.ConnPool)
	return k
}

func (k keyModel) replaceDB(db *gorm.DB) keyModel {
	k.keyModelDo.ReplaceDB(db)
	return k
}

type keyModelDo struct{ gen.DO }

type IKeyModelDo interface {
	gen.SubQuery
	Debug() IKeyModelDo
	WithContext(ctx context.Context) IKeyModelDo
	WithResult(fc func(tx gen.Dao)) gen.ResultInfo
	ReplaceDB(db *gorm.DB)
	ReadDB() IKeyModelDo
	WriteDB() IKeyModelDo
	As(alias string) gen.Dao
	Session(config *gorm.Session) IKeyModelDo
	Columns(cols ...field.Expr) gen.Columns
	Clauses(conds ...clause.Expression) IKeyModelDo
	Not(conds ...gen.Condition) IKeyModelDo
	Or(conds ...gen.Condition) IKeyModelDo
	Select(conds ...field.Expr) IKeyModelDo
	Where(conds ...gen.Condition) IKeyModelDo
	Order(conds ...field.Expr) IKeyModelDo
	Distinct(cols ...field.Expr) IKeyModelDo
	Omit(cols ...field.Expr) IKeyModelDo
	Join(table schema.Tabler, on ...field.Expr) IKeyModelDo
	LeftJoin(table schema.Tabler, on ...field.Expr) IKeyModelDo
	RightJoin(table schema.Tabler, on ...field.Expr) IKeyModelDo
	Group(cols ...field.Expr) IKeyModelDo
	Having(conds ...gen.Condition) IKeyModelDo
	Limit(limit int) IKeyModelDo
	Offset(offset int) IKeyModelDo
	Count() (count int64, err error)
	Scopes(funcs ...func(gen.Dao) gen.Dao) IKeyModelDo
	Unscoped() IKeyModelDo
	Create(values ...*dbmodel.KeyModel) error
	CreateInBatches(values []*dbmodel.KeyModel, batchSize int) error
	Save(values ...*dbmodel.KeyModel) error
	First() (*dbmodel.KeyModel, error)
	Take() (*dbmodel.KeyModel, error)
	Last() (*dbmodel.KeyModel, error)
	Find() ([]*dbmodel.KeyModel, error)
	FindInBatch(batchSize int, fc func(tx gen.Dao, batch int) error) (results []*dbmodel.KeyModel, err error)
	FindInBatches(result *[]*dbmodel.KeyModel, batchSize int, fc func(tx gen.Dao, batch int) error) error
	Pluck(column field.Expr, dest interface{}) error
	Delete(...*dbmodel.KeyModel) (info gen.ResultInfo, err error)
	Update(column field.Expr, value interface{}) (info gen.ResultInfo, err error)
	UpdateSimple(columns ...field.AssignExpr) (info gen.ResultInfo, err error)
	Updates(value interface{}) (info gen.ResultInfo, err error)
	UpdateColumn(column field.Expr, value interface{}) (info gen.ResultInfo, err error)
	UpdateColumnSimple(columns ...field.AssignExpr) (info gen.ResultInfo, err error)
	UpdateColumns(value interface{}) (info gen.ResultInfo, err error)
	UpdateFrom(q gen.SubQuery) gen.Dao
	Attrs(attrs ...field.AssignExpr) IKeyModelDo
	Assign(attrs ...field.AssignExpr) IKeyModelDo
	Joins(fields ...field.RelationField) IKeyModelDo
	Preload(fields ...field.RelationField) IKeyModelDo
	FirstOrInit() (*dbmodel.KeyModel, error)
	FirstOrCreate() (*dbmodel.KeyModel, error)
	FindByPage(offset int, limit int) (result []*dbmodel.KeyModel, count int64, err error)
	ScanByPage(result interface{}, offset int, limit int) (count int64, err error)
	Scan(result interface{}) (err error)
	Returning(value interface{}, columns ...string) IKeyModelDo
	UnderlyingDB() *gorm.DB
	schema.Tabler

	GetByID(id string) (result *dbmodel.KeyModel, err error)
}

// SELECT * FROM @@table WHERE id=@id or external_id=@id order by id=@id limit 1
func (k keyModelDo) GetByID(id string) (result *dbmodel.KeyModel, err error) {
	var params []interface{}

	var generateSQL strings.Builder
	params = append(params, id)
	params = append(params, id)
	params = append(params, id)
	generateSQL.WriteString("SELECT * FROM keys WHERE id=? or external_id=? order by id=? limit 1 ")

	var executeSQL *gorm.DB

	executeSQL = k.UnderlyingDB().Raw(generateSQL.String(), params...).Take(&result)
	err = executeSQL.Error
	return
}

func (k keyModelDo) Debug() IKeyModelDo {
	return k.withDO(k.DO.Debug())
}

func (k keyModelDo) WithContext(ctx context.Context) IKeyModelDo {
	return k.withDO(k.DO.WithContext(ctx))
}

func (k keyModelDo) ReadDB() IKeyModelDo {
	return k.Clauses(dbresolver.Read)
}

func (k keyModelDo) WriteDB() IKeyModelDo {
	return k.Clauses(dbresolver.Write)
}

func (k keyModelDo) Session(config *gorm.Session) IKeyModelDo {
	return k.withDO(k.DO.Session(config))
}

func (k keyModelDo) Clauses(conds ...clause.Expression) IKeyModelDo {
	return k.withDO(k.DO.Clauses(conds...))
}

func (k keyModelDo) Returning(value interface{}, columns ...string) IKeyModelDo {
	return k.withDO(k.DO.Returning(value, columns...))
}

func (k keyModelDo) Not(conds ...gen.Condition) IKeyModelDo {
	return k.withDO(k.DO.Not(conds...))
}

func (k keyModelDo) Or(conds ...gen.Condition) IKeyModelDo {
	return k.withDO(k.DO.Or(conds...))
}

func (k keyModelDo) Select(conds ...field.Expr) IKeyModelDo {
	return k.withDO(k.DO.Select(conds...))
}

func (k keyModelDo) Where(conds ...gen.Condition) IKeyModelDo {
	return k.withDO(k.DO.Where(conds...))
}

func (k keyModelDo) Exists(subquery interface{ UnderlyingDB() *gorm.DB }) IKeyModelDo {
	return k.Where(field.CompareSubQuery(field.ExistsOp, nil, subquery.UnderlyingDB()))
}

func (k keyModelDo) Order(conds ...field.Expr) IKeyModelDo {
	return k.withDO(k.DO.Order(conds...))
}

func (k keyModelDo) Distinct(cols ...field.Expr) IKeyModelDo {
	return k.withDO(k.DO.Distinct(cols...))
}

func (k keyModelDo) Omit(cols ...field.Expr) IKeyModelDo {
	return k.withDO(k.DO.Omit(cols...))
}

func (k keyModelDo) Join(table schema.Tabler, on ...field.Expr) IKeyModelDo {
	return k.withDO(k.DO.Join(table, on...))
}

func (k keyModelDo) LeftJoin(table schema.Tabler, on ...field.Expr) IKeyModelDo {
	return k.withDO(k.DO.LeftJoin(table, on...))
}

func (k keyModelDo) RightJoin(table schema.Tabler, on ...field.Expr) IKeyModelDo {
	return k.withDO(k.DO.RightJoin(table, on...))
}

func (k keyModelDo) Group(cols ...field.Expr) IKeyModelDo {
	return k.withDO(k.DO.Group(cols...))
}

func (k keyModelDo) Having(conds ...gen.Condition) IKeyModelDo {
	return k.withDO(k.DO.Having(conds...))
}

func (k keyModelDo) Limit(limit int) IKeyModelDo {
	return k.withDO(k.DO.Limit(limit))
}

func (k keyModelDo) Offset(offset int) IKeyModelDo {
	return k.withDO(k.DO.Offset(offset))
}

func (k keyModelDo) Scopes(funcs ...func(gen.Dao) gen.Dao) IKeyModelDo {
	return k.withDO(k.DO.Scopes(funcs...))
}

func (k keyModelDo) Unscoped() IKeyModelDo {
	return k.withDO(k.DO.Unscoped())
}

func (k keyModelDo) Create(values ...*dbmodel.KeyModel) error {
	if len(values) == 0 {
		return nil
	}
	return k.DO.Create(values)
}

func (k keyModelDo) CreateInBatches(values []*dbmodel.KeyModel, batchSize int) error {
	return k.DO.CreateInBatches(values, batchSize)
}

// Save : !!! underlying implementation is different with GORM
// The method is equivalent to executing the statement: db.Clauses(clause.OnConflict{UpdateAll: true}).Create(values)
func (k keyModelDo) Save(values ...*dbmodel.KeyModel) error {
	if len(values) == 0 {
		return nil
	}
	return k.DO.Save(values)
}

func (k keyModelDo) First() (*dbmodel.KeyModel, error) {
	if result, err := k.DO.First(); err != nil {
		return nil, err
	} else {
		return result.(*dbmodel.KeyModel), nil
	}
}

func (k keyModelDo) Take() (*dbmodel.KeyModel, error) {
	if result, err := k.DO.Take(); err != nil {
		return nil, err
	} else {
		return result.(*dbmodel.KeyModel), nil
	}
}

func (k keyModelDo) Last() (*dbmodel.KeyModel, error) {
	if result, err := k.DO.Last(); err != nil {
		return nil, err
	} else {
		return result.(*dbmodel.KeyModel), nil
	}
}

func (k keyModelDo) Find() ([]*dbmodel.KeyModel, error) {
	result, err := k.DO.Find()
	return result.([]*dbmodel.KeyModel), err
}

func (k keyModelDo) FindInBatch(batchSize int, fc func(tx gen.Dao, batch int) error) (results []*dbmodel.KeyModel, err error) {
	buf := make([]*dbmodel.KeyModel, 0, batchSize)
	err = k.DO.FindInBatches(&buf, batchSize, func(tx gen.Dao, batch int) error {
		defer func() { results = append(results, buf...) }()
		return fc(tx, batch)
	})
	return results, err
}

func (k keyModelDo) FindInBatches(result *[]*dbmodel.KeyModel, batchSize int, fc func(tx gen.Dao, batch int) error) error {
	return k.DO.FindInBatches(result, batchSize, fc)
}

func (k keyModelDo) Attrs(attrs ...field.AssignExpr) IKeyModelDo {
	return k.withDO(k.DO.Attrs(attrs...))
}

func (k keyModelDo) Assign(attrs ...field.AssignExpr) IKeyModelDo {
	return k.withDO(k.DO.Assign(attrs...))
}

func (k keyModelDo) Joins(fields ...field.RelationField) IKeyModelDo {
	for _, _f := range fields {
		k = *k.withDO(k.DO.Joins(_f))
	}
	return &k
}

func (k keyModelDo) Preload(fields ...field.RelationField) IKeyModelDo {
	for _, _f := range fields {
		k = *k.withDO(k.DO.Preload(_f))
	}
	return &k
}

func (k keyModelDo) FirstOrInit() (*dbmodel.KeyModel, error) {
	if result, err := k.DO.FirstOrInit(); err != nil {
		return nil, err
	} else {
		return result.(*dbmodel.KeyModel), nil
	}
}

func (k keyModelDo) FirstOrCreate() (*dbmodel.KeyModel, error) {
	if result, err := k.DO.FirstOrCreate(); err != nil {
		return nil, err
	} else {
		return result.(*dbmodel.KeyModel), nil
	}
}

func (k keyModelDo) FindByPage(offset int, limit int) (result []*dbmodel.KeyModel, count int64, err error) {
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

func (k keyModelDo) ScanByPage(result interface{}, offset int, limit int) (count int64, err error) {
	count, err = k.Count()
	if err != nil {
		return
	}

	err = k.Offset(offset).Limit(limit).Scan(result)
	return
}

func (k keyModelDo) Scan(result interface{}) (err error) {
	return k.DO.Scan(result)
}

func (k keyModelDo) Delete(models ...*dbmodel.KeyModel) (result gen.ResultInfo, err error) {
	return k.DO.Delete(models)
}

func (k *keyModelDo) withDO(do gen.Dao) *keyModelDo {
	k.DO = *do.(*gen.DO)
	return k
}
