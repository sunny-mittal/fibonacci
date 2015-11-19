package main

import (
	"fmt"
	"time"
)

func fib(limit int) int {
	m, n := 0, 1
	for i := 0; i < limit; i++ {
		m, n = n, m+n
	}
	return m
}

func main() {
	t0 := time.Now()
	fmt.Println(fib(40))
	fmt.Println(time.Now().Sub(t0))
}
