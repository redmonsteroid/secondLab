import Foundation

func checkDate(_ num: Int) -> Bool {
    let daysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    var day = 0
    var month = 0
    
    if num >= 11 && num <= 99 {
        return true
    }
    if num >= 101 && num <= 999 {
        day = num / 10
        month = num % 10
        if month >= 1 && month <= 12 && daysInMonth[month - 1] >= day {
            return true
        }
        day = num / 100
        month = num % 100
        if month >= 1 && month <= 12 && daysInMonth[month - 1] >= day {
            return true
        }
    }
    if num >= 1000 && num < 9999 {
        day = num / 100
        month = num % 100
        if month >= 1 && month <= 12 && daysInMonth[month - 1] >= day {
            return true
        }
    }
    return false
}

// Example usage
let count = Int(readLine()!)!
var numbers = [Int]()
for _ in 0..<count {
    if let n = Int(readLine()!) {
        numbers.append(n)
    }
}

for n in numbers {
    if checkDate(n) {
        print("Yes")
    } else {
        print("No")
    }
}