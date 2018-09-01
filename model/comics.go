package model

import "github.com/naoina/genmai"

type Comics struct {
	Id      int `db:"pk" column:"tbl_id"`
	title   string
	summary string
	genmai.TimeStamp
}
