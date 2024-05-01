package main

import (
	"fmt"
)

func main() {
	var placement string
	fmt.Scan(&placement)

	count := 0
	for _, c := range placement {
		if c == '1' {
			count++
		}
	}

	fmt.Println(count)
}
