package main

import (
	"fmt"
)

func countNum(nums []int) int {
	result := 0
	for i := 0; i < len(nums); i++ {
		if nums[i] >= 100 {
			count := 0
			tempNum := nums[i]
			for tempNum != 0 {
				tempNum /= 10
				count++
			}
			if count%2 != 0 {
				result++
			}
		}
	}
	return result
}

func main() {
	var nums []int
	fmt.Println("Enter a list of numbers (to end enter -1):")
	for {
		var num int
		fmt.Scan(&num)
		if num == -1 {
			break
		}
		nums = append(nums, num)
	}
	fmt.Println(countNum(nums))
}
