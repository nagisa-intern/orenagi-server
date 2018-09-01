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
	router := gin.Default()
	router.GET("/comic_list/get", func(c *gin.Context) {
		locname := c.Query("locname")
	})
	router.Run(EXPOSED_PORT)

}
