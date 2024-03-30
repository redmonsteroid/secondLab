package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func CheckChar(str string) string {
	glasLet := "aeiouyAEIOUY"
	soglasLet := "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
	glasCount := 0
	soglasCount := 0

	for i := 0; i < len(str); i++ {
		if strings.Contains(glasLet, string(str[i])) {
			glasCount++
		} else if strings.Contains(soglasLet, string(str[i])) {
			soglasCount++
		}
	}

	if glasCount > soglasCount {
		return "Да"
	} else if glasCount < soglasCount {
		return "Нет"
	} else if glasCount == soglasCount {
		return "Одинаково"
	}

	return "" // как и в шарпах требует хоть что то вывести
}

func main() {
	fmt.Print("Enter string: ")
	reader := bufio.NewReader(os.Stdin)
	str, _ := reader.ReadString('\n') // Считываем строку до символа новой строки
	str = strings.TrimSpace(str)      /// удаляем пробелы
	fmt.Println(CheckChar(str))
}
