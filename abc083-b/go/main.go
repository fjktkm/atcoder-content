package main

import (
	"fmt"
)

func digitSum(n int) int {
	sum := 0
	for n > 0 {
		sum += n % 10
		n /= 10
	}
	return sum
}

func main() {
	var rangeMax, digitSumMin, digitSumMax int
	fmt.Scan(&rangeMax, &digitSumMin, &digitSumMax)

	sum := 0
	for i := 1; i <= rangeMax; i++ {
		dsum := digitSum(i)
		if digitSumMin <= dsum && dsum <= digitSumMax {
			sum += i
		}
	}

	fmt.Println(sum)
}
