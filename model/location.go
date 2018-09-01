import "github.com/naoina/genmai"

type Location struct {
	Id   int `db:"pk" column:"tbl_id"`
	name string
	genmai.TimeStamp
}
