package main

import (
	"fmt"
)

func main() {
	var length int
	fmt.Scan(&length)
	numList := make([]int, length)
	for i := 0; i < length; i++ {
		fmt.Scan(&numList[i])
	}

	var numListOr int
	for i := 0; i < length; i++ {
		numListOr |= numList[i]
	}

	var count int
	for numListOr%2 == 0 {
		numListOr >>= 1
		count++
	}
	fmt.Println(count)
}
