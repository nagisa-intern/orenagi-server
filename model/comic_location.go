package model

import "github.com/naoina/genmai"

type ComicLocation struct {
	Id          int `db:"pk" column:"tbl_id"`
	comic_id    int
	location_id int
	genmai.TimeStamp
}
