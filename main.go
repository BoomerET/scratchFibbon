package main

import "fmt"

func factorize(i int) int {
    if i == 0 {
        return 1
    }
    return i * factorize(i - 1)
}

func main() {
    fmt.Println(factorize(14))
}
