package main

import (
	"database/sql"
	"fmt"
	"log"
	"time"

	_ "github.com/go-sql-driver/mysql"
)

const (
	db_user   = "root"
	db_passwd = "mypass"
	db_addr   = "localhost"
	db_db     = "company"
)

func main() {
	db, err := sql.Open("mysql", fmt.Sprintf("%s:%s@tcp(%s:3306)/%s", db_user, db_passwd, db_addr, db_db))
	fmt.Printf("%s:%s@tcp(%s:3306)/%s\n", db_user, db_passwd, db_addr, db_db)
	if err != nil {
		errHandler(err)
	}
	defer db.Close()

	// db settings to consider
	db.SetConnMaxLifetime(time.Minute * 3)
	db.SetMaxOpenConns(10)
	db.SetMaxIdleConns(10)

	// validate the DSN
	if err := db.Ping(); err != nil {
		errHandler(err)
	} else {
		fmt.Println("Connection successful, you are ready to Go!")
	}
}

func errHandler(err error) {
	if err != nil {
		log.Fatal(err)
	}
}
