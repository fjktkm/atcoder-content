package main

import (
	"fmt"
)

func main() {
	var coin500, coin100, coin50, total int
	fmt.Scan(&coin500, &coin100, &coin50, &total)

	count := 0
	for i := 0; i <= coin500; i++ {
		for j := 0; j <= coin100; j++ {
			for k := 0; k <= coin50; k++ {
				if i*500+j*100+k*50 == total {
					count++
				}
			}
		}
	}
	fmt.Println(count)
}
