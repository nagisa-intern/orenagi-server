package main

import (
	"github.com/gin-gonic/gin"
	"net/http"
	"flag"
)

const (
	// ここに載せている秘密鍵の利用は危険なので，他のものへの流用をしない
	CERT_FILE = "./mycrt.crt"
	SEC_KEY_FILE = "./mysec.key"
	EXPOSED_PORT = ":8080"
)

func main() {

	// コマンドライン引数に -tls フラグがあるかをチェック
	usingTLS := flag.Bool("tls", false, "Serving with HTTPS or not?")
	flag.Parse()

	// アクセス時に"This message is a payload."を表示するようにする
	router := gin.Default()
	router.GET("/", func(c *gin.Context) {
	c.String(http.StatusOK, "This message is a payload.")
	})

	// サーバを起動する
	if *usingTLS {
		runHttpsServer(router)
	} else {
		runHttpServer(router)
	}
}

func runHttpServer(router *gin.Engine) {
	router.Run(EXPOSED_PORT)
}

func runHttpsServer(router *gin.Engine) {
	router.RunTLS(EXPOSED_PORT, CERT_FILE, SEC_KEY_FILE)
}
