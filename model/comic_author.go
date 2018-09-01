package model

import "github.com/naoina/genmai"

type ComicAuthor struct {
	Id        int `db:"pk" column:"tbl_id"`
	comic_id  int
	author_id int
	genmai.TimeStamp
}
