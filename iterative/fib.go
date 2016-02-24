package main

import (
	"fmt"
	"math/big"
	"time"
)

func fib(limit int) *big.Int {
	limit -= 2
	m, n := big.NewInt(1), big.NewInt(1)
	for i := 0; i < limit; i++ {
		m.Add(m, n)
		m, n = n, m
	}
	return m
}

func main() {
	t0 := time.Now()
	for i := 0; i < 10; i++ {
		fib(100)
	}
	fmt.Println(time.Now().Sub(t0))
}
