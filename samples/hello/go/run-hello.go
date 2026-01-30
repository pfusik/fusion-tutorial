package main
// #include "hello.c"
import "C"

import (
	"fmt"
	"os"
)

func main() {
    argv := os.Args
    cGreeting := C.Hello_GetMessage()
    if cGreeting == nil {
	fmt.Println("Error: C-function gave back null!")
	return
    }
    // C-String back to Go-String 
    goGreeting := C.GoString(cGreeting)
    fmt.Printf("Go gets: %s\n", goGreeting)    
    fmt.Println("Hello World from Go!")
    fmt.Printf("Usage: %s\n",argv[0])
}   
