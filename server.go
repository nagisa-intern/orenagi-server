package main

import (
	"github.com/gin-gonic/gin"
)

const (
	EXPOSED_PORT = ":8080"
)

func main() {

	router := gin.Default()
	router.GET("/", func(c *gin.Context) {
	})
	router.Run(EXPOSED_PORT)

}
