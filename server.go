package main

import (
	"github.com/gin-gonic/gin"
	_ "github.com/go-sql-driver/mysql"
)

const (
	EXPOSED_PORT = ":8080"
)

type Authors struct {
    gorm.Model
		name string
		info string
}

type Comics struct {
    gorm.Model
		title   string
		summary string
}

type Location struct {
    gorm.Model
    Name string `gorm:"size:255"`
    Password string `gorm:"size:255"`
    Email string `gorm:"size:255"`
}

type ComicLocation struct {
		gorm.Model
		comic_id    int
		location_id int
}

type ComicAuthor struct {
		gorm.Model
		comic_id  int
		author_id int
}

type LocationsComic struct {
		gorm.Model
		comic_id    int
		location_id int
}

func main() {
	db, err := genmai.New(&genmai.MySQLDialect{}, "mysql:host=rds-intern.cc7ypgxhy74c.ap-northeast-1.rds.amazonaws.com;dbname=admin")
	if err != nil {
		panic(err)
	}
	defer db.Close()
	router := gin.Default()
	router.GET("/comic_list/get", func(c *gin.Context) {
		locname := c.Query("locname")

		var results []model.Comics
		if err := db.Select(&results, db.Join(&model.)); err != nil {
			panic(err)
		}
	})
	router.Run(EXPOSED_PORT)

}
