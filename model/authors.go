import "github.com/naoina/genmai"

type Authors struct {
	Id   int `db:"pk" column:"tbl_id"`
	name string
	info string
	genmai.TimeStamp
}
