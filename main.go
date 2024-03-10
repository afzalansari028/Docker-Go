package main

import (
	"fmt"
	"net/http"
)

func main() {

	fmt.Println("Go start!!")

	http.HandleFunc("/hello", func(w http.ResponseWriter, r *http.Request) {

		fmt.Fprintf(w, "Hello docker")
	})
	http.HandleFunc("/hi", func(w http.ResponseWriter, r *http.Request) {

		fmt.Fprintf(w, "Hi")
	})

	http.ListenAndServe(":8080", nil)
}
