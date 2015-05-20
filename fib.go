// 698 ms

package main

import (
	"fmt"
	"time"
)

func fib(n int) int {
	if n < 2 {
		return n
	}
	return fib(n-1) + fib(n-2)
}

func main() {
	t0 := time.Now()
	fib(40)
	fmt.Println(time.Now().Sub(t0))
}
