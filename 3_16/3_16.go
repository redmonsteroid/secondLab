package main

import (
	"fmt"
)

func checkDate(num int) bool {
	daysInMonth := [12]int{31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31}
	day, month := 0, 0

	if num >= 11 && num <= 99 {
		return true
	}
	if num >= 101 && num <= 999 {
		day = num / 10
		month = num % 10
		if daysInMonth[month-1] >= day {
			return true
		}
		day = num / 100
		month = num % 100
		if daysInMonth[month-1] >= day {
			return true
		}
	}
	if num >= 1000 && num < 9999 {
		day = num / 100
		month = num % 100
		if daysInMonth[month-1] >= day {
			return true
		}
	}
	return false
}

func main() {
	var count int
	fmt.Scan(&count)
	numbers := make([]int, count)

	for i := 0; i < count; i++ {
		var n int
		fmt.Scan(&n)
		numbers[i] = n
	}

	for _, n := range numbers {
		if checkDate(n) {
			fmt.Println("Да")
		} else {
			fmt.Println("Нет")
		}
	}
}
