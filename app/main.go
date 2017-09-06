package main

import (
	"archive/zip"
	"database/sql"
	"encoding/json"
	"fmt"
	"io"
	"log"
	"net/http"
	"os"
	"strconv"
	"time"

	"github.com/aws/aws-sdk-go/aws"
	"github.com/aws/aws-sdk-go/aws/session"
	"github.com/aws/aws-sdk-go/aws/credentials"
	"github.com/aws/aws-sdk-go/service/s3"
	_ "github.com/go-sql-driver/mysql"
)

type S3Files struct {
	Name string
	Path string
	Type string
}

func main() {
	http.HandleFunc("/", handler)
	http.ListenAndServe(":"+strconv.Itoa(8088), nil)
}

func handler(w http.ResponseWriter, r *http.Request) {
	// Get "r" URL params
	refs, ok := r.URL.Query()["r"]
	if !ok || len(refs) < 1 {
		http.Error(w, "Wrong request. Can not find required param. ", 500)
		return
	}
	ref := refs[0]

	// Create an sql.DB and check for errors.
	var config = getSQLConnect()
	db, err := sql.Open("mysql", config)
	if err != nil {
		log.Printf(err.Error())
		http.Error(w, err.Error(), 500)
	}
	defer db.Close()

	var data string

	date := int32(time.Now().Unix())

	query := fmt.Sprintf("SELECT data FROM hashes WHERE hash=%v AND expire>%d", ref, date)
	err = db.QueryRow(query).Scan(&data)
	errorLog(err)

	if len(data) == 0 {
		http.Error(w, "Wrong request. Nothing found.", 500)
		return
	}

	var m []S3Files
	b := []byte(data)
	err = json.Unmarshal(b, &m)
	errorLog(err)

	// Create the S3 service client for the target region
	// https://docs.aws.amazon.com/sdk-for-go/v1/developer-guide/configuring-sdk.html
	sess, err := session.NewSession(&aws.Config{
		Region:      aws.String(os.Getenv("S3_REGION")),
		Credentials: credentials.NewSharedCredentials("", os.Getenv("S3_PROFILE")),
	})

	if err != nil {
		errorLog(err)
		http.Error(w, "Wrong request. Nothing found.", 500)
		return
	}

	svc := s3.New(sess)
	bucket := os.Getenv("S3_BUCKET")

	// Start processing the response
	w.Header().Add("Content-Disposition", "attachment; filename=\"download.zip\"")
	w.Header().Add("Content-Type", "application/zip")

	// Loop over files, add them to the
	zipWriter := zip.NewWriter(w)

	for _, file := range m {
		if file.Path == "" {
			log.Printf("Missing path for file: %v", file)
			continue
		}

		// Read file from S3, log any errors.
		result, err := svc.GetObject(&s3.GetObjectInput{
			Bucket: aws.String(bucket),
			Key:    aws.String(file.Path),
		})
		if err != nil {
			log.Printf("Error downloading \"%s\" - %s", file.Path, err.Error())
			continue
		}

		zipPath := file.Name

		// We have to set a special flag so zip files recognize utf file names
		// See http://stackoverflow.com/questions/30026083/creating-a-zip-archive-with-unicode-filenames-using-gos-archive-zip
		h := &zip.FileHeader{
			Name:   zipPath,
			Method: zip.Deflate,
			Flags:  0x800,
		}

		f, _ := zipWriter.CreateHeader(h)

		io.Copy(f, result.Body)
		result.Body.Close()
	}

	zipWriter.Close()
}

func getSQLConnect() string {
	user := os.Getenv("MYSQL_DB_USER")
	if len(user) == 0 {
		// Default value.
		user = "zipper_user"
	}

	pass := os.Getenv("MYSQL_DB_PASS")
	if len(pass) == 0 {
		// Default value.
		pass = "zipper_pass"
	}

	host := os.Getenv("MYSQL_DB_HOST")
	if len(host) == 0 {
		// Default value.
		host = "mariadb"
	}

	port := os.Getenv("MYSQL_DB_PORT")
	if len(port) == 0 {
		// Default value.
		port = "3306"
	}

	database := os.Getenv("MYSQL_DATABASE")
	if len(database) == 0 {
		// Default value.
		database = "zipper_db"
	}

	// Default value to return: zipper_user:zipper_pass@tcp(mariadb:3306)/zipper_db"
	return user + ":" + pass + "@tcp(" + host + ":" + port + ")/" + database
}

func errorLog(err error) {
	if err != nil {
		log.Printf(err.Error())
	}
}
