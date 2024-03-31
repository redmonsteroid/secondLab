import Foundation

print("Enter numbers : ")

if let input = readLine() {
    let numbers = input.split(separator: " ") // на вход строка и разбиваем на пробелы 
    var count = 0

    for number in numbers {
        if let num = Int(number), num >= 100 {
            var tempNum = num
            var digitCount = 0
            while tempNum != 0 {
                tempNum /= 10
                digitCount += 1
            }
            if digitCount % 2 != 0 {
                count += 1
            }
        }
    }

    print(count)
}
