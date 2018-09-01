package main

import (
	"github.com/gin-gonic/gin"
	_ "github.com/go-sql-driver/mysql"
	"github.com/naoina/genmai"
)

const (
	EXPOSED_PORT = ":8080"
)

func main() {
	db, err := genmai.New(&genmai.MySQLDialect{}, "mysql:host=rds-intern.cc7ypgxhy74c.ap-northeast-1.rds.amazonaws.com;dbname=admin")
	if err != nil {
		panic(err)
	}
	defer db.Close()
	if err := db.CreateTable(&Comics{}); err != nil {
		panic(err)
	}
	if err := db.CreateTable(&Authors{}); err != nil {
		panic(err)
	}
	if err := db.CreateTable(&Location{}); err != nil {
		panic(err)
	}
	if err := db.CreateTable(&ComicAuthor{}); err != nil {
		panic(err)
	}
	if err := db.CreateTable(&ComicData{}); err != nil {
		panic(err)
	}
	if err := db.CreateTable(&ComicLocation{}); err != nil {
		panic(err)
	}
	router := gin.Default()
	router.GET("/", func(c *gin.Context) {
	})
	router.Run(EXPOSED_PORT)

}
