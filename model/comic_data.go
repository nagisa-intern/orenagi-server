import "github.com/naoina/genmai"

type ComicData struct {
	Id       int `db:"pk" column:"tbl_id"`
	comic_id int
	title    string
	episode  int
	genmai.TimeStamp
}
