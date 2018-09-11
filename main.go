package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", handler)
	http.ListenAndServe(":8080", nil)
}

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "<div style='padding-top: 50px'><div style='text-align:center' 'padding-top: 25px'><img src='https://cdn-images-1.medium.com/max/2000/1*Zf-PAHOjW70eF-wWOjNpUg.png'></div></div>")
}
