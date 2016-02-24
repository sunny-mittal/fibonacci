package main

import (
	"fmt"
	"time"
)

func fib(limit int) int {
	limit -= 2
	m, n := 1, 1
	for i := 0; i < limit; i++ {
		m, n = n, m+n
	}
	return m
}

func main() {
	t0 := time.Now()
	fmt.Println(fib(1000))
	fmt.Println(time.Now().Sub(t0))
}
